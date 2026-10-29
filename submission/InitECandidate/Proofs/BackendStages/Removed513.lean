import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc513
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody513_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody513_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody513_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody513_3 : StackLang.HolProg 64 :=
.seq RemovedBody513_1 RemovedBody513_2

def RemovedBody513_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody513_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody513_3 RemovedBody513_4

def RemovedBody513_6 : StackLang.HolProg 64 :=
.seq RemovedBody513_0 RemovedBody513_5

def RemovedBody513_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody513_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody513_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1644#64)

def RemovedBody513_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody513_11 : StackLang.HolProg 64 :=
.seq RemovedBody513_9 RemovedBody513_10

def RemovedBody513_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody513_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody513_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody513_15 : StackLang.HolProg 64 :=
.seq RemovedBody513_13 RemovedBody513_14

def RemovedBody513_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody513_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody513_15 RemovedBody513_16

def RemovedBody513_18 : StackLang.HolProg 64 :=
.seq RemovedBody513_12 RemovedBody513_17

def RemovedBody513_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody513_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody513_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 513 3

def RemovedBody513_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody513_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody513_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody513_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody513_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody513_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody513_28 : StackLang.HolProg 64 :=
.seq RemovedBody513_26 RemovedBody513_27

def RemovedBody513_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody513_30 : StackLang.HolProg 64 :=
.seq RemovedBody513_28 RemovedBody513_29

def RemovedBody513_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody513_32 : StackLang.HolProg 64 :=
.seq RemovedBody513_30 RemovedBody513_31

def RemovedBody513_33 : StackLang.HolProg 64 :=
.seq RemovedBody513_25 RemovedBody513_32

def RemovedBody513_34 : StackLang.HolProg 64 :=
.seq RemovedBody513_24 RemovedBody513_33

def RemovedBody513_35 : StackLang.HolProg 64 :=
.seq RemovedBody513_23 RemovedBody513_34

def RemovedBody513_36 : StackLang.HolProg 64 :=
.seq RemovedBody513_22 RemovedBody513_35

def RemovedBody513_37 : StackLang.HolProg 64 :=
.seq RemovedBody513_21 RemovedBody513_36

def RemovedBody513_38 : StackLang.HolProg 64 :=
.seq RemovedBody513_20 RemovedBody513_37

def RemovedBody513_39 : StackLang.HolProg 64 :=
.seq RemovedBody513_19 RemovedBody513_38

def RemovedBody513_40 : StackLang.HolProg 64 :=
.seq RemovedBody513_18 RemovedBody513_39

def RemovedBody513_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody513_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody513_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody513_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody513_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody513_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody513_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody513_48 : StackLang.HolProg 64 :=
.seq RemovedBody513_46 RemovedBody513_47

def RemovedBody513_49 : StackLang.HolProg 64 :=
.seq RemovedBody513_45 RemovedBody513_48

def RemovedBody513_50 : StackLang.HolProg 64 :=
.seq RemovedBody513_44 RemovedBody513_49

def RemovedBody513_51 : StackLang.HolProg 64 :=
.seq RemovedBody513_43 RemovedBody513_50

def RemovedBody513_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody513_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody513_54 : StackLang.HolProg 64 :=
.seq RemovedBody513_52 RemovedBody513_53

def RemovedBody513_55 : StackLang.HolProg 64 :=
.call (some (RemovedBody513_51, 0, 513, 2)) (Sum.inl 475) (some (RemovedBody513_54, 513, 3))

def RemovedBody513_56 : StackLang.HolProg 64 :=
.seq RemovedBody513_42 RemovedBody513_55

def RemovedBody513_57 : StackLang.HolProg 64 :=
.seq RemovedBody513_41 RemovedBody513_56

def RemovedBody513_58 : StackLang.HolProg 64 :=
.seq RemovedBody513_40 RemovedBody513_57

def RemovedBody513_59 : StackLang.HolProg 64 :=
.seq RemovedBody513_11 RemovedBody513_58

def RemovedBody513_60 : StackLang.HolProg 64 :=
.seq RemovedBody513_8 RemovedBody513_59

def RemovedBody513_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody513_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def RemovedBody513_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody513_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody513_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody513_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody513_67 : StackLang.HolProg 64 :=
.seq RemovedBody513_65 RemovedBody513_66

def RemovedBody513_68 : StackLang.HolProg 64 :=
.seq RemovedBody513_64 RemovedBody513_67

def RemovedBody513_69 : StackLang.HolProg 64 :=
.seq RemovedBody513_63 RemovedBody513_68

