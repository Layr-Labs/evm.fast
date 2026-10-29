import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc599
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody599_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody599_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody599_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody599_3 : StackLang.HolProg 64 :=
.seq RemovedBody599_1 RemovedBody599_2

def RemovedBody599_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody599_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody599_3 RemovedBody599_4

def RemovedBody599_6 : StackLang.HolProg 64 :=
.seq RemovedBody599_0 RemovedBody599_5

def RemovedBody599_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody599_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody599_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody599_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody599_11 : StackLang.HolProg 64 :=
.seq RemovedBody599_9 RemovedBody599_10

def RemovedBody599_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody599_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2273#64)

def RemovedBody599_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody599_15 : StackLang.HolProg 64 :=
.seq RemovedBody599_13 RemovedBody599_14

def RemovedBody599_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody599_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody599_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody599_19 : StackLang.HolProg 64 :=
.seq RemovedBody599_17 RemovedBody599_18

def RemovedBody599_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody599_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody599_19 RemovedBody599_20

def RemovedBody599_22 : StackLang.HolProg 64 :=
.seq RemovedBody599_16 RemovedBody599_21

def RemovedBody599_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody599_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody599_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 599 5

def RemovedBody599_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody599_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody599_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody599_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody599_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody599_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody599_32 : StackLang.HolProg 64 :=
.seq RemovedBody599_30 RemovedBody599_31

def RemovedBody599_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody599_34 : StackLang.HolProg 64 :=
.seq RemovedBody599_32 RemovedBody599_33

def RemovedBody599_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody599_36 : StackLang.HolProg 64 :=
.seq RemovedBody599_34 RemovedBody599_35

def RemovedBody599_37 : StackLang.HolProg 64 :=
.seq RemovedBody599_29 RemovedBody599_36

def RemovedBody599_38 : StackLang.HolProg 64 :=
.seq RemovedBody599_28 RemovedBody599_37

def RemovedBody599_39 : StackLang.HolProg 64 :=
.seq RemovedBody599_27 RemovedBody599_38

def RemovedBody599_40 : StackLang.HolProg 64 :=
.seq RemovedBody599_26 RemovedBody599_39

def RemovedBody599_41 : StackLang.HolProg 64 :=
.seq RemovedBody599_25 RemovedBody599_40

def RemovedBody599_42 : StackLang.HolProg 64 :=
.seq RemovedBody599_24 RemovedBody599_41

def RemovedBody599_43 : StackLang.HolProg 64 :=
.seq RemovedBody599_23 RemovedBody599_42

def RemovedBody599_44 : StackLang.HolProg 64 :=
.seq RemovedBody599_22 RemovedBody599_43

def RemovedBody599_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody599_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody599_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody599_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody599_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody599_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody599_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody599_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody599_53 : StackLang.HolProg 64 :=
.seq RemovedBody599_51 RemovedBody599_52

def RemovedBody599_54 : StackLang.HolProg 64 :=
.seq RemovedBody599_50 RemovedBody599_53

def RemovedBody599_55 : StackLang.HolProg 64 :=
.seq RemovedBody599_49 RemovedBody599_54

def RemovedBody599_56 : StackLang.HolProg 64 :=
.seq RemovedBody599_48 RemovedBody599_55

def RemovedBody599_57 : StackLang.HolProg 64 :=
.seq RemovedBody599_47 RemovedBody599_56

def RemovedBody599_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody599_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody599_60 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody599_61 : StackLang.HolProg 64 :=
.seq RemovedBody599_59 RemovedBody599_60

def RemovedBody599_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody599_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody599_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody599_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody599_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2274#64)

def RemovedBody599_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody599_68 : StackLang.HolProg 64 :=
.seq RemovedBody599_66 RemovedBody599_67

def RemovedBody599_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody599_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody599_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody599_72 : StackLang.HolProg 64 :=
.seq RemovedBody599_70 RemovedBody599_71

def RemovedBody599_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody599_74 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody599_72 RemovedBody599_73

def RemovedBody599_75 : StackLang.HolProg 64 :=
.seq RemovedBody599_69 RemovedBody599_74

def RemovedBody599_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody599_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody599_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 599 4

