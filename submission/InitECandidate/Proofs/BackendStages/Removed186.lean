import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc186
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody186_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody186_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody186_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody186_3 : StackLang.HolProg 64 :=
.seq RemovedBody186_1 RemovedBody186_2

def RemovedBody186_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody186_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody186_3 RemovedBody186_4

def RemovedBody186_6 : StackLang.HolProg 64 :=
.seq RemovedBody186_0 RemovedBody186_5

def RemovedBody186_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody186_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody186_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody186_10 : StackLang.HolProg 64 :=
.seq RemovedBody186_8 RemovedBody186_9

def RemovedBody186_11 : StackLang.HolProg 64 :=
.seq RemovedBody186_7 RemovedBody186_10

def RemovedBody186_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody186_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 211#64)

def RemovedBody186_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody186_15 : StackLang.HolProg 64 :=
.seq RemovedBody186_13 RemovedBody186_14

def RemovedBody186_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody186_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody186_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody186_19 : StackLang.HolProg 64 :=
.seq RemovedBody186_17 RemovedBody186_18

def RemovedBody186_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody186_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody186_19 RemovedBody186_20

def RemovedBody186_22 : StackLang.HolProg 64 :=
.seq RemovedBody186_16 RemovedBody186_21

def RemovedBody186_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody186_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody186_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 186 3

def RemovedBody186_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody186_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody186_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody186_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody186_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody186_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody186_32 : StackLang.HolProg 64 :=
.seq RemovedBody186_30 RemovedBody186_31

def RemovedBody186_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody186_34 : StackLang.HolProg 64 :=
.seq RemovedBody186_32 RemovedBody186_33

def RemovedBody186_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody186_36 : StackLang.HolProg 64 :=
.seq RemovedBody186_34 RemovedBody186_35

def RemovedBody186_37 : StackLang.HolProg 64 :=
.seq RemovedBody186_29 RemovedBody186_36

def RemovedBody186_38 : StackLang.HolProg 64 :=
.seq RemovedBody186_28 RemovedBody186_37

def RemovedBody186_39 : StackLang.HolProg 64 :=
.seq RemovedBody186_27 RemovedBody186_38

def RemovedBody186_40 : StackLang.HolProg 64 :=
.seq RemovedBody186_26 RemovedBody186_39

def RemovedBody186_41 : StackLang.HolProg 64 :=
.seq RemovedBody186_25 RemovedBody186_40

def RemovedBody186_42 : StackLang.HolProg 64 :=
.seq RemovedBody186_24 RemovedBody186_41

def RemovedBody186_43 : StackLang.HolProg 64 :=
.seq RemovedBody186_23 RemovedBody186_42

def RemovedBody186_44 : StackLang.HolProg 64 :=
.seq RemovedBody186_22 RemovedBody186_43

def RemovedBody186_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody186_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody186_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody186_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody186_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody186_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody186_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody186_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody186_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody186_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody186_55 : StackLang.HolProg 64 :=
.seq RemovedBody186_53 RemovedBody186_54

def RemovedBody186_56 : StackLang.HolProg 64 :=
.seq RemovedBody186_52 RemovedBody186_55

def RemovedBody186_57 : StackLang.HolProg 64 :=
.seq RemovedBody186_51 RemovedBody186_56

def RemovedBody186_58 : StackLang.HolProg 64 :=
.seq RemovedBody186_50 RemovedBody186_57

def RemovedBody186_59 : StackLang.HolProg 64 :=
.seq RemovedBody186_49 RemovedBody186_58

def RemovedBody186_60 : StackLang.HolProg 64 :=
.seq RemovedBody186_48 RemovedBody186_59

def RemovedBody186_61 : StackLang.HolProg 64 :=
.seq RemovedBody186_47 RemovedBody186_60

def RemovedBody186_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody186_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody186_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody186_65 : StackLang.HolProg 64 :=
.seq RemovedBody186_63 RemovedBody186_64

def RemovedBody186_66 : StackLang.HolProg 64 :=
.seq RemovedBody186_62 RemovedBody186_65

