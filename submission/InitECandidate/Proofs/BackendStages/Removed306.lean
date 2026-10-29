import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc306
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody306_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody306_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody306_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody306_3 : StackLang.HolProg 64 :=
.seq RemovedBody306_1 RemovedBody306_2

def RemovedBody306_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody306_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody306_3 RemovedBody306_4

def RemovedBody306_6 : StackLang.HolProg 64 :=
.seq RemovedBody306_0 RemovedBody306_5

def RemovedBody306_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody306_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody306_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody306_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody306_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody306_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody306_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody306_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody306_15 : StackLang.HolProg 64 :=
.seq RemovedBody306_13 RemovedBody306_14

def RemovedBody306_16 : StackLang.HolProg 64 :=
.seq RemovedBody306_12 RemovedBody306_15

def RemovedBody306_17 : StackLang.HolProg 64 :=
.seq RemovedBody306_11 RemovedBody306_16

def RemovedBody306_18 : StackLang.HolProg 64 :=
.seq RemovedBody306_10 RemovedBody306_17

def RemovedBody306_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody306_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody306_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody306_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody306_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def RemovedBody306_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody306_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody306_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody306_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody306_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody306_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody306_30 : StackLang.HolProg 64 :=
.seq RemovedBody306_28 RemovedBody306_29

def RemovedBody306_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody306_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody306_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody306_34 : StackLang.HolProg 64 :=
.seq RemovedBody306_32 RemovedBody306_33

def RemovedBody306_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody306_36 : StackLang.HolProg 64 :=
.seq RemovedBody306_34 RemovedBody306_35

def RemovedBody306_37 : StackLang.HolProg 64 :=
.seq RemovedBody306_31 RemovedBody306_36

def RemovedBody306_38 : StackLang.HolProg 64 :=
.seq RemovedBody306_30 RemovedBody306_37

def RemovedBody306_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody306_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 845#64)

def RemovedBody306_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody306_42 : StackLang.HolProg 64 :=
.seq RemovedBody306_40 RemovedBody306_41

def RemovedBody306_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody306_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody306_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody306_46 : StackLang.HolProg 64 :=
.seq RemovedBody306_44 RemovedBody306_45

def RemovedBody306_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody306_48 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody306_46 RemovedBody306_47

def RemovedBody306_49 : StackLang.HolProg 64 :=
.seq RemovedBody306_43 RemovedBody306_48

def RemovedBody306_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody306_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody306_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 306 3

def RemovedBody306_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody306_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody306_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody306_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody306_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody306_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody306_59 : StackLang.HolProg 64 :=
.seq RemovedBody306_57 RemovedBody306_58

def RemovedBody306_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody306_61 : StackLang.HolProg 64 :=
.seq RemovedBody306_59 RemovedBody306_60

def RemovedBody306_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody306_63 : StackLang.HolProg 64 :=
.seq RemovedBody306_61 RemovedBody306_62

def RemovedBody306_64 : StackLang.HolProg 64 :=
.seq RemovedBody306_56 RemovedBody306_63

def RemovedBody306_65 : StackLang.HolProg 64 :=
.seq RemovedBody306_55 RemovedBody306_64

def RemovedBody306_66 : StackLang.HolProg 64 :=
.seq RemovedBody306_54 RemovedBody306_65

def RemovedBody306_67 : StackLang.HolProg 64 :=
.seq RemovedBody306_53 RemovedBody306_66

def RemovedBody306_68 : StackLang.HolProg 64 :=
.seq RemovedBody306_52 RemovedBody306_67

def RemovedBody306_69 : StackLang.HolProg 64 :=
.seq RemovedBody306_51 RemovedBody306_68

def RemovedBody306_70 : StackLang.HolProg 64 :=
.seq RemovedBody306_50 RemovedBody306_69

def RemovedBody306_71 : StackLang.HolProg 64 :=
.seq RemovedBody306_49 RemovedBody306_70

def RemovedBody306_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody306_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody306_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody306_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody306_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody306_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody306_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody306_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody306_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody306_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody306_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody306_83 : StackLang.HolProg 64 :=
.seq RemovedBody306_81 RemovedBody306_82

def RemovedBody306_84 : StackLang.HolProg 64 :=
.seq RemovedBody306_80 RemovedBody306_83

def RemovedBody306_85 : StackLang.HolProg 64 :=
.seq RemovedBody306_79 RemovedBody306_84

def RemovedBody306_86 : StackLang.HolProg 64 :=
.seq RemovedBody306_78 RemovedBody306_85

def RemovedBody306_87 : StackLang.HolProg 64 :=
.seq RemovedBody306_77 RemovedBody306_86

def RemovedBody306_88 : StackLang.HolProg 64 :=
.seq RemovedBody306_76 RemovedBody306_87

def RemovedBody306_89 : StackLang.HolProg 64 :=
.seq RemovedBody306_75 RemovedBody306_88

