import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc205
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody205_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody205_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody205_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody205_3 : StackLang.HolProg 64 :=
.seq RemovedBody205_1 RemovedBody205_2

def RemovedBody205_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody205_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody205_3 RemovedBody205_4

def RemovedBody205_6 : StackLang.HolProg 64 :=
.seq RemovedBody205_0 RemovedBody205_5

def RemovedBody205_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody205_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 18446744073709551615#64)

def RemovedBody205_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 18446744073709551615#64)

def RemovedBody205_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 18446744073709551615#64)

def RemovedBody205_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 18446744069414583343#64)

def RemovedBody205_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody205_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody205_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody205_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody205_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody205_17 : StackLang.HolProg 64 :=
.seq RemovedBody205_15 RemovedBody205_16

def RemovedBody205_18 : StackLang.HolProg 64 :=
.seq RemovedBody205_14 RemovedBody205_17

def RemovedBody205_19 : StackLang.HolProg 64 :=
.seq RemovedBody205_13 RemovedBody205_18

def RemovedBody205_20 : StackLang.HolProg 64 :=
.seq RemovedBody205_12 RemovedBody205_19

def RemovedBody205_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody205_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 258#64)

def RemovedBody205_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody205_24 : StackLang.HolProg 64 :=
.seq RemovedBody205_22 RemovedBody205_23

def RemovedBody205_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody205_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody205_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody205_28 : StackLang.HolProg 64 :=
.seq RemovedBody205_26 RemovedBody205_27

def RemovedBody205_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody205_30 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody205_28 RemovedBody205_29

def RemovedBody205_31 : StackLang.HolProg 64 :=
.seq RemovedBody205_25 RemovedBody205_30

def RemovedBody205_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody205_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody205_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 205 3

def RemovedBody205_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody205_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody205_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody205_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody205_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody205_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody205_41 : StackLang.HolProg 64 :=
.seq RemovedBody205_39 RemovedBody205_40

def RemovedBody205_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody205_43 : StackLang.HolProg 64 :=
.seq RemovedBody205_41 RemovedBody205_42

def RemovedBody205_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody205_45 : StackLang.HolProg 64 :=
.seq RemovedBody205_43 RemovedBody205_44

def RemovedBody205_46 : StackLang.HolProg 64 :=
.seq RemovedBody205_38 RemovedBody205_45

def RemovedBody205_47 : StackLang.HolProg 64 :=
.seq RemovedBody205_37 RemovedBody205_46

def RemovedBody205_48 : StackLang.HolProg 64 :=
.seq RemovedBody205_36 RemovedBody205_47

def RemovedBody205_49 : StackLang.HolProg 64 :=
.seq RemovedBody205_35 RemovedBody205_48

def RemovedBody205_50 : StackLang.HolProg 64 :=
.seq RemovedBody205_34 RemovedBody205_49

def RemovedBody205_51 : StackLang.HolProg 64 :=
.seq RemovedBody205_33 RemovedBody205_50

def RemovedBody205_52 : StackLang.HolProg 64 :=
.seq RemovedBody205_32 RemovedBody205_51

def RemovedBody205_53 : StackLang.HolProg 64 :=
.seq RemovedBody205_31 RemovedBody205_52

def RemovedBody205_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody205_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody205_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody205_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody205_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody205_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody205_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody205_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody205_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody205_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody205_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody205_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody205_66 : StackLang.HolProg 64 :=
.seq RemovedBody205_64 RemovedBody205_65

def RemovedBody205_67 : StackLang.HolProg 64 :=
.seq RemovedBody205_63 RemovedBody205_66

def RemovedBody205_68 : StackLang.HolProg 64 :=
.seq RemovedBody205_62 RemovedBody205_67

def RemovedBody205_69 : StackLang.HolProg 64 :=
.seq RemovedBody205_61 RemovedBody205_68

def RemovedBody205_70 : StackLang.HolProg 64 :=
.seq RemovedBody205_60 RemovedBody205_69

def RemovedBody205_71 : StackLang.HolProg 64 :=
.seq RemovedBody205_59 RemovedBody205_70

def RemovedBody205_72 : StackLang.HolProg 64 :=
.seq RemovedBody205_58 RemovedBody205_71

def RemovedBody205_73 : StackLang.HolProg 64 :=
.seq RemovedBody205_57 RemovedBody205_72

def RemovedBody205_74 : StackLang.HolProg 64 :=
.seq RemovedBody205_56 RemovedBody205_73

def RemovedBody205_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody205_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody205_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody205_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody205_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody205_80 : StackLang.HolProg 64 :=
.seq RemovedBody205_78 RemovedBody205_79

def RemovedBody205_81 : StackLang.HolProg 64 :=
.seq RemovedBody205_77 RemovedBody205_80

def RemovedBody205_82 : StackLang.HolProg 64 :=
.seq RemovedBody205_76 RemovedBody205_81

