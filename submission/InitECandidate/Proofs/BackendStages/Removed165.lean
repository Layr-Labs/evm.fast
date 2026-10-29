import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc165
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody165_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody165_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody165_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody165_3 : StackLang.HolProg 64 :=
.seq RemovedBody165_1 RemovedBody165_2

def RemovedBody165_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody165_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody165_3 RemovedBody165_4

def RemovedBody165_6 : StackLang.HolProg 64 :=
.seq RemovedBody165_0 RemovedBody165_5

def RemovedBody165_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody165_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody165_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody165_10 : StackLang.HolProg 64 :=
.seq RemovedBody165_8 RemovedBody165_9

def RemovedBody165_11 : StackLang.HolProg 64 :=
.seq RemovedBody165_7 RemovedBody165_10

def RemovedBody165_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody165_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 178#64)

def RemovedBody165_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody165_15 : StackLang.HolProg 64 :=
.seq RemovedBody165_13 RemovedBody165_14

def RemovedBody165_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody165_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody165_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody165_19 : StackLang.HolProg 64 :=
.seq RemovedBody165_17 RemovedBody165_18

def RemovedBody165_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody165_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody165_19 RemovedBody165_20

def RemovedBody165_22 : StackLang.HolProg 64 :=
.seq RemovedBody165_16 RemovedBody165_21

def RemovedBody165_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody165_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody165_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 165 3

def RemovedBody165_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody165_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody165_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody165_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody165_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody165_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody165_32 : StackLang.HolProg 64 :=
.seq RemovedBody165_30 RemovedBody165_31

def RemovedBody165_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody165_34 : StackLang.HolProg 64 :=
.seq RemovedBody165_32 RemovedBody165_33

def RemovedBody165_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody165_36 : StackLang.HolProg 64 :=
.seq RemovedBody165_34 RemovedBody165_35

def RemovedBody165_37 : StackLang.HolProg 64 :=
.seq RemovedBody165_29 RemovedBody165_36

def RemovedBody165_38 : StackLang.HolProg 64 :=
.seq RemovedBody165_28 RemovedBody165_37

def RemovedBody165_39 : StackLang.HolProg 64 :=
.seq RemovedBody165_27 RemovedBody165_38

def RemovedBody165_40 : StackLang.HolProg 64 :=
.seq RemovedBody165_26 RemovedBody165_39

def RemovedBody165_41 : StackLang.HolProg 64 :=
.seq RemovedBody165_25 RemovedBody165_40

def RemovedBody165_42 : StackLang.HolProg 64 :=
.seq RemovedBody165_24 RemovedBody165_41

def RemovedBody165_43 : StackLang.HolProg 64 :=
.seq RemovedBody165_23 RemovedBody165_42

def RemovedBody165_44 : StackLang.HolProg 64 :=
.seq RemovedBody165_22 RemovedBody165_43

def RemovedBody165_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody165_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody165_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody165_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody165_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody165_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody165_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody165_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody165_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody165_54 : StackLang.HolProg 64 :=
.seq RemovedBody165_52 RemovedBody165_53

def RemovedBody165_55 : StackLang.HolProg 64 :=
.seq RemovedBody165_51 RemovedBody165_54

def RemovedBody165_56 : StackLang.HolProg 64 :=
.seq RemovedBody165_50 RemovedBody165_55

def RemovedBody165_57 : StackLang.HolProg 64 :=
.seq RemovedBody165_49 RemovedBody165_56

def RemovedBody165_58 : StackLang.HolProg 64 :=
.seq RemovedBody165_48 RemovedBody165_57

def RemovedBody165_59 : StackLang.HolProg 64 :=
.seq RemovedBody165_47 RemovedBody165_58

def RemovedBody165_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody165_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody165_62 : StackLang.HolProg 64 :=
.seq RemovedBody165_60 RemovedBody165_61

def RemovedBody165_63 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody165_64 : StackLang.HolProg 64 :=
.seq RemovedBody165_62 RemovedBody165_63