def RemovedBody513_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody513_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1645#64)

def RemovedBody513_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody513_73 : StackLang.HolProg 64 :=
.seq RemovedBody513_71 RemovedBody513_72

def RemovedBody513_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody513_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody513_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody513_77 : StackLang.HolProg 64 :=
.seq RemovedBody513_75 RemovedBody513_76

def RemovedBody513_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody513_79 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody513_77 RemovedBody513_78

def RemovedBody513_80 : StackLang.HolProg 64 :=
.seq RemovedBody513_74 RemovedBody513_79

def RemovedBody513_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody513_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody513_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 513 5

def RemovedBody513_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody513_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody513_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody513_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody513_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody513_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody513_90 : StackLang.HolProg 64 :=
.seq RemovedBody513_88 RemovedBody513_89

def RemovedBody513_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody513_92 : StackLang.HolProg 64 :=
.seq RemovedBody513_90 RemovedBody513_91

def RemovedBody513_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody513_94 : StackLang.HolProg 64 :=
.seq RemovedBody513_92 RemovedBody513_93

def RemovedBody513_95 : StackLang.HolProg 64 :=
.seq RemovedBody513_87 RemovedBody513_94

def RemovedBody513_96 : StackLang.HolProg 64 :=
.seq RemovedBody513_86 RemovedBody513_95

def RemovedBody513_97 : StackLang.HolProg 64 :=
.seq RemovedBody513_85 RemovedBody513_96

def RemovedBody513_98 : StackLang.HolProg 64 :=
.seq RemovedBody513_84 RemovedBody513_97

def RemovedBody513_99 : StackLang.HolProg 64 :=
.seq RemovedBody513_83 RemovedBody513_98

def RemovedBody513_100 : StackLang.HolProg 64 :=
.seq RemovedBody513_82 RemovedBody513_99

def RemovedBody513_101 : StackLang.HolProg 64 :=
.seq RemovedBody513_81 RemovedBody513_100

def RemovedBody513_102 : StackLang.HolProg 64 :=
.seq RemovedBody513_80 RemovedBody513_101

def RemovedBody513_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody513_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody513_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody513_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody513_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody513_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody513_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody513_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody513_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody513_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody513_113 : StackLang.HolProg 64 :=
.seq RemovedBody513_111 RemovedBody513_112

def RemovedBody513_114 : StackLang.HolProg 64 :=
.seq RemovedBody513_110 RemovedBody513_113

def RemovedBody513_115 : StackLang.HolProg 64 :=
.seq RemovedBody513_109 RemovedBody513_114

def RemovedBody513_116 : StackLang.HolProg 64 :=
.seq RemovedBody513_108 RemovedBody513_115

def RemovedBody513_117 : StackLang.HolProg 64 :=
.seq RemovedBody513_107 RemovedBody513_116

def RemovedBody513_118 : StackLang.HolProg 64 :=
.seq RemovedBody513_106 RemovedBody513_117

def RemovedBody513_119 : StackLang.HolProg 64 :=
.seq RemovedBody513_105 RemovedBody513_118

def RemovedBody513_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody513_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody513_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody513_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody513_124 : StackLang.HolProg 64 :=
.seq RemovedBody513_122 RemovedBody513_123

def RemovedBody513_125 : StackLang.HolProg 64 :=
.seq RemovedBody513_121 RemovedBody513_124

def RemovedBody513_126 : StackLang.HolProg 64 :=
.seq RemovedBody513_120 RemovedBody513_125

def RemovedBody513_127 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody513_128 : StackLang.HolProg 64 :=
.seq RemovedBody513_126 RemovedBody513_127

def RemovedBody513_129 : StackLang.HolProg 64 :=
.call (some (RemovedBody513_119, 0, 513, 4)) (Sum.inl 470) (some (RemovedBody513_128, 513, 5))

def RemovedBody513_130 : StackLang.HolProg 64 :=
.seq RemovedBody513_104 RemovedBody513_129

def RemovedBody513_131 : StackLang.HolProg 64 :=
.seq RemovedBody513_103 RemovedBody513_130

def RemovedBody513_132 : StackLang.HolProg 64 :=
.seq RemovedBody513_102 RemovedBody513_131

def RemovedBody513_133 : StackLang.HolProg 64 :=
.seq RemovedBody513_73 RemovedBody513_132

def RemovedBody513_134 : StackLang.HolProg 64 :=
.seq RemovedBody513_70 RemovedBody513_133

def RemovedBody513_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody513_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody513_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody513_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1646#64)

def RemovedBody513_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody513_140 : StackLang.HolProg 64 :=
.seq RemovedBody513_138 RemovedBody513_139

