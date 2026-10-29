import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc522
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody522_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody522_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody522_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody522_3 : StackLang.HolProg 64 :=
.seq RemovedBody522_1 RemovedBody522_2

def RemovedBody522_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody522_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody522_3 RemovedBody522_4

def RemovedBody522_6 : StackLang.HolProg 64 :=
.seq RemovedBody522_0 RemovedBody522_5

def RemovedBody522_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody522_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody522_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1696#64)

def RemovedBody522_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody522_11 : StackLang.HolProg 64 :=
.seq RemovedBody522_9 RemovedBody522_10

def RemovedBody522_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody522_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody522_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody522_15 : StackLang.HolProg 64 :=
.seq RemovedBody522_13 RemovedBody522_14

def RemovedBody522_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody522_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody522_15 RemovedBody522_16

def RemovedBody522_18 : StackLang.HolProg 64 :=
.seq RemovedBody522_12 RemovedBody522_17

def RemovedBody522_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody522_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody522_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 522 3

def RemovedBody522_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody522_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody522_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody522_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody522_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody522_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody522_28 : StackLang.HolProg 64 :=
.seq RemovedBody522_26 RemovedBody522_27

def RemovedBody522_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody522_30 : StackLang.HolProg 64 :=
.seq RemovedBody522_28 RemovedBody522_29

def RemovedBody522_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody522_32 : StackLang.HolProg 64 :=
.seq RemovedBody522_30 RemovedBody522_31

def RemovedBody522_33 : StackLang.HolProg 64 :=
.seq RemovedBody522_25 RemovedBody522_32

def RemovedBody522_34 : StackLang.HolProg 64 :=
.seq RemovedBody522_24 RemovedBody522_33

def RemovedBody522_35 : StackLang.HolProg 64 :=
.seq RemovedBody522_23 RemovedBody522_34

def RemovedBody522_36 : StackLang.HolProg 64 :=
.seq RemovedBody522_22 RemovedBody522_35

def RemovedBody522_37 : StackLang.HolProg 64 :=
.seq RemovedBody522_21 RemovedBody522_36

def RemovedBody522_38 : StackLang.HolProg 64 :=
.seq RemovedBody522_20 RemovedBody522_37

def RemovedBody522_39 : StackLang.HolProg 64 :=
.seq RemovedBody522_19 RemovedBody522_38

def RemovedBody522_40 : StackLang.HolProg 64 :=
.seq RemovedBody522_18 RemovedBody522_39

def RemovedBody522_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody522_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody522_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody522_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody522_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody522_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody522_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody522_48 : StackLang.HolProg 64 :=
.seq RemovedBody522_46 RemovedBody522_47

def RemovedBody522_49 : StackLang.HolProg 64 :=
.seq RemovedBody522_45 RemovedBody522_48

def RemovedBody522_50 : StackLang.HolProg 64 :=
.seq RemovedBody522_44 RemovedBody522_49

def RemovedBody522_51 : StackLang.HolProg 64 :=
.seq RemovedBody522_43 RemovedBody522_50

def RemovedBody522_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody522_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody522_54 : StackLang.HolProg 64 :=
.seq RemovedBody522_52 RemovedBody522_53

def RemovedBody522_55 : StackLang.HolProg 64 :=
.call (some (RemovedBody522_51, 0, 522, 2)) (Sum.inl 475) (some (RemovedBody522_54, 522, 3))

def RemovedBody522_56 : StackLang.HolProg 64 :=
.seq RemovedBody522_42 RemovedBody522_55

def RemovedBody522_57 : StackLang.HolProg 64 :=
.seq RemovedBody522_41 RemovedBody522_56

def RemovedBody522_58 : StackLang.HolProg 64 :=
.seq RemovedBody522_40 RemovedBody522_57

def RemovedBody522_59 : StackLang.HolProg 64 :=
.seq RemovedBody522_11 RemovedBody522_58