def RemovedBody165_65 : StackLang.HolProg 64 :=
.call (some (RemovedBody165_59, 0, 165, 2)) (Sum.inl 75) (some (RemovedBody165_64, 165, 3))

def RemovedBody165_66 : StackLang.HolProg 64 :=
.seq RemovedBody165_46 RemovedBody165_65

def RemovedBody165_67 : StackLang.HolProg 64 :=
.seq RemovedBody165_45 RemovedBody165_66

def RemovedBody165_68 : StackLang.HolProg 64 :=
.seq RemovedBody165_44 RemovedBody165_67

def RemovedBody165_69 : StackLang.HolProg 64 :=
.seq RemovedBody165_15 RemovedBody165_68

def RemovedBody165_70 : StackLang.HolProg 64 :=
.seq RemovedBody165_12 RemovedBody165_69

def RemovedBody165_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody165_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody165_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody165_74 : StackLang.HolProg 64 :=
.seq RemovedBody165_72 RemovedBody165_73

def RemovedBody165_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody165_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 179#64)

def RemovedBody165_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody165_78 : StackLang.HolProg 64 :=
.seq RemovedBody165_76 RemovedBody165_77

def RemovedBody165_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody165_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody165_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody165_82 : StackLang.HolProg 64 :=
.seq RemovedBody165_80 RemovedBody165_81

def RemovedBody165_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody165_84 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody165_82 RemovedBody165_83

def RemovedBody165_85 : StackLang.HolProg 64 :=
.seq RemovedBody165_79 RemovedBody165_84

def RemovedBody165_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody165_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody165_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 165 7

def RemovedBody165_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody165_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody165_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody165_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody165_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody165_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody165_95 : StackLang.HolProg 64 :=
.seq RemovedBody165_93 RemovedBody165_94

def RemovedBody165_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody165_97 : StackLang.HolProg 64 :=
.seq RemovedBody165_95 RemovedBody165_96

def RemovedBody165_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody165_99 : StackLang.HolProg 64 :=
.seq RemovedBody165_97 RemovedBody165_98

def RemovedBody165_100 : StackLang.HolProg 64 :=
.seq RemovedBody165_92 RemovedBody165_99

def RemovedBody165_101 : StackLang.HolProg 64 :=
.seq RemovedBody165_91 RemovedBody165_100

def RemovedBody165_102 : StackLang.HolProg 64 :=
.seq RemovedBody165_90 RemovedBody165_101

def RemovedBody165_103 : StackLang.HolProg 64 :=
.seq RemovedBody165_89 RemovedBody165_102

def RemovedBody165_104 : StackLang.HolProg 64 :=
.seq RemovedBody165_88 RemovedBody165_103

def RemovedBody165_105 : StackLang.HolProg 64 :=
.seq RemovedBody165_87 RemovedBody165_104

def RemovedBody165_106 : StackLang.HolProg 64 :=
.seq RemovedBody165_86 RemovedBody165_105

def RemovedBody165_107 : StackLang.HolProg 64 :=
.seq RemovedBody165_85 RemovedBody165_106

def RemovedBody165_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody165_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody165_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody165_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody165_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody165_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody165_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody165_115 : StackLang.HolProg 64 :=
.seq RemovedBody165_113 RemovedBody165_114

def RemovedBody165_116 : StackLang.HolProg 64 :=
.seq RemovedBody165_112 RemovedBody165_115

def RemovedBody165_117 : StackLang.HolProg 64 :=
.seq RemovedBody165_111 RemovedBody165_116

def RemovedBody165_118 : StackLang.HolProg 64 :=
.seq RemovedBody165_110 RemovedBody165_117

def RemovedBody165_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody165_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody165_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody165_122 : StackLang.HolProg 64 :=
.seq RemovedBody165_120 RemovedBody165_121

def RemovedBody165_123 : StackLang.HolProg 64 :=
.seq RemovedBody165_119 RemovedBody165_122

