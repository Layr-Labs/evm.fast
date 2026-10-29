import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc187
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody187_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody187_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody187_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody187_3 : StackLang.HolProg 64 :=
.seq RemovedBody187_1 RemovedBody187_2

def RemovedBody187_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody187_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody187_3 RemovedBody187_4

def RemovedBody187_6 : StackLang.HolProg 64 :=
.seq RemovedBody187_0 RemovedBody187_5

def RemovedBody187_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody187_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody187_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody187_10 : StackLang.HolProg 64 :=
.seq RemovedBody187_8 RemovedBody187_9

def RemovedBody187_11 : StackLang.HolProg 64 :=
.seq RemovedBody187_7 RemovedBody187_10

def RemovedBody187_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody187_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 213#64)

def RemovedBody187_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody187_15 : StackLang.HolProg 64 :=
.seq RemovedBody187_13 RemovedBody187_14

def RemovedBody187_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody187_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody187_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody187_19 : StackLang.HolProg 64 :=
.seq RemovedBody187_17 RemovedBody187_18

def RemovedBody187_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody187_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody187_19 RemovedBody187_20

def RemovedBody187_22 : StackLang.HolProg 64 :=
.seq RemovedBody187_16 RemovedBody187_21

def RemovedBody187_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody187_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody187_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 187 3

def RemovedBody187_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody187_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody187_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody187_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody187_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody187_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody187_32 : StackLang.HolProg 64 :=
.seq RemovedBody187_30 RemovedBody187_31

def RemovedBody187_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody187_34 : StackLang.HolProg 64 :=
.seq RemovedBody187_32 RemovedBody187_33

def RemovedBody187_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody187_36 : StackLang.HolProg 64 :=
.seq RemovedBody187_34 RemovedBody187_35

def RemovedBody187_37 : StackLang.HolProg 64 :=
.seq RemovedBody187_29 RemovedBody187_36

def RemovedBody187_38 : StackLang.HolProg 64 :=
.seq RemovedBody187_28 RemovedBody187_37

def RemovedBody187_39 : StackLang.HolProg 64 :=
.seq RemovedBody187_27 RemovedBody187_38

def RemovedBody187_40 : StackLang.HolProg 64 :=
.seq RemovedBody187_26 RemovedBody187_39

def RemovedBody187_41 : StackLang.HolProg 64 :=
.seq RemovedBody187_25 RemovedBody187_40

def RemovedBody187_42 : StackLang.HolProg 64 :=
.seq RemovedBody187_24 RemovedBody187_41

def RemovedBody187_43 : StackLang.HolProg 64 :=
.seq RemovedBody187_23 RemovedBody187_42

def RemovedBody187_44 : StackLang.HolProg 64 :=
.seq RemovedBody187_22 RemovedBody187_43

def RemovedBody187_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody187_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody187_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody187_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody187_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody187_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody187_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody187_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody187_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody187_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody187_55 : StackLang.HolProg 64 :=
.seq RemovedBody187_53 RemovedBody187_54

def RemovedBody187_56 : StackLang.HolProg 64 :=
.seq RemovedBody187_52 RemovedBody187_55

def RemovedBody187_57 : StackLang.HolProg 64 :=
.seq RemovedBody187_51 RemovedBody187_56

def RemovedBody187_58 : StackLang.HolProg 64 :=
.seq RemovedBody187_50 RemovedBody187_57

def RemovedBody187_59 : StackLang.HolProg 64 :=
.seq RemovedBody187_49 RemovedBody187_58

def RemovedBody187_60 : StackLang.HolProg 64 :=
.seq RemovedBody187_48 RemovedBody187_59

def RemovedBody187_61 : StackLang.HolProg 64 :=
.seq RemovedBody187_47 RemovedBody187_60

def RemovedBody187_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody187_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody187_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody187_65 : StackLang.HolProg 64 :=
.seq RemovedBody187_63 RemovedBody187_64

def RemovedBody187_66 : StackLang.HolProg 64 :=
.seq RemovedBody187_62 RemovedBody187_65

def RemovedBody187_67 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody187_68 : StackLang.HolProg 64 :=
.seq RemovedBody187_66 RemovedBody187_67

def RemovedBody187_69 : StackLang.HolProg 64 :=
.call (some (RemovedBody187_61, 0, 187, 2)) (Sum.inl 185) (some (RemovedBody187_68, 187, 3))