def RemovedBody186_67 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody186_68 : StackLang.HolProg 64 :=
.seq RemovedBody186_66 RemovedBody186_67

def RemovedBody186_69 : StackLang.HolProg 64 :=
.call (some (RemovedBody186_61, 0, 186, 2)) (Sum.inl 185) (some (RemovedBody186_68, 186, 3))

def RemovedBody186_70 : StackLang.HolProg 64 :=
.seq RemovedBody186_46 RemovedBody186_69

def RemovedBody186_71 : StackLang.HolProg 64 :=
.seq RemovedBody186_45 RemovedBody186_70

def RemovedBody186_72 : StackLang.HolProg 64 :=
.seq RemovedBody186_44 RemovedBody186_71

def RemovedBody186_73 : StackLang.HolProg 64 :=
.seq RemovedBody186_15 RemovedBody186_72

def RemovedBody186_74 : StackLang.HolProg 64 :=
.seq RemovedBody186_12 RemovedBody186_73

def RemovedBody186_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody186_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody186_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody186_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody186_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody186_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody186_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody186_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody186_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 7

def RemovedBody186_84 : StackLang.HolProg 64 :=
.seq RemovedBody186_82 RemovedBody186_83

def RemovedBody186_85 : StackLang.HolProg 64 :=
.seq RemovedBody186_81 RemovedBody186_84

def RemovedBody186_86 : StackLang.HolProg 64 :=
.seq RemovedBody186_80 RemovedBody186_85

def RemovedBody186_87 : StackLang.HolProg 64 :=
.seq RemovedBody186_79 RemovedBody186_86

def RemovedBody186_88 : StackLang.HolProg 64 :=
.seq RemovedBody186_78 RemovedBody186_87

def RemovedBody186_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody186_90 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody186_88 RemovedBody186_89

def RemovedBody186_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody186_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody186_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody186_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def RemovedBody186_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody186_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 8#64))

def RemovedBody186_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody186_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 32#64))

def RemovedBody186_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody186_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def RemovedBody186_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody186_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody186_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody186_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody186_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody186_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody186_107 : StackLang.HolProg 64 :=
.seq RemovedBody186_105 RemovedBody186_106

def RemovedBody186_108 : StackLang.HolProg 64 :=
.seq RemovedBody186_104 RemovedBody186_107

def RemovedBody186_109 : StackLang.HolProg 64 :=
.seq RemovedBody186_103 RemovedBody186_108

def RemovedBody186_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody186_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 212#64)

def RemovedBody186_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody186_113 : StackLang.HolProg 64 :=
.seq RemovedBody186_111 RemovedBody186_112

def RemovedBody186_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody186_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody186_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody186_117 : StackLang.HolProg 64 :=
.seq RemovedBody186_115 RemovedBody186_116

def RemovedBody186_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody186_119 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody186_117 RemovedBody186_118

def RemovedBody186_120 : StackLang.HolProg 64 :=
.seq RemovedBody186_114 RemovedBody186_119

def RemovedBody186_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody186_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody186_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 186 5

def RemovedBody186_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody186_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody186_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody186_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody186_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody186_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody186_130 : StackLang.HolProg 64 :=
.seq RemovedBody186_128 RemovedBody186_129

def RemovedBody186_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody186_132 : StackLang.HolProg 64 :=
.seq RemovedBody186_130 RemovedBody186_131

def RemovedBody186_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody186_134 : StackLang.HolProg 64 :=
.seq RemovedBody186_132 RemovedBody186_133

def RemovedBody186_135 : StackLang.HolProg 64 :=
.seq RemovedBody186_127 RemovedBody186_134

def RemovedBody186_136 : StackLang.HolProg 64 :=
.seq RemovedBody186_126 RemovedBody186_135

def RemovedBody186_137 : StackLang.HolProg 64 :=
.seq RemovedBody186_125 RemovedBody186_136

def RemovedBody186_138 : StackLang.HolProg 64 :=
.seq RemovedBody186_124 RemovedBody186_137

def RemovedBody186_139 : StackLang.HolProg 64 :=
.seq RemovedBody186_123 RemovedBody186_138

def RemovedBody186_140 : StackLang.HolProg 64 :=
.seq RemovedBody186_122 RemovedBody186_139

