import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc751
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody751_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody751_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody751_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody751_3 : StackLang.HolProg 64 :=
.seq RemovedBody751_1 RemovedBody751_2

def RemovedBody751_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody751_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody751_3 RemovedBody751_4

def RemovedBody751_6 : StackLang.HolProg 64 :=
.seq RemovedBody751_0 RemovedBody751_5

def RemovedBody751_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody751_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody751_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody751_10 : StackLang.HolProg 64 :=
.seq RemovedBody751_8 RemovedBody751_9

def RemovedBody751_11 : StackLang.HolProg 64 :=
.seq RemovedBody751_7 RemovedBody751_10

def RemovedBody751_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody751_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3317#64)

def RemovedBody751_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody751_15 : StackLang.HolProg 64 :=
.seq RemovedBody751_13 RemovedBody751_14

def RemovedBody751_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody751_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody751_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody751_19 : StackLang.HolProg 64 :=
.seq RemovedBody751_17 RemovedBody751_18

def RemovedBody751_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody751_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody751_19 RemovedBody751_20

def RemovedBody751_22 : StackLang.HolProg 64 :=
.seq RemovedBody751_16 RemovedBody751_21

def RemovedBody751_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody751_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody751_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 751 3

def RemovedBody751_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody751_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody751_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody751_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody751_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody751_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody751_32 : StackLang.HolProg 64 :=
.seq RemovedBody751_30 RemovedBody751_31

def RemovedBody751_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody751_34 : StackLang.HolProg 64 :=
.seq RemovedBody751_32 RemovedBody751_33

def RemovedBody751_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody751_36 : StackLang.HolProg 64 :=
.seq RemovedBody751_34 RemovedBody751_35

def RemovedBody751_37 : StackLang.HolProg 64 :=
.seq RemovedBody751_29 RemovedBody751_36

def RemovedBody751_38 : StackLang.HolProg 64 :=
.seq RemovedBody751_28 RemovedBody751_37

def RemovedBody751_39 : StackLang.HolProg 64 :=
.seq RemovedBody751_27 RemovedBody751_38

def RemovedBody751_40 : StackLang.HolProg 64 :=
.seq RemovedBody751_26 RemovedBody751_39

def RemovedBody751_41 : StackLang.HolProg 64 :=
.seq RemovedBody751_25 RemovedBody751_40

def RemovedBody751_42 : StackLang.HolProg 64 :=
.seq RemovedBody751_24 RemovedBody751_41

def RemovedBody751_43 : StackLang.HolProg 64 :=
.seq RemovedBody751_23 RemovedBody751_42

def RemovedBody751_44 : StackLang.HolProg 64 :=
.seq RemovedBody751_22 RemovedBody751_43

def RemovedBody751_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody751_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody751_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody751_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody751_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody751_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody751_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody751_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody751_53 : StackLang.HolProg 64 :=
.seq RemovedBody751_51 RemovedBody751_52

def RemovedBody751_54 : StackLang.HolProg 64 :=
.seq RemovedBody751_50 RemovedBody751_53

def RemovedBody751_55 : StackLang.HolProg 64 :=
.seq RemovedBody751_49 RemovedBody751_54

def RemovedBody751_56 : StackLang.HolProg 64 :=
.seq RemovedBody751_48 RemovedBody751_55

def RemovedBody751_57 : StackLang.HolProg 64 :=
.seq RemovedBody751_47 RemovedBody751_56

def RemovedBody751_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody751_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody751_60 : StackLang.HolProg 64 :=
.seq RemovedBody751_58 RemovedBody751_59

def RemovedBody751_61 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody751_62 : StackLang.HolProg 64 :=
.seq RemovedBody751_60 RemovedBody751_61

def RemovedBody751_63 : StackLang.HolProg 64 :=
.call (some (RemovedBody751_57, 0, 751, 2)) (Sum.inl 736) (some (RemovedBody751_62, 751, 3))

def RemovedBody751_64 : StackLang.HolProg 64 :=
.seq RemovedBody751_46 RemovedBody751_63

def RemovedBody751_65 : StackLang.HolProg 64 :=
.seq RemovedBody751_45 RemovedBody751_64

def RemovedBody751_66 : StackLang.HolProg 64 :=
.seq RemovedBody751_44 RemovedBody751_65

def RemovedBody751_67 : StackLang.HolProg 64 :=
.seq RemovedBody751_15 RemovedBody751_66

def RemovedBody751_68 : StackLang.HolProg 64 :=
.seq RemovedBody751_12 RemovedBody751_67

def RemovedBody751_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody751_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody751_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def RemovedBody751_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody751_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def RemovedBody751_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody751_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody751_76 : StackLang.HolProg 64 :=
.seq RemovedBody751_74 RemovedBody751_75

def RemovedBody751_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody751_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3318#64)

def RemovedBody751_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody751_80 : StackLang.HolProg 64 :=
.seq RemovedBody751_78 RemovedBody751_79

def RemovedBody751_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody751_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody751_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody751_84 : StackLang.HolProg 64 :=
.seq RemovedBody751_82 RemovedBody751_83

