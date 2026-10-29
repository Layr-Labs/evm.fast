import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc644
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody644_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody644_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody644_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody644_3 : StackLang.HolProg 64 :=
.seq RemovedBody644_1 RemovedBody644_2

def RemovedBody644_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody644_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody644_3 RemovedBody644_4

def RemovedBody644_6 : StackLang.HolProg 64 :=
.seq RemovedBody644_0 RemovedBody644_5

def RemovedBody644_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody644_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 18446744069414584321#64)

def RemovedBody644_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def RemovedBody644_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 4294967295#64)

def RemovedBody644_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 18446744073709551615#64)

def RemovedBody644_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody644_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody644_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody644_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody644_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody644_17 : StackLang.HolProg 64 :=
.seq RemovedBody644_15 RemovedBody644_16

def RemovedBody644_18 : StackLang.HolProg 64 :=
.seq RemovedBody644_14 RemovedBody644_17

def RemovedBody644_19 : StackLang.HolProg 64 :=
.seq RemovedBody644_13 RemovedBody644_18

def RemovedBody644_20 : StackLang.HolProg 64 :=
.seq RemovedBody644_12 RemovedBody644_19

def RemovedBody644_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody644_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2624#64)

def RemovedBody644_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody644_24 : StackLang.HolProg 64 :=
.seq RemovedBody644_22 RemovedBody644_23

def RemovedBody644_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody644_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody644_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody644_28 : StackLang.HolProg 64 :=
.seq RemovedBody644_26 RemovedBody644_27

def RemovedBody644_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody644_30 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody644_28 RemovedBody644_29

def RemovedBody644_31 : StackLang.HolProg 64 :=
.seq RemovedBody644_25 RemovedBody644_30

def RemovedBody644_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody644_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody644_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 644 3

def RemovedBody644_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody644_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody644_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody644_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody644_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody644_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody644_41 : StackLang.HolProg 64 :=
.seq RemovedBody644_39 RemovedBody644_40

def RemovedBody644_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody644_43 : StackLang.HolProg 64 :=
.seq RemovedBody644_41 RemovedBody644_42

def RemovedBody644_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody644_45 : StackLang.HolProg 64 :=
.seq RemovedBody644_43 RemovedBody644_44

def RemovedBody644_46 : StackLang.HolProg 64 :=
.seq RemovedBody644_38 RemovedBody644_45

def RemovedBody644_47 : StackLang.HolProg 64 :=
.seq RemovedBody644_37 RemovedBody644_46

def RemovedBody644_48 : StackLang.HolProg 64 :=
.seq RemovedBody644_36 RemovedBody644_47

def RemovedBody644_49 : StackLang.HolProg 64 :=
.seq RemovedBody644_35 RemovedBody644_48

def RemovedBody644_50 : StackLang.HolProg 64 :=
.seq RemovedBody644_34 RemovedBody644_49

def RemovedBody644_51 : StackLang.HolProg 64 :=
.seq RemovedBody644_33 RemovedBody644_50

def RemovedBody644_52 : StackLang.HolProg 64 :=
.seq RemovedBody644_32 RemovedBody644_51

def RemovedBody644_53 : StackLang.HolProg 64 :=
.seq RemovedBody644_31 RemovedBody644_52

def RemovedBody644_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody644_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody644_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody644_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody644_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody644_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody644_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody644_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody644_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody644_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody644_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody644_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody644_66 : StackLang.HolProg 64 :=
.seq RemovedBody644_64 RemovedBody644_65

def RemovedBody644_67 : StackLang.HolProg 64 :=
.seq RemovedBody644_63 RemovedBody644_66

def RemovedBody644_68 : StackLang.HolProg 64 :=
.seq RemovedBody644_62 RemovedBody644_67

def RemovedBody644_69 : StackLang.HolProg 64 :=
.seq RemovedBody644_61 RemovedBody644_68

def RemovedBody644_70 : StackLang.HolProg 64 :=
.seq RemovedBody644_60 RemovedBody644_69

def RemovedBody644_71 : StackLang.HolProg 64 :=
.seq RemovedBody644_59 RemovedBody644_70

def RemovedBody644_72 : StackLang.HolProg 64 :=
.seq RemovedBody644_58 RemovedBody644_71

def RemovedBody644_73 : StackLang.HolProg 64 :=
.seq RemovedBody644_57 RemovedBody644_72

def RemovedBody644_74 : StackLang.HolProg 64 :=
.seq RemovedBody644_56 RemovedBody644_73

def RemovedBody644_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody644_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody644_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody644_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody644_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody644_80 : StackLang.HolProg 64 :=
.seq RemovedBody644_78 RemovedBody644_79

def RemovedBody644_81 : StackLang.HolProg 64 :=
.seq RemovedBody644_77 RemovedBody644_80

def RemovedBody644_82 : StackLang.HolProg 64 :=
.seq RemovedBody644_76 RemovedBody644_81

