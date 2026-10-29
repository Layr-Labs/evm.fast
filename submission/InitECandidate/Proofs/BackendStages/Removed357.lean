import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc357
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody357_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def RemovedBody357_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody357_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody357_3 : StackLang.HolProg 64 :=
.seq RemovedBody357_1 RemovedBody357_2

def RemovedBody357_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody357_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody357_3 RemovedBody357_4

def RemovedBody357_6 : StackLang.HolProg 64 :=
.seq RemovedBody357_0 RemovedBody357_5

def RemovedBody357_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody357_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody357_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody357_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody357_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody357_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody357_13 : StackLang.HolProg 64 :=
.seq RemovedBody357_11 RemovedBody357_12

def RemovedBody357_14 : StackLang.HolProg 64 :=
.seq RemovedBody357_10 RemovedBody357_13

def RemovedBody357_15 : StackLang.HolProg 64 :=
.seq RemovedBody357_9 RemovedBody357_14

def RemovedBody357_16 : StackLang.HolProg 64 :=
.seq RemovedBody357_8 RemovedBody357_15

def RemovedBody357_17 : StackLang.HolProg 64 :=
.seq RemovedBody357_7 RemovedBody357_16

def RemovedBody357_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody357_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1027#64)

def RemovedBody357_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody357_21 : StackLang.HolProg 64 :=
.seq RemovedBody357_19 RemovedBody357_20

def RemovedBody357_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody357_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody357_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody357_25 : StackLang.HolProg 64 :=
.seq RemovedBody357_23 RemovedBody357_24

def RemovedBody357_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody357_27 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody357_25 RemovedBody357_26

def RemovedBody357_28 : StackLang.HolProg 64 :=
.seq RemovedBody357_22 RemovedBody357_27

def RemovedBody357_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody357_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody357_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 357 3

def RemovedBody357_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody357_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody357_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody357_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody357_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody357_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody357_38 : StackLang.HolProg 64 :=
.seq RemovedBody357_36 RemovedBody357_37

def RemovedBody357_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody357_40 : StackLang.HolProg 64 :=
.seq RemovedBody357_38 RemovedBody357_39

def RemovedBody357_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody357_42 : StackLang.HolProg 64 :=
.seq RemovedBody357_40 RemovedBody357_41

def RemovedBody357_43 : StackLang.HolProg 64 :=
.seq RemovedBody357_35 RemovedBody357_42

def RemovedBody357_44 : StackLang.HolProg 64 :=
.seq RemovedBody357_34 RemovedBody357_43

def RemovedBody357_45 : StackLang.HolProg 64 :=
.seq RemovedBody357_33 RemovedBody357_44

def RemovedBody357_46 : StackLang.HolProg 64 :=
.seq RemovedBody357_32 RemovedBody357_45

def RemovedBody357_47 : StackLang.HolProg 64 :=
.seq RemovedBody357_31 RemovedBody357_46

def RemovedBody357_48 : StackLang.HolProg 64 :=
.seq RemovedBody357_30 RemovedBody357_47

def RemovedBody357_49 : StackLang.HolProg 64 :=
.seq RemovedBody357_29 RemovedBody357_48

def RemovedBody357_50 : StackLang.HolProg 64 :=
.seq RemovedBody357_28 RemovedBody357_49

def RemovedBody357_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody357_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody357_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody357_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody357_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody357_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody357_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody357_58 : StackLang.HolProg 64 :=
.seq RemovedBody357_56 RemovedBody357_57

def RemovedBody357_59 : StackLang.HolProg 64 :=
.seq RemovedBody357_55 RemovedBody357_58

def RemovedBody357_60 : StackLang.HolProg 64 :=
.seq RemovedBody357_54 RemovedBody357_59

def RemovedBody357_61 : StackLang.HolProg 64 :=
.seq RemovedBody357_53 RemovedBody357_60

def RemovedBody357_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody357_63 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody357_64 : StackLang.HolProg 64 :=
.seq RemovedBody357_62 RemovedBody357_63

def RemovedBody357_65 : StackLang.HolProg 64 :=
.call (some (RemovedBody357_61, 0, 357, 2)) (Sum.inl 69) (some (RemovedBody357_64, 357, 3))

def RemovedBody357_66 : StackLang.HolProg 64 :=
.seq RemovedBody357_52 RemovedBody357_65