def RemovedBody751_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody751_86 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody751_84 RemovedBody751_85

def RemovedBody751_87 : StackLang.HolProg 64 :=
.seq RemovedBody751_81 RemovedBody751_86

def RemovedBody751_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody751_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody751_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 751 5

def RemovedBody751_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody751_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody751_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody751_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody751_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody751_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody751_97 : StackLang.HolProg 64 :=
.seq RemovedBody751_95 RemovedBody751_96

def RemovedBody751_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody751_99 : StackLang.HolProg 64 :=
.seq RemovedBody751_97 RemovedBody751_98

def RemovedBody751_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody751_101 : StackLang.HolProg 64 :=
.seq RemovedBody751_99 RemovedBody751_100

def RemovedBody751_102 : StackLang.HolProg 64 :=
.seq RemovedBody751_94 RemovedBody751_101

def RemovedBody751_103 : StackLang.HolProg 64 :=
.seq RemovedBody751_93 RemovedBody751_102

def RemovedBody751_104 : StackLang.HolProg 64 :=
.seq RemovedBody751_92 RemovedBody751_103

def RemovedBody751_105 : StackLang.HolProg 64 :=
.seq RemovedBody751_91 RemovedBody751_104

def RemovedBody751_106 : StackLang.HolProg 64 :=
.seq RemovedBody751_90 RemovedBody751_105

def RemovedBody751_107 : StackLang.HolProg 64 :=
.seq RemovedBody751_89 RemovedBody751_106

def RemovedBody751_108 : StackLang.HolProg 64 :=
.seq RemovedBody751_88 RemovedBody751_107

def RemovedBody751_109 : StackLang.HolProg 64 :=
.seq RemovedBody751_87 RemovedBody751_108

def RemovedBody751_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody751_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody751_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody751_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody751_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody751_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody751_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody751_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody751_118 : StackLang.HolProg 64 :=
.seq RemovedBody751_116 RemovedBody751_117

def RemovedBody751_119 : StackLang.HolProg 64 :=
.seq RemovedBody751_115 RemovedBody751_118

def RemovedBody751_120 : StackLang.HolProg 64 :=
.seq RemovedBody751_114 RemovedBody751_119

def RemovedBody751_121 : StackLang.HolProg 64 :=
.seq RemovedBody751_113 RemovedBody751_120

def RemovedBody751_122 : StackLang.HolProg 64 :=
.seq RemovedBody751_112 RemovedBody751_121

def RemovedBody751_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody751_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody751_125 : StackLang.HolProg 64 :=
.seq RemovedBody751_123 RemovedBody751_124

def RemovedBody751_126 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody751_127 : StackLang.HolProg 64 :=
.seq RemovedBody751_125 RemovedBody751_126

def RemovedBody751_128 : StackLang.HolProg 64 :=
.call (some (RemovedBody751_122, 0, 751, 4)) (Sum.inl 736) (some (RemovedBody751_127, 751, 5))

def RemovedBody751_129 : StackLang.HolProg 64 :=
.seq RemovedBody751_111 RemovedBody751_128

def RemovedBody751_130 : StackLang.HolProg 64 :=
.seq RemovedBody751_110 RemovedBody751_129

def RemovedBody751_131 : StackLang.HolProg 64 :=
.seq RemovedBody751_109 RemovedBody751_130

def RemovedBody751_132 : StackLang.HolProg 64 :=
.seq RemovedBody751_80 RemovedBody751_131

def RemovedBody751_133 : StackLang.HolProg 64 :=
.seq RemovedBody751_77 RemovedBody751_132

def RemovedBody751_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody751_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody751_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def RemovedBody751_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody751_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def RemovedBody751_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody751_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody751_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3319#64)

def RemovedBody751_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody751_143 : StackLang.HolProg 64 :=
.seq RemovedBody751_141 RemovedBody751_142

def RemovedBody751_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody751_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody751_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody751_147 : StackLang.HolProg 64 :=
.seq RemovedBody751_145 RemovedBody751_146

def RemovedBody751_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody751_149 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody751_147 RemovedBody751_148

def RemovedBody751_150 : StackLang.HolProg 64 :=
.seq RemovedBody751_144 RemovedBody751_149

def RemovedBody751_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody751_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody751_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 751 7

def RemovedBody751_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody751_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody751_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody751_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody751_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody751_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody751_160 : StackLang.HolProg 64 :=
.seq RemovedBody751_158 RemovedBody751_159

def RemovedBody751_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody751_162 : StackLang.HolProg 64 :=
.seq RemovedBody751_160 RemovedBody751_161

def RemovedBody751_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody751_164 : StackLang.HolProg 64 :=
.seq RemovedBody751_162 RemovedBody751_163

def RemovedBody751_165 : StackLang.HolProg 64 :=
.seq RemovedBody751_157 RemovedBody751_164

def RemovedBody751_166 : StackLang.HolProg 64 :=
.seq RemovedBody751_156 RemovedBody751_165

def RemovedBody751_167 : StackLang.HolProg 64 :=
.seq RemovedBody751_155 RemovedBody751_166