def RemovedBody522_60 : StackLang.HolProg 64 :=
.seq RemovedBody522_8 RemovedBody522_59

def RemovedBody522_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody522_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 5#64)

def RemovedBody522_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody522_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody522_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody522_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody522_67 : StackLang.HolProg 64 :=
.seq RemovedBody522_65 RemovedBody522_66

def RemovedBody522_68 : StackLang.HolProg 64 :=
.seq RemovedBody522_64 RemovedBody522_67

def RemovedBody522_69 : StackLang.HolProg 64 :=
.seq RemovedBody522_63 RemovedBody522_68

def RemovedBody522_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody522_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1697#64)

def RemovedBody522_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody522_73 : StackLang.HolProg 64 :=
.seq RemovedBody522_71 RemovedBody522_72

def RemovedBody522_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody522_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody522_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody522_77 : StackLang.HolProg 64 :=
.seq RemovedBody522_75 RemovedBody522_76

def RemovedBody522_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody522_79 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody522_77 RemovedBody522_78

def RemovedBody522_80 : StackLang.HolProg 64 :=
.seq RemovedBody522_74 RemovedBody522_79

def RemovedBody522_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody522_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody522_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 522 5

def RemovedBody522_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody522_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody522_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody522_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody522_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody522_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody522_90 : StackLang.HolProg 64 :=
.seq RemovedBody522_88 RemovedBody522_89

def RemovedBody522_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody522_92 : StackLang.HolProg 64 :=
.seq RemovedBody522_90 RemovedBody522_91

def RemovedBody522_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody522_94 : StackLang.HolProg 64 :=
.seq RemovedBody522_92 RemovedBody522_93

def RemovedBody522_95 : StackLang.HolProg 64 :=
.seq RemovedBody522_87 RemovedBody522_94

def RemovedBody522_96 : StackLang.HolProg 64 :=
.seq RemovedBody522_86 RemovedBody522_95

def RemovedBody522_97 : StackLang.HolProg 64 :=
.seq RemovedBody522_85 RemovedBody522_96

def RemovedBody522_98 : StackLang.HolProg 64 :=
.seq RemovedBody522_84 RemovedBody522_97

def RemovedBody522_99 : StackLang.HolProg 64 :=
.seq RemovedBody522_83 RemovedBody522_98

def RemovedBody522_100 : StackLang.HolProg 64 :=
.seq RemovedBody522_82 RemovedBody522_99

def RemovedBody522_101 : StackLang.HolProg 64 :=
.seq RemovedBody522_81 RemovedBody522_100

def RemovedBody522_102 : StackLang.HolProg 64 :=
.seq RemovedBody522_80 RemovedBody522_101

def RemovedBody522_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody522_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody522_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody522_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody522_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody522_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody522_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody522_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody522_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody522_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody522_113 : StackLang.HolProg 64 :=
.seq RemovedBody522_111 RemovedBody522_112

def RemovedBody522_114 : StackLang.HolProg 64 :=
.seq RemovedBody522_110 RemovedBody522_113

def RemovedBody522_115 : StackLang.HolProg 64 :=
.seq RemovedBody522_109 RemovedBody522_114

def RemovedBody522_116 : StackLang.HolProg 64 :=
.seq RemovedBody522_108 RemovedBody522_115

def RemovedBody522_117 : StackLang.HolProg 64 :=
.seq RemovedBody522_107 RemovedBody522_116

def RemovedBody522_118 : StackLang.HolProg 64 :=
.seq RemovedBody522_106 RemovedBody522_117

def RemovedBody522_119 : StackLang.HolProg 64 :=
.seq RemovedBody522_105 RemovedBody522_118

def RemovedBody522_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody522_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody522_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody522_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody522_124 : StackLang.HolProg 64 :=
.seq RemovedBody522_122 RemovedBody522_123

