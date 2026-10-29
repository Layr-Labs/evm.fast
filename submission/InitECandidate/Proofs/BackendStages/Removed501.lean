import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc501
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody501_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def RemovedBody501_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody501_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody501_3 : StackLang.HolProg 64 :=
.seq RemovedBody501_1 RemovedBody501_2

def RemovedBody501_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody501_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody501_3 RemovedBody501_4

def RemovedBody501_6 : StackLang.HolProg 64 :=
.seq RemovedBody501_0 RemovedBody501_5

def RemovedBody501_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody501_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody501_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1568#64)

def RemovedBody501_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody501_11 : StackLang.HolProg 64 :=
.seq RemovedBody501_9 RemovedBody501_10

def RemovedBody501_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody501_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody501_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody501_15 : StackLang.HolProg 64 :=
.seq RemovedBody501_13 RemovedBody501_14

def RemovedBody501_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody501_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody501_15 RemovedBody501_16

def RemovedBody501_18 : StackLang.HolProg 64 :=
.seq RemovedBody501_12 RemovedBody501_17

def RemovedBody501_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody501_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody501_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 501 3

def RemovedBody501_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody501_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody501_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody501_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody501_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody501_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody501_28 : StackLang.HolProg 64 :=
.seq RemovedBody501_26 RemovedBody501_27

def RemovedBody501_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody501_30 : StackLang.HolProg 64 :=
.seq RemovedBody501_28 RemovedBody501_29

def RemovedBody501_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody501_32 : StackLang.HolProg 64 :=
.seq RemovedBody501_30 RemovedBody501_31

def RemovedBody501_33 : StackLang.HolProg 64 :=
.seq RemovedBody501_25 RemovedBody501_32

def RemovedBody501_34 : StackLang.HolProg 64 :=
.seq RemovedBody501_24 RemovedBody501_33

def RemovedBody501_35 : StackLang.HolProg 64 :=
.seq RemovedBody501_23 RemovedBody501_34

def RemovedBody501_36 : StackLang.HolProg 64 :=
.seq RemovedBody501_22 RemovedBody501_35

def RemovedBody501_37 : StackLang.HolProg 64 :=
.seq RemovedBody501_21 RemovedBody501_36

def RemovedBody501_38 : StackLang.HolProg 64 :=
.seq RemovedBody501_20 RemovedBody501_37

def RemovedBody501_39 : StackLang.HolProg 64 :=
.seq RemovedBody501_19 RemovedBody501_38

def RemovedBody501_40 : StackLang.HolProg 64 :=
.seq RemovedBody501_18 RemovedBody501_39

def RemovedBody501_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody501_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody501_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody501_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody501_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody501_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody501_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody501_48 : StackLang.HolProg 64 :=
.seq RemovedBody501_46 RemovedBody501_47

def RemovedBody501_49 : StackLang.HolProg 64 :=
.seq RemovedBody501_45 RemovedBody501_48

def RemovedBody501_50 : StackLang.HolProg 64 :=
.seq RemovedBody501_44 RemovedBody501_49

def RemovedBody501_51 : StackLang.HolProg 64 :=
.seq RemovedBody501_43 RemovedBody501_50

def RemovedBody501_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody501_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody501_54 : StackLang.HolProg 64 :=
.seq RemovedBody501_52 RemovedBody501_53

def RemovedBody501_55 : StackLang.HolProg 64 :=
.call (some (RemovedBody501_51, 0, 501, 2)) (Sum.inl 475) (some (RemovedBody501_54, 501, 3))

def RemovedBody501_56 : StackLang.HolProg 64 :=
.seq RemovedBody501_42 RemovedBody501_55

def RemovedBody501_57 : StackLang.HolProg 64 :=
.seq RemovedBody501_41 RemovedBody501_56

def RemovedBody501_58 : StackLang.HolProg 64 :=
.seq RemovedBody501_40 RemovedBody501_57

def RemovedBody501_59 : StackLang.HolProg 64 :=
.seq RemovedBody501_11 RemovedBody501_58

