import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc851
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody851_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody851_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody851_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody851_3 : StackLang.HolProg 64 :=
.seq RemovedBody851_1 RemovedBody851_2

def RemovedBody851_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody851_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody851_3 RemovedBody851_4

def RemovedBody851_6 : StackLang.HolProg 64 :=
.seq RemovedBody851_0 RemovedBody851_5

def RemovedBody851_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody851_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody851_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody851_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody851_11 : StackLang.HolProg 64 :=
.seq RemovedBody851_9 RemovedBody851_10

def RemovedBody851_12 : StackLang.HolProg 64 :=
.seq RemovedBody851_8 RemovedBody851_11

def RemovedBody851_13 : StackLang.HolProg 64 :=
.seq RemovedBody851_7 RemovedBody851_12

def RemovedBody851_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody851_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4307#64)

def RemovedBody851_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody851_17 : StackLang.HolProg 64 :=
.seq RemovedBody851_15 RemovedBody851_16

def RemovedBody851_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody851_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody851_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody851_21 : StackLang.HolProg 64 :=
.seq RemovedBody851_19 RemovedBody851_20

def RemovedBody851_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody851_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody851_21 RemovedBody851_22

def RemovedBody851_24 : StackLang.HolProg 64 :=
.seq RemovedBody851_18 RemovedBody851_23

def RemovedBody851_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody851_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody851_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 851 3

def RemovedBody851_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody851_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody851_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody851_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody851_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody851_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody851_34 : StackLang.HolProg 64 :=
.seq RemovedBody851_32 RemovedBody851_33

def RemovedBody851_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody851_36 : StackLang.HolProg 64 :=
.seq RemovedBody851_34 RemovedBody851_35

def RemovedBody851_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody851_38 : StackLang.HolProg 64 :=
.seq RemovedBody851_36 RemovedBody851_37

def RemovedBody851_39 : StackLang.HolProg 64 :=
.seq RemovedBody851_31 RemovedBody851_38

def RemovedBody851_40 : StackLang.HolProg 64 :=
.seq RemovedBody851_30 RemovedBody851_39

def RemovedBody851_41 : StackLang.HolProg 64 :=
.seq RemovedBody851_29 RemovedBody851_40

def RemovedBody851_42 : StackLang.HolProg 64 :=
.seq RemovedBody851_28 RemovedBody851_41

def RemovedBody851_43 : StackLang.HolProg 64 :=
.seq RemovedBody851_27 RemovedBody851_42

def RemovedBody851_44 : StackLang.HolProg 64 :=
.seq RemovedBody851_26 RemovedBody851_43

def RemovedBody851_45 : StackLang.HolProg 64 :=
.seq RemovedBody851_25 RemovedBody851_44

def RemovedBody851_46 : StackLang.HolProg 64 :=
.seq RemovedBody851_24 RemovedBody851_45

def RemovedBody851_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody851_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody851_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody851_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody851_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody851_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody851_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody851_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody851_55 : StackLang.HolProg 64 :=
.seq RemovedBody851_53 RemovedBody851_54

def RemovedBody851_56 : StackLang.HolProg 64 :=
.seq RemovedBody851_52 RemovedBody851_55

def RemovedBody851_57 : StackLang.HolProg 64 :=
.seq RemovedBody851_51 RemovedBody851_56

def RemovedBody851_58 : StackLang.HolProg 64 :=
.seq RemovedBody851_50 RemovedBody851_57

def RemovedBody851_59 : StackLang.HolProg 64 :=
.seq RemovedBody851_49 RemovedBody851_58

def RemovedBody851_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody851_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody851_62 : StackLang.HolProg 64 :=
.seq RemovedBody851_60 RemovedBody851_61

def RemovedBody851_63 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody851_64 : StackLang.HolProg 64 :=
.seq RemovedBody851_62 RemovedBody851_63

def RemovedBody851_65 : StackLang.HolProg 64 :=
.call (some (RemovedBody851_59, 0, 851, 2)) (Sum.inl 88) (some (RemovedBody851_64, 851, 3))

def RemovedBody851_66 : StackLang.HolProg 64 :=
.seq RemovedBody851_48 RemovedBody851_65

def RemovedBody851_67 : StackLang.HolProg 64 :=
.seq RemovedBody851_47 RemovedBody851_66

def RemovedBody851_68 : StackLang.HolProg 64 :=
.seq RemovedBody851_46 RemovedBody851_67

def RemovedBody851_69 : StackLang.HolProg 64 :=
.seq RemovedBody851_17 RemovedBody851_68

def RemovedBody851_70 : StackLang.HolProg 64 :=
.seq RemovedBody851_14 RemovedBody851_69

def RemovedBody851_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody851_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody851_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def RemovedBody851_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody851_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody851_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4308#64)

def RemovedBody851_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody851_78 : StackLang.HolProg 64 :=
.seq RemovedBody851_76 RemovedBody851_77