def RemovedBody522_125 : StackLang.HolProg 64 :=
.seq RemovedBody522_121 RemovedBody522_124

def RemovedBody522_126 : StackLang.HolProg 64 :=
.seq RemovedBody522_120 RemovedBody522_125

def RemovedBody522_127 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody522_128 : StackLang.HolProg 64 :=
.seq RemovedBody522_126 RemovedBody522_127

def RemovedBody522_129 : StackLang.HolProg 64 :=
.call (some (RemovedBody522_119, 0, 522, 4)) (Sum.inl 470) (some (RemovedBody522_128, 522, 5))

def RemovedBody522_130 : StackLang.HolProg 64 :=
.seq RemovedBody522_104 RemovedBody522_129

def RemovedBody522_131 : StackLang.HolProg 64 :=
.seq RemovedBody522_103 RemovedBody522_130

def RemovedBody522_132 : StackLang.HolProg 64 :=
.seq RemovedBody522_102 RemovedBody522_131

def RemovedBody522_133 : StackLang.HolProg 64 :=
.seq RemovedBody522_73 RemovedBody522_132

def RemovedBody522_134 : StackLang.HolProg 64 :=
.seq RemovedBody522_70 RemovedBody522_133

def RemovedBody522_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody522_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody522_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody522_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1698#64)

def RemovedBody522_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody522_140 : StackLang.HolProg 64 :=
.seq RemovedBody522_138 RemovedBody522_139

def RemovedBody522_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody522_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody522_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody522_144 : StackLang.HolProg 64 :=
.seq RemovedBody522_142 RemovedBody522_143

def RemovedBody522_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody522_146 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody522_144 RemovedBody522_145

def RemovedBody522_147 : StackLang.HolProg 64 :=
.seq RemovedBody522_141 RemovedBody522_146

def RemovedBody522_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody522_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody522_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 522 7

def RemovedBody522_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody522_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody522_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody522_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody522_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody522_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody522_157 : StackLang.HolProg 64 :=
.seq RemovedBody522_155 RemovedBody522_156

def RemovedBody522_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody522_159 : StackLang.HolProg 64 :=
.seq RemovedBody522_157 RemovedBody522_158

def RemovedBody522_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody522_161 : StackLang.HolProg 64 :=
.seq RemovedBody522_159 RemovedBody522_160

def RemovedBody522_162 : StackLang.HolProg 64 :=
.seq RemovedBody522_154 RemovedBody522_161

def RemovedBody522_163 : StackLang.HolProg 64 :=
.seq RemovedBody522_153 RemovedBody522_162

def RemovedBody522_164 : StackLang.HolProg 64 :=
.seq RemovedBody522_152 RemovedBody522_163

def RemovedBody522_165 : StackLang.HolProg 64 :=
.seq RemovedBody522_151 RemovedBody522_164

def RemovedBody522_166 : StackLang.HolProg 64 :=
.seq RemovedBody522_150 RemovedBody522_165

def RemovedBody522_167 : StackLang.HolProg 64 :=
.seq RemovedBody522_149 RemovedBody522_166

def RemovedBody522_168 : StackLang.HolProg 64 :=
.seq RemovedBody522_148 RemovedBody522_167

def RemovedBody522_169 : StackLang.HolProg 64 :=
.seq RemovedBody522_147 RemovedBody522_168

def RemovedBody522_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody522_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody522_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody522_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody522_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody522_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody522_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody522_177 : StackLang.HolProg 64 :=
.seq RemovedBody522_175 RemovedBody522_176

def RemovedBody522_178 : StackLang.HolProg 64 :=
.seq RemovedBody522_174 RemovedBody522_177

def RemovedBody522_179 : StackLang.HolProg 64 :=
.seq RemovedBody522_173 RemovedBody522_178

def RemovedBody522_180 : StackLang.HolProg 64 :=
.seq RemovedBody522_172 RemovedBody522_179