def RemovedBody306_90 : StackLang.HolProg 64 :=
.seq RemovedBody306_74 RemovedBody306_89

def RemovedBody306_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody306_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody306_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody306_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody306_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody306_96 : StackLang.HolProg 64 :=
.seq RemovedBody306_94 RemovedBody306_95

def RemovedBody306_97 : StackLang.HolProg 64 :=
.seq RemovedBody306_93 RemovedBody306_96

def RemovedBody306_98 : StackLang.HolProg 64 :=
.seq RemovedBody306_92 RemovedBody306_97

def RemovedBody306_99 : StackLang.HolProg 64 :=
.seq RemovedBody306_91 RemovedBody306_98

def RemovedBody306_100 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody306_101 : StackLang.HolProg 64 :=
.seq RemovedBody306_99 RemovedBody306_100

def RemovedBody306_102 : StackLang.HolProg 64 :=
.call (some (RemovedBody306_90, 0, 306, 2)) (Sum.inl 286) (some (RemovedBody306_101, 306, 3))

def RemovedBody306_103 : StackLang.HolProg 64 :=
.seq RemovedBody306_73 RemovedBody306_102

def RemovedBody306_104 : StackLang.HolProg 64 :=
.seq RemovedBody306_72 RemovedBody306_103

def RemovedBody306_105 : StackLang.HolProg 64 :=
.seq RemovedBody306_71 RemovedBody306_104

def RemovedBody306_106 : StackLang.HolProg 64 :=
.seq RemovedBody306_42 RemovedBody306_105

def RemovedBody306_107 : StackLang.HolProg 64 :=
.seq RemovedBody306_39 RemovedBody306_106

def RemovedBody306_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody306_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody306_110 : StackLang.HolProg 64 :=
.seq RemovedBody306_108 RemovedBody306_109

def RemovedBody306_111 : StackLang.HolProg 64 :=
.seq RemovedBody306_107 RemovedBody306_110

def RemovedBody306_112 : StackLang.HolProg 64 :=
.seq RemovedBody306_38 RemovedBody306_111

def RemovedBody306_113 : StackLang.HolProg 64 :=
.seq RemovedBody306_27 RemovedBody306_112

def RemovedBody306_114 : StackLang.HolProg 64 :=
.seq RemovedBody306_26 RemovedBody306_113

def RemovedBody306_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody306_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody306_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody306_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody306_119 : StackLang.HolProg 64 :=
.seq RemovedBody306_117 RemovedBody306_118

def RemovedBody306_120 : StackLang.HolProg 64 :=
.seq RemovedBody306_116 RemovedBody306_119

def RemovedBody306_121 : StackLang.HolProg 64 :=
.seq RemovedBody306_115 RemovedBody306_120

def RemovedBody306_122 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody306_114 RemovedBody306_121

def RemovedBody306_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody306_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody306_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody306_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody306_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody306_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 40#64))

def RemovedBody306_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody306_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 1 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody306_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody306_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody306_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 32#64))

def RemovedBody306_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody306_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def RemovedBody306_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody306_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody306_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 846#64)

def RemovedBody306_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody306_140 : StackLang.HolProg 64 :=
.seq RemovedBody306_138 RemovedBody306_139

def RemovedBody306_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody306_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody306_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody306_144 : StackLang.HolProg 64 :=
.seq RemovedBody306_142 RemovedBody306_143

def RemovedBody306_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody306_146 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody306_144 RemovedBody306_145

def RemovedBody306_147 : StackLang.HolProg 64 :=
.seq RemovedBody306_141 RemovedBody306_146

def RemovedBody306_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody306_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody306_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 306 5

def RemovedBody306_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody306_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody306_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody306_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody306_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody306_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody306_157 : StackLang.HolProg 64 :=
.seq RemovedBody306_155 RemovedBody306_156

def RemovedBody306_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody306_159 : StackLang.HolProg 64 :=
.seq RemovedBody306_157 RemovedBody306_158

def RemovedBody306_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody306_161 : StackLang.HolProg 64 :=
.seq RemovedBody306_159 RemovedBody306_160

def RemovedBody306_162 : StackLang.HolProg 64 :=
.seq RemovedBody306_154 RemovedBody306_161

def RemovedBody306_163 : StackLang.HolProg 64 :=
.seq RemovedBody306_153 RemovedBody306_162

def RemovedBody306_164 : StackLang.HolProg 64 :=
.seq RemovedBody306_152 RemovedBody306_163

def RemovedBody306_165 : StackLang.HolProg 64 :=
.seq RemovedBody306_151 RemovedBody306_164

def RemovedBody306_166 : StackLang.HolProg 64 :=
.seq RemovedBody306_150 RemovedBody306_165

def RemovedBody306_167 : StackLang.HolProg 64 :=
.seq RemovedBody306_149 RemovedBody306_166

def RemovedBody306_168 : StackLang.HolProg 64 :=
.seq RemovedBody306_148 RemovedBody306_167