def RemovedBody357_67 : StackLang.HolProg 64 :=
.seq RemovedBody357_51 RemovedBody357_66

def RemovedBody357_68 : StackLang.HolProg 64 :=
.seq RemovedBody357_50 RemovedBody357_67

def RemovedBody357_69 : StackLang.HolProg 64 :=
.seq RemovedBody357_21 RemovedBody357_68

def RemovedBody357_70 : StackLang.HolProg 64 :=
.seq RemovedBody357_18 RemovedBody357_69

def RemovedBody357_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody357_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def RemovedBody357_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody357_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody357_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1028#64)

def RemovedBody357_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody357_77 : StackLang.HolProg 64 :=
.seq RemovedBody357_75 RemovedBody357_76

def RemovedBody357_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody357_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody357_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody357_81 : StackLang.HolProg 64 :=
.seq RemovedBody357_79 RemovedBody357_80

def RemovedBody357_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody357_83 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody357_81 RemovedBody357_82

def RemovedBody357_84 : StackLang.HolProg 64 :=
.seq RemovedBody357_78 RemovedBody357_83

def RemovedBody357_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody357_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody357_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 357 5

def RemovedBody357_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody357_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody357_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody357_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody357_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody357_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody357_94 : StackLang.HolProg 64 :=
.seq RemovedBody357_92 RemovedBody357_93

def RemovedBody357_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody357_96 : StackLang.HolProg 64 :=
.seq RemovedBody357_94 RemovedBody357_95

def RemovedBody357_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody357_98 : StackLang.HolProg 64 :=
.seq RemovedBody357_96 RemovedBody357_97

def RemovedBody357_99 : StackLang.HolProg 64 :=
.seq RemovedBody357_91 RemovedBody357_98

def RemovedBody357_100 : StackLang.HolProg 64 :=
.seq RemovedBody357_90 RemovedBody357_99

def RemovedBody357_101 : StackLang.HolProg 64 :=
.seq RemovedBody357_89 RemovedBody357_100

def RemovedBody357_102 : StackLang.HolProg 64 :=
.seq RemovedBody357_88 RemovedBody357_101

def RemovedBody357_103 : StackLang.HolProg 64 :=
.seq RemovedBody357_87 RemovedBody357_102

def RemovedBody357_104 : StackLang.HolProg 64 :=
.seq RemovedBody357_86 RemovedBody357_103

def RemovedBody357_105 : StackLang.HolProg 64 :=
.seq RemovedBody357_85 RemovedBody357_104

def RemovedBody357_106 : StackLang.HolProg 64 :=
.seq RemovedBody357_84 RemovedBody357_105

def RemovedBody357_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody357_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody357_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody357_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody357_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody357_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody357_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody357_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody357_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody357_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody357_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody357_118 : StackLang.HolProg 64 :=
.seq RemovedBody357_116 RemovedBody357_117

def RemovedBody357_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody357_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody357_121 : StackLang.HolProg 64 :=
.seq RemovedBody357_119 RemovedBody357_120

def RemovedBody357_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody357_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody357_124 : StackLang.HolProg 64 :=
.seq RemovedBody357_122 RemovedBody357_123

def RemovedBody357_125 : StackLang.HolProg 64 :=
.seq RemovedBody357_121 RemovedBody357_124

def RemovedBody357_126 : StackLang.HolProg 64 :=
.seq RemovedBody357_118 RemovedBody357_125

def RemovedBody357_127 : StackLang.HolProg 64 :=
.seq RemovedBody357_115 RemovedBody357_126

def RemovedBody357_128 : StackLang.HolProg 64 :=
.seq RemovedBody357_114 RemovedBody357_127

def RemovedBody357_129 : StackLang.HolProg 64 :=
.seq RemovedBody357_113 RemovedBody357_128

def RemovedBody357_130 : StackLang.HolProg 64 :=
.seq RemovedBody357_112 RemovedBody357_129

def RemovedBody357_131 : StackLang.HolProg 64 :=
.seq RemovedBody357_111 RemovedBody357_130

def RemovedBody357_132 : StackLang.HolProg 64 :=
.seq RemovedBody357_110 RemovedBody357_131

def RemovedBody357_133 : StackLang.HolProg 64 :=
.seq RemovedBody357_109 RemovedBody357_132