def RemovedBody501_60 : StackLang.HolProg 64 :=
.seq RemovedBody501_8 RemovedBody501_59

def RemovedBody501_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody501_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody501_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody501_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody501_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody501_66 : StackLang.HolProg 64 :=
.seq RemovedBody501_64 RemovedBody501_65

def RemovedBody501_67 : StackLang.HolProg 64 :=
.seq RemovedBody501_63 RemovedBody501_66

def RemovedBody501_68 : StackLang.HolProg 64 :=
.seq RemovedBody501_62 RemovedBody501_67

def RemovedBody501_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody501_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1569#64)

def RemovedBody501_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody501_72 : StackLang.HolProg 64 :=
.seq RemovedBody501_70 RemovedBody501_71

def RemovedBody501_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody501_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody501_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody501_76 : StackLang.HolProg 64 :=
.seq RemovedBody501_74 RemovedBody501_75

def RemovedBody501_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody501_78 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody501_76 RemovedBody501_77

def RemovedBody501_79 : StackLang.HolProg 64 :=
.seq RemovedBody501_73 RemovedBody501_78

def RemovedBody501_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody501_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody501_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 501 5

def RemovedBody501_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody501_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody501_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody501_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody501_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody501_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody501_89 : StackLang.HolProg 64 :=
.seq RemovedBody501_87 RemovedBody501_88

def RemovedBody501_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody501_91 : StackLang.HolProg 64 :=
.seq RemovedBody501_89 RemovedBody501_90

def RemovedBody501_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody501_93 : StackLang.HolProg 64 :=
.seq RemovedBody501_91 RemovedBody501_92

def RemovedBody501_94 : StackLang.HolProg 64 :=
.seq RemovedBody501_86 RemovedBody501_93

def RemovedBody501_95 : StackLang.HolProg 64 :=
.seq RemovedBody501_85 RemovedBody501_94

def RemovedBody501_96 : StackLang.HolProg 64 :=
.seq RemovedBody501_84 RemovedBody501_95

def RemovedBody501_97 : StackLang.HolProg 64 :=
.seq RemovedBody501_83 RemovedBody501_96

def RemovedBody501_98 : StackLang.HolProg 64 :=
.seq RemovedBody501_82 RemovedBody501_97

def RemovedBody501_99 : StackLang.HolProg 64 :=
.seq RemovedBody501_81 RemovedBody501_98

def RemovedBody501_100 : StackLang.HolProg 64 :=
.seq RemovedBody501_80 RemovedBody501_99

def RemovedBody501_101 : StackLang.HolProg 64 :=
.seq RemovedBody501_79 RemovedBody501_100

def RemovedBody501_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody501_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody501_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody501_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody501_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody501_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody501_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody501_109 : StackLang.HolProg 64 :=
.seq RemovedBody501_107 RemovedBody501_108

def RemovedBody501_110 : StackLang.HolProg 64 :=
.seq RemovedBody501_106 RemovedBody501_109

def RemovedBody501_111 : StackLang.HolProg 64 :=
.seq RemovedBody501_105 RemovedBody501_110

def RemovedBody501_112 : StackLang.HolProg 64 :=
.seq RemovedBody501_104 RemovedBody501_111

def RemovedBody501_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody501_114 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody501_115 : StackLang.HolProg 64 :=
.seq RemovedBody501_113 RemovedBody501_114

def RemovedBody501_116 : StackLang.HolProg 64 :=
.call (some (RemovedBody501_112, 0, 501, 4)) (Sum.inl 475) (some (RemovedBody501_115, 501, 5))

def RemovedBody501_117 : StackLang.HolProg 64 :=
.seq RemovedBody501_103 RemovedBody501_116

def RemovedBody501_118 : StackLang.HolProg 64 :=
.seq RemovedBody501_102 RemovedBody501_117

def RemovedBody501_119 : StackLang.HolProg 64 :=
.seq RemovedBody501_101 RemovedBody501_118

def RemovedBody501_120 : StackLang.HolProg 64 :=
.seq RemovedBody501_72 RemovedBody501_119