def RemovedBody751_168 : StackLang.HolProg 64 :=
.seq RemovedBody751_154 RemovedBody751_167

def RemovedBody751_169 : StackLang.HolProg 64 :=
.seq RemovedBody751_153 RemovedBody751_168

def RemovedBody751_170 : StackLang.HolProg 64 :=
.seq RemovedBody751_152 RemovedBody751_169

def RemovedBody751_171 : StackLang.HolProg 64 :=
.seq RemovedBody751_151 RemovedBody751_170

def RemovedBody751_172 : StackLang.HolProg 64 :=
.seq RemovedBody751_150 RemovedBody751_171

def RemovedBody751_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody751_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody751_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody751_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody751_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody751_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody751_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody751_180 : StackLang.HolProg 64 :=
.seq RemovedBody751_178 RemovedBody751_179

def RemovedBody751_181 : StackLang.HolProg 64 :=
.seq RemovedBody751_177 RemovedBody751_180

def RemovedBody751_182 : StackLang.HolProg 64 :=
.seq RemovedBody751_176 RemovedBody751_181

def RemovedBody751_183 : StackLang.HolProg 64 :=
.seq RemovedBody751_175 RemovedBody751_182

def RemovedBody751_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody751_185 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody751_186 : StackLang.HolProg 64 :=
.seq RemovedBody751_184 RemovedBody751_185

def RemovedBody751_187 : StackLang.HolProg 64 :=
.call (some (RemovedBody751_183, 0, 751, 6)) (Sum.inl 736) (some (RemovedBody751_186, 751, 7))

def RemovedBody751_188 : StackLang.HolProg 64 :=
.seq RemovedBody751_174 RemovedBody751_187

def RemovedBody751_189 : StackLang.HolProg 64 :=
.seq RemovedBody751_173 RemovedBody751_188

def RemovedBody751_190 : StackLang.HolProg 64 :=
.seq RemovedBody751_172 RemovedBody751_189

def RemovedBody751_191 : StackLang.HolProg 64 :=
.seq RemovedBody751_143 RemovedBody751_190

def RemovedBody751_192 : StackLang.HolProg 64 :=
.seq RemovedBody751_140 RemovedBody751_191

def RemovedBody751_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody751_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody751_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody751_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody751_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody751_198 : StackLang.HolProg 64 :=
.seq RemovedBody751_196 RemovedBody751_197

def RemovedBody751_199 : StackLang.HolProg 64 :=
.seq RemovedBody751_195 RemovedBody751_198

def RemovedBody751_200 : StackLang.HolProg 64 :=
.seq RemovedBody751_194 RemovedBody751_199

def RemovedBody751_201 : StackLang.HolProg 64 :=
.seq RemovedBody751_193 RemovedBody751_200

def RemovedBody751_202 : StackLang.HolProg 64 :=
.seq RemovedBody751_192 RemovedBody751_201

def RemovedBody751_203 : StackLang.HolProg 64 :=
.seq RemovedBody751_139 RemovedBody751_202

def RemovedBody751_204 : StackLang.HolProg 64 :=
.seq RemovedBody751_138 RemovedBody751_203

def RemovedBody751_205 : StackLang.HolProg 64 :=
.seq RemovedBody751_137 RemovedBody751_204

def RemovedBody751_206 : StackLang.HolProg 64 :=
.seq RemovedBody751_136 RemovedBody751_205

def RemovedBody751_207 : StackLang.HolProg 64 :=
.seq RemovedBody751_135 RemovedBody751_206

def RemovedBody751_208 : StackLang.HolProg 64 :=
.seq RemovedBody751_134 RemovedBody751_207

def RemovedBody751_209 : StackLang.HolProg 64 :=
.seq RemovedBody751_133 RemovedBody751_208

def RemovedBody751_210 : StackLang.HolProg 64 :=
.seq RemovedBody751_76 RemovedBody751_209

def RemovedBody751_211 : StackLang.HolProg 64 :=
.seq RemovedBody751_73 RemovedBody751_210

def RemovedBody751_212 : StackLang.HolProg 64 :=
.seq RemovedBody751_72 RemovedBody751_211

def RemovedBody751_213 : StackLang.HolProg 64 :=
.seq RemovedBody751_71 RemovedBody751_212

def RemovedBody751_214 : StackLang.HolProg 64 :=
.seq RemovedBody751_70 RemovedBody751_213

def RemovedBody751_215 : StackLang.HolProg 64 :=
.seq RemovedBody751_69 RemovedBody751_214

def RemovedBody751_216 : StackLang.HolProg 64 :=
.seq RemovedBody751_68 RemovedBody751_215

def RemovedBody751_217 : StackLang.HolProg 64 :=
.seq RemovedBody751_11 RemovedBody751_216

def RemovedBody751_218 : StackLang.HolProg 64 :=
.seq RemovedBody751_6 RemovedBody751_217

def Removed751 : Nat × StackLang.HolProg 64 := (751, RemovedBody751_218)
theorem Removed751_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc751 = Removed751 := by
  kernel_rfl
#print axioms Removed751_eq
end InitECandidate.Proofs.BackendStages