def RemovedBody357_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody357_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody357_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody357_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody357_138 : StackLang.HolProg 64 :=
.seq RemovedBody357_136 RemovedBody357_137

def RemovedBody357_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody357_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody357_141 : StackLang.HolProg 64 :=
.seq RemovedBody357_139 RemovedBody357_140

def RemovedBody357_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody357_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody357_144 : StackLang.HolProg 64 :=
.seq RemovedBody357_142 RemovedBody357_143

def RemovedBody357_145 : StackLang.HolProg 64 :=
.seq RemovedBody357_141 RemovedBody357_144

def RemovedBody357_146 : StackLang.HolProg 64 :=
.seq RemovedBody357_138 RemovedBody357_145

def RemovedBody357_147 : StackLang.HolProg 64 :=
.seq RemovedBody357_135 RemovedBody357_146

def RemovedBody357_148 : StackLang.HolProg 64 :=
.seq RemovedBody357_134 RemovedBody357_147

def RemovedBody357_149 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody357_150 : StackLang.HolProg 64 :=
.seq RemovedBody357_148 RemovedBody357_149

def RemovedBody357_151 : StackLang.HolProg 64 :=
.call (some (RemovedBody357_133, 0, 357, 4)) (Sum.inl 68) (some (RemovedBody357_150, 357, 5))

def RemovedBody357_152 : StackLang.HolProg 64 :=
.seq RemovedBody357_108 RemovedBody357_151

def RemovedBody357_153 : StackLang.HolProg 64 :=
.seq RemovedBody357_107 RemovedBody357_152

def RemovedBody357_154 : StackLang.HolProg 64 :=
.seq RemovedBody357_106 RemovedBody357_153

def RemovedBody357_155 : StackLang.HolProg 64 :=
.seq RemovedBody357_77 RemovedBody357_154

def RemovedBody357_156 : StackLang.HolProg 64 :=
.seq RemovedBody357_74 RemovedBody357_155

def RemovedBody357_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody357_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody357_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody357_160 : StackLang.HolProg 64 :=
.seq RemovedBody357_158 RemovedBody357_159

def RemovedBody357_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody357_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1029#64)

def RemovedBody357_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody357_164 : StackLang.HolProg 64 :=
.seq RemovedBody357_162 RemovedBody357_163

def RemovedBody357_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody357_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody357_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody357_168 : StackLang.HolProg 64 :=
.seq RemovedBody357_166 RemovedBody357_167

def RemovedBody357_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody357_170 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody357_168 RemovedBody357_169

def RemovedBody357_171 : StackLang.HolProg 64 :=
.seq RemovedBody357_165 RemovedBody357_170

def RemovedBody357_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody357_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody357_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 357 7

def RemovedBody357_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody357_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody357_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody357_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody357_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody357_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody357_181 : StackLang.HolProg 64 :=
.seq RemovedBody357_179 RemovedBody357_180

def RemovedBody357_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody357_183 : StackLang.HolProg 64 :=
.seq RemovedBody357_181 RemovedBody357_182

def RemovedBody357_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody357_185 : StackLang.HolProg 64 :=
.seq RemovedBody357_183 RemovedBody357_184

def RemovedBody357_186 : StackLang.HolProg 64 :=
.seq RemovedBody357_178 RemovedBody357_185

def RemovedBody357_187 : StackLang.HolProg 64 :=
.seq RemovedBody357_177 RemovedBody357_186

def RemovedBody357_188 : StackLang.HolProg 64 :=
.seq RemovedBody357_176 RemovedBody357_187

def RemovedBody357_189 : StackLang.HolProg 64 :=
.seq RemovedBody357_175 RemovedBody357_188

def RemovedBody357_190 : StackLang.HolProg 64 :=
.seq RemovedBody357_174 RemovedBody357_189

def RemovedBody357_191 : StackLang.HolProg 64 :=
.seq RemovedBody357_173 RemovedBody357_190

def RemovedBody357_192 : StackLang.HolProg 64 :=
.seq RemovedBody357_172 RemovedBody357_191

def RemovedBody357_193 : StackLang.HolProg 64 :=
.seq RemovedBody357_171 RemovedBody357_192