def RemovedBody513_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody513_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody513_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody513_144 : StackLang.HolProg 64 :=
.seq RemovedBody513_142 RemovedBody513_143

def RemovedBody513_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody513_146 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody513_144 RemovedBody513_145

def RemovedBody513_147 : StackLang.HolProg 64 :=
.seq RemovedBody513_141 RemovedBody513_146

def RemovedBody513_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody513_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody513_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 513 7

def RemovedBody513_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody513_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody513_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody513_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody513_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody513_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody513_157 : StackLang.HolProg 64 :=
.seq RemovedBody513_155 RemovedBody513_156

def RemovedBody513_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody513_159 : StackLang.HolProg 64 :=
.seq RemovedBody513_157 RemovedBody513_158

def RemovedBody513_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody513_161 : StackLang.HolProg 64 :=
.seq RemovedBody513_159 RemovedBody513_160

def RemovedBody513_162 : StackLang.HolProg 64 :=
.seq RemovedBody513_154 RemovedBody513_161

def RemovedBody513_163 : StackLang.HolProg 64 :=
.seq RemovedBody513_153 RemovedBody513_162

def RemovedBody513_164 : StackLang.HolProg 64 :=
.seq RemovedBody513_152 RemovedBody513_163

def RemovedBody513_165 : StackLang.HolProg 64 :=
.seq RemovedBody513_151 RemovedBody513_164

def RemovedBody513_166 : StackLang.HolProg 64 :=
.seq RemovedBody513_150 RemovedBody513_165

def RemovedBody513_167 : StackLang.HolProg 64 :=
.seq RemovedBody513_149 RemovedBody513_166

def RemovedBody513_168 : StackLang.HolProg 64 :=
.seq RemovedBody513_148 RemovedBody513_167

def RemovedBody513_169 : StackLang.HolProg 64 :=
.seq RemovedBody513_147 RemovedBody513_168

def RemovedBody513_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody513_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody513_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody513_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody513_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody513_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody513_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody513_177 : StackLang.HolProg 64 :=
.seq RemovedBody513_175 RemovedBody513_176

def RemovedBody513_178 : StackLang.HolProg 64 :=
.seq RemovedBody513_174 RemovedBody513_177

def RemovedBody513_179 : StackLang.HolProg 64 :=
.seq RemovedBody513_173 RemovedBody513_178

def RemovedBody513_180 : StackLang.HolProg 64 :=
.seq RemovedBody513_172 RemovedBody513_179

def RemovedBody513_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody513_182 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody513_183 : StackLang.HolProg 64 :=
.seq RemovedBody513_181 RemovedBody513_182

def RemovedBody513_184 : StackLang.HolProg 64 :=
.call (some (RemovedBody513_180, 0, 513, 6)) (Sum.inl 102) (some (RemovedBody513_183, 513, 7))

def RemovedBody513_185 : StackLang.HolProg 64 :=
.seq RemovedBody513_171 RemovedBody513_184

def RemovedBody513_186 : StackLang.HolProg 64 :=
.seq RemovedBody513_170 RemovedBody513_185

def RemovedBody513_187 : StackLang.HolProg 64 :=
.seq RemovedBody513_169 RemovedBody513_186

def RemovedBody513_188 : StackLang.HolProg 64 :=
.seq RemovedBody513_140 RemovedBody513_187

def RemovedBody513_189 : StackLang.HolProg 64 :=
.seq RemovedBody513_137 RemovedBody513_188

def RemovedBody513_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody513_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody513_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody513_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1647#64)

def RemovedBody513_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody513_195 : StackLang.HolProg 64 :=
.seq RemovedBody513_193 RemovedBody513_194

def RemovedBody513_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody513_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody513_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody513_199 : StackLang.HolProg 64 :=
.seq RemovedBody513_197 RemovedBody513_198

def RemovedBody513_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody513_201 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody513_199 RemovedBody513_200

def RemovedBody513_202 : StackLang.HolProg 64 :=
.seq RemovedBody513_196 RemovedBody513_201

def RemovedBody513_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody513_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody513_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 513 9

def RemovedBody513_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody513_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody513_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody513_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody513_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody513_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody513_212 : StackLang.HolProg 64 :=
.seq RemovedBody513_210 RemovedBody513_211

def RemovedBody513_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody513_214 : StackLang.HolProg 64 :=
.seq RemovedBody513_212 RemovedBody513_213

def RemovedBody513_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody513_216 : StackLang.HolProg 64 :=
.seq RemovedBody513_214 RemovedBody513_215