def RemovedBody522_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody522_182 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody522_183 : StackLang.HolProg 64 :=
.seq RemovedBody522_181 RemovedBody522_182

def RemovedBody522_184 : StackLang.HolProg 64 :=
.call (some (RemovedBody522_180, 0, 522, 6)) (Sum.inl 138) (some (RemovedBody522_183, 522, 7))

def RemovedBody522_185 : StackLang.HolProg 64 :=
.seq RemovedBody522_171 RemovedBody522_184

def RemovedBody522_186 : StackLang.HolProg 64 :=
.seq RemovedBody522_170 RemovedBody522_185

def RemovedBody522_187 : StackLang.HolProg 64 :=
.seq RemovedBody522_169 RemovedBody522_186

def RemovedBody522_188 : StackLang.HolProg 64 :=
.seq RemovedBody522_140 RemovedBody522_187

def RemovedBody522_189 : StackLang.HolProg 64 :=
.seq RemovedBody522_137 RemovedBody522_188

def RemovedBody522_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody522_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 256#64)

def RemovedBody522_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody522_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody522_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody522_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody522_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1699#64)

def RemovedBody522_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody522_198 : StackLang.HolProg 64 :=
.seq RemovedBody522_196 RemovedBody522_197

def RemovedBody522_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody522_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody522_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody522_202 : StackLang.HolProg 64 :=
.seq RemovedBody522_200 RemovedBody522_201

def RemovedBody522_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody522_204 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody522_202 RemovedBody522_203

def RemovedBody522_205 : StackLang.HolProg 64 :=
.seq RemovedBody522_199 RemovedBody522_204

def RemovedBody522_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody522_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody522_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 522 9

def RemovedBody522_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody522_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody522_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody522_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody522_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody522_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody522_215 : StackLang.HolProg 64 :=
.seq RemovedBody522_213 RemovedBody522_214

def RemovedBody522_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody522_217 : StackLang.HolProg 64 :=
.seq RemovedBody522_215 RemovedBody522_216

def RemovedBody522_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody522_219 : StackLang.HolProg 64 :=
.seq RemovedBody522_217 RemovedBody522_218

def RemovedBody522_220 : StackLang.HolProg 64 :=
.seq RemovedBody522_212 RemovedBody522_219

def RemovedBody522_221 : StackLang.HolProg 64 :=
.seq RemovedBody522_211 RemovedBody522_220

def RemovedBody522_222 : StackLang.HolProg 64 :=
.seq RemovedBody522_210 RemovedBody522_221

def RemovedBody522_223 : StackLang.HolProg 64 :=
.seq RemovedBody522_209 RemovedBody522_222

def RemovedBody522_224 : StackLang.HolProg 64 :=
.seq RemovedBody522_208 RemovedBody522_223

def RemovedBody522_225 : StackLang.HolProg 64 :=
.seq RemovedBody522_207 RemovedBody522_224

def RemovedBody522_226 : StackLang.HolProg 64 :=
.seq RemovedBody522_206 RemovedBody522_225

def RemovedBody522_227 : StackLang.HolProg 64 :=
.seq RemovedBody522_205 RemovedBody522_226

def RemovedBody522_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody522_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody522_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody522_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody522_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody522_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody522_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody522_235 : StackLang.HolProg 64 :=
.seq RemovedBody522_233 RemovedBody522_234

def RemovedBody522_236 : StackLang.HolProg 64 :=
.seq RemovedBody522_232 RemovedBody522_235

def RemovedBody522_237 : StackLang.HolProg 64 :=
.seq RemovedBody522_231 RemovedBody522_236

def RemovedBody522_238 : StackLang.HolProg 64 :=
.seq RemovedBody522_230 RemovedBody522_237

def RemovedBody522_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody522_240 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody522_241 : StackLang.HolProg 64 :=
.seq RemovedBody522_239 RemovedBody522_240