def RemovedBody187_70 : StackLang.HolProg 64 :=
.seq RemovedBody187_46 RemovedBody187_69

def RemovedBody187_71 : StackLang.HolProg 64 :=
.seq RemovedBody187_45 RemovedBody187_70

def RemovedBody187_72 : StackLang.HolProg 64 :=
.seq RemovedBody187_44 RemovedBody187_71

def RemovedBody187_73 : StackLang.HolProg 64 :=
.seq RemovedBody187_15 RemovedBody187_72

def RemovedBody187_74 : StackLang.HolProg 64 :=
.seq RemovedBody187_12 RemovedBody187_73

def RemovedBody187_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody187_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody187_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody187_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody187_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody187_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody187_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody187_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 6

def RemovedBody187_83 : StackLang.HolProg 64 :=
.seq RemovedBody187_81 RemovedBody187_82

def RemovedBody187_84 : StackLang.HolProg 64 :=
.seq RemovedBody187_80 RemovedBody187_83

def RemovedBody187_85 : StackLang.HolProg 64 :=
.seq RemovedBody187_79 RemovedBody187_84

def RemovedBody187_86 : StackLang.HolProg 64 :=
.seq RemovedBody187_78 RemovedBody187_85

def RemovedBody187_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody187_88 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody187_86 RemovedBody187_87

def RemovedBody187_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody187_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody187_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody187_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def RemovedBody187_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody187_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 8#64))

def RemovedBody187_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody187_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 32#64))

def RemovedBody187_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody187_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def RemovedBody187_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody187_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody187_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody187_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody187_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody187_104 : StackLang.HolProg 64 :=
.seq RemovedBody187_102 RemovedBody187_103

def RemovedBody187_105 : StackLang.HolProg 64 :=
.seq RemovedBody187_101 RemovedBody187_104

def RemovedBody187_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody187_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 214#64)

def RemovedBody187_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody187_109 : StackLang.HolProg 64 :=
.seq RemovedBody187_107 RemovedBody187_108

def RemovedBody187_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody187_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody187_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody187_113 : StackLang.HolProg 64 :=
.seq RemovedBody187_111 RemovedBody187_112

def RemovedBody187_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody187_115 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody187_113 RemovedBody187_114

def RemovedBody187_116 : StackLang.HolProg 64 :=
.seq RemovedBody187_110 RemovedBody187_115

def RemovedBody187_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody187_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody187_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 187 5

def RemovedBody187_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody187_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody187_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody187_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody187_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody187_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody187_126 : StackLang.HolProg 64 :=
.seq RemovedBody187_124 RemovedBody187_125

def RemovedBody187_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody187_128 : StackLang.HolProg 64 :=
.seq RemovedBody187_126 RemovedBody187_127

def RemovedBody187_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody187_130 : StackLang.HolProg 64 :=
.seq RemovedBody187_128 RemovedBody187_129

def RemovedBody187_131 : StackLang.HolProg 64 :=
.seq RemovedBody187_123 RemovedBody187_130

def RemovedBody187_132 : StackLang.HolProg 64 :=
.seq RemovedBody187_122 RemovedBody187_131

def RemovedBody187_133 : StackLang.HolProg 64 :=
.seq RemovedBody187_121 RemovedBody187_132

def RemovedBody187_134 : StackLang.HolProg 64 :=
.seq RemovedBody187_120 RemovedBody187_133

def RemovedBody187_135 : StackLang.HolProg 64 :=
.seq RemovedBody187_119 RemovedBody187_134

def RemovedBody187_136 : StackLang.HolProg 64 :=
.seq RemovedBody187_118 RemovedBody187_135

def RemovedBody187_137 : StackLang.HolProg 64 :=
.seq RemovedBody187_117 RemovedBody187_136

def RemovedBody187_138 : StackLang.HolProg 64 :=
.seq RemovedBody187_116 RemovedBody187_137

def RemovedBody187_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody187_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody187_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody187_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody187_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody187_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody187_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody187_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody187_147 : StackLang.HolProg 64 :=
.seq RemovedBody187_145 RemovedBody187_146

def RemovedBody187_148 : StackLang.HolProg 64 :=
.seq RemovedBody187_144 RemovedBody187_147

def RemovedBody187_149 : StackLang.HolProg 64 :=
.seq RemovedBody187_143 RemovedBody187_148

def RemovedBody187_150 : StackLang.HolProg 64 :=
.seq RemovedBody187_142 RemovedBody187_149