def RemovedBody357_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody357_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody357_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody357_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody357_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody357_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody357_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody357_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody357_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody357_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody357_204 : StackLang.HolProg 64 :=
.seq RemovedBody357_202 RemovedBody357_203

def RemovedBody357_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody357_206 : StackLang.HolProg 64 :=
.seq RemovedBody357_204 RemovedBody357_205

def RemovedBody357_207 : StackLang.HolProg 64 :=
.seq RemovedBody357_201 RemovedBody357_206

def RemovedBody357_208 : StackLang.HolProg 64 :=
.seq RemovedBody357_200 RemovedBody357_207

def RemovedBody357_209 : StackLang.HolProg 64 :=
.seq RemovedBody357_199 RemovedBody357_208

def RemovedBody357_210 : StackLang.HolProg 64 :=
.seq RemovedBody357_198 RemovedBody357_209

def RemovedBody357_211 : StackLang.HolProg 64 :=
.seq RemovedBody357_197 RemovedBody357_210

def RemovedBody357_212 : StackLang.HolProg 64 :=
.seq RemovedBody357_196 RemovedBody357_211

def RemovedBody357_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody357_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody357_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody357_216 : StackLang.HolProg 64 :=
.seq RemovedBody357_214 RemovedBody357_215

def RemovedBody357_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody357_218 : StackLang.HolProg 64 :=
.seq RemovedBody357_216 RemovedBody357_217

def RemovedBody357_219 : StackLang.HolProg 64 :=
.seq RemovedBody357_213 RemovedBody357_218

def RemovedBody357_220 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody357_221 : StackLang.HolProg 64 :=
.seq RemovedBody357_219 RemovedBody357_220

def RemovedBody357_222 : StackLang.HolProg 64 :=
.call (some (RemovedBody357_212, 0, 357, 6)) (Sum.inl 148) (some (RemovedBody357_221, 357, 7))

def RemovedBody357_223 : StackLang.HolProg 64 :=
.seq RemovedBody357_195 RemovedBody357_222

def RemovedBody357_224 : StackLang.HolProg 64 :=
.seq RemovedBody357_194 RemovedBody357_223

def RemovedBody357_225 : StackLang.HolProg 64 :=
.seq RemovedBody357_193 RemovedBody357_224

def RemovedBody357_226 : StackLang.HolProg 64 :=
.seq RemovedBody357_164 RemovedBody357_225

def RemovedBody357_227 : StackLang.HolProg 64 :=
.seq RemovedBody357_161 RemovedBody357_226

def RemovedBody357_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody357_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody357_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody357_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1030#64)

def RemovedBody357_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody357_233 : StackLang.HolProg 64 :=
.seq RemovedBody357_231 RemovedBody357_232

def RemovedBody357_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody357_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody357_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody357_237 : StackLang.HolProg 64 :=
.seq RemovedBody357_235 RemovedBody357_236

def RemovedBody357_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody357_239 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody357_237 RemovedBody357_238

def RemovedBody357_240 : StackLang.HolProg 64 :=
.seq RemovedBody357_234 RemovedBody357_239

def RemovedBody357_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody357_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody357_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 357 9

def RemovedBody357_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody357_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody357_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody357_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody357_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody357_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody357_250 : StackLang.HolProg 64 :=
.seq RemovedBody357_248 RemovedBody357_249

def RemovedBody357_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody357_252 : StackLang.HolProg 64 :=
.seq RemovedBody357_250 RemovedBody357_251

def RemovedBody357_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody357_254 : StackLang.HolProg 64 :=
.seq RemovedBody357_252 RemovedBody357_253

def RemovedBody357_255 : StackLang.HolProg 64 :=
.seq RemovedBody357_247 RemovedBody357_254

def RemovedBody357_256 : StackLang.HolProg 64 :=
.seq RemovedBody357_246 RemovedBody357_255

def RemovedBody357_257 : StackLang.HolProg 64 :=
.seq RemovedBody357_245 RemovedBody357_256

def RemovedBody357_258 : StackLang.HolProg 64 :=
.seq RemovedBody357_244 RemovedBody357_257

def RemovedBody357_259 : StackLang.HolProg 64 :=
.seq RemovedBody357_243 RemovedBody357_258

def RemovedBody357_260 : StackLang.HolProg 64 :=
.seq RemovedBody357_242 RemovedBody357_259