def RemovedBody513_217 : StackLang.HolProg 64 :=
.seq RemovedBody513_209 RemovedBody513_216

def RemovedBody513_218 : StackLang.HolProg 64 :=
.seq RemovedBody513_208 RemovedBody513_217

def RemovedBody513_219 : StackLang.HolProg 64 :=
.seq RemovedBody513_207 RemovedBody513_218

def RemovedBody513_220 : StackLang.HolProg 64 :=
.seq RemovedBody513_206 RemovedBody513_219

def RemovedBody513_221 : StackLang.HolProg 64 :=
.seq RemovedBody513_205 RemovedBody513_220

def RemovedBody513_222 : StackLang.HolProg 64 :=
.seq RemovedBody513_204 RemovedBody513_221

def RemovedBody513_223 : StackLang.HolProg 64 :=
.seq RemovedBody513_203 RemovedBody513_222

def RemovedBody513_224 : StackLang.HolProg 64 :=
.seq RemovedBody513_202 RemovedBody513_223

def RemovedBody513_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody513_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody513_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody513_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody513_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody513_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody513_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody513_232 : StackLang.HolProg 64 :=
.seq RemovedBody513_230 RemovedBody513_231

def RemovedBody513_233 : StackLang.HolProg 64 :=
.seq RemovedBody513_229 RemovedBody513_232

def RemovedBody513_234 : StackLang.HolProg 64 :=
.seq RemovedBody513_228 RemovedBody513_233

def RemovedBody513_235 : StackLang.HolProg 64 :=
.seq RemovedBody513_227 RemovedBody513_234

def RemovedBody513_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody513_237 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody513_238 : StackLang.HolProg 64 :=
.seq RemovedBody513_236 RemovedBody513_237

def RemovedBody513_239 : StackLang.HolProg 64 :=
.call (some (RemovedBody513_235, 0, 513, 8)) (Sum.inl 478) (some (RemovedBody513_238, 513, 9))

def RemovedBody513_240 : StackLang.HolProg 64 :=
.seq RemovedBody513_226 RemovedBody513_239

def RemovedBody513_241 : StackLang.HolProg 64 :=
.seq RemovedBody513_225 RemovedBody513_240

def RemovedBody513_242 : StackLang.HolProg 64 :=
.seq RemovedBody513_224 RemovedBody513_241

def RemovedBody513_243 : StackLang.HolProg 64 :=
.seq RemovedBody513_195 RemovedBody513_242

def RemovedBody513_244 : StackLang.HolProg 64 :=
.seq RemovedBody513_192 RemovedBody513_243

def RemovedBody513_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody513_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody513_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody513_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody513_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1648#64)

def RemovedBody513_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody513_251 : StackLang.HolProg 64 :=
.seq RemovedBody513_249 RemovedBody513_250

def RemovedBody513_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody513_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody513_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody513_255 : StackLang.HolProg 64 :=
.seq RemovedBody513_253 RemovedBody513_254

def RemovedBody513_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody513_257 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody513_255 RemovedBody513_256

def RemovedBody513_258 : StackLang.HolProg 64 :=
.seq RemovedBody513_252 RemovedBody513_257

def RemovedBody513_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody513_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody513_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 513 11

def RemovedBody513_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody513_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody513_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody513_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody513_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody513_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody513_268 : StackLang.HolProg 64 :=
.seq RemovedBody513_266 RemovedBody513_267

def RemovedBody513_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody513_270 : StackLang.HolProg 64 :=
.seq RemovedBody513_268 RemovedBody513_269

def RemovedBody513_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody513_272 : StackLang.HolProg 64 :=
.seq RemovedBody513_270 RemovedBody513_271

def RemovedBody513_273 : StackLang.HolProg 64 :=
.seq RemovedBody513_265 RemovedBody513_272

def RemovedBody513_274 : StackLang.HolProg 64 :=
.seq RemovedBody513_264 RemovedBody513_273

def RemovedBody513_275 : StackLang.HolProg 64 :=
.seq RemovedBody513_263 RemovedBody513_274

def RemovedBody513_276 : StackLang.HolProg 64 :=
.seq RemovedBody513_262 RemovedBody513_275

def RemovedBody513_277 : StackLang.HolProg 64 :=
.seq RemovedBody513_261 RemovedBody513_276

def RemovedBody513_278 : StackLang.HolProg 64 :=
.seq RemovedBody513_260 RemovedBody513_277

def RemovedBody513_279 : StackLang.HolProg 64 :=
.seq RemovedBody513_259 RemovedBody513_278