def RemovedBody501_121 : StackLang.HolProg 64 :=
.seq RemovedBody501_69 RemovedBody501_120

def RemovedBody501_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody501_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 5#64)

def RemovedBody501_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody501_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody501_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody501_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody501_128 : StackLang.HolProg 64 :=
.seq RemovedBody501_126 RemovedBody501_127

def RemovedBody501_129 : StackLang.HolProg 64 :=
.seq RemovedBody501_125 RemovedBody501_128

def RemovedBody501_130 : StackLang.HolProg 64 :=
.seq RemovedBody501_124 RemovedBody501_129

def RemovedBody501_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody501_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1570#64)

def RemovedBody501_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody501_134 : StackLang.HolProg 64 :=
.seq RemovedBody501_132 RemovedBody501_133

def RemovedBody501_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody501_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody501_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody501_138 : StackLang.HolProg 64 :=
.seq RemovedBody501_136 RemovedBody501_137

def RemovedBody501_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody501_140 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody501_138 RemovedBody501_139

def RemovedBody501_141 : StackLang.HolProg 64 :=
.seq RemovedBody501_135 RemovedBody501_140

def RemovedBody501_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody501_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody501_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 501 7

def RemovedBody501_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody501_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody501_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody501_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody501_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody501_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody501_151 : StackLang.HolProg 64 :=
.seq RemovedBody501_149 RemovedBody501_150

def RemovedBody501_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody501_153 : StackLang.HolProg 64 :=
.seq RemovedBody501_151 RemovedBody501_152

def RemovedBody501_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody501_155 : StackLang.HolProg 64 :=
.seq RemovedBody501_153 RemovedBody501_154

def RemovedBody501_156 : StackLang.HolProg 64 :=
.seq RemovedBody501_148 RemovedBody501_155

def RemovedBody501_157 : StackLang.HolProg 64 :=
.seq RemovedBody501_147 RemovedBody501_156

def RemovedBody501_158 : StackLang.HolProg 64 :=
.seq RemovedBody501_146 RemovedBody501_157

def RemovedBody501_159 : StackLang.HolProg 64 :=
.seq RemovedBody501_145 RemovedBody501_158

def RemovedBody501_160 : StackLang.HolProg 64 :=
.seq RemovedBody501_144 RemovedBody501_159

def RemovedBody501_161 : StackLang.HolProg 64 :=
.seq RemovedBody501_143 RemovedBody501_160

def RemovedBody501_162 : StackLang.HolProg 64 :=
.seq RemovedBody501_142 RemovedBody501_161

def RemovedBody501_163 : StackLang.HolProg 64 :=
.seq RemovedBody501_141 RemovedBody501_162

def RemovedBody501_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody501_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody501_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody501_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody501_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody501_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody501_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody501_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody501_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody501_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody501_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody501_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody501_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody501_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody501_178 : StackLang.HolProg 64 :=
.seq RemovedBody501_176 RemovedBody501_177

def RemovedBody501_179 : StackLang.HolProg 64 :=
.seq RemovedBody501_175 RemovedBody501_178

def RemovedBody501_180 : StackLang.HolProg 64 :=
.seq RemovedBody501_174 RemovedBody501_179

def RemovedBody501_181 : StackLang.HolProg 64 :=
.seq RemovedBody501_173 RemovedBody501_180

def RemovedBody501_182 : StackLang.HolProg 64 :=
.seq RemovedBody501_172 RemovedBody501_181

def RemovedBody501_183 : StackLang.HolProg 64 :=
.seq RemovedBody501_171 RemovedBody501_182

def RemovedBody501_184 : StackLang.HolProg 64 :=
.seq RemovedBody501_170 RemovedBody501_183

def RemovedBody501_185 : StackLang.HolProg 64 :=
.seq RemovedBody501_169 RemovedBody501_184

def RemovedBody501_186 : StackLang.HolProg 64 :=
.seq RemovedBody501_168 RemovedBody501_185

def RemovedBody501_187 : StackLang.HolProg 64 :=
.seq RemovedBody501_167 RemovedBody501_186