def RemovedBody522_242 : StackLang.HolProg 64 :=
.call (some (RemovedBody522_238, 0, 522, 8)) (Sum.inl 477) (some (RemovedBody522_241, 522, 9))

def RemovedBody522_243 : StackLang.HolProg 64 :=
.seq RemovedBody522_229 RemovedBody522_242

def RemovedBody522_244 : StackLang.HolProg 64 :=
.seq RemovedBody522_228 RemovedBody522_243

def RemovedBody522_245 : StackLang.HolProg 64 :=
.seq RemovedBody522_227 RemovedBody522_244

def RemovedBody522_246 : StackLang.HolProg 64 :=
.seq RemovedBody522_198 RemovedBody522_245

def RemovedBody522_247 : StackLang.HolProg 64 :=
.seq RemovedBody522_195 RemovedBody522_246

def RemovedBody522_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody522_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody522_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody522_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody522_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1700#64)

def RemovedBody522_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody522_254 : StackLang.HolProg 64 :=
.seq RemovedBody522_252 RemovedBody522_253

def RemovedBody522_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody522_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody522_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody522_258 : StackLang.HolProg 64 :=
.seq RemovedBody522_256 RemovedBody522_257

def RemovedBody522_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody522_260 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody522_258 RemovedBody522_259

def RemovedBody522_261 : StackLang.HolProg 64 :=
.seq RemovedBody522_255 RemovedBody522_260

def RemovedBody522_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody522_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody522_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 522 11

def RemovedBody522_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody522_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody522_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody522_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody522_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody522_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody522_271 : StackLang.HolProg 64 :=
.seq RemovedBody522_269 RemovedBody522_270

def RemovedBody522_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody522_273 : StackLang.HolProg 64 :=
.seq RemovedBody522_271 RemovedBody522_272

def RemovedBody522_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody522_275 : StackLang.HolProg 64 :=
.seq RemovedBody522_273 RemovedBody522_274

def RemovedBody522_276 : StackLang.HolProg 64 :=
.seq RemovedBody522_268 RemovedBody522_275

def RemovedBody522_277 : StackLang.HolProg 64 :=
.seq RemovedBody522_267 RemovedBody522_276

def RemovedBody522_278 : StackLang.HolProg 64 :=
.seq RemovedBody522_266 RemovedBody522_277

def RemovedBody522_279 : StackLang.HolProg 64 :=
.seq RemovedBody522_265 RemovedBody522_278

def RemovedBody522_280 : StackLang.HolProg 64 :=
.seq RemovedBody522_264 RemovedBody522_279

def RemovedBody522_281 : StackLang.HolProg 64 :=
.seq RemovedBody522_263 RemovedBody522_280

def RemovedBody522_282 : StackLang.HolProg 64 :=
.seq RemovedBody522_262 RemovedBody522_281

def RemovedBody522_283 : StackLang.HolProg 64 :=
.seq RemovedBody522_261 RemovedBody522_282

def RemovedBody522_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody522_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody522_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody522_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody522_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody522_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody522_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody522_291 : StackLang.HolProg 64 :=
.seq RemovedBody522_289 RemovedBody522_290

def RemovedBody522_292 : StackLang.HolProg 64 :=
.seq RemovedBody522_288 RemovedBody522_291

def RemovedBody522_293 : StackLang.HolProg 64 :=
.seq RemovedBody522_287 RemovedBody522_292

def RemovedBody522_294 : StackLang.HolProg 64 :=
.seq RemovedBody522_286 RemovedBody522_293

def RemovedBody522_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody522_296 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody522_297 : StackLang.HolProg 64 :=
.seq RemovedBody522_295 RemovedBody522_296

def RemovedBody522_298 : StackLang.HolProg 64 :=
.call (some (RemovedBody522_294, 0, 522, 10)) (Sum.inl 490) (some (RemovedBody522_297, 522, 11))