def RemovedBody186_141 : StackLang.HolProg 64 :=
.seq RemovedBody186_121 RemovedBody186_140

def RemovedBody186_142 : StackLang.HolProg 64 :=
.seq RemovedBody186_120 RemovedBody186_141

def RemovedBody186_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody186_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody186_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody186_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody186_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody186_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody186_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody186_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody186_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody186_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody186_153 : StackLang.HolProg 64 :=
.seq RemovedBody186_151 RemovedBody186_152

def RemovedBody186_154 : StackLang.HolProg 64 :=
.seq RemovedBody186_150 RemovedBody186_153

def RemovedBody186_155 : StackLang.HolProg 64 :=
.seq RemovedBody186_149 RemovedBody186_154

def RemovedBody186_156 : StackLang.HolProg 64 :=
.seq RemovedBody186_148 RemovedBody186_155

def RemovedBody186_157 : StackLang.HolProg 64 :=
.seq RemovedBody186_147 RemovedBody186_156

def RemovedBody186_158 : StackLang.HolProg 64 :=
.seq RemovedBody186_146 RemovedBody186_157

def RemovedBody186_159 : StackLang.HolProg 64 :=
.seq RemovedBody186_145 RemovedBody186_158

def RemovedBody186_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody186_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody186_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody186_163 : StackLang.HolProg 64 :=
.seq RemovedBody186_161 RemovedBody186_162

def RemovedBody186_164 : StackLang.HolProg 64 :=
.seq RemovedBody186_160 RemovedBody186_163

def RemovedBody186_165 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody186_166 : StackLang.HolProg 64 :=
.seq RemovedBody186_164 RemovedBody186_165

def RemovedBody186_167 : StackLang.HolProg 64 :=
.call (some (RemovedBody186_159, 0, 186, 4)) (Sum.inl 79) (some (RemovedBody186_166, 186, 5))

def RemovedBody186_168 : StackLang.HolProg 64 :=
.seq RemovedBody186_144 RemovedBody186_167

def RemovedBody186_169 : StackLang.HolProg 64 :=
.seq RemovedBody186_143 RemovedBody186_168

def RemovedBody186_170 : StackLang.HolProg 64 :=
.seq RemovedBody186_142 RemovedBody186_169

def RemovedBody186_171 : StackLang.HolProg 64 :=
.seq RemovedBody186_113 RemovedBody186_170

def RemovedBody186_172 : StackLang.HolProg 64 :=
.seq RemovedBody186_110 RemovedBody186_171

def RemovedBody186_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody186_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody186_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody186_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody186_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody186_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody186_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody186_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody186_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def RemovedBody186_182 : StackLang.HolProg 64 :=
.seq RemovedBody186_180 RemovedBody186_181

def RemovedBody186_183 : StackLang.HolProg 64 :=
.seq RemovedBody186_179 RemovedBody186_182

def RemovedBody186_184 : StackLang.HolProg 64 :=
.seq RemovedBody186_178 RemovedBody186_183

def RemovedBody186_185 : StackLang.HolProg 64 :=
.seq RemovedBody186_177 RemovedBody186_184

def RemovedBody186_186 : StackLang.HolProg 64 :=
.seq RemovedBody186_176 RemovedBody186_185

def RemovedBody186_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody186_188 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody186_186 RemovedBody186_187

def RemovedBody186_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody186_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody186_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody186_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody186_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def RemovedBody186_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody186_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 40#64))

def RemovedBody186_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody186_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def RemovedBody186_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody186_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody186_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def RemovedBody186_201 : StackLang.HolProg 64 :=
.seq RemovedBody186_199 RemovedBody186_200

def RemovedBody186_202 : StackLang.HolProg 64 :=
.seq RemovedBody186_198 RemovedBody186_201

def RemovedBody186_203 : StackLang.HolProg 64 :=
.seq RemovedBody186_197 RemovedBody186_202

def RemovedBody186_204 : StackLang.HolProg 64 :=
.seq RemovedBody186_196 RemovedBody186_203

def RemovedBody186_205 : StackLang.HolProg 64 :=
.seq RemovedBody186_195 RemovedBody186_204