def RemovedBody513_280 : StackLang.HolProg 64 :=
.seq RemovedBody513_258 RemovedBody513_279

def RemovedBody513_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody513_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody513_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody513_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody513_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody513_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody513_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody513_288 : StackLang.HolProg 64 :=
.seq RemovedBody513_286 RemovedBody513_287

def RemovedBody513_289 : StackLang.HolProg 64 :=
.seq RemovedBody513_285 RemovedBody513_288

def RemovedBody513_290 : StackLang.HolProg 64 :=
.seq RemovedBody513_284 RemovedBody513_289

def RemovedBody513_291 : StackLang.HolProg 64 :=
.seq RemovedBody513_283 RemovedBody513_290

def RemovedBody513_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody513_293 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody513_294 : StackLang.HolProg 64 :=
.seq RemovedBody513_292 RemovedBody513_293

def RemovedBody513_295 : StackLang.HolProg 64 :=
.call (some (RemovedBody513_291, 0, 513, 10)) (Sum.inl 490) (some (RemovedBody513_294, 513, 11))

def RemovedBody513_296 : StackLang.HolProg 64 :=
.seq RemovedBody513_282 RemovedBody513_295

def RemovedBody513_297 : StackLang.HolProg 64 :=
.seq RemovedBody513_281 RemovedBody513_296

def RemovedBody513_298 : StackLang.HolProg 64 :=
.seq RemovedBody513_280 RemovedBody513_297

def RemovedBody513_299 : StackLang.HolProg 64 :=
.seq RemovedBody513_251 RemovedBody513_298

def RemovedBody513_300 : StackLang.HolProg 64 :=
.seq RemovedBody513_248 RemovedBody513_299

def RemovedBody513_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody513_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody513_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody513_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody513_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody513_306 : StackLang.HolProg 64 :=
.seq RemovedBody513_304 RemovedBody513_305

def RemovedBody513_307 : StackLang.HolProg 64 :=
.seq RemovedBody513_303 RemovedBody513_306

def RemovedBody513_308 : StackLang.HolProg 64 :=
.seq RemovedBody513_302 RemovedBody513_307

def RemovedBody513_309 : StackLang.HolProg 64 :=
.seq RemovedBody513_301 RemovedBody513_308

def RemovedBody513_310 : StackLang.HolProg 64 :=
.seq RemovedBody513_300 RemovedBody513_309

def RemovedBody513_311 : StackLang.HolProg 64 :=
.seq RemovedBody513_247 RemovedBody513_310

def RemovedBody513_312 : StackLang.HolProg 64 :=
.seq RemovedBody513_246 RemovedBody513_311

def RemovedBody513_313 : StackLang.HolProg 64 :=
.seq RemovedBody513_245 RemovedBody513_312

def RemovedBody513_314 : StackLang.HolProg 64 :=
.seq RemovedBody513_244 RemovedBody513_313

def RemovedBody513_315 : StackLang.HolProg 64 :=
.seq RemovedBody513_191 RemovedBody513_314

def RemovedBody513_316 : StackLang.HolProg 64 :=
.seq RemovedBody513_190 RemovedBody513_315

def RemovedBody513_317 : StackLang.HolProg 64 :=
.seq RemovedBody513_189 RemovedBody513_316

def RemovedBody513_318 : StackLang.HolProg 64 :=
.seq RemovedBody513_136 RemovedBody513_317

def RemovedBody513_319 : StackLang.HolProg 64 :=
.seq RemovedBody513_135 RemovedBody513_318

def RemovedBody513_320 : StackLang.HolProg 64 :=
.seq RemovedBody513_134 RemovedBody513_319

def RemovedBody513_321 : StackLang.HolProg 64 :=
.seq RemovedBody513_69 RemovedBody513_320

def RemovedBody513_322 : StackLang.HolProg 64 :=
.seq RemovedBody513_62 RemovedBody513_321

def RemovedBody513_323 : StackLang.HolProg 64 :=
.seq RemovedBody513_61 RemovedBody513_322

def RemovedBody513_324 : StackLang.HolProg 64 :=
.seq RemovedBody513_60 RemovedBody513_323

def RemovedBody513_325 : StackLang.HolProg 64 :=
.seq RemovedBody513_7 RemovedBody513_324

def RemovedBody513_326 : StackLang.HolProg 64 :=
.seq RemovedBody513_6 RemovedBody513_325

def Removed513 : Nat × StackLang.HolProg 64 := (513, RemovedBody513_326)
theorem Removed513_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc513 = Removed513 := by
  kernel_rfl
#print axioms Removed513_eq
end InitECandidate.Proofs.BackendStages