def RemovedBody851_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody851_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody851_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody851_82 : StackLang.HolProg 64 :=
.seq RemovedBody851_80 RemovedBody851_81

def RemovedBody851_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody851_84 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody851_82 RemovedBody851_83

def RemovedBody851_85 : StackLang.HolProg 64 :=
.seq RemovedBody851_79 RemovedBody851_84

def RemovedBody851_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody851_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody851_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 851 5

def RemovedBody851_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody851_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody851_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody851_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody851_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody851_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody851_95 : StackLang.HolProg 64 :=
.seq RemovedBody851_93 RemovedBody851_94

def RemovedBody851_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody851_97 : StackLang.HolProg 64 :=
.seq RemovedBody851_95 RemovedBody851_96

def RemovedBody851_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody851_99 : StackLang.HolProg 64 :=
.seq RemovedBody851_97 RemovedBody851_98

def RemovedBody851_100 : StackLang.HolProg 64 :=
.seq RemovedBody851_92 RemovedBody851_99

def RemovedBody851_101 : StackLang.HolProg 64 :=
.seq RemovedBody851_91 RemovedBody851_100

def RemovedBody851_102 : StackLang.HolProg 64 :=
.seq RemovedBody851_90 RemovedBody851_101

def RemovedBody851_103 : StackLang.HolProg 64 :=
.seq RemovedBody851_89 RemovedBody851_102

def RemovedBody851_104 : StackLang.HolProg 64 :=
.seq RemovedBody851_88 RemovedBody851_103

def RemovedBody851_105 : StackLang.HolProg 64 :=
.seq RemovedBody851_87 RemovedBody851_104

def RemovedBody851_106 : StackLang.HolProg 64 :=
.seq RemovedBody851_86 RemovedBody851_105

def RemovedBody851_107 : StackLang.HolProg 64 :=
.seq RemovedBody851_85 RemovedBody851_106

def RemovedBody851_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody851_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody851_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody851_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody851_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody851_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody851_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody851_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody851_116 : StackLang.HolProg 64 :=
.seq RemovedBody851_114 RemovedBody851_115

def RemovedBody851_117 : StackLang.HolProg 64 :=
.seq RemovedBody851_113 RemovedBody851_116

def RemovedBody851_118 : StackLang.HolProg 64 :=
.seq RemovedBody851_112 RemovedBody851_117

def RemovedBody851_119 : StackLang.HolProg 64 :=
.seq RemovedBody851_111 RemovedBody851_118

def RemovedBody851_120 : StackLang.HolProg 64 :=
.seq RemovedBody851_110 RemovedBody851_119

def RemovedBody851_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody851_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody851_123 : StackLang.HolProg 64 :=
.seq RemovedBody851_121 RemovedBody851_122

def RemovedBody851_124 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody851_125 : StackLang.HolProg 64 :=
.seq RemovedBody851_123 RemovedBody851_124

def RemovedBody851_126 : StackLang.HolProg 64 :=
.call (some (RemovedBody851_120, 0, 851, 4)) (Sum.inl 89) (some (RemovedBody851_125, 851, 5))

def RemovedBody851_127 : StackLang.HolProg 64 :=
.seq RemovedBody851_109 RemovedBody851_126

def RemovedBody851_128 : StackLang.HolProg 64 :=
.seq RemovedBody851_108 RemovedBody851_127

def RemovedBody851_129 : StackLang.HolProg 64 :=
.seq RemovedBody851_107 RemovedBody851_128

def RemovedBody851_130 : StackLang.HolProg 64 :=
.seq RemovedBody851_78 RemovedBody851_129

def RemovedBody851_131 : StackLang.HolProg 64 :=
.seq RemovedBody851_75 RemovedBody851_130

def RemovedBody851_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody851_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody851_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 12#64)))

def RemovedBody851_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody851_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody851_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4309#64)

def RemovedBody851_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody851_139 : StackLang.HolProg 64 :=
.seq RemovedBody851_137 RemovedBody851_138

def RemovedBody851_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody851_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody851_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody851_143 : StackLang.HolProg 64 :=
.seq RemovedBody851_141 RemovedBody851_142

def RemovedBody851_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody851_145 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody851_143 RemovedBody851_144

def RemovedBody851_146 : StackLang.HolProg 64 :=
.seq RemovedBody851_140 RemovedBody851_145

def RemovedBody851_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody851_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody851_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 851 7

def RemovedBody851_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody851_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody851_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody851_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody851_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody851_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody851_156 : StackLang.HolProg 64 :=
.seq RemovedBody851_154 RemovedBody851_155

def RemovedBody851_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody851_158 : StackLang.HolProg 64 :=
.seq RemovedBody851_156 RemovedBody851_157

def RemovedBody851_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody851_160 : StackLang.HolProg 64 :=
.seq RemovedBody851_158 RemovedBody851_159