def RemovedBody306_169 : StackLang.HolProg 64 :=
.seq RemovedBody306_147 RemovedBody306_168

def RemovedBody306_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody306_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody306_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody306_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody306_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody306_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody306_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody306_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody306_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody306_179 : StackLang.HolProg 64 :=
.seq RemovedBody306_177 RemovedBody306_178

def RemovedBody306_180 : StackLang.HolProg 64 :=
.seq RemovedBody306_176 RemovedBody306_179

def RemovedBody306_181 : StackLang.HolProg 64 :=
.seq RemovedBody306_175 RemovedBody306_180

def RemovedBody306_182 : StackLang.HolProg 64 :=
.seq RemovedBody306_174 RemovedBody306_181

def RemovedBody306_183 : StackLang.HolProg 64 :=
.seq RemovedBody306_173 RemovedBody306_182

def RemovedBody306_184 : StackLang.HolProg 64 :=
.seq RemovedBody306_172 RemovedBody306_183

def RemovedBody306_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody306_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody306_187 : StackLang.HolProg 64 :=
.seq RemovedBody306_185 RemovedBody306_186

def RemovedBody306_188 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody306_189 : StackLang.HolProg 64 :=
.seq RemovedBody306_187 RemovedBody306_188

def RemovedBody306_190 : StackLang.HolProg 64 :=
.call (some (RemovedBody306_184, 0, 306, 4)) (Sum.inl 79) (some (RemovedBody306_189, 306, 5))

def RemovedBody306_191 : StackLang.HolProg 64 :=
.seq RemovedBody306_171 RemovedBody306_190

def RemovedBody306_192 : StackLang.HolProg 64 :=
.seq RemovedBody306_170 RemovedBody306_191

def RemovedBody306_193 : StackLang.HolProg 64 :=
.seq RemovedBody306_169 RemovedBody306_192

def RemovedBody306_194 : StackLang.HolProg 64 :=
.seq RemovedBody306_140 RemovedBody306_193

def RemovedBody306_195 : StackLang.HolProg 64 :=
.seq RemovedBody306_137 RemovedBody306_194

def RemovedBody306_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody306_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody306_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody306_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody306_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody306_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody306_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 48#64))

def RemovedBody306_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody306_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 56#64))

def RemovedBody306_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody306_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody306_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 10

def RemovedBody306_208 : StackLang.HolProg 64 :=
.seq RemovedBody306_206 RemovedBody306_207

def RemovedBody306_209 : StackLang.HolProg 64 :=
.seq RemovedBody306_205 RemovedBody306_208

def RemovedBody306_210 : StackLang.HolProg 64 :=
.seq RemovedBody306_204 RemovedBody306_209

def RemovedBody306_211 : StackLang.HolProg 64 :=
.seq RemovedBody306_203 RemovedBody306_210

def RemovedBody306_212 : StackLang.HolProg 64 :=
.seq RemovedBody306_202 RemovedBody306_211

def RemovedBody306_213 : StackLang.HolProg 64 :=
.seq RemovedBody306_201 RemovedBody306_212

def RemovedBody306_214 : StackLang.HolProg 64 :=
.seq RemovedBody306_200 RemovedBody306_213

def RemovedBody306_215 : StackLang.HolProg 64 :=
.seq RemovedBody306_199 RemovedBody306_214

def RemovedBody306_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody306_217 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody306_215 RemovedBody306_216

def RemovedBody306_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody306_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody306_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody306_221 : StackLang.HolProg 64 :=
.seq RemovedBody306_219 RemovedBody306_220

def RemovedBody306_222 : StackLang.HolProg 64 :=
.seq RemovedBody306_218 RemovedBody306_221

def RemovedBody306_223 : StackLang.HolProg 64 :=
.seq RemovedBody306_217 RemovedBody306_222

def RemovedBody306_224 : StackLang.HolProg 64 :=
.seq RemovedBody306_198 RemovedBody306_223

def RemovedBody306_225 : StackLang.HolProg 64 :=
.seq RemovedBody306_197 RemovedBody306_224

def RemovedBody306_226 : StackLang.HolProg 64 :=
.seq RemovedBody306_196 RemovedBody306_225

def RemovedBody306_227 : StackLang.HolProg 64 :=
.seq RemovedBody306_195 RemovedBody306_226

def RemovedBody306_228 : StackLang.HolProg 64 :=
.seq RemovedBody306_136 RemovedBody306_227

def RemovedBody306_229 : StackLang.HolProg 64 :=
.seq RemovedBody306_135 RemovedBody306_228

def RemovedBody306_230 : StackLang.HolProg 64 :=
.seq RemovedBody306_134 RemovedBody306_229

def RemovedBody306_231 : StackLang.HolProg 64 :=
.seq RemovedBody306_133 RemovedBody306_230

def RemovedBody306_232 : StackLang.HolProg 64 :=
.seq RemovedBody306_132 RemovedBody306_231

def RemovedBody306_233 : StackLang.HolProg 64 :=
.seq RemovedBody306_131 RemovedBody306_232