def RemovedBody599_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody599_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody599_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody599_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody599_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody599_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody599_85 : StackLang.HolProg 64 :=
.seq RemovedBody599_83 RemovedBody599_84

def RemovedBody599_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody599_87 : StackLang.HolProg 64 :=
.seq RemovedBody599_85 RemovedBody599_86

def RemovedBody599_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody599_89 : StackLang.HolProg 64 :=
.seq RemovedBody599_87 RemovedBody599_88

def RemovedBody599_90 : StackLang.HolProg 64 :=
.seq RemovedBody599_82 RemovedBody599_89

def RemovedBody599_91 : StackLang.HolProg 64 :=
.seq RemovedBody599_81 RemovedBody599_90

def RemovedBody599_92 : StackLang.HolProg 64 :=
.seq RemovedBody599_80 RemovedBody599_91

def RemovedBody599_93 : StackLang.HolProg 64 :=
.seq RemovedBody599_79 RemovedBody599_92

def RemovedBody599_94 : StackLang.HolProg 64 :=
.seq RemovedBody599_78 RemovedBody599_93

def RemovedBody599_95 : StackLang.HolProg 64 :=
.seq RemovedBody599_77 RemovedBody599_94

def RemovedBody599_96 : StackLang.HolProg 64 :=
.seq RemovedBody599_76 RemovedBody599_95

def RemovedBody599_97 : StackLang.HolProg 64 :=
.seq RemovedBody599_75 RemovedBody599_96

def RemovedBody599_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody599_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody599_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody599_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody599_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody599_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody599_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody599_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody599_106 : StackLang.HolProg 64 :=
.seq RemovedBody599_104 RemovedBody599_105

def RemovedBody599_107 : StackLang.HolProg 64 :=
.seq RemovedBody599_103 RemovedBody599_106

def RemovedBody599_108 : StackLang.HolProg 64 :=
.seq RemovedBody599_102 RemovedBody599_107

def RemovedBody599_109 : StackLang.HolProg 64 :=
.seq RemovedBody599_101 RemovedBody599_108

def RemovedBody599_110 : StackLang.HolProg 64 :=
.seq RemovedBody599_100 RemovedBody599_109

def RemovedBody599_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody599_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody599_113 : StackLang.HolProg 64 :=
.seq RemovedBody599_111 RemovedBody599_112

def RemovedBody599_114 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody599_115 : StackLang.HolProg 64 :=
.seq RemovedBody599_113 RemovedBody599_114

def RemovedBody599_116 : StackLang.HolProg 64 :=
.call (some (RemovedBody599_110, 0, 599, 3)) (Sum.inl 597) (some (RemovedBody599_115, 599, 4))

def RemovedBody599_117 : StackLang.HolProg 64 :=
.seq RemovedBody599_99 RemovedBody599_116

def RemovedBody599_118 : StackLang.HolProg 64 :=
.seq RemovedBody599_98 RemovedBody599_117

def RemovedBody599_119 : StackLang.HolProg 64 :=
.seq RemovedBody599_97 RemovedBody599_118

def RemovedBody599_120 : StackLang.HolProg 64 :=
.seq RemovedBody599_68 RemovedBody599_119

def RemovedBody599_121 : StackLang.HolProg 64 :=
.seq RemovedBody599_65 RemovedBody599_120

def RemovedBody599_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody599_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody599_124 : StackLang.HolProg 64 :=
.seq RemovedBody599_122 RemovedBody599_123

def RemovedBody599_125 : StackLang.HolProg 64 :=
.seq RemovedBody599_121 RemovedBody599_124

def RemovedBody599_126 : StackLang.HolProg 64 :=
.seq RemovedBody599_64 RemovedBody599_125

def RemovedBody599_127 : StackLang.HolProg 64 :=
.seq RemovedBody599_63 RemovedBody599_126

def RemovedBody599_128 : StackLang.HolProg 64 :=
.seq RemovedBody599_62 RemovedBody599_127

def RemovedBody599_129 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64) RemovedBody599_61 RemovedBody599_128

def RemovedBody599_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody599_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody599_132 : StackLang.HolProg 64 :=
.seq RemovedBody599_130 RemovedBody599_131