def RemovedBody851_161 : StackLang.HolProg 64 :=
.seq RemovedBody851_153 RemovedBody851_160

def RemovedBody851_162 : StackLang.HolProg 64 :=
.seq RemovedBody851_152 RemovedBody851_161

def RemovedBody851_163 : StackLang.HolProg 64 :=
.seq RemovedBody851_151 RemovedBody851_162

def RemovedBody851_164 : StackLang.HolProg 64 :=
.seq RemovedBody851_150 RemovedBody851_163

def RemovedBody851_165 : StackLang.HolProg 64 :=
.seq RemovedBody851_149 RemovedBody851_164

def RemovedBody851_166 : StackLang.HolProg 64 :=
.seq RemovedBody851_148 RemovedBody851_165

def RemovedBody851_167 : StackLang.HolProg 64 :=
.seq RemovedBody851_147 RemovedBody851_166

def RemovedBody851_168 : StackLang.HolProg 64 :=
.seq RemovedBody851_146 RemovedBody851_167

def RemovedBody851_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody851_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody851_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody851_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody851_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody851_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody851_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody851_176 : StackLang.HolProg 64 :=
.seq RemovedBody851_174 RemovedBody851_175

def RemovedBody851_177 : StackLang.HolProg 64 :=
.seq RemovedBody851_173 RemovedBody851_176

def RemovedBody851_178 : StackLang.HolProg 64 :=
.seq RemovedBody851_172 RemovedBody851_177

def RemovedBody851_179 : StackLang.HolProg 64 :=
.seq RemovedBody851_171 RemovedBody851_178

def RemovedBody851_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody851_181 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody851_182 : StackLang.HolProg 64 :=
.seq RemovedBody851_180 RemovedBody851_181

def RemovedBody851_183 : StackLang.HolProg 64 :=
.call (some (RemovedBody851_179, 0, 851, 6)) (Sum.inl 89) (some (RemovedBody851_182, 851, 7))

def RemovedBody851_184 : StackLang.HolProg 64 :=
.seq RemovedBody851_170 RemovedBody851_183

def RemovedBody851_185 : StackLang.HolProg 64 :=
.seq RemovedBody851_169 RemovedBody851_184

def RemovedBody851_186 : StackLang.HolProg 64 :=
.seq RemovedBody851_168 RemovedBody851_185

def RemovedBody851_187 : StackLang.HolProg 64 :=
.seq RemovedBody851_139 RemovedBody851_186

def RemovedBody851_188 : StackLang.HolProg 64 :=
.seq RemovedBody851_136 RemovedBody851_187

def RemovedBody851_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody851_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody851_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody851_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody851_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody851_194 : StackLang.HolProg 64 :=
.seq RemovedBody851_192 RemovedBody851_193

def RemovedBody851_195 : StackLang.HolProg 64 :=
.seq RemovedBody851_191 RemovedBody851_194

def RemovedBody851_196 : StackLang.HolProg 64 :=
.seq RemovedBody851_190 RemovedBody851_195

def RemovedBody851_197 : StackLang.HolProg 64 :=
.seq RemovedBody851_189 RemovedBody851_196

def RemovedBody851_198 : StackLang.HolProg 64 :=
.seq RemovedBody851_188 RemovedBody851_197

def RemovedBody851_199 : StackLang.HolProg 64 :=
.seq RemovedBody851_135 RemovedBody851_198

def RemovedBody851_200 : StackLang.HolProg 64 :=
.seq RemovedBody851_134 RemovedBody851_199

def RemovedBody851_201 : StackLang.HolProg 64 :=
.seq RemovedBody851_133 RemovedBody851_200

def RemovedBody851_202 : StackLang.HolProg 64 :=
.seq RemovedBody851_132 RemovedBody851_201

def RemovedBody851_203 : StackLang.HolProg 64 :=
.seq RemovedBody851_131 RemovedBody851_202

def RemovedBody851_204 : StackLang.HolProg 64 :=
.seq RemovedBody851_74 RemovedBody851_203

def RemovedBody851_205 : StackLang.HolProg 64 :=
.seq RemovedBody851_73 RemovedBody851_204

def RemovedBody851_206 : StackLang.HolProg 64 :=
.seq RemovedBody851_72 RemovedBody851_205

def RemovedBody851_207 : StackLang.HolProg 64 :=
.seq RemovedBody851_71 RemovedBody851_206

def RemovedBody851_208 : StackLang.HolProg 64 :=
.seq RemovedBody851_70 RemovedBody851_207

def RemovedBody851_209 : StackLang.HolProg 64 :=
.seq RemovedBody851_13 RemovedBody851_208

def RemovedBody851_210 : StackLang.HolProg 64 :=
.seq RemovedBody851_6 RemovedBody851_209

def Removed851 : Nat × StackLang.HolProg 64 := (851, RemovedBody851_210)
theorem Removed851_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc851 = Removed851 := by
  kernel_rfl
#print axioms Removed851_eq
end InitECandidate.Proofs.BackendStages