def RemovedBody306_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody306_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody306_236 : StackLang.HolProg 64 :=
.seq RemovedBody306_234 RemovedBody306_235

def RemovedBody306_237 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody306_233 RemovedBody306_236

def RemovedBody306_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody306_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody306_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody306_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody306_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody306_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody306_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 10

def RemovedBody306_245 : StackLang.HolProg 64 :=
.seq RemovedBody306_243 RemovedBody306_244

def RemovedBody306_246 : StackLang.HolProg 64 :=
.seq RemovedBody306_242 RemovedBody306_245

def RemovedBody306_247 : StackLang.HolProg 64 :=
.seq RemovedBody306_241 RemovedBody306_246

def RemovedBody306_248 : StackLang.HolProg 64 :=
.seq RemovedBody306_240 RemovedBody306_247

def RemovedBody306_249 : StackLang.HolProg 64 :=
.seq RemovedBody306_239 RemovedBody306_248

def RemovedBody306_250 : StackLang.HolProg 64 :=
.seq RemovedBody306_238 RemovedBody306_249

def RemovedBody306_251 : StackLang.HolProg 64 :=
.seq RemovedBody306_237 RemovedBody306_250

def RemovedBody306_252 : StackLang.HolProg 64 :=
.seq RemovedBody306_130 RemovedBody306_251

def RemovedBody306_253 : StackLang.HolProg 64 :=
.seq RemovedBody306_129 RemovedBody306_252

def RemovedBody306_254 : StackLang.HolProg 64 :=
.seq RemovedBody306_128 RemovedBody306_253

def RemovedBody306_255 : StackLang.HolProg 64 :=
.seq RemovedBody306_127 RemovedBody306_254

def RemovedBody306_256 : StackLang.HolProg 64 :=
.seq RemovedBody306_126 RemovedBody306_255

def RemovedBody306_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody306_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def RemovedBody306_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def RemovedBody306_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody306_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody306_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def RemovedBody306_263 : StackLang.HolProg 64 :=
.seq RemovedBody306_261 RemovedBody306_262

def RemovedBody306_264 : StackLang.HolProg 64 :=
.seq RemovedBody306_260 RemovedBody306_263

def RemovedBody306_265 : StackLang.HolProg 64 :=
.seq RemovedBody306_259 RemovedBody306_264

def RemovedBody306_266 : StackLang.HolProg 64 :=
.seq RemovedBody306_258 RemovedBody306_265

def RemovedBody306_267 : StackLang.HolProg 64 :=
.seq RemovedBody306_257 RemovedBody306_266

def RemovedBody306_268 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody306_256 RemovedBody306_267

def RemovedBody306_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody306_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody306_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody306_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody306_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody306_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody306_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 9 40#64))

def RemovedBody306_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody306_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def RemovedBody306_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody306_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody306_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody306_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody306_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody306_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody306_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody306_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def RemovedBody306_286 : StackLang.HolProg 64 :=
.seq RemovedBody306_284 RemovedBody306_285

def RemovedBody306_287 : StackLang.HolProg 64 :=
.seq RemovedBody306_283 RemovedBody306_286

def RemovedBody306_288 : StackLang.HolProg 64 :=
.seq RemovedBody306_282 RemovedBody306_287

def RemovedBody306_289 : StackLang.HolProg 64 :=
.seq RemovedBody306_281 RemovedBody306_288

def RemovedBody306_290 : StackLang.HolProg 64 :=
.seq RemovedBody306_280 RemovedBody306_289

def RemovedBody306_291 : StackLang.HolProg 64 :=
.seq RemovedBody306_279 RemovedBody306_290

def RemovedBody306_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody306_293 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) RemovedBody306_291 RemovedBody306_292

def RemovedBody306_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody306_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody306_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody306_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 9 32#64))

def RemovedBody306_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody306_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody306_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody306_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody306_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody306_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody306_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody306_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody306_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody306_307 : StackLang.HolProg 64 :=
.seq RemovedBody306_305 RemovedBody306_306

def RemovedBody306_308 : StackLang.HolProg 64 :=
.seq RemovedBody306_304 RemovedBody306_307

def RemovedBody306_309 : StackLang.HolProg 64 :=
.seq RemovedBody306_303 RemovedBody306_308

def RemovedBody306_310 : StackLang.HolProg 64 :=
.seq RemovedBody306_302 RemovedBody306_309

def RemovedBody306_311 : StackLang.HolProg 64 :=
.seq RemovedBody306_301 RemovedBody306_310

def RemovedBody306_312 : StackLang.HolProg 64 :=
.seq RemovedBody306_300 RemovedBody306_311

def RemovedBody306_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody306_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 847#64)

def RemovedBody306_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody306_316 : StackLang.HolProg 64 :=
.seq RemovedBody306_314 RemovedBody306_315

def RemovedBody306_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody306_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody306_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody306_320 : StackLang.HolProg 64 :=
.seq RemovedBody306_318 RemovedBody306_319