def RemovedBody187_151 : StackLang.HolProg 64 :=
.seq RemovedBody187_141 RemovedBody187_150

def RemovedBody187_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody187_153 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody187_154 : StackLang.HolProg 64 :=
.seq RemovedBody187_152 RemovedBody187_153

def RemovedBody187_155 : StackLang.HolProg 64 :=
.call (some (RemovedBody187_151, 0, 187, 4)) (Sum.inl 79) (some (RemovedBody187_154, 187, 5))

def RemovedBody187_156 : StackLang.HolProg 64 :=
.seq RemovedBody187_140 RemovedBody187_155

def RemovedBody187_157 : StackLang.HolProg 64 :=
.seq RemovedBody187_139 RemovedBody187_156

def RemovedBody187_158 : StackLang.HolProg 64 :=
.seq RemovedBody187_138 RemovedBody187_157

def RemovedBody187_159 : StackLang.HolProg 64 :=
.seq RemovedBody187_109 RemovedBody187_158

def RemovedBody187_160 : StackLang.HolProg 64 :=
.seq RemovedBody187_106 RemovedBody187_159

def RemovedBody187_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody187_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody187_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody187_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody187_165 : StackLang.HolProg 64 :=
.seq RemovedBody187_163 RemovedBody187_164

def RemovedBody187_166 : StackLang.HolProg 64 :=
.seq RemovedBody187_162 RemovedBody187_165

def RemovedBody187_167 : StackLang.HolProg 64 :=
.seq RemovedBody187_161 RemovedBody187_166

def RemovedBody187_168 : StackLang.HolProg 64 :=
.seq RemovedBody187_160 RemovedBody187_167

def RemovedBody187_169 : StackLang.HolProg 64 :=
.seq RemovedBody187_105 RemovedBody187_168

def RemovedBody187_170 : StackLang.HolProg 64 :=
.seq RemovedBody187_100 RemovedBody187_169

def RemovedBody187_171 : StackLang.HolProg 64 :=
.seq RemovedBody187_99 RemovedBody187_170

def RemovedBody187_172 : StackLang.HolProg 64 :=
.seq RemovedBody187_98 RemovedBody187_171

def RemovedBody187_173 : StackLang.HolProg 64 :=
.seq RemovedBody187_97 RemovedBody187_172

def RemovedBody187_174 : StackLang.HolProg 64 :=
.seq RemovedBody187_96 RemovedBody187_173

def RemovedBody187_175 : StackLang.HolProg 64 :=
.seq RemovedBody187_95 RemovedBody187_174

def RemovedBody187_176 : StackLang.HolProg 64 :=
.seq RemovedBody187_94 RemovedBody187_175

def RemovedBody187_177 : StackLang.HolProg 64 :=
.seq RemovedBody187_93 RemovedBody187_176

def RemovedBody187_178 : StackLang.HolProg 64 :=
.seq RemovedBody187_92 RemovedBody187_177

def RemovedBody187_179 : StackLang.HolProg 64 :=
.seq RemovedBody187_91 RemovedBody187_178

def RemovedBody187_180 : StackLang.HolProg 64 :=
.seq RemovedBody187_90 RemovedBody187_179

def RemovedBody187_181 : StackLang.HolProg 64 :=
.seq RemovedBody187_89 RemovedBody187_180

def RemovedBody187_182 : StackLang.HolProg 64 :=
.seq RemovedBody187_88 RemovedBody187_181

def RemovedBody187_183 : StackLang.HolProg 64 :=
.seq RemovedBody187_77 RemovedBody187_182

def RemovedBody187_184 : StackLang.HolProg 64 :=
.seq RemovedBody187_76 RemovedBody187_183

def RemovedBody187_185 : StackLang.HolProg 64 :=
.seq RemovedBody187_75 RemovedBody187_184

def RemovedBody187_186 : StackLang.HolProg 64 :=
.seq RemovedBody187_74 RemovedBody187_185

def RemovedBody187_187 : StackLang.HolProg 64 :=
.seq RemovedBody187_11 RemovedBody187_186

def RemovedBody187_188 : StackLang.HolProg 64 :=
.seq RemovedBody187_6 RemovedBody187_187

def Removed187 : Nat × StackLang.HolProg 64 := (187, RemovedBody187_188)
theorem Removed187_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc187 = Removed187 := by
  kernel_rfl
#print axioms Removed187_eq
end InitECandidate.Proofs.BackendStages