def RemovedBody205_83 : StackLang.HolProg 64 :=
.seq RemovedBody205_75 RemovedBody205_82

def RemovedBody205_84 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody205_85 : StackLang.HolProg 64 :=
.seq RemovedBody205_83 RemovedBody205_84

def RemovedBody205_86 : StackLang.HolProg 64 :=
.call (some (RemovedBody205_74, 0, 205, 2)) (Sum.inl 106) (some (RemovedBody205_85, 205, 3))

def RemovedBody205_87 : StackLang.HolProg 64 :=
.seq RemovedBody205_55 RemovedBody205_86

def RemovedBody205_88 : StackLang.HolProg 64 :=
.seq RemovedBody205_54 RemovedBody205_87

def RemovedBody205_89 : StackLang.HolProg 64 :=
.seq RemovedBody205_53 RemovedBody205_88

def RemovedBody205_90 : StackLang.HolProg 64 :=
.seq RemovedBody205_24 RemovedBody205_89

def RemovedBody205_91 : StackLang.HolProg 64 :=
.seq RemovedBody205_21 RemovedBody205_90

def RemovedBody205_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody205_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody205_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody205_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody205_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody205_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 18446744073709551615#64)

def RemovedBody205_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 18446744073709551615#64)

def RemovedBody205_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 18446744073709551615#64)

def RemovedBody205_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 18446744069414583343#64)

def RemovedBody205_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody205_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody205_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody205_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 117

def RemovedBody205_105 : StackLang.HolProg 64 :=
.seq RemovedBody205_103 RemovedBody205_104

def RemovedBody205_106 : StackLang.HolProg 64 :=
.seq RemovedBody205_102 RemovedBody205_105

def RemovedBody205_107 : StackLang.HolProg 64 :=
.seq RemovedBody205_101 RemovedBody205_106

def RemovedBody205_108 : StackLang.HolProg 64 :=
.seq RemovedBody205_100 RemovedBody205_107

def RemovedBody205_109 : StackLang.HolProg 64 :=
.seq RemovedBody205_99 RemovedBody205_108

def RemovedBody205_110 : StackLang.HolProg 64 :=
.seq RemovedBody205_98 RemovedBody205_109

def RemovedBody205_111 : StackLang.HolProg 64 :=
.seq RemovedBody205_97 RemovedBody205_110

def RemovedBody205_112 : StackLang.HolProg 64 :=
.seq RemovedBody205_96 RemovedBody205_111

def RemovedBody205_113 : StackLang.HolProg 64 :=
.seq RemovedBody205_95 RemovedBody205_112

def RemovedBody205_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody205_115 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody205_113 RemovedBody205_114

def RemovedBody205_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody205_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody205_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody205_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody205_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody205_121 : StackLang.HolProg 64 :=
.seq RemovedBody205_119 RemovedBody205_120

def RemovedBody205_122 : StackLang.HolProg 64 :=
.seq RemovedBody205_118 RemovedBody205_121

def RemovedBody205_123 : StackLang.HolProg 64 :=
.seq RemovedBody205_117 RemovedBody205_122

def RemovedBody205_124 : StackLang.HolProg 64 :=
.seq RemovedBody205_116 RemovedBody205_123

def RemovedBody205_125 : StackLang.HolProg 64 :=
.seq RemovedBody205_115 RemovedBody205_124

def RemovedBody205_126 : StackLang.HolProg 64 :=
.seq RemovedBody205_94 RemovedBody205_125

def RemovedBody205_127 : StackLang.HolProg 64 :=
.seq RemovedBody205_93 RemovedBody205_126

def RemovedBody205_128 : StackLang.HolProg 64 :=
.seq RemovedBody205_92 RemovedBody205_127

def RemovedBody205_129 : StackLang.HolProg 64 :=
.seq RemovedBody205_91 RemovedBody205_128

def RemovedBody205_130 : StackLang.HolProg 64 :=
.seq RemovedBody205_20 RemovedBody205_129

def RemovedBody205_131 : StackLang.HolProg 64 :=
.seq RemovedBody205_11 RemovedBody205_130

def RemovedBody205_132 : StackLang.HolProg 64 :=
.seq RemovedBody205_10 RemovedBody205_131

def RemovedBody205_133 : StackLang.HolProg 64 :=
.seq RemovedBody205_9 RemovedBody205_132

def RemovedBody205_134 : StackLang.HolProg 64 :=
.seq RemovedBody205_8 RemovedBody205_133

def RemovedBody205_135 : StackLang.HolProg 64 :=
.seq RemovedBody205_7 RemovedBody205_134

def RemovedBody205_136 : StackLang.HolProg 64 :=
.seq RemovedBody205_6 RemovedBody205_135

def Removed205 : Nat × StackLang.HolProg 64 := (205, RemovedBody205_136)
theorem Removed205_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc205 = Removed205 := by
  kernel_rfl
#print axioms Removed205_eq
end InitECandidate.Proofs.BackendStages