def RemovedBody306_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody306_322 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody306_320 RemovedBody306_321

def RemovedBody306_323 : StackLang.HolProg 64 :=
.seq RemovedBody306_317 RemovedBody306_322

def RemovedBody306_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody306_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody306_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 306 7

def RemovedBody306_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody306_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody306_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody306_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody306_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody306_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody306_333 : StackLang.HolProg 64 :=
.seq RemovedBody306_331 RemovedBody306_332

def RemovedBody306_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody306_335 : StackLang.HolProg 64 :=
.seq RemovedBody306_333 RemovedBody306_334

def RemovedBody306_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody306_337 : StackLang.HolProg 64 :=
.seq RemovedBody306_335 RemovedBody306_336

def RemovedBody306_338 : StackLang.HolProg 64 :=
.seq RemovedBody306_330 RemovedBody306_337

def RemovedBody306_339 : StackLang.HolProg 64 :=
.seq RemovedBody306_329 RemovedBody306_338

def RemovedBody306_340 : StackLang.HolProg 64 :=
.seq RemovedBody306_328 RemovedBody306_339

def RemovedBody306_341 : StackLang.HolProg 64 :=
.seq RemovedBody306_327 RemovedBody306_340

def RemovedBody306_342 : StackLang.HolProg 64 :=
.seq RemovedBody306_326 RemovedBody306_341

def RemovedBody306_343 : StackLang.HolProg 64 :=
.seq RemovedBody306_325 RemovedBody306_342

def RemovedBody306_344 : StackLang.HolProg 64 :=
.seq RemovedBody306_324 RemovedBody306_343

def RemovedBody306_345 : StackLang.HolProg 64 :=
.seq RemovedBody306_323 RemovedBody306_344

def RemovedBody306_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody306_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody306_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody306_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody306_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody306_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody306_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody306_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody306_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody306_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody306_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody306_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody306_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody306_359 : StackLang.HolProg 64 :=
.seq RemovedBody306_357 RemovedBody306_358

def RemovedBody306_360 : StackLang.HolProg 64 :=
.seq RemovedBody306_356 RemovedBody306_359

def RemovedBody306_361 : StackLang.HolProg 64 :=
.seq RemovedBody306_355 RemovedBody306_360

def RemovedBody306_362 : StackLang.HolProg 64 :=
.seq RemovedBody306_354 RemovedBody306_361

def RemovedBody306_363 : StackLang.HolProg 64 :=
.seq RemovedBody306_353 RemovedBody306_362

def RemovedBody306_364 : StackLang.HolProg 64 :=
.seq RemovedBody306_352 RemovedBody306_363

def RemovedBody306_365 : StackLang.HolProg 64 :=
.seq RemovedBody306_351 RemovedBody306_364

def RemovedBody306_366 : StackLang.HolProg 64 :=
.seq RemovedBody306_350 RemovedBody306_365

def RemovedBody306_367 : StackLang.HolProg 64 :=
.seq RemovedBody306_349 RemovedBody306_366

def RemovedBody306_368 : StackLang.HolProg 64 :=
.seq RemovedBody306_348 RemovedBody306_367

def RemovedBody306_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody306_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody306_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody306_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody306_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody306_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody306_375 : StackLang.HolProg 64 :=
.seq RemovedBody306_373 RemovedBody306_374

def RemovedBody306_376 : StackLang.HolProg 64 :=
.seq RemovedBody306_372 RemovedBody306_375

def RemovedBody306_377 : StackLang.HolProg 64 :=
.seq RemovedBody306_371 RemovedBody306_376

def RemovedBody306_378 : StackLang.HolProg 64 :=
.seq RemovedBody306_370 RemovedBody306_377

def RemovedBody306_379 : StackLang.HolProg 64 :=
.seq RemovedBody306_369 RemovedBody306_378

def RemovedBody306_380 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody306_381 : StackLang.HolProg 64 :=
.seq RemovedBody306_379 RemovedBody306_380

def RemovedBody306_382 : StackLang.HolProg 64 :=
.call (some (RemovedBody306_368, 0, 306, 6)) (Sum.inl 79) (some (RemovedBody306_381, 306, 7))

def RemovedBody306_383 : StackLang.HolProg 64 :=
.seq RemovedBody306_347 RemovedBody306_382

def RemovedBody306_384 : StackLang.HolProg 64 :=
.seq RemovedBody306_346 RemovedBody306_383

def RemovedBody306_385 : StackLang.HolProg 64 :=
.seq RemovedBody306_345 RemovedBody306_384

def RemovedBody306_386 : StackLang.HolProg 64 :=
.seq RemovedBody306_316 RemovedBody306_385

def RemovedBody306_387 : StackLang.HolProg 64 :=
.seq RemovedBody306_313 RemovedBody306_386

def RemovedBody306_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody306_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody306_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody306_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody306_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody306_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody306_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody306_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody306_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody306_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def RemovedBody306_398 : StackLang.HolProg 64 :=
.seq RemovedBody306_396 RemovedBody306_397