def RemovedBody599_133 : StackLang.HolProg 64 :=
.seq RemovedBody599_129 RemovedBody599_132

def RemovedBody599_134 : StackLang.HolProg 64 :=
.seq RemovedBody599_58 RemovedBody599_133

def RemovedBody599_135 : StackLang.HolProg 64 :=
.call (some (RemovedBody599_57, 0, 599, 2)) (Sum.inl 598) (some (RemovedBody599_134, 599, 5))

def RemovedBody599_136 : StackLang.HolProg 64 :=
.seq RemovedBody599_46 RemovedBody599_135

def RemovedBody599_137 : StackLang.HolProg 64 :=
.seq RemovedBody599_45 RemovedBody599_136

def RemovedBody599_138 : StackLang.HolProg 64 :=
.seq RemovedBody599_44 RemovedBody599_137

def RemovedBody599_139 : StackLang.HolProg 64 :=
.seq RemovedBody599_15 RemovedBody599_138

def RemovedBody599_140 : StackLang.HolProg 64 :=
.seq RemovedBody599_12 RemovedBody599_139

def RemovedBody599_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody599_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody599_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody599_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody599_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody599_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody599_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody599_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551328#64))

def RemovedBody599_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody599_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1#64)

def RemovedBody599_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody599_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody599_153 : StackLang.HolProg 64 :=
.seq RemovedBody599_151 RemovedBody599_152

def RemovedBody599_154 : StackLang.HolProg 64 :=
.seq RemovedBody599_150 RemovedBody599_153

def RemovedBody599_155 : StackLang.HolProg 64 :=
.seq RemovedBody599_149 RemovedBody599_154

def RemovedBody599_156 : StackLang.HolProg 64 :=
.seq RemovedBody599_148 RemovedBody599_155

def RemovedBody599_157 : StackLang.HolProg 64 :=
.seq RemovedBody599_147 RemovedBody599_156

def RemovedBody599_158 : StackLang.HolProg 64 :=
.seq RemovedBody599_146 RemovedBody599_157

def RemovedBody599_159 : StackLang.HolProg 64 :=
.seq RemovedBody599_145 RemovedBody599_158

def RemovedBody599_160 : StackLang.HolProg 64 :=
.seq RemovedBody599_144 RemovedBody599_159

def RemovedBody599_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody599_162 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody599_160 RemovedBody599_161

def RemovedBody599_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody599_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody599_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody599_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody599_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody599_168 : StackLang.HolProg 64 :=
.seq RemovedBody599_166 RemovedBody599_167

def RemovedBody599_169 : StackLang.HolProg 64 :=
.seq RemovedBody599_165 RemovedBody599_168

def RemovedBody599_170 : StackLang.HolProg 64 :=
.seq RemovedBody599_164 RemovedBody599_169

def RemovedBody599_171 : StackLang.HolProg 64 :=
.seq RemovedBody599_163 RemovedBody599_170

def RemovedBody599_172 : StackLang.HolProg 64 :=
.seq RemovedBody599_162 RemovedBody599_171

def RemovedBody599_173 : StackLang.HolProg 64 :=
.seq RemovedBody599_143 RemovedBody599_172

def RemovedBody599_174 : StackLang.HolProg 64 :=
.seq RemovedBody599_142 RemovedBody599_173

def RemovedBody599_175 : StackLang.HolProg 64 :=
.seq RemovedBody599_141 RemovedBody599_174

def RemovedBody599_176 : StackLang.HolProg 64 :=
.seq RemovedBody599_140 RemovedBody599_175

def RemovedBody599_177 : StackLang.HolProg 64 :=
.seq RemovedBody599_11 RemovedBody599_176

def RemovedBody599_178 : StackLang.HolProg 64 :=
.seq RemovedBody599_8 RemovedBody599_177

def RemovedBody599_179 : StackLang.HolProg 64 :=
.seq RemovedBody599_7 RemovedBody599_178

def RemovedBody599_180 : StackLang.HolProg 64 :=
.seq RemovedBody599_6 RemovedBody599_179

def Removed599 : Nat × StackLang.HolProg 64 := (599, RemovedBody599_180)
theorem Removed599_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc599 = Removed599 := by
  kernel_rfl
#print axioms Removed599_eq
end InitECandidate.Proofs.BackendStages