def RemovedBody501_188 : StackLang.HolProg 64 :=
.seq RemovedBody501_166 RemovedBody501_187

def RemovedBody501_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody501_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody501_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody501_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody501_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody501_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody501_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody501_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody501_197 : StackLang.HolProg 64 :=
.seq RemovedBody501_195 RemovedBody501_196

def RemovedBody501_198 : StackLang.HolProg 64 :=
.seq RemovedBody501_194 RemovedBody501_197

def RemovedBody501_199 : StackLang.HolProg 64 :=
.seq RemovedBody501_193 RemovedBody501_198

def RemovedBody501_200 : StackLang.HolProg 64 :=
.seq RemovedBody501_192 RemovedBody501_199

def RemovedBody501_201 : StackLang.HolProg 64 :=
.seq RemovedBody501_191 RemovedBody501_200

def RemovedBody501_202 : StackLang.HolProg 64 :=
.seq RemovedBody501_190 RemovedBody501_201

def RemovedBody501_203 : StackLang.HolProg 64 :=
.seq RemovedBody501_189 RemovedBody501_202

def RemovedBody501_204 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody501_205 : StackLang.HolProg 64 :=
.seq RemovedBody501_203 RemovedBody501_204

def RemovedBody501_206 : StackLang.HolProg 64 :=
.call (some (RemovedBody501_188, 0, 501, 6)) (Sum.inl 470) (some (RemovedBody501_205, 501, 7))

def RemovedBody501_207 : StackLang.HolProg 64 :=
.seq RemovedBody501_165 RemovedBody501_206

def RemovedBody501_208 : StackLang.HolProg 64 :=
.seq RemovedBody501_164 RemovedBody501_207

def RemovedBody501_209 : StackLang.HolProg 64 :=
.seq RemovedBody501_163 RemovedBody501_208

def RemovedBody501_210 : StackLang.HolProg 64 :=
.seq RemovedBody501_134 RemovedBody501_209

def RemovedBody501_211 : StackLang.HolProg 64 :=
.seq RemovedBody501_131 RemovedBody501_210

def RemovedBody501_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody501_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody501_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody501_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1571#64)

def RemovedBody501_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody501_217 : StackLang.HolProg 64 :=
.seq RemovedBody501_215 RemovedBody501_216

def RemovedBody501_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody501_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody501_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody501_221 : StackLang.HolProg 64 :=
.seq RemovedBody501_219 RemovedBody501_220

def RemovedBody501_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody501_223 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody501_221 RemovedBody501_222

def RemovedBody501_224 : StackLang.HolProg 64 :=
.seq RemovedBody501_218 RemovedBody501_223

def RemovedBody501_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody501_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody501_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 501 9

def RemovedBody501_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody501_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody501_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody501_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody501_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody501_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody501_234 : StackLang.HolProg 64 :=
.seq RemovedBody501_232 RemovedBody501_233

def RemovedBody501_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody501_236 : StackLang.HolProg 64 :=
.seq RemovedBody501_234 RemovedBody501_235

def RemovedBody501_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody501_238 : StackLang.HolProg 64 :=
.seq RemovedBody501_236 RemovedBody501_237

def RemovedBody501_239 : StackLang.HolProg 64 :=
.seq RemovedBody501_231 RemovedBody501_238

def RemovedBody501_240 : StackLang.HolProg 64 :=
.seq RemovedBody501_230 RemovedBody501_239

def RemovedBody501_241 : StackLang.HolProg 64 :=
.seq RemovedBody501_229 RemovedBody501_240

def RemovedBody501_242 : StackLang.HolProg 64 :=
.seq RemovedBody501_228 RemovedBody501_241

def RemovedBody501_243 : StackLang.HolProg 64 :=
.seq RemovedBody501_227 RemovedBody501_242

def RemovedBody501_244 : StackLang.HolProg 64 :=
.seq RemovedBody501_226 RemovedBody501_243

def RemovedBody501_245 : StackLang.HolProg 64 :=
.seq RemovedBody501_225 RemovedBody501_244

def RemovedBody501_246 : StackLang.HolProg 64 :=
.seq RemovedBody501_224 RemovedBody501_245