def RemovedBody306_399 : StackLang.HolProg 64 :=
.seq RemovedBody306_395 RemovedBody306_398

def RemovedBody306_400 : StackLang.HolProg 64 :=
.seq RemovedBody306_394 RemovedBody306_399

def RemovedBody306_401 : StackLang.HolProg 64 :=
.seq RemovedBody306_393 RemovedBody306_400

def RemovedBody306_402 : StackLang.HolProg 64 :=
.seq RemovedBody306_392 RemovedBody306_401

def RemovedBody306_403 : StackLang.HolProg 64 :=
.seq RemovedBody306_391 RemovedBody306_402

def RemovedBody306_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody306_405 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody306_403 RemovedBody306_404

def RemovedBody306_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody306_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody306_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody306_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def RemovedBody306_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody306_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 48#64))

def RemovedBody306_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody306_413 : StackLang.HolProg 64 :=
.seq RemovedBody306_411 RemovedBody306_412

def RemovedBody306_414 : StackLang.HolProg 64 :=
.seq RemovedBody306_410 RemovedBody306_413

def RemovedBody306_415 : StackLang.HolProg 64 :=
.seq RemovedBody306_409 RemovedBody306_414

def RemovedBody306_416 : StackLang.HolProg 64 :=
.seq RemovedBody306_408 RemovedBody306_415

def RemovedBody306_417 : StackLang.HolProg 64 :=
.seq RemovedBody306_407 RemovedBody306_416

def RemovedBody306_418 : StackLang.HolProg 64 :=
.seq RemovedBody306_406 RemovedBody306_417

def RemovedBody306_419 : StackLang.HolProg 64 :=
.seq RemovedBody306_405 RemovedBody306_418

def RemovedBody306_420 : StackLang.HolProg 64 :=
.seq RemovedBody306_390 RemovedBody306_419

def RemovedBody306_421 : StackLang.HolProg 64 :=
.seq RemovedBody306_389 RemovedBody306_420

def RemovedBody306_422 : StackLang.HolProg 64 :=
.seq RemovedBody306_388 RemovedBody306_421

def RemovedBody306_423 : StackLang.HolProg 64 :=
.seq RemovedBody306_387 RemovedBody306_422

def RemovedBody306_424 : StackLang.HolProg 64 :=
.seq RemovedBody306_312 RemovedBody306_423

def RemovedBody306_425 : StackLang.HolProg 64 :=
.seq RemovedBody306_299 RemovedBody306_424

def RemovedBody306_426 : StackLang.HolProg 64 :=
.seq RemovedBody306_298 RemovedBody306_425

def RemovedBody306_427 : StackLang.HolProg 64 :=
.seq RemovedBody306_297 RemovedBody306_426

def RemovedBody306_428 : StackLang.HolProg 64 :=
.seq RemovedBody306_296 RemovedBody306_427

def RemovedBody306_429 : StackLang.HolProg 64 :=
.seq RemovedBody306_295 RemovedBody306_428

def RemovedBody306_430 : StackLang.HolProg 64 :=
.seq RemovedBody306_294 RemovedBody306_429

def RemovedBody306_431 : StackLang.HolProg 64 :=
.seq RemovedBody306_293 RemovedBody306_430

def RemovedBody306_432 : StackLang.HolProg 64 :=
.seq RemovedBody306_278 RemovedBody306_431

def RemovedBody306_433 : StackLang.HolProg 64 :=
.seq RemovedBody306_277 RemovedBody306_432

def RemovedBody306_434 : StackLang.HolProg 64 :=
.seq RemovedBody306_276 RemovedBody306_433

def RemovedBody306_435 : StackLang.HolProg 64 :=
.seq RemovedBody306_275 RemovedBody306_434

def RemovedBody306_436 : StackLang.HolProg 64 :=
.seq RemovedBody306_274 RemovedBody306_435

def RemovedBody306_437 : StackLang.HolProg 64 :=
.seq RemovedBody306_273 RemovedBody306_436

def RemovedBody306_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody306_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody306_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody306_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody306_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 9 168#64))

def RemovedBody306_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody306_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody306_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody306_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody306_447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody306_448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody306_449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody306_450 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody306_451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def RemovedBody306_452 : StackLang.HolProg 64 :=
.seq RemovedBody306_450 RemovedBody306_451

def RemovedBody306_453 : StackLang.HolProg 64 :=
.seq RemovedBody306_449 RemovedBody306_452

def RemovedBody306_454 : StackLang.HolProg 64 :=
.seq RemovedBody306_448 RemovedBody306_453

def RemovedBody306_455 : StackLang.HolProg 64 :=
.seq RemovedBody306_447 RemovedBody306_454

def RemovedBody306_456 : StackLang.HolProg 64 :=
.seq RemovedBody306_446 RemovedBody306_455

def RemovedBody306_457 : StackLang.HolProg 64 :=
.seq RemovedBody306_445 RemovedBody306_456

def RemovedBody306_458 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody306_459 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 7 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody306_457 RemovedBody306_458