def RemovedBody165_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody165_125 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody165_126 : StackLang.HolProg 64 :=
.seq RemovedBody165_124 RemovedBody165_125

def RemovedBody165_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody165_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody165_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody165_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody165_131 : StackLang.HolProg 64 :=
.seq RemovedBody165_129 RemovedBody165_130

def RemovedBody165_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody165_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 180#64)

def RemovedBody165_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody165_135 : StackLang.HolProg 64 :=
.seq RemovedBody165_133 RemovedBody165_134

def RemovedBody165_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody165_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody165_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody165_139 : StackLang.HolProg 64 :=
.seq RemovedBody165_137 RemovedBody165_138

def RemovedBody165_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody165_141 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody165_139 RemovedBody165_140

def RemovedBody165_142 : StackLang.HolProg 64 :=
.seq RemovedBody165_136 RemovedBody165_141

def RemovedBody165_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody165_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody165_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 165 6

def RemovedBody165_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody165_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody165_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody165_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody165_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody165_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody165_152 : StackLang.HolProg 64 :=
.seq RemovedBody165_150 RemovedBody165_151

def RemovedBody165_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody165_154 : StackLang.HolProg 64 :=
.seq RemovedBody165_152 RemovedBody165_153

def RemovedBody165_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody165_156 : StackLang.HolProg 64 :=
.seq RemovedBody165_154 RemovedBody165_155

def RemovedBody165_157 : StackLang.HolProg 64 :=
.seq RemovedBody165_149 RemovedBody165_156

def RemovedBody165_158 : StackLang.HolProg 64 :=
.seq RemovedBody165_148 RemovedBody165_157

def RemovedBody165_159 : StackLang.HolProg 64 :=
.seq RemovedBody165_147 RemovedBody165_158

def RemovedBody165_160 : StackLang.HolProg 64 :=
.seq RemovedBody165_146 RemovedBody165_159

def RemovedBody165_161 : StackLang.HolProg 64 :=
.seq RemovedBody165_145 RemovedBody165_160

def RemovedBody165_162 : StackLang.HolProg 64 :=
.seq RemovedBody165_144 RemovedBody165_161

def RemovedBody165_163 : StackLang.HolProg 64 :=
.seq RemovedBody165_143 RemovedBody165_162

def RemovedBody165_164 : StackLang.HolProg 64 :=
.seq RemovedBody165_142 RemovedBody165_163

def RemovedBody165_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody165_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody165_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody165_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody165_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody165_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody165_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody165_172 : StackLang.HolProg 64 :=
.seq RemovedBody165_170 RemovedBody165_171

def RemovedBody165_173 : StackLang.HolProg 64 :=
.seq RemovedBody165_169 RemovedBody165_172

def RemovedBody165_174 : StackLang.HolProg 64 :=
.seq RemovedBody165_168 RemovedBody165_173

def RemovedBody165_175 : StackLang.HolProg 64 :=
.seq RemovedBody165_167 RemovedBody165_174

def RemovedBody165_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody165_177 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody165_178 : StackLang.HolProg 64 :=
.seq RemovedBody165_176 RemovedBody165_177

def RemovedBody165_179 : StackLang.HolProg 64 :=
.call (some (RemovedBody165_175, 0, 165, 5)) (Sum.inl 76) (some (RemovedBody165_178, 165, 6))

def RemovedBody165_180 : StackLang.HolProg 64 :=
.seq RemovedBody165_166 RemovedBody165_179

def RemovedBody165_181 : StackLang.HolProg 64 :=
.seq RemovedBody165_165 RemovedBody165_180

def RemovedBody165_182 : StackLang.HolProg 64 :=
.seq RemovedBody165_164 RemovedBody165_181

def RemovedBody165_183 : StackLang.HolProg 64 :=
.seq RemovedBody165_135 RemovedBody165_182

def RemovedBody165_184 : StackLang.HolProg 64 :=
.seq RemovedBody165_132 RemovedBody165_183