def RemovedBody357_261 : StackLang.HolProg 64 :=
.seq RemovedBody357_241 RemovedBody357_260

def RemovedBody357_262 : StackLang.HolProg 64 :=
.seq RemovedBody357_240 RemovedBody357_261

def RemovedBody357_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody357_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody357_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody357_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody357_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody357_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody357_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody357_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody357_271 : StackLang.HolProg 64 :=
.seq RemovedBody357_269 RemovedBody357_270

def RemovedBody357_272 : StackLang.HolProg 64 :=
.seq RemovedBody357_268 RemovedBody357_271

def RemovedBody357_273 : StackLang.HolProg 64 :=
.seq RemovedBody357_267 RemovedBody357_272

def RemovedBody357_274 : StackLang.HolProg 64 :=
.seq RemovedBody357_266 RemovedBody357_273

def RemovedBody357_275 : StackLang.HolProg 64 :=
.seq RemovedBody357_265 RemovedBody357_274

def RemovedBody357_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody357_277 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody357_278 : StackLang.HolProg 64 :=
.seq RemovedBody357_276 RemovedBody357_277

def RemovedBody357_279 : StackLang.HolProg 64 :=
.call (some (RemovedBody357_275, 0, 357, 8)) (Sum.inl 176) (some (RemovedBody357_278, 357, 9))

def RemovedBody357_280 : StackLang.HolProg 64 :=
.seq RemovedBody357_264 RemovedBody357_279

def RemovedBody357_281 : StackLang.HolProg 64 :=
.seq RemovedBody357_263 RemovedBody357_280

def RemovedBody357_282 : StackLang.HolProg 64 :=
.seq RemovedBody357_262 RemovedBody357_281

def RemovedBody357_283 : StackLang.HolProg 64 :=
.seq RemovedBody357_233 RemovedBody357_282

def RemovedBody357_284 : StackLang.HolProg 64 :=
.seq RemovedBody357_230 RemovedBody357_283

def RemovedBody357_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody357_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody357_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody357_288 : StackLang.HolProg 64 :=
.seq RemovedBody357_286 RemovedBody357_287

def RemovedBody357_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody357_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1031#64)

def RemovedBody357_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody357_292 : StackLang.HolProg 64 :=
.seq RemovedBody357_290 RemovedBody357_291

def RemovedBody357_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody357_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody357_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody357_296 : StackLang.HolProg 64 :=
.seq RemovedBody357_294 RemovedBody357_295

def RemovedBody357_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody357_298 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody357_296 RemovedBody357_297

def RemovedBody357_299 : StackLang.HolProg 64 :=
.seq RemovedBody357_293 RemovedBody357_298

def RemovedBody357_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody357_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody357_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 357 11

def RemovedBody357_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody357_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody357_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody357_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody357_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody357_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody357_309 : StackLang.HolProg 64 :=
.seq RemovedBody357_307 RemovedBody357_308

def RemovedBody357_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody357_311 : StackLang.HolProg 64 :=
.seq RemovedBody357_309 RemovedBody357_310

def RemovedBody357_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody357_313 : StackLang.HolProg 64 :=
.seq RemovedBody357_311 RemovedBody357_312

def RemovedBody357_314 : StackLang.HolProg 64 :=
.seq RemovedBody357_306 RemovedBody357_313

def RemovedBody357_315 : StackLang.HolProg 64 :=
.seq RemovedBody357_305 RemovedBody357_314

def RemovedBody357_316 : StackLang.HolProg 64 :=
.seq RemovedBody357_304 RemovedBody357_315

def RemovedBody357_317 : StackLang.HolProg 64 :=
.seq RemovedBody357_303 RemovedBody357_316

def RemovedBody357_318 : StackLang.HolProg 64 :=
.seq RemovedBody357_302 RemovedBody357_317

def RemovedBody357_319 : StackLang.HolProg 64 :=
.seq RemovedBody357_301 RemovedBody357_318

def RemovedBody357_320 : StackLang.HolProg 64 :=
.seq RemovedBody357_300 RemovedBody357_319

def RemovedBody357_321 : StackLang.HolProg 64 :=
.seq RemovedBody357_299 RemovedBody357_320

def RemovedBody357_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody357_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody357_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody357_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody357_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody357_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody357_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody357_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody357_330 : StackLang.HolProg 64 :=
.seq RemovedBody357_328 RemovedBody357_329