def RemovedBody306_460 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody306_461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody306_462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody306_463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody306_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 9 160#64))

def RemovedBody306_465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def RemovedBody306_466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody306_467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def RemovedBody306_468 : StackLang.HolProg 64 :=
.seq RemovedBody306_466 RemovedBody306_467

def RemovedBody306_469 : StackLang.HolProg 64 :=
.seq RemovedBody306_465 RemovedBody306_468

def RemovedBody306_470 : StackLang.HolProg 64 :=
.seq RemovedBody306_464 RemovedBody306_469

def RemovedBody306_471 : StackLang.HolProg 64 :=
.seq RemovedBody306_463 RemovedBody306_470

def RemovedBody306_472 : StackLang.HolProg 64 :=
.seq RemovedBody306_462 RemovedBody306_471

def RemovedBody306_473 : StackLang.HolProg 64 :=
.seq RemovedBody306_461 RemovedBody306_472

def RemovedBody306_474 : StackLang.HolProg 64 :=
.seq RemovedBody306_460 RemovedBody306_473

def RemovedBody306_475 : StackLang.HolProg 64 :=
.seq RemovedBody306_459 RemovedBody306_474

def RemovedBody306_476 : StackLang.HolProg 64 :=
.seq RemovedBody306_444 RemovedBody306_475

def RemovedBody306_477 : StackLang.HolProg 64 :=
.seq RemovedBody306_443 RemovedBody306_476

def RemovedBody306_478 : StackLang.HolProg 64 :=
.seq RemovedBody306_442 RemovedBody306_477

def RemovedBody306_479 : StackLang.HolProg 64 :=
.seq RemovedBody306_441 RemovedBody306_478

def RemovedBody306_480 : StackLang.HolProg 64 :=
.seq RemovedBody306_440 RemovedBody306_479

def RemovedBody306_481 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def RemovedBody306_482 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody306_480 RemovedBody306_481

def RemovedBody306_483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody306_484 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody306_485 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody306_486 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody306_487 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody306_488 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody306_489 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody306_490 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody306_491 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody306_492 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 32#64))

def RemovedBody306_493 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody306_494 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody306_495 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody306_496 : StackLang.HolProg 64 :=
.seq RemovedBody306_494 RemovedBody306_495

def RemovedBody306_497 : StackLang.HolProg 64 :=
.seq RemovedBody306_493 RemovedBody306_496

def RemovedBody306_498 : StackLang.HolProg 64 :=
.seq RemovedBody306_492 RemovedBody306_497

def RemovedBody306_499 : StackLang.HolProg 64 :=
.seq RemovedBody306_491 RemovedBody306_498

def RemovedBody306_500 : StackLang.HolProg 64 :=
.seq RemovedBody306_490 RemovedBody306_499

def RemovedBody306_501 : StackLang.HolProg 64 :=
.seq RemovedBody306_489 RemovedBody306_500

def RemovedBody306_502 : StackLang.HolProg 64 :=
.seq RemovedBody306_488 RemovedBody306_501

def RemovedBody306_503 : StackLang.HolProg 64 :=
.seq RemovedBody306_487 RemovedBody306_502

def RemovedBody306_504 : StackLang.HolProg 64 :=
.seq RemovedBody306_486 RemovedBody306_503

def RemovedBody306_505 : StackLang.HolProg 64 :=
.seq RemovedBody306_485 RemovedBody306_504

def RemovedBody306_506 : StackLang.HolProg 64 :=
.seq RemovedBody306_484 RemovedBody306_505

def RemovedBody306_507 : StackLang.HolProg 64 :=
.seq RemovedBody306_483 RemovedBody306_506

def RemovedBody306_508 : StackLang.HolProg 64 :=
.seq RemovedBody306_482 RemovedBody306_507

def RemovedBody306_509 : StackLang.HolProg 64 :=
.seq RemovedBody306_439 RemovedBody306_508

def RemovedBody306_510 : StackLang.HolProg 64 :=
.seq RemovedBody306_438 RemovedBody306_509

def RemovedBody306_511 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 7 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody306_437 RemovedBody306_510

def RemovedBody306_512 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody306_513 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody306_514 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody306_515 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody306_516 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody306_517 : StackLang.HolProg 64 :=
.seq RemovedBody306_515 RemovedBody306_516

def RemovedBody306_518 : StackLang.HolProg 64 :=
.seq RemovedBody306_514 RemovedBody306_517

def RemovedBody306_519 : StackLang.HolProg 64 :=
.seq RemovedBody306_513 RemovedBody306_518

def RemovedBody306_520 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody306_521 : StackLang.HolProg 64 :=
.seq RemovedBody306_519 RemovedBody306_520

def RemovedBody306_522 : StackLang.HolProg 64 :=
.seq RemovedBody306_512 RemovedBody306_521

def RemovedBody306_523 : StackLang.HolProg 64 :=
.seq RemovedBody306_511 RemovedBody306_522