def RemovedBody644_83 : StackLang.HolProg 64 :=
.seq RemovedBody644_75 RemovedBody644_82

def RemovedBody644_84 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody644_85 : StackLang.HolProg 64 :=
.seq RemovedBody644_83 RemovedBody644_84

def RemovedBody644_86 : StackLang.HolProg 64 :=
.call (some (RemovedBody644_74, 0, 644, 2)) (Sum.inl 106) (some (RemovedBody644_85, 644, 3))

def RemovedBody644_87 : StackLang.HolProg 64 :=
.seq RemovedBody644_55 RemovedBody644_86

def RemovedBody644_88 : StackLang.HolProg 64 :=
.seq RemovedBody644_54 RemovedBody644_87

def RemovedBody644_89 : StackLang.HolProg 64 :=
.seq RemovedBody644_53 RemovedBody644_88

def RemovedBody644_90 : StackLang.HolProg 64 :=
.seq RemovedBody644_24 RemovedBody644_89

def RemovedBody644_91 : StackLang.HolProg 64 :=
.seq RemovedBody644_21 RemovedBody644_90

def RemovedBody644_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody644_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody644_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody644_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody644_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody644_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 18446744069414584321#64)

def RemovedBody644_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def RemovedBody644_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 4294967295#64)

def RemovedBody644_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 18446744073709551615#64)

def RemovedBody644_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody644_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody644_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody644_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 117

def RemovedBody644_105 : StackLang.HolProg 64 :=
.seq RemovedBody644_103 RemovedBody644_104

def RemovedBody644_106 : StackLang.HolProg 64 :=
.seq RemovedBody644_102 RemovedBody644_105

def RemovedBody644_107 : StackLang.HolProg 64 :=
.seq RemovedBody644_101 RemovedBody644_106

def RemovedBody644_108 : StackLang.HolProg 64 :=
.seq RemovedBody644_100 RemovedBody644_107

def RemovedBody644_109 : StackLang.HolProg 64 :=
.seq RemovedBody644_99 RemovedBody644_108

def RemovedBody644_110 : StackLang.HolProg 64 :=
.seq RemovedBody644_98 RemovedBody644_109

def RemovedBody644_111 : StackLang.HolProg 64 :=
.seq RemovedBody644_97 RemovedBody644_110

def RemovedBody644_112 : StackLang.HolProg 64 :=
.seq RemovedBody644_96 RemovedBody644_111

def RemovedBody644_113 : StackLang.HolProg 64 :=
.seq RemovedBody644_95 RemovedBody644_112

def RemovedBody644_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody644_115 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody644_113 RemovedBody644_114

def RemovedBody644_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody644_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody644_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody644_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody644_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody644_121 : StackLang.HolProg 64 :=
.seq RemovedBody644_119 RemovedBody644_120

def RemovedBody644_122 : StackLang.HolProg 64 :=
.seq RemovedBody644_118 RemovedBody644_121

def RemovedBody644_123 : StackLang.HolProg 64 :=
.seq RemovedBody644_117 RemovedBody644_122

def RemovedBody644_124 : StackLang.HolProg 64 :=
.seq RemovedBody644_116 RemovedBody644_123

def RemovedBody644_125 : StackLang.HolProg 64 :=
.seq RemovedBody644_115 RemovedBody644_124

def RemovedBody644_126 : StackLang.HolProg 64 :=
.seq RemovedBody644_94 RemovedBody644_125

def RemovedBody644_127 : StackLang.HolProg 64 :=
.seq RemovedBody644_93 RemovedBody644_126

def RemovedBody644_128 : StackLang.HolProg 64 :=
.seq RemovedBody644_92 RemovedBody644_127

def RemovedBody644_129 : StackLang.HolProg 64 :=
.seq RemovedBody644_91 RemovedBody644_128

def RemovedBody644_130 : StackLang.HolProg 64 :=
.seq RemovedBody644_20 RemovedBody644_129

def RemovedBody644_131 : StackLang.HolProg 64 :=
.seq RemovedBody644_11 RemovedBody644_130

def RemovedBody644_132 : StackLang.HolProg 64 :=
.seq RemovedBody644_10 RemovedBody644_131

def RemovedBody644_133 : StackLang.HolProg 64 :=
.seq RemovedBody644_9 RemovedBody644_132

def RemovedBody644_134 : StackLang.HolProg 64 :=
.seq RemovedBody644_8 RemovedBody644_133

def RemovedBody644_135 : StackLang.HolProg 64 :=
.seq RemovedBody644_7 RemovedBody644_134

def RemovedBody644_136 : StackLang.HolProg 64 :=
.seq RemovedBody644_6 RemovedBody644_135

def Removed644 : Nat × StackLang.HolProg 64 := (644, RemovedBody644_136)
theorem Removed644_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc644 = Removed644 := by
  kernel_rfl
#print axioms Removed644_eq
end InitECandidate.Proofs.BackendStages