def RemovedBody501_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody501_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody501_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody501_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody501_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody501_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody501_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody501_254 : StackLang.HolProg 64 :=
.seq RemovedBody501_252 RemovedBody501_253

def RemovedBody501_255 : StackLang.HolProg 64 :=
.seq RemovedBody501_251 RemovedBody501_254

def RemovedBody501_256 : StackLang.HolProg 64 :=
.seq RemovedBody501_250 RemovedBody501_255

def RemovedBody501_257 : StackLang.HolProg 64 :=
.seq RemovedBody501_249 RemovedBody501_256

def RemovedBody501_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody501_259 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody501_260 : StackLang.HolProg 64 :=
.seq RemovedBody501_258 RemovedBody501_259

def RemovedBody501_261 : StackLang.HolProg 64 :=
.call (some (RemovedBody501_257, 0, 501, 8)) (Sum.inl 133) (some (RemovedBody501_260, 501, 9))

def RemovedBody501_262 : StackLang.HolProg 64 :=
.seq RemovedBody501_248 RemovedBody501_261

def RemovedBody501_263 : StackLang.HolProg 64 :=
.seq RemovedBody501_247 RemovedBody501_262

def RemovedBody501_264 : StackLang.HolProg 64 :=
.seq RemovedBody501_246 RemovedBody501_263

def RemovedBody501_265 : StackLang.HolProg 64 :=
.seq RemovedBody501_217 RemovedBody501_264

def RemovedBody501_266 : StackLang.HolProg 64 :=
.seq RemovedBody501_214 RemovedBody501_265

def RemovedBody501_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody501_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody501_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody501_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1572#64)

def RemovedBody501_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody501_272 : StackLang.HolProg 64 :=
.seq RemovedBody501_270 RemovedBody501_271

def RemovedBody501_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody501_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody501_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody501_276 : StackLang.HolProg 64 :=
.seq RemovedBody501_274 RemovedBody501_275

def RemovedBody501_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody501_278 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody501_276 RemovedBody501_277

def RemovedBody501_279 : StackLang.HolProg 64 :=
.seq RemovedBody501_273 RemovedBody501_278

def RemovedBody501_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody501_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody501_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 501 11

def RemovedBody501_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody501_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody501_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody501_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody501_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody501_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody501_289 : StackLang.HolProg 64 :=
.seq RemovedBody501_287 RemovedBody501_288

def RemovedBody501_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody501_291 : StackLang.HolProg 64 :=
.seq RemovedBody501_289 RemovedBody501_290

def RemovedBody501_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody501_293 : StackLang.HolProg 64 :=
.seq RemovedBody501_291 RemovedBody501_292

def RemovedBody501_294 : StackLang.HolProg 64 :=
.seq RemovedBody501_286 RemovedBody501_293

def RemovedBody501_295 : StackLang.HolProg 64 :=
.seq RemovedBody501_285 RemovedBody501_294

def RemovedBody501_296 : StackLang.HolProg 64 :=
.seq RemovedBody501_284 RemovedBody501_295

def RemovedBody501_297 : StackLang.HolProg 64 :=
.seq RemovedBody501_283 RemovedBody501_296

def RemovedBody501_298 : StackLang.HolProg 64 :=
.seq RemovedBody501_282 RemovedBody501_297

def RemovedBody501_299 : StackLang.HolProg 64 :=
.seq RemovedBody501_281 RemovedBody501_298

def RemovedBody501_300 : StackLang.HolProg 64 :=
.seq RemovedBody501_280 RemovedBody501_299

def RemovedBody501_301 : StackLang.HolProg 64 :=
.seq RemovedBody501_279 RemovedBody501_300

def RemovedBody501_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody501_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody501_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody501_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody501_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody501_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody501_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody501_309 : StackLang.HolProg 64 :=
.seq RemovedBody501_307 RemovedBody501_308

def RemovedBody501_310 : StackLang.HolProg 64 :=
.seq RemovedBody501_306 RemovedBody501_309