def RemovedBody522_299 : StackLang.HolProg 64 :=
.seq RemovedBody522_285 RemovedBody522_298

def RemovedBody522_300 : StackLang.HolProg 64 :=
.seq RemovedBody522_284 RemovedBody522_299

def RemovedBody522_301 : StackLang.HolProg 64 :=
.seq RemovedBody522_283 RemovedBody522_300

def RemovedBody522_302 : StackLang.HolProg 64 :=
.seq RemovedBody522_254 RemovedBody522_301

def RemovedBody522_303 : StackLang.HolProg 64 :=
.seq RemovedBody522_251 RemovedBody522_302

def RemovedBody522_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody522_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody522_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody522_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody522_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody522_309 : StackLang.HolProg 64 :=
.seq RemovedBody522_307 RemovedBody522_308

def RemovedBody522_310 : StackLang.HolProg 64 :=
.seq RemovedBody522_306 RemovedBody522_309

def RemovedBody522_311 : StackLang.HolProg 64 :=
.seq RemovedBody522_305 RemovedBody522_310

def RemovedBody522_312 : StackLang.HolProg 64 :=
.seq RemovedBody522_304 RemovedBody522_311

def RemovedBody522_313 : StackLang.HolProg 64 :=
.seq RemovedBody522_303 RemovedBody522_312

def RemovedBody522_314 : StackLang.HolProg 64 :=
.seq RemovedBody522_250 RemovedBody522_313

def RemovedBody522_315 : StackLang.HolProg 64 :=
.seq RemovedBody522_249 RemovedBody522_314

def RemovedBody522_316 : StackLang.HolProg 64 :=
.seq RemovedBody522_248 RemovedBody522_315

def RemovedBody522_317 : StackLang.HolProg 64 :=
.seq RemovedBody522_247 RemovedBody522_316

def RemovedBody522_318 : StackLang.HolProg 64 :=
.seq RemovedBody522_194 RemovedBody522_317

def RemovedBody522_319 : StackLang.HolProg 64 :=
.seq RemovedBody522_193 RemovedBody522_318

def RemovedBody522_320 : StackLang.HolProg 64 :=
.seq RemovedBody522_192 RemovedBody522_319

def RemovedBody522_321 : StackLang.HolProg 64 :=
.seq RemovedBody522_191 RemovedBody522_320

def RemovedBody522_322 : StackLang.HolProg 64 :=
.seq RemovedBody522_190 RemovedBody522_321

def RemovedBody522_323 : StackLang.HolProg 64 :=
.seq RemovedBody522_189 RemovedBody522_322

def RemovedBody522_324 : StackLang.HolProg 64 :=
.seq RemovedBody522_136 RemovedBody522_323

def RemovedBody522_325 : StackLang.HolProg 64 :=
.seq RemovedBody522_135 RemovedBody522_324

def RemovedBody522_326 : StackLang.HolProg 64 :=
.seq RemovedBody522_134 RemovedBody522_325

def RemovedBody522_327 : StackLang.HolProg 64 :=
.seq RemovedBody522_69 RemovedBody522_326

def RemovedBody522_328 : StackLang.HolProg 64 :=
.seq RemovedBody522_62 RemovedBody522_327

def RemovedBody522_329 : StackLang.HolProg 64 :=
.seq RemovedBody522_61 RemovedBody522_328

def RemovedBody522_330 : StackLang.HolProg 64 :=
.seq RemovedBody522_60 RemovedBody522_329

def RemovedBody522_331 : StackLang.HolProg 64 :=
.seq RemovedBody522_7 RemovedBody522_330

def RemovedBody522_332 : StackLang.HolProg 64 :=
.seq RemovedBody522_6 RemovedBody522_331

def Removed522 : Nat × StackLang.HolProg 64 := (522, RemovedBody522_332)
theorem Removed522_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc522 = Removed522 := by
  kernel_rfl
#print axioms Removed522_eq
end InitECandidate.Proofs.BackendStages