def RemovedBody186_206 : StackLang.HolProg 64 :=
.seq RemovedBody186_194 RemovedBody186_205

def RemovedBody186_207 : StackLang.HolProg 64 :=
.seq RemovedBody186_193 RemovedBody186_206

def RemovedBody186_208 : StackLang.HolProg 64 :=
.seq RemovedBody186_192 RemovedBody186_207

def RemovedBody186_209 : StackLang.HolProg 64 :=
.seq RemovedBody186_191 RemovedBody186_208

def RemovedBody186_210 : StackLang.HolProg 64 :=
.seq RemovedBody186_190 RemovedBody186_209

def RemovedBody186_211 : StackLang.HolProg 64 :=
.seq RemovedBody186_189 RemovedBody186_210

def RemovedBody186_212 : StackLang.HolProg 64 :=
.seq RemovedBody186_188 RemovedBody186_211

def RemovedBody186_213 : StackLang.HolProg 64 :=
.seq RemovedBody186_175 RemovedBody186_212

def RemovedBody186_214 : StackLang.HolProg 64 :=
.seq RemovedBody186_174 RemovedBody186_213

def RemovedBody186_215 : StackLang.HolProg 64 :=
.seq RemovedBody186_173 RemovedBody186_214

def RemovedBody186_216 : StackLang.HolProg 64 :=
.seq RemovedBody186_172 RemovedBody186_215

def RemovedBody186_217 : StackLang.HolProg 64 :=
.seq RemovedBody186_109 RemovedBody186_216

def RemovedBody186_218 : StackLang.HolProg 64 :=
.seq RemovedBody186_102 RemovedBody186_217

def RemovedBody186_219 : StackLang.HolProg 64 :=
.seq RemovedBody186_101 RemovedBody186_218

def RemovedBody186_220 : StackLang.HolProg 64 :=
.seq RemovedBody186_100 RemovedBody186_219

def RemovedBody186_221 : StackLang.HolProg 64 :=
.seq RemovedBody186_99 RemovedBody186_220

def RemovedBody186_222 : StackLang.HolProg 64 :=
.seq RemovedBody186_98 RemovedBody186_221

def RemovedBody186_223 : StackLang.HolProg 64 :=
.seq RemovedBody186_97 RemovedBody186_222

def RemovedBody186_224 : StackLang.HolProg 64 :=
.seq RemovedBody186_96 RemovedBody186_223

def RemovedBody186_225 : StackLang.HolProg 64 :=
.seq RemovedBody186_95 RemovedBody186_224

def RemovedBody186_226 : StackLang.HolProg 64 :=
.seq RemovedBody186_94 RemovedBody186_225

def RemovedBody186_227 : StackLang.HolProg 64 :=
.seq RemovedBody186_93 RemovedBody186_226

def RemovedBody186_228 : StackLang.HolProg 64 :=
.seq RemovedBody186_92 RemovedBody186_227

def RemovedBody186_229 : StackLang.HolProg 64 :=
.seq RemovedBody186_91 RemovedBody186_228

def RemovedBody186_230 : StackLang.HolProg 64 :=
.seq RemovedBody186_90 RemovedBody186_229

def RemovedBody186_231 : StackLang.HolProg 64 :=
.seq RemovedBody186_77 RemovedBody186_230

def RemovedBody186_232 : StackLang.HolProg 64 :=
.seq RemovedBody186_76 RemovedBody186_231

def RemovedBody186_233 : StackLang.HolProg 64 :=
.seq RemovedBody186_75 RemovedBody186_232

def RemovedBody186_234 : StackLang.HolProg 64 :=
.seq RemovedBody186_74 RemovedBody186_233

def RemovedBody186_235 : StackLang.HolProg 64 :=
.seq RemovedBody186_11 RemovedBody186_234

def RemovedBody186_236 : StackLang.HolProg 64 :=
.seq RemovedBody186_6 RemovedBody186_235

def Removed186 : Nat × StackLang.HolProg 64 := (186, RemovedBody186_236)
theorem Removed186_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc186 = Removed186 := by
  kernel_rfl
#print axioms Removed186_eq
end InitECandidate.Proofs.BackendStages