def RemovedBody501_311 : StackLang.HolProg 64 :=
.seq RemovedBody501_305 RemovedBody501_310

def RemovedBody501_312 : StackLang.HolProg 64 :=
.seq RemovedBody501_304 RemovedBody501_311

def RemovedBody501_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody501_314 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody501_315 : StackLang.HolProg 64 :=
.seq RemovedBody501_313 RemovedBody501_314

def RemovedBody501_316 : StackLang.HolProg 64 :=
.call (some (RemovedBody501_312, 0, 501, 10)) (Sum.inl 476) (some (RemovedBody501_315, 501, 11))

def RemovedBody501_317 : StackLang.HolProg 64 :=
.seq RemovedBody501_303 RemovedBody501_316

def RemovedBody501_318 : StackLang.HolProg 64 :=
.seq RemovedBody501_302 RemovedBody501_317

def RemovedBody501_319 : StackLang.HolProg 64 :=
.seq RemovedBody501_301 RemovedBody501_318

def RemovedBody501_320 : StackLang.HolProg 64 :=
.seq RemovedBody501_272 RemovedBody501_319

def RemovedBody501_321 : StackLang.HolProg 64 :=
.seq RemovedBody501_269 RemovedBody501_320

def RemovedBody501_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody501_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody501_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody501_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody501_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1573#64)

def RemovedBody501_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody501_328 : StackLang.HolProg 64 :=
.seq RemovedBody501_326 RemovedBody501_327

def RemovedBody501_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody501_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody501_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody501_332 : StackLang.HolProg 64 :=
.seq RemovedBody501_330 RemovedBody501_331

def RemovedBody501_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody501_334 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody501_332 RemovedBody501_333

def RemovedBody501_335 : StackLang.HolProg 64 :=
.seq RemovedBody501_329 RemovedBody501_334

def RemovedBody501_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody501_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody501_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 501 13

def RemovedBody501_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody501_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody501_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody501_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody501_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody501_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody501_345 : StackLang.HolProg 64 :=
.seq RemovedBody501_343 RemovedBody501_344

def RemovedBody501_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody501_347 : StackLang.HolProg 64 :=
.seq RemovedBody501_345 RemovedBody501_346

def RemovedBody501_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody501_349 : StackLang.HolProg 64 :=
.seq RemovedBody501_347 RemovedBody501_348

def RemovedBody501_350 : StackLang.HolProg 64 :=
.seq RemovedBody501_342 RemovedBody501_349

def RemovedBody501_351 : StackLang.HolProg 64 :=
.seq RemovedBody501_341 RemovedBody501_350

def RemovedBody501_352 : StackLang.HolProg 64 :=
.seq RemovedBody501_340 RemovedBody501_351

def RemovedBody501_353 : StackLang.HolProg 64 :=
.seq RemovedBody501_339 RemovedBody501_352

def RemovedBody501_354 : StackLang.HolProg 64 :=
.seq RemovedBody501_338 RemovedBody501_353

def RemovedBody501_355 : StackLang.HolProg 64 :=
.seq RemovedBody501_337 RemovedBody501_354

def RemovedBody501_356 : StackLang.HolProg 64 :=
.seq RemovedBody501_336 RemovedBody501_355

def RemovedBody501_357 : StackLang.HolProg 64 :=
.seq RemovedBody501_335 RemovedBody501_356

def RemovedBody501_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody501_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody501_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody501_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody501_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody501_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody501_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody501_365 : StackLang.HolProg 64 :=
.seq RemovedBody501_363 RemovedBody501_364

def RemovedBody501_366 : StackLang.HolProg 64 :=
.seq RemovedBody501_362 RemovedBody501_365

def RemovedBody501_367 : StackLang.HolProg 64 :=
.seq RemovedBody501_361 RemovedBody501_366

def RemovedBody501_368 : StackLang.HolProg 64 :=
.seq RemovedBody501_360 RemovedBody501_367

def RemovedBody501_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody501_370 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody501_371 : StackLang.HolProg 64 :=
.seq RemovedBody501_369 RemovedBody501_370