def RemovedBody165_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody165_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody165_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody165_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody165_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody165_190 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody165_191 : StackLang.HolProg 64 :=
.seq RemovedBody165_189 RemovedBody165_190

def RemovedBody165_192 : StackLang.HolProg 64 :=
.seq RemovedBody165_188 RemovedBody165_191

def RemovedBody165_193 : StackLang.HolProg 64 :=
.seq RemovedBody165_187 RemovedBody165_192

def RemovedBody165_194 : StackLang.HolProg 64 :=
.seq RemovedBody165_186 RemovedBody165_193

def RemovedBody165_195 : StackLang.HolProg 64 :=
.seq RemovedBody165_185 RemovedBody165_194

def RemovedBody165_196 : StackLang.HolProg 64 :=
.seq RemovedBody165_184 RemovedBody165_195

def RemovedBody165_197 : StackLang.HolProg 64 :=
.seq RemovedBody165_131 RemovedBody165_196

def RemovedBody165_198 : StackLang.HolProg 64 :=
.seq RemovedBody165_128 RemovedBody165_197

def RemovedBody165_199 : StackLang.HolProg 64 :=
.seq RemovedBody165_127 RemovedBody165_198

def RemovedBody165_200 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64) RemovedBody165_126 RemovedBody165_199

def RemovedBody165_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody165_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody165_203 : StackLang.HolProg 64 :=
.seq RemovedBody165_201 RemovedBody165_202

def RemovedBody165_204 : StackLang.HolProg 64 :=
.seq RemovedBody165_200 RemovedBody165_203

def RemovedBody165_205 : StackLang.HolProg 64 :=
.seq RemovedBody165_123 RemovedBody165_204

def RemovedBody165_206 : StackLang.HolProg 64 :=
.call (some (RemovedBody165_118, 0, 165, 4)) (Sum.inl 164) (some (RemovedBody165_205, 165, 7))

def RemovedBody165_207 : StackLang.HolProg 64 :=
.seq RemovedBody165_109 RemovedBody165_206

def RemovedBody165_208 : StackLang.HolProg 64 :=
.seq RemovedBody165_108 RemovedBody165_207

def RemovedBody165_209 : StackLang.HolProg 64 :=
.seq RemovedBody165_107 RemovedBody165_208

def RemovedBody165_210 : StackLang.HolProg 64 :=
.seq RemovedBody165_78 RemovedBody165_209

def RemovedBody165_211 : StackLang.HolProg 64 :=
.seq RemovedBody165_75 RemovedBody165_210

def RemovedBody165_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody165_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody165_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody165_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 181#64)

def RemovedBody165_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody165_217 : StackLang.HolProg 64 :=
.seq RemovedBody165_215 RemovedBody165_216

def RemovedBody165_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody165_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody165_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody165_221 : StackLang.HolProg 64 :=
.seq RemovedBody165_219 RemovedBody165_220

def RemovedBody165_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody165_223 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody165_221 RemovedBody165_222

def RemovedBody165_224 : StackLang.HolProg 64 :=
.seq RemovedBody165_218 RemovedBody165_223

def RemovedBody165_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody165_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody165_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 165 9

def RemovedBody165_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody165_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody165_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody165_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody165_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody165_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody165_234 : StackLang.HolProg 64 :=
.seq RemovedBody165_232 RemovedBody165_233

def RemovedBody165_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody165_236 : StackLang.HolProg 64 :=
.seq RemovedBody165_234 RemovedBody165_235

def RemovedBody165_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody165_238 : StackLang.HolProg 64 :=
.seq RemovedBody165_236 RemovedBody165_237

def RemovedBody165_239 : StackLang.HolProg 64 :=
.seq RemovedBody165_231 RemovedBody165_238

def RemovedBody165_240 : StackLang.HolProg 64 :=
.seq RemovedBody165_230 RemovedBody165_239

def RemovedBody165_241 : StackLang.HolProg 64 :=
.seq RemovedBody165_229 RemovedBody165_240

def RemovedBody165_242 : StackLang.HolProg 64 :=
.seq RemovedBody165_228 RemovedBody165_241