def RemovedBody306_524 : StackLang.HolProg 64 :=
.seq RemovedBody306_272 RemovedBody306_523

def RemovedBody306_525 : StackLang.HolProg 64 :=
.seq RemovedBody306_271 RemovedBody306_524

def RemovedBody306_526 : StackLang.HolProg 64 :=
.seq RemovedBody306_270 RemovedBody306_525

def RemovedBody306_527 : StackLang.HolProg 64 :=
.seq RemovedBody306_269 RemovedBody306_526

def RemovedBody306_528 : StackLang.HolProg 64 :=
.seq RemovedBody306_268 RemovedBody306_527

def RemovedBody306_529 : StackLang.HolProg 64 :=
.seq RemovedBody306_125 RemovedBody306_528

def RemovedBody306_530 : StackLang.HolProg 64 :=
.seq RemovedBody306_124 RemovedBody306_529

def RemovedBody306_531 : StackLang.HolProg 64 :=
.seq RemovedBody306_123 RemovedBody306_530

def RemovedBody306_532 : StackLang.HolProg 64 :=
.seq RemovedBody306_122 RemovedBody306_531

def RemovedBody306_533 : StackLang.HolProg 64 :=
.seq RemovedBody306_25 RemovedBody306_532

def RemovedBody306_534 : StackLang.HolProg 64 :=
.seq RemovedBody306_24 RemovedBody306_533

def RemovedBody306_535 : StackLang.HolProg 64 :=
.seq RemovedBody306_23 RemovedBody306_534

def RemovedBody306_536 : StackLang.HolProg 64 :=
.seq RemovedBody306_22 RemovedBody306_535

def RemovedBody306_537 : StackLang.HolProg 64 :=
.seq RemovedBody306_21 RemovedBody306_536

def RemovedBody306_538 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody306_539 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody306_540 : StackLang.HolProg 64 :=
.seq RemovedBody306_538 RemovedBody306_539

def RemovedBody306_541 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody306_537 RemovedBody306_540

def RemovedBody306_542 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody306_543 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody306_544 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody306_545 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody306_546 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody306_547 : StackLang.HolProg 64 :=
.seq RemovedBody306_545 RemovedBody306_546

def RemovedBody306_548 : StackLang.HolProg 64 :=
.seq RemovedBody306_544 RemovedBody306_547

def RemovedBody306_549 : StackLang.HolProg 64 :=
.seq RemovedBody306_543 RemovedBody306_548

def RemovedBody306_550 : StackLang.HolProg 64 :=
.seq RemovedBody306_542 RemovedBody306_549

def RemovedBody306_551 : StackLang.HolProg 64 :=
.seq RemovedBody306_541 RemovedBody306_550

def RemovedBody306_552 : StackLang.HolProg 64 :=
.seq RemovedBody306_20 RemovedBody306_551

def RemovedBody306_553 : StackLang.HolProg 64 :=
.seq RemovedBody306_19 RemovedBody306_552

def RemovedBody306_554 : StackLang.HolProg 64 :=
.loop RemovedBody306_553

def RemovedBody306_555 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody306_556 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody306_557 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody306_558 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody306_559 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody306_560 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody306_561 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody306_562 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def RemovedBody306_563 : StackLang.HolProg 64 :=
.seq RemovedBody306_561 RemovedBody306_562

def RemovedBody306_564 : StackLang.HolProg 64 :=
.seq RemovedBody306_560 RemovedBody306_563

def RemovedBody306_565 : StackLang.HolProg 64 :=
.seq RemovedBody306_559 RemovedBody306_564

def RemovedBody306_566 : StackLang.HolProg 64 :=
.seq RemovedBody306_558 RemovedBody306_565

def RemovedBody306_567 : StackLang.HolProg 64 :=
.seq RemovedBody306_557 RemovedBody306_566

def RemovedBody306_568 : StackLang.HolProg 64 :=
.seq RemovedBody306_556 RemovedBody306_567

def RemovedBody306_569 : StackLang.HolProg 64 :=
.seq RemovedBody306_555 RemovedBody306_568

def RemovedBody306_570 : StackLang.HolProg 64 :=
.seq RemovedBody306_554 RemovedBody306_569

def RemovedBody306_571 : StackLang.HolProg 64 :=
.seq RemovedBody306_18 RemovedBody306_570

def RemovedBody306_572 : StackLang.HolProg 64 :=
.seq RemovedBody306_9 RemovedBody306_571

def RemovedBody306_573 : StackLang.HolProg 64 :=
.seq RemovedBody306_8 RemovedBody306_572

def RemovedBody306_574 : StackLang.HolProg 64 :=
.seq RemovedBody306_7 RemovedBody306_573

def RemovedBody306_575 : StackLang.HolProg 64 :=
.seq RemovedBody306_6 RemovedBody306_574

def Removed306 : Nat × StackLang.HolProg 64 := (306, RemovedBody306_575)
theorem Removed306_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc306 = Removed306 := by
  kernel_rfl
#print axioms Removed306_eq
end InitECandidate.Proofs.BackendStages