def RemovedBody357_331 : StackLang.HolProg 64 :=
.seq RemovedBody357_327 RemovedBody357_330

def RemovedBody357_332 : StackLang.HolProg 64 :=
.seq RemovedBody357_326 RemovedBody357_331

def RemovedBody357_333 : StackLang.HolProg 64 :=
.seq RemovedBody357_325 RemovedBody357_332

def RemovedBody357_334 : StackLang.HolProg 64 :=
.seq RemovedBody357_324 RemovedBody357_333

def RemovedBody357_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody357_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody357_337 : StackLang.HolProg 64 :=
.seq RemovedBody357_335 RemovedBody357_336

def RemovedBody357_338 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody357_339 : StackLang.HolProg 64 :=
.seq RemovedBody357_337 RemovedBody357_338

def RemovedBody357_340 : StackLang.HolProg 64 :=
.call (some (RemovedBody357_334, 0, 357, 10)) (Sum.inl 70) (some (RemovedBody357_339, 357, 11))

def RemovedBody357_341 : StackLang.HolProg 64 :=
.seq RemovedBody357_323 RemovedBody357_340

def RemovedBody357_342 : StackLang.HolProg 64 :=
.seq RemovedBody357_322 RemovedBody357_341

def RemovedBody357_343 : StackLang.HolProg 64 :=
.seq RemovedBody357_321 RemovedBody357_342

def RemovedBody357_344 : StackLang.HolProg 64 :=
.seq RemovedBody357_292 RemovedBody357_343

def RemovedBody357_345 : StackLang.HolProg 64 :=
.seq RemovedBody357_289 RemovedBody357_344

def RemovedBody357_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody357_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody357_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def RemovedBody357_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody357_350 : StackLang.HolProg 64 :=
.seq RemovedBody357_348 RemovedBody357_349

def RemovedBody357_351 : StackLang.HolProg 64 :=
.seq RemovedBody357_347 RemovedBody357_350

def RemovedBody357_352 : StackLang.HolProg 64 :=
.seq RemovedBody357_346 RemovedBody357_351

def RemovedBody357_353 : StackLang.HolProg 64 :=
.seq RemovedBody357_345 RemovedBody357_352

def RemovedBody357_354 : StackLang.HolProg 64 :=
.seq RemovedBody357_288 RemovedBody357_353

def RemovedBody357_355 : StackLang.HolProg 64 :=
.seq RemovedBody357_285 RemovedBody357_354

def RemovedBody357_356 : StackLang.HolProg 64 :=
.seq RemovedBody357_284 RemovedBody357_355

def RemovedBody357_357 : StackLang.HolProg 64 :=
.seq RemovedBody357_229 RemovedBody357_356

def RemovedBody357_358 : StackLang.HolProg 64 :=
.seq RemovedBody357_228 RemovedBody357_357

def RemovedBody357_359 : StackLang.HolProg 64 :=
.seq RemovedBody357_227 RemovedBody357_358

def RemovedBody357_360 : StackLang.HolProg 64 :=
.seq RemovedBody357_160 RemovedBody357_359

def RemovedBody357_361 : StackLang.HolProg 64 :=
.seq RemovedBody357_157 RemovedBody357_360

def RemovedBody357_362 : StackLang.HolProg 64 :=
.seq RemovedBody357_156 RemovedBody357_361

def RemovedBody357_363 : StackLang.HolProg 64 :=
.seq RemovedBody357_73 RemovedBody357_362

def RemovedBody357_364 : StackLang.HolProg 64 :=
.seq RemovedBody357_72 RemovedBody357_363

def RemovedBody357_365 : StackLang.HolProg 64 :=
.seq RemovedBody357_71 RemovedBody357_364

def RemovedBody357_366 : StackLang.HolProg 64 :=
.seq RemovedBody357_70 RemovedBody357_365

def RemovedBody357_367 : StackLang.HolProg 64 :=
.seq RemovedBody357_17 RemovedBody357_366

def RemovedBody357_368 : StackLang.HolProg 64 :=
.seq RemovedBody357_6 RemovedBody357_367

def Removed357 : Nat × StackLang.HolProg 64 := (357, RemovedBody357_368)
theorem Removed357_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc357 = Removed357 := by
  kernel_rfl
#print axioms Removed357_eq
end InitECandidate.Proofs.BackendStages