def RemovedBody165_243 : StackLang.HolProg 64 :=
.seq RemovedBody165_227 RemovedBody165_242

def RemovedBody165_244 : StackLang.HolProg 64 :=
.seq RemovedBody165_226 RemovedBody165_243

def RemovedBody165_245 : StackLang.HolProg 64 :=
.seq RemovedBody165_225 RemovedBody165_244

def RemovedBody165_246 : StackLang.HolProg 64 :=
.seq RemovedBody165_224 RemovedBody165_245

def RemovedBody165_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody165_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody165_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody165_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody165_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody165_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody165_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody165_254 : StackLang.HolProg 64 :=
.seq RemovedBody165_252 RemovedBody165_253

def RemovedBody165_255 : StackLang.HolProg 64 :=
.seq RemovedBody165_251 RemovedBody165_254

def RemovedBody165_256 : StackLang.HolProg 64 :=
.seq RemovedBody165_250 RemovedBody165_255

def RemovedBody165_257 : StackLang.HolProg 64 :=
.seq RemovedBody165_249 RemovedBody165_256

def RemovedBody165_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody165_259 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody165_260 : StackLang.HolProg 64 :=
.seq RemovedBody165_258 RemovedBody165_259

def RemovedBody165_261 : StackLang.HolProg 64 :=
.call (some (RemovedBody165_257, 0, 165, 8)) (Sum.inl 76) (some (RemovedBody165_260, 165, 9))

def RemovedBody165_262 : StackLang.HolProg 64 :=
.seq RemovedBody165_248 RemovedBody165_261

def RemovedBody165_263 : StackLang.HolProg 64 :=
.seq RemovedBody165_247 RemovedBody165_262

def RemovedBody165_264 : StackLang.HolProg 64 :=
.seq RemovedBody165_246 RemovedBody165_263

def RemovedBody165_265 : StackLang.HolProg 64 :=
.seq RemovedBody165_217 RemovedBody165_264

def RemovedBody165_266 : StackLang.HolProg 64 :=
.seq RemovedBody165_214 RemovedBody165_265

def RemovedBody165_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody165_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody165_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody165_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody165_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody165_272 : StackLang.HolProg 64 :=
.seq RemovedBody165_270 RemovedBody165_271

def RemovedBody165_273 : StackLang.HolProg 64 :=
.seq RemovedBody165_269 RemovedBody165_272

def RemovedBody165_274 : StackLang.HolProg 64 :=
.seq RemovedBody165_268 RemovedBody165_273

def RemovedBody165_275 : StackLang.HolProg 64 :=
.seq RemovedBody165_267 RemovedBody165_274

def RemovedBody165_276 : StackLang.HolProg 64 :=
.seq RemovedBody165_266 RemovedBody165_275

def RemovedBody165_277 : StackLang.HolProg 64 :=
.seq RemovedBody165_213 RemovedBody165_276

def RemovedBody165_278 : StackLang.HolProg 64 :=
.seq RemovedBody165_212 RemovedBody165_277

def RemovedBody165_279 : StackLang.HolProg 64 :=
.seq RemovedBody165_211 RemovedBody165_278

def RemovedBody165_280 : StackLang.HolProg 64 :=
.seq RemovedBody165_74 RemovedBody165_279

def RemovedBody165_281 : StackLang.HolProg 64 :=
.seq RemovedBody165_71 RemovedBody165_280

def RemovedBody165_282 : StackLang.HolProg 64 :=
.seq RemovedBody165_70 RemovedBody165_281

def RemovedBody165_283 : StackLang.HolProg 64 :=
.seq RemovedBody165_11 RemovedBody165_282

def RemovedBody165_284 : StackLang.HolProg 64 :=
.seq RemovedBody165_6 RemovedBody165_283

def Removed165 : Nat × StackLang.HolProg 64 := (165, RemovedBody165_284)
theorem Removed165_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc165 = Removed165 := by
  kernel_rfl
#print axioms Removed165_eq
end InitECandidate.Proofs.BackendStages