def RemovedBody501_372 : StackLang.HolProg 64 :=
.call (some (RemovedBody501_368, 0, 501, 12)) (Sum.inl 490) (some (RemovedBody501_371, 501, 13))

def RemovedBody501_373 : StackLang.HolProg 64 :=
.seq RemovedBody501_359 RemovedBody501_372

def RemovedBody501_374 : StackLang.HolProg 64 :=
.seq RemovedBody501_358 RemovedBody501_373

def RemovedBody501_375 : StackLang.HolProg 64 :=
.seq RemovedBody501_357 RemovedBody501_374

def RemovedBody501_376 : StackLang.HolProg 64 :=
.seq RemovedBody501_328 RemovedBody501_375

def RemovedBody501_377 : StackLang.HolProg 64 :=
.seq RemovedBody501_325 RemovedBody501_376

def RemovedBody501_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody501_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody501_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody501_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def RemovedBody501_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody501_383 : StackLang.HolProg 64 :=
.seq RemovedBody501_381 RemovedBody501_382

def RemovedBody501_384 : StackLang.HolProg 64 :=
.seq RemovedBody501_380 RemovedBody501_383

def RemovedBody501_385 : StackLang.HolProg 64 :=
.seq RemovedBody501_379 RemovedBody501_384

def RemovedBody501_386 : StackLang.HolProg 64 :=
.seq RemovedBody501_378 RemovedBody501_385

def RemovedBody501_387 : StackLang.HolProg 64 :=
.seq RemovedBody501_377 RemovedBody501_386

def RemovedBody501_388 : StackLang.HolProg 64 :=
.seq RemovedBody501_324 RemovedBody501_387

def RemovedBody501_389 : StackLang.HolProg 64 :=
.seq RemovedBody501_323 RemovedBody501_388

def RemovedBody501_390 : StackLang.HolProg 64 :=
.seq RemovedBody501_322 RemovedBody501_389

def RemovedBody501_391 : StackLang.HolProg 64 :=
.seq RemovedBody501_321 RemovedBody501_390

def RemovedBody501_392 : StackLang.HolProg 64 :=
.seq RemovedBody501_268 RemovedBody501_391

def RemovedBody501_393 : StackLang.HolProg 64 :=
.seq RemovedBody501_267 RemovedBody501_392

def RemovedBody501_394 : StackLang.HolProg 64 :=
.seq RemovedBody501_266 RemovedBody501_393

def RemovedBody501_395 : StackLang.HolProg 64 :=
.seq RemovedBody501_213 RemovedBody501_394

def RemovedBody501_396 : StackLang.HolProg 64 :=
.seq RemovedBody501_212 RemovedBody501_395

def RemovedBody501_397 : StackLang.HolProg 64 :=
.seq RemovedBody501_211 RemovedBody501_396

def RemovedBody501_398 : StackLang.HolProg 64 :=
.seq RemovedBody501_130 RemovedBody501_397

def RemovedBody501_399 : StackLang.HolProg 64 :=
.seq RemovedBody501_123 RemovedBody501_398

def RemovedBody501_400 : StackLang.HolProg 64 :=
.seq RemovedBody501_122 RemovedBody501_399

def RemovedBody501_401 : StackLang.HolProg 64 :=
.seq RemovedBody501_121 RemovedBody501_400

def RemovedBody501_402 : StackLang.HolProg 64 :=
.seq RemovedBody501_68 RemovedBody501_401

def RemovedBody501_403 : StackLang.HolProg 64 :=
.seq RemovedBody501_61 RemovedBody501_402

def RemovedBody501_404 : StackLang.HolProg 64 :=
.seq RemovedBody501_60 RemovedBody501_403

def RemovedBody501_405 : StackLang.HolProg 64 :=
.seq RemovedBody501_7 RemovedBody501_404

def RemovedBody501_406 : StackLang.HolProg 64 :=
.seq RemovedBody501_6 RemovedBody501_405

def Removed501 : Nat × StackLang.HolProg 64 := (501, RemovedBody501_406)
theorem Removed501_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc501 = Removed501 := by
  kernel_rfl
#print axioms Removed501_eq
end InitECandidate.Proofs.BackendStages
