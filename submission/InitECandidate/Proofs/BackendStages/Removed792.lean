import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc792
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody792_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 144#64)))

def RemovedBody792_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody792_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody792_3 : StackLang.HolProg 64 :=
.seq RemovedBody792_1 RemovedBody792_2

def RemovedBody792_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody792_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody792_3 RemovedBody792_4

def RemovedBody792_6 : StackLang.HolProg 64 :=
.seq RemovedBody792_0 RemovedBody792_5

def RemovedBody792_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def RemovedBody792_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def RemovedBody792_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody792_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody792_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody792_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody792_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody792_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 14
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody792_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody792_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody792_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody792_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody792_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody792_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody792_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody792_22 : StackLang.HolProg 64 :=
.seq RemovedBody792_20 RemovedBody792_21

def RemovedBody792_23 : StackLang.HolProg 64 :=
.seq RemovedBody792_19 RemovedBody792_22

def RemovedBody792_24 : StackLang.HolProg 64 :=
.seq RemovedBody792_18 RemovedBody792_23

def RemovedBody792_25 : StackLang.HolProg 64 :=
.seq RemovedBody792_17 RemovedBody792_24

def RemovedBody792_26 : StackLang.HolProg 64 :=
.seq RemovedBody792_16 RemovedBody792_25

def RemovedBody792_27 : StackLang.HolProg 64 :=
.seq RemovedBody792_15 RemovedBody792_26

def RemovedBody792_28 : StackLang.HolProg 64 :=
.seq RemovedBody792_14 RemovedBody792_27

def RemovedBody792_29 : StackLang.HolProg 64 :=
.seq RemovedBody792_13 RemovedBody792_28

def RemovedBody792_30 : StackLang.HolProg 64 :=
.seq RemovedBody792_12 RemovedBody792_29

def RemovedBody792_31 : StackLang.HolProg 64 :=
.seq RemovedBody792_11 RemovedBody792_30

def RemovedBody792_32 : StackLang.HolProg 64 :=
.seq RemovedBody792_10 RemovedBody792_31

def RemovedBody792_33 : StackLang.HolProg 64 :=
.seq RemovedBody792_9 RemovedBody792_32

def RemovedBody792_34 : StackLang.HolProg 64 :=
.seq RemovedBody792_8 RemovedBody792_33

def RemovedBody792_35 : StackLang.HolProg 64 :=
.seq RemovedBody792_7 RemovedBody792_34

def RemovedBody792_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody792_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3748#64)

def RemovedBody792_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody792_39 : StackLang.HolProg 64 :=
.seq RemovedBody792_37 RemovedBody792_38

def RemovedBody792_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody792_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody792_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody792_43 : StackLang.HolProg 64 :=
.seq RemovedBody792_41 RemovedBody792_42

def RemovedBody792_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody792_45 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody792_43 RemovedBody792_44

def RemovedBody792_46 : StackLang.HolProg 64 :=
.seq RemovedBody792_40 RemovedBody792_45

def RemovedBody792_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody792_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody792_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 792 3

def RemovedBody792_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody792_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody792_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody792_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody792_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody792_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody792_56 : StackLang.HolProg 64 :=
.seq RemovedBody792_54 RemovedBody792_55

def RemovedBody792_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody792_58 : StackLang.HolProg 64 :=
.seq RemovedBody792_56 RemovedBody792_57

def RemovedBody792_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody792_60 : StackLang.HolProg 64 :=
.seq RemovedBody792_58 RemovedBody792_59

def RemovedBody792_61 : StackLang.HolProg 64 :=
.seq RemovedBody792_53 RemovedBody792_60

def RemovedBody792_62 : StackLang.HolProg 64 :=
.seq RemovedBody792_52 RemovedBody792_61

def RemovedBody792_63 : StackLang.HolProg 64 :=
.seq RemovedBody792_51 RemovedBody792_62

def RemovedBody792_64 : StackLang.HolProg 64 :=
.seq RemovedBody792_50 RemovedBody792_63

def RemovedBody792_65 : StackLang.HolProg 64 :=
.seq RemovedBody792_49 RemovedBody792_64

def RemovedBody792_66 : StackLang.HolProg 64 :=
.seq RemovedBody792_48 RemovedBody792_65

def RemovedBody792_67 : StackLang.HolProg 64 :=
.seq RemovedBody792_47 RemovedBody792_66

def RemovedBody792_68 : StackLang.HolProg 64 :=
.seq RemovedBody792_46 RemovedBody792_67

def RemovedBody792_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody792_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody792_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody792_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody792_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody792_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody792_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody792_76 : StackLang.HolProg 64 :=
.seq RemovedBody792_74 RemovedBody792_75

def RemovedBody792_77 : StackLang.HolProg 64 :=
.seq RemovedBody792_73 RemovedBody792_76

def RemovedBody792_78 : StackLang.HolProg 64 :=
.seq RemovedBody792_72 RemovedBody792_77

def RemovedBody792_79 : StackLang.HolProg 64 :=
.seq RemovedBody792_71 RemovedBody792_78

def RemovedBody792_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody792_81 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody792_82 : StackLang.HolProg 64 :=
.seq RemovedBody792_80 RemovedBody792_81

def RemovedBody792_83 : StackLang.HolProg 64 :=
.call (some (RemovedBody792_79, 0, 792, 2)) (Sum.inl 69) (some (RemovedBody792_82, 792, 3))

def RemovedBody792_84 : StackLang.HolProg 64 :=
.seq RemovedBody792_70 RemovedBody792_83

def RemovedBody792_85 : StackLang.HolProg 64 :=
.seq RemovedBody792_69 RemovedBody792_84

def RemovedBody792_86 : StackLang.HolProg 64 :=
.seq RemovedBody792_68 RemovedBody792_85

def RemovedBody792_87 : StackLang.HolProg 64 :=
.seq RemovedBody792_39 RemovedBody792_86

def RemovedBody792_88 : StackLang.HolProg 64 :=
.seq RemovedBody792_36 RemovedBody792_87

def RemovedBody792_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody792_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 576#64)

def RemovedBody792_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody792_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody792_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3749#64)

def RemovedBody792_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody792_95 : StackLang.HolProg 64 :=
.seq RemovedBody792_93 RemovedBody792_94

def RemovedBody792_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody792_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody792_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody792_99 : StackLang.HolProg 64 :=
.seq RemovedBody792_97 RemovedBody792_98

def RemovedBody792_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody792_101 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody792_99 RemovedBody792_100

def RemovedBody792_102 : StackLang.HolProg 64 :=
.seq RemovedBody792_96 RemovedBody792_101

def RemovedBody792_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody792_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody792_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 792 5

def RemovedBody792_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody792_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody792_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody792_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody792_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody792_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody792_112 : StackLang.HolProg 64 :=
.seq RemovedBody792_110 RemovedBody792_111

def RemovedBody792_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody792_114 : StackLang.HolProg 64 :=
.seq RemovedBody792_112 RemovedBody792_113

def RemovedBody792_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody792_116 : StackLang.HolProg 64 :=
.seq RemovedBody792_114 RemovedBody792_115

def RemovedBody792_117 : StackLang.HolProg 64 :=
.seq RemovedBody792_109 RemovedBody792_116

def RemovedBody792_118 : StackLang.HolProg 64 :=
.seq RemovedBody792_108 RemovedBody792_117

def RemovedBody792_119 : StackLang.HolProg 64 :=
.seq RemovedBody792_107 RemovedBody792_118

def RemovedBody792_120 : StackLang.HolProg 64 :=
.seq RemovedBody792_106 RemovedBody792_119

def RemovedBody792_121 : StackLang.HolProg 64 :=
.seq RemovedBody792_105 RemovedBody792_120

def RemovedBody792_122 : StackLang.HolProg 64 :=
.seq RemovedBody792_104 RemovedBody792_121

def RemovedBody792_123 : StackLang.HolProg 64 :=
.seq RemovedBody792_103 RemovedBody792_122

def RemovedBody792_124 : StackLang.HolProg 64 :=
.seq RemovedBody792_102 RemovedBody792_123

def RemovedBody792_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody792_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody792_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody792_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody792_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody792_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody792_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody792_132 : StackLang.HolProg 64 :=
.seq RemovedBody792_130 RemovedBody792_131

def RemovedBody792_133 : StackLang.HolProg 64 :=
.seq RemovedBody792_129 RemovedBody792_132

def RemovedBody792_134 : StackLang.HolProg 64 :=
.seq RemovedBody792_128 RemovedBody792_133

def RemovedBody792_135 : StackLang.HolProg 64 :=
.seq RemovedBody792_127 RemovedBody792_134

def RemovedBody792_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody792_137 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody792_138 : StackLang.HolProg 64 :=
.seq RemovedBody792_136 RemovedBody792_137

def RemovedBody792_139 : StackLang.HolProg 64 :=
.call (some (RemovedBody792_135, 0, 792, 4)) (Sum.inl 68) (some (RemovedBody792_138, 792, 5))

def RemovedBody792_140 : StackLang.HolProg 64 :=
.seq RemovedBody792_126 RemovedBody792_139

def RemovedBody792_141 : StackLang.HolProg 64 :=
.seq RemovedBody792_125 RemovedBody792_140

def RemovedBody792_142 : StackLang.HolProg 64 :=
.seq RemovedBody792_124 RemovedBody792_141

def RemovedBody792_143 : StackLang.HolProg 64 :=
.seq RemovedBody792_95 RemovedBody792_142

def RemovedBody792_144 : StackLang.HolProg 64 :=
.seq RemovedBody792_92 RemovedBody792_143

def RemovedBody792_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody792_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody792_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 576#64)

def RemovedBody792_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody792_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody792_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3750#64)

def RemovedBody792_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody792_152 : StackLang.HolProg 64 :=
.seq RemovedBody792_150 RemovedBody792_151

def RemovedBody792_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody792_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody792_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody792_156 : StackLang.HolProg 64 :=
.seq RemovedBody792_154 RemovedBody792_155

def RemovedBody792_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody792_158 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody792_156 RemovedBody792_157

def RemovedBody792_159 : StackLang.HolProg 64 :=
.seq RemovedBody792_153 RemovedBody792_158

def RemovedBody792_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody792_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody792_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 792 7

def RemovedBody792_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody792_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody792_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody792_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody792_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody792_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody792_169 : StackLang.HolProg 64 :=
.seq RemovedBody792_167 RemovedBody792_168

def RemovedBody792_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody792_171 : StackLang.HolProg 64 :=
.seq RemovedBody792_169 RemovedBody792_170

def RemovedBody792_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody792_173 : StackLang.HolProg 64 :=
.seq RemovedBody792_171 RemovedBody792_172

def RemovedBody792_174 : StackLang.HolProg 64 :=
.seq RemovedBody792_166 RemovedBody792_173

def RemovedBody792_175 : StackLang.HolProg 64 :=
.seq RemovedBody792_165 RemovedBody792_174

def RemovedBody792_176 : StackLang.HolProg 64 :=
.seq RemovedBody792_164 RemovedBody792_175

def RemovedBody792_177 : StackLang.HolProg 64 :=
.seq RemovedBody792_163 RemovedBody792_176

def RemovedBody792_178 : StackLang.HolProg 64 :=
.seq RemovedBody792_162 RemovedBody792_177

def RemovedBody792_179 : StackLang.HolProg 64 :=
.seq RemovedBody792_161 RemovedBody792_178

def RemovedBody792_180 : StackLang.HolProg 64 :=
.seq RemovedBody792_160 RemovedBody792_179

def RemovedBody792_181 : StackLang.HolProg 64 :=
.seq RemovedBody792_159 RemovedBody792_180

def RemovedBody792_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody792_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody792_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody792_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody792_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody792_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody792_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody792_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody792_190 : StackLang.HolProg 64 :=
.seq RemovedBody792_188 RemovedBody792_189

def RemovedBody792_191 : StackLang.HolProg 64 :=
.seq RemovedBody792_187 RemovedBody792_190

def RemovedBody792_192 : StackLang.HolProg 64 :=
.seq RemovedBody792_186 RemovedBody792_191

def RemovedBody792_193 : StackLang.HolProg 64 :=
.seq RemovedBody792_185 RemovedBody792_192

def RemovedBody792_194 : StackLang.HolProg 64 :=
.seq RemovedBody792_184 RemovedBody792_193

def RemovedBody792_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody792_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody792_197 : StackLang.HolProg 64 :=
.seq RemovedBody792_195 RemovedBody792_196

def RemovedBody792_198 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody792_199 : StackLang.HolProg 64 :=
.seq RemovedBody792_197 RemovedBody792_198

def RemovedBody792_200 : StackLang.HolProg 64 :=
.call (some (RemovedBody792_194, 0, 792, 6)) (Sum.inl 78) (some (RemovedBody792_199, 792, 7))

def RemovedBody792_201 : StackLang.HolProg 64 :=
.seq RemovedBody792_183 RemovedBody792_200

def RemovedBody792_202 : StackLang.HolProg 64 :=
.seq RemovedBody792_182 RemovedBody792_201

def RemovedBody792_203 : StackLang.HolProg 64 :=
.seq RemovedBody792_181 RemovedBody792_202

def RemovedBody792_204 : StackLang.HolProg 64 :=
.seq RemovedBody792_152 RemovedBody792_203

def RemovedBody792_205 : StackLang.HolProg 64 :=
.seq RemovedBody792_149 RemovedBody792_204

def RemovedBody792_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody792_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody792_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def RemovedBody792_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody792_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody792_211 : StackLang.HolProg 64 :=
.seq RemovedBody792_209 RemovedBody792_210

def RemovedBody792_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody792_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3751#64)

def RemovedBody792_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody792_215 : StackLang.HolProg 64 :=
.seq RemovedBody792_213 RemovedBody792_214

def RemovedBody792_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody792_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody792_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody792_219 : StackLang.HolProg 64 :=
.seq RemovedBody792_217 RemovedBody792_218

def RemovedBody792_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody792_221 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody792_219 RemovedBody792_220

def RemovedBody792_222 : StackLang.HolProg 64 :=
.seq RemovedBody792_216 RemovedBody792_221

def RemovedBody792_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody792_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody792_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 792 9

def RemovedBody792_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody792_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody792_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody792_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody792_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody792_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody792_232 : StackLang.HolProg 64 :=
.seq RemovedBody792_230 RemovedBody792_231

def RemovedBody792_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody792_234 : StackLang.HolProg 64 :=
.seq RemovedBody792_232 RemovedBody792_233

def RemovedBody792_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody792_236 : StackLang.HolProg 64 :=
.seq RemovedBody792_234 RemovedBody792_235

def RemovedBody792_237 : StackLang.HolProg 64 :=
.seq RemovedBody792_229 RemovedBody792_236

def RemovedBody792_238 : StackLang.HolProg 64 :=
.seq RemovedBody792_228 RemovedBody792_237

def RemovedBody792_239 : StackLang.HolProg 64 :=
.seq RemovedBody792_227 RemovedBody792_238

def RemovedBody792_240 : StackLang.HolProg 64 :=
.seq RemovedBody792_226 RemovedBody792_239

def RemovedBody792_241 : StackLang.HolProg 64 :=
.seq RemovedBody792_225 RemovedBody792_240

def RemovedBody792_242 : StackLang.HolProg 64 :=
.seq RemovedBody792_224 RemovedBody792_241

def RemovedBody792_243 : StackLang.HolProg 64 :=
.seq RemovedBody792_223 RemovedBody792_242

def RemovedBody792_244 : StackLang.HolProg 64 :=
.seq RemovedBody792_222 RemovedBody792_243

def RemovedBody792_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody792_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody792_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody792_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody792_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody792_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody792_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def RemovedBody792_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody792_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody792_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def RemovedBody792_255 : StackLang.HolProg 64 :=
.seq RemovedBody792_253 RemovedBody792_254

def RemovedBody792_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody792_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody792_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody792_259 : StackLang.HolProg 64 :=
.seq RemovedBody792_257 RemovedBody792_258

def RemovedBody792_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody792_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody792_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody792_263 : StackLang.HolProg 64 :=
.seq RemovedBody792_261 RemovedBody792_262

def RemovedBody792_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody792_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody792_266 : StackLang.HolProg 64 :=
.seq RemovedBody792_264 RemovedBody792_265

def RemovedBody792_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody792_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody792_269 : StackLang.HolProg 64 :=
.seq RemovedBody792_267 RemovedBody792_268

def RemovedBody792_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody792_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody792_272 : StackLang.HolProg 64 :=
.seq RemovedBody792_270 RemovedBody792_271

def RemovedBody792_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody792_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody792_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody792_276 : StackLang.HolProg 64 :=
.seq RemovedBody792_274 RemovedBody792_275

def RemovedBody792_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody792_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody792_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody792_280 : StackLang.HolProg 64 :=
.seq RemovedBody792_278 RemovedBody792_279

def RemovedBody792_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody792_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody792_283 : StackLang.HolProg 64 :=
.seq RemovedBody792_281 RemovedBody792_282

def RemovedBody792_284 : StackLang.HolProg 64 :=
.seq RemovedBody792_280 RemovedBody792_283

def RemovedBody792_285 : StackLang.HolProg 64 :=
.seq RemovedBody792_277 RemovedBody792_284

def RemovedBody792_286 : StackLang.HolProg 64 :=
.seq RemovedBody792_276 RemovedBody792_285

def RemovedBody792_287 : StackLang.HolProg 64 :=
.seq RemovedBody792_273 RemovedBody792_286

def RemovedBody792_288 : StackLang.HolProg 64 :=
.seq RemovedBody792_272 RemovedBody792_287

def RemovedBody792_289 : StackLang.HolProg 64 :=
.seq RemovedBody792_269 RemovedBody792_288

def RemovedBody792_290 : StackLang.HolProg 64 :=
.seq RemovedBody792_266 RemovedBody792_289

def RemovedBody792_291 : StackLang.HolProg 64 :=
.seq RemovedBody792_263 RemovedBody792_290

def RemovedBody792_292 : StackLang.HolProg 64 :=
.seq RemovedBody792_260 RemovedBody792_291

def RemovedBody792_293 : StackLang.HolProg 64 :=
.seq RemovedBody792_259 RemovedBody792_292

def RemovedBody792_294 : StackLang.HolProg 64 :=
.seq RemovedBody792_256 RemovedBody792_293

def RemovedBody792_295 : StackLang.HolProg 64 :=
.seq RemovedBody792_255 RemovedBody792_294

def RemovedBody792_296 : StackLang.HolProg 64 :=
.seq RemovedBody792_252 RemovedBody792_295

def RemovedBody792_297 : StackLang.HolProg 64 :=
.seq RemovedBody792_251 RemovedBody792_296

def RemovedBody792_298 : StackLang.HolProg 64 :=
.seq RemovedBody792_250 RemovedBody792_297

def RemovedBody792_299 : StackLang.HolProg 64 :=
.seq RemovedBody792_249 RemovedBody792_298

def RemovedBody792_300 : StackLang.HolProg 64 :=
.seq RemovedBody792_248 RemovedBody792_299

def RemovedBody792_301 : StackLang.HolProg 64 :=
.seq RemovedBody792_247 RemovedBody792_300

def RemovedBody792_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def RemovedBody792_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody792_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody792_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def RemovedBody792_306 : StackLang.HolProg 64 :=
.seq RemovedBody792_304 RemovedBody792_305

def RemovedBody792_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody792_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody792_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody792_310 : StackLang.HolProg 64 :=
.seq RemovedBody792_308 RemovedBody792_309

def RemovedBody792_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody792_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody792_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody792_314 : StackLang.HolProg 64 :=
.seq RemovedBody792_312 RemovedBody792_313

def RemovedBody792_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody792_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody792_317 : StackLang.HolProg 64 :=
.seq RemovedBody792_315 RemovedBody792_316

def RemovedBody792_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody792_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody792_320 : StackLang.HolProg 64 :=
.seq RemovedBody792_318 RemovedBody792_319

def RemovedBody792_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody792_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody792_323 : StackLang.HolProg 64 :=
.seq RemovedBody792_321 RemovedBody792_322

def RemovedBody792_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody792_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody792_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody792_327 : StackLang.HolProg 64 :=
.seq RemovedBody792_325 RemovedBody792_326

def RemovedBody792_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody792_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody792_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody792_331 : StackLang.HolProg 64 :=
.seq RemovedBody792_329 RemovedBody792_330

def RemovedBody792_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody792_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody792_334 : StackLang.HolProg 64 :=
.seq RemovedBody792_332 RemovedBody792_333

def RemovedBody792_335 : StackLang.HolProg 64 :=
.seq RemovedBody792_331 RemovedBody792_334

def RemovedBody792_336 : StackLang.HolProg 64 :=
.seq RemovedBody792_328 RemovedBody792_335

def RemovedBody792_337 : StackLang.HolProg 64 :=
.seq RemovedBody792_327 RemovedBody792_336

def RemovedBody792_338 : StackLang.HolProg 64 :=
.seq RemovedBody792_324 RemovedBody792_337

def RemovedBody792_339 : StackLang.HolProg 64 :=
.seq RemovedBody792_323 RemovedBody792_338

def RemovedBody792_340 : StackLang.HolProg 64 :=
.seq RemovedBody792_320 RemovedBody792_339

def RemovedBody792_341 : StackLang.HolProg 64 :=
.seq RemovedBody792_317 RemovedBody792_340

def RemovedBody792_342 : StackLang.HolProg 64 :=
.seq RemovedBody792_314 RemovedBody792_341

def RemovedBody792_343 : StackLang.HolProg 64 :=
.seq RemovedBody792_311 RemovedBody792_342

def RemovedBody792_344 : StackLang.HolProg 64 :=
.seq RemovedBody792_310 RemovedBody792_343

def RemovedBody792_345 : StackLang.HolProg 64 :=
.seq RemovedBody792_307 RemovedBody792_344

def RemovedBody792_346 : StackLang.HolProg 64 :=
.seq RemovedBody792_306 RemovedBody792_345

def RemovedBody792_347 : StackLang.HolProg 64 :=
.seq RemovedBody792_303 RemovedBody792_346

def RemovedBody792_348 : StackLang.HolProg 64 :=
.seq RemovedBody792_302 RemovedBody792_347

def RemovedBody792_349 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody792_350 : StackLang.HolProg 64 :=
.seq RemovedBody792_348 RemovedBody792_349

def RemovedBody792_351 : StackLang.HolProg 64 :=
.call (some (RemovedBody792_301, 0, 792, 8)) (Sum.inl 729) (some (RemovedBody792_350, 792, 9))

def RemovedBody792_352 : StackLang.HolProg 64 :=
.seq RemovedBody792_246 RemovedBody792_351

def RemovedBody792_353 : StackLang.HolProg 64 :=
.seq RemovedBody792_245 RemovedBody792_352

def RemovedBody792_354 : StackLang.HolProg 64 :=
.seq RemovedBody792_244 RemovedBody792_353

def RemovedBody792_355 : StackLang.HolProg 64 :=
.seq RemovedBody792_215 RemovedBody792_354

def RemovedBody792_356 : StackLang.HolProg 64 :=
.seq RemovedBody792_212 RemovedBody792_355

def RemovedBody792_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody792_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody792_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def RemovedBody792_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody792_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def RemovedBody792_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody792_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody792_364 : StackLang.HolProg 64 :=
.seq RemovedBody792_362 RemovedBody792_363

def RemovedBody792_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody792_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3752#64)

def RemovedBody792_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody792_368 : StackLang.HolProg 64 :=
.seq RemovedBody792_366 RemovedBody792_367

def RemovedBody792_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody792_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody792_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody792_372 : StackLang.HolProg 64 :=
.seq RemovedBody792_370 RemovedBody792_371

def RemovedBody792_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody792_374 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody792_372 RemovedBody792_373

def RemovedBody792_375 : StackLang.HolProg 64 :=
.seq RemovedBody792_369 RemovedBody792_374

def RemovedBody792_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody792_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody792_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 792 11

def RemovedBody792_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody792_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody792_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody792_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody792_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody792_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody792_385 : StackLang.HolProg 64 :=
.seq RemovedBody792_383 RemovedBody792_384

def RemovedBody792_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody792_387 : StackLang.HolProg 64 :=
.seq RemovedBody792_385 RemovedBody792_386

def RemovedBody792_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody792_389 : StackLang.HolProg 64 :=
.seq RemovedBody792_387 RemovedBody792_388

def RemovedBody792_390 : StackLang.HolProg 64 :=
.seq RemovedBody792_382 RemovedBody792_389

def RemovedBody792_391 : StackLang.HolProg 64 :=
.seq RemovedBody792_381 RemovedBody792_390

def RemovedBody792_392 : StackLang.HolProg 64 :=
.seq RemovedBody792_380 RemovedBody792_391

def RemovedBody792_393 : StackLang.HolProg 64 :=
.seq RemovedBody792_379 RemovedBody792_392

def RemovedBody792_394 : StackLang.HolProg 64 :=
.seq RemovedBody792_378 RemovedBody792_393

def RemovedBody792_395 : StackLang.HolProg 64 :=
.seq RemovedBody792_377 RemovedBody792_394

def RemovedBody792_396 : StackLang.HolProg 64 :=
.seq RemovedBody792_376 RemovedBody792_395

def RemovedBody792_397 : StackLang.HolProg 64 :=
.seq RemovedBody792_375 RemovedBody792_396

def RemovedBody792_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody792_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody792_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody792_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody792_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody792_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody792_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def RemovedBody792_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody792_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody792_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody792_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody792_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def RemovedBody792_410 : StackLang.HolProg 64 :=
.seq RemovedBody792_408 RemovedBody792_409

def RemovedBody792_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody792_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody792_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody792_414 : StackLang.HolProg 64 :=
.seq RemovedBody792_412 RemovedBody792_413

def RemovedBody792_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody792_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody792_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody792_418 : StackLang.HolProg 64 :=
.seq RemovedBody792_416 RemovedBody792_417

def RemovedBody792_419 : StackLang.HolProg 64 :=
.seq RemovedBody792_415 RemovedBody792_418

def RemovedBody792_420 : StackLang.HolProg 64 :=
.seq RemovedBody792_414 RemovedBody792_419

def RemovedBody792_421 : StackLang.HolProg 64 :=
.seq RemovedBody792_411 RemovedBody792_420

def RemovedBody792_422 : StackLang.HolProg 64 :=
.seq RemovedBody792_410 RemovedBody792_421

def RemovedBody792_423 : StackLang.HolProg 64 :=
.seq RemovedBody792_407 RemovedBody792_422

def RemovedBody792_424 : StackLang.HolProg 64 :=
.seq RemovedBody792_406 RemovedBody792_423

def RemovedBody792_425 : StackLang.HolProg 64 :=
.seq RemovedBody792_405 RemovedBody792_424

def RemovedBody792_426 : StackLang.HolProg 64 :=
.seq RemovedBody792_404 RemovedBody792_425

def RemovedBody792_427 : StackLang.HolProg 64 :=
.seq RemovedBody792_403 RemovedBody792_426

def RemovedBody792_428 : StackLang.HolProg 64 :=
.seq RemovedBody792_402 RemovedBody792_427

def RemovedBody792_429 : StackLang.HolProg 64 :=
.seq RemovedBody792_401 RemovedBody792_428

def RemovedBody792_430 : StackLang.HolProg 64 :=
.seq RemovedBody792_400 RemovedBody792_429

def RemovedBody792_431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def RemovedBody792_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody792_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody792_434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody792_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody792_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def RemovedBody792_437 : StackLang.HolProg 64 :=
.seq RemovedBody792_435 RemovedBody792_436

def RemovedBody792_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody792_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody792_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody792_441 : StackLang.HolProg 64 :=
.seq RemovedBody792_439 RemovedBody792_440

def RemovedBody792_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody792_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody792_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody792_445 : StackLang.HolProg 64 :=
.seq RemovedBody792_443 RemovedBody792_444

def RemovedBody792_446 : StackLang.HolProg 64 :=
.seq RemovedBody792_442 RemovedBody792_445

def RemovedBody792_447 : StackLang.HolProg 64 :=
.seq RemovedBody792_441 RemovedBody792_446

def RemovedBody792_448 : StackLang.HolProg 64 :=
.seq RemovedBody792_438 RemovedBody792_447

def RemovedBody792_449 : StackLang.HolProg 64 :=
.seq RemovedBody792_437 RemovedBody792_448

def RemovedBody792_450 : StackLang.HolProg 64 :=
.seq RemovedBody792_434 RemovedBody792_449

def RemovedBody792_451 : StackLang.HolProg 64 :=
.seq RemovedBody792_433 RemovedBody792_450

def RemovedBody792_452 : StackLang.HolProg 64 :=
.seq RemovedBody792_432 RemovedBody792_451

def RemovedBody792_453 : StackLang.HolProg 64 :=
.seq RemovedBody792_431 RemovedBody792_452

def RemovedBody792_454 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody792_455 : StackLang.HolProg 64 :=
.seq RemovedBody792_453 RemovedBody792_454

def RemovedBody792_456 : StackLang.HolProg 64 :=
.call (some (RemovedBody792_430, 0, 792, 10)) (Sum.inl 742) (some (RemovedBody792_455, 792, 11))

def RemovedBody792_457 : StackLang.HolProg 64 :=
.seq RemovedBody792_399 RemovedBody792_456

def RemovedBody792_458 : StackLang.HolProg 64 :=
.seq RemovedBody792_398 RemovedBody792_457

def RemovedBody792_459 : StackLang.HolProg 64 :=
.seq RemovedBody792_397 RemovedBody792_458

def RemovedBody792_460 : StackLang.HolProg 64 :=
.seq RemovedBody792_368 RemovedBody792_459

def RemovedBody792_461 : StackLang.HolProg 64 :=
.seq RemovedBody792_365 RemovedBody792_460

def RemovedBody792_462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody792_463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody792_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 384#64)))

def RemovedBody792_465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody792_466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody792_467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3753#64)

def RemovedBody792_468 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody792_469 : StackLang.HolProg 64 :=
.seq RemovedBody792_467 RemovedBody792_468

def RemovedBody792_470 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody792_471 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody792_472 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody792_473 : StackLang.HolProg 64 :=
.seq RemovedBody792_471 RemovedBody792_472

def RemovedBody792_474 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody792_475 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody792_473 RemovedBody792_474

def RemovedBody792_476 : StackLang.HolProg 64 :=
.seq RemovedBody792_470 RemovedBody792_475

def RemovedBody792_477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody792_478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody792_479 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 792 13

def RemovedBody792_480 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody792_481 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody792_482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody792_483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody792_484 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody792_485 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody792_486 : StackLang.HolProg 64 :=
.seq RemovedBody792_484 RemovedBody792_485

def RemovedBody792_487 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody792_488 : StackLang.HolProg 64 :=
.seq RemovedBody792_486 RemovedBody792_487

def RemovedBody792_489 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody792_490 : StackLang.HolProg 64 :=
.seq RemovedBody792_488 RemovedBody792_489

def RemovedBody792_491 : StackLang.HolProg 64 :=
.seq RemovedBody792_483 RemovedBody792_490

def RemovedBody792_492 : StackLang.HolProg 64 :=
.seq RemovedBody792_482 RemovedBody792_491

def RemovedBody792_493 : StackLang.HolProg 64 :=
.seq RemovedBody792_481 RemovedBody792_492

def RemovedBody792_494 : StackLang.HolProg 64 :=
.seq RemovedBody792_480 RemovedBody792_493

def RemovedBody792_495 : StackLang.HolProg 64 :=
.seq RemovedBody792_479 RemovedBody792_494

def RemovedBody792_496 : StackLang.HolProg 64 :=
.seq RemovedBody792_478 RemovedBody792_495

def RemovedBody792_497 : StackLang.HolProg 64 :=
.seq RemovedBody792_477 RemovedBody792_496

def RemovedBody792_498 : StackLang.HolProg 64 :=
.seq RemovedBody792_476 RemovedBody792_497

def RemovedBody792_499 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody792_500 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody792_501 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody792_502 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody792_503 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody792_504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody792_505 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def RemovedBody792_506 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody792_507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def RemovedBody792_508 : StackLang.HolProg 64 :=
.seq RemovedBody792_506 RemovedBody792_507

def RemovedBody792_509 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody792_510 : StackLang.HolProg 64 :=
.seq RemovedBody792_508 RemovedBody792_509

def RemovedBody792_511 : StackLang.HolProg 64 :=
.seq RemovedBody792_505 RemovedBody792_510

def RemovedBody792_512 : StackLang.HolProg 64 :=
.seq RemovedBody792_504 RemovedBody792_511

def RemovedBody792_513 : StackLang.HolProg 64 :=
.seq RemovedBody792_503 RemovedBody792_512

def RemovedBody792_514 : StackLang.HolProg 64 :=
.seq RemovedBody792_502 RemovedBody792_513

def RemovedBody792_515 : StackLang.HolProg 64 :=
.seq RemovedBody792_501 RemovedBody792_514

def RemovedBody792_516 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def RemovedBody792_517 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody792_518 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def RemovedBody792_519 : StackLang.HolProg 64 :=
.seq RemovedBody792_517 RemovedBody792_518

def RemovedBody792_520 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody792_521 : StackLang.HolProg 64 :=
.seq RemovedBody792_519 RemovedBody792_520

def RemovedBody792_522 : StackLang.HolProg 64 :=
.seq RemovedBody792_516 RemovedBody792_521

def RemovedBody792_523 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody792_524 : StackLang.HolProg 64 :=
.seq RemovedBody792_522 RemovedBody792_523

def RemovedBody792_525 : StackLang.HolProg 64 :=
.call (some (RemovedBody792_515, 0, 792, 12)) (Sum.inl 742) (some (RemovedBody792_524, 792, 13))

def RemovedBody792_526 : StackLang.HolProg 64 :=
.seq RemovedBody792_500 RemovedBody792_525

def RemovedBody792_527 : StackLang.HolProg 64 :=
.seq RemovedBody792_499 RemovedBody792_526

def RemovedBody792_528 : StackLang.HolProg 64 :=
.seq RemovedBody792_498 RemovedBody792_527

def RemovedBody792_529 : StackLang.HolProg 64 :=
.seq RemovedBody792_469 RemovedBody792_528

def RemovedBody792_530 : StackLang.HolProg 64 :=
.seq RemovedBody792_466 RemovedBody792_529

def RemovedBody792_531 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody792_532 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody792_533 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody792_534 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3754#64)

def RemovedBody792_535 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody792_536 : StackLang.HolProg 64 :=
.seq RemovedBody792_534 RemovedBody792_535

def RemovedBody792_537 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody792_538 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody792_539 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody792_540 : StackLang.HolProg 64 :=
.seq RemovedBody792_538 RemovedBody792_539

def RemovedBody792_541 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody792_542 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody792_540 RemovedBody792_541

def RemovedBody792_543 : StackLang.HolProg 64 :=
.seq RemovedBody792_537 RemovedBody792_542

def RemovedBody792_544 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody792_545 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody792_546 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 792 15

def RemovedBody792_547 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody792_548 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody792_549 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody792_550 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody792_551 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody792_552 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody792_553 : StackLang.HolProg 64 :=
.seq RemovedBody792_551 RemovedBody792_552

def RemovedBody792_554 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody792_555 : StackLang.HolProg 64 :=
.seq RemovedBody792_553 RemovedBody792_554

def RemovedBody792_556 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody792_557 : StackLang.HolProg 64 :=
.seq RemovedBody792_555 RemovedBody792_556

def RemovedBody792_558 : StackLang.HolProg 64 :=
.seq RemovedBody792_550 RemovedBody792_557

def RemovedBody792_559 : StackLang.HolProg 64 :=
.seq RemovedBody792_549 RemovedBody792_558

def RemovedBody792_560 : StackLang.HolProg 64 :=
.seq RemovedBody792_548 RemovedBody792_559

def RemovedBody792_561 : StackLang.HolProg 64 :=
.seq RemovedBody792_547 RemovedBody792_560

def RemovedBody792_562 : StackLang.HolProg 64 :=
.seq RemovedBody792_546 RemovedBody792_561

def RemovedBody792_563 : StackLang.HolProg 64 :=
.seq RemovedBody792_545 RemovedBody792_562

def RemovedBody792_564 : StackLang.HolProg 64 :=
.seq RemovedBody792_544 RemovedBody792_563

def RemovedBody792_565 : StackLang.HolProg 64 :=
.seq RemovedBody792_543 RemovedBody792_564

def RemovedBody792_566 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody792_567 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody792_568 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody792_569 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody792_570 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody792_571 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody792_572 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def RemovedBody792_573 : StackLang.HolProg 64 :=
.seq RemovedBody792_571 RemovedBody792_572

def RemovedBody792_574 : StackLang.HolProg 64 :=
.seq RemovedBody792_570 RemovedBody792_573

def RemovedBody792_575 : StackLang.HolProg 64 :=
.seq RemovedBody792_569 RemovedBody792_574

def RemovedBody792_576 : StackLang.HolProg 64 :=
.seq RemovedBody792_568 RemovedBody792_575

def RemovedBody792_577 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def RemovedBody792_578 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody792_579 : StackLang.HolProg 64 :=
.seq RemovedBody792_577 RemovedBody792_578

def RemovedBody792_580 : StackLang.HolProg 64 :=
.call (some (RemovedBody792_576, 0, 792, 14)) (Sum.inl 758) (some (RemovedBody792_579, 792, 15))

def RemovedBody792_581 : StackLang.HolProg 64 :=
.seq RemovedBody792_567 RemovedBody792_580

def RemovedBody792_582 : StackLang.HolProg 64 :=
.seq RemovedBody792_566 RemovedBody792_581

def RemovedBody792_583 : StackLang.HolProg 64 :=
.seq RemovedBody792_565 RemovedBody792_582

def RemovedBody792_584 : StackLang.HolProg 64 :=
.seq RemovedBody792_536 RemovedBody792_583

def RemovedBody792_585 : StackLang.HolProg 64 :=
.seq RemovedBody792_533 RemovedBody792_584

def RemovedBody792_586 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody792_587 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody792_588 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody792_589 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3755#64)

def RemovedBody792_590 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody792_591 : StackLang.HolProg 64 :=
.seq RemovedBody792_589 RemovedBody792_590

def RemovedBody792_592 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody792_593 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody792_594 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody792_595 : StackLang.HolProg 64 :=
.seq RemovedBody792_593 RemovedBody792_594

def RemovedBody792_596 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody792_597 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody792_595 RemovedBody792_596

def RemovedBody792_598 : StackLang.HolProg 64 :=
.seq RemovedBody792_592 RemovedBody792_597

def RemovedBody792_599 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody792_600 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody792_601 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 792 17

def RemovedBody792_602 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody792_603 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody792_604 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody792_605 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody792_606 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody792_607 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody792_608 : StackLang.HolProg 64 :=
.seq RemovedBody792_606 RemovedBody792_607

def RemovedBody792_609 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody792_610 : StackLang.HolProg 64 :=
.seq RemovedBody792_608 RemovedBody792_609

def RemovedBody792_611 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody792_612 : StackLang.HolProg 64 :=
.seq RemovedBody792_610 RemovedBody792_611

def RemovedBody792_613 : StackLang.HolProg 64 :=
.seq RemovedBody792_605 RemovedBody792_612

def RemovedBody792_614 : StackLang.HolProg 64 :=
.seq RemovedBody792_604 RemovedBody792_613

def RemovedBody792_615 : StackLang.HolProg 64 :=
.seq RemovedBody792_603 RemovedBody792_614

def RemovedBody792_616 : StackLang.HolProg 64 :=
.seq RemovedBody792_602 RemovedBody792_615

def RemovedBody792_617 : StackLang.HolProg 64 :=
.seq RemovedBody792_601 RemovedBody792_616

def RemovedBody792_618 : StackLang.HolProg 64 :=
.seq RemovedBody792_600 RemovedBody792_617

def RemovedBody792_619 : StackLang.HolProg 64 :=
.seq RemovedBody792_599 RemovedBody792_618

def RemovedBody792_620 : StackLang.HolProg 64 :=
.seq RemovedBody792_598 RemovedBody792_619

def RemovedBody792_621 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody792_622 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody792_623 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody792_624 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody792_625 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody792_626 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody792_627 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def RemovedBody792_628 : StackLang.HolProg 64 :=
.seq RemovedBody792_626 RemovedBody792_627

def RemovedBody792_629 : StackLang.HolProg 64 :=
.seq RemovedBody792_625 RemovedBody792_628

def RemovedBody792_630 : StackLang.HolProg 64 :=
.seq RemovedBody792_624 RemovedBody792_629

def RemovedBody792_631 : StackLang.HolProg 64 :=
.seq RemovedBody792_623 RemovedBody792_630

def RemovedBody792_632 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def RemovedBody792_633 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody792_634 : StackLang.HolProg 64 :=
.seq RemovedBody792_632 RemovedBody792_633

def RemovedBody792_635 : StackLang.HolProg 64 :=
.call (some (RemovedBody792_631, 0, 792, 16)) (Sum.inl 70) (some (RemovedBody792_634, 792, 17))

def RemovedBody792_636 : StackLang.HolProg 64 :=
.seq RemovedBody792_622 RemovedBody792_635

def RemovedBody792_637 : StackLang.HolProg 64 :=
.seq RemovedBody792_621 RemovedBody792_636

def RemovedBody792_638 : StackLang.HolProg 64 :=
.seq RemovedBody792_620 RemovedBody792_637

def RemovedBody792_639 : StackLang.HolProg 64 :=
.seq RemovedBody792_591 RemovedBody792_638

def RemovedBody792_640 : StackLang.HolProg 64 :=
.seq RemovedBody792_588 RemovedBody792_639

def RemovedBody792_641 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody792_642 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody792_643 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody792_644 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 144#64)))

def RemovedBody792_645 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody792_646 : StackLang.HolProg 64 :=
.seq RemovedBody792_644 RemovedBody792_645

def RemovedBody792_647 : StackLang.HolProg 64 :=
.seq RemovedBody792_643 RemovedBody792_646

def RemovedBody792_648 : StackLang.HolProg 64 :=
.seq RemovedBody792_642 RemovedBody792_647

def RemovedBody792_649 : StackLang.HolProg 64 :=
.seq RemovedBody792_641 RemovedBody792_648

def RemovedBody792_650 : StackLang.HolProg 64 :=
.seq RemovedBody792_640 RemovedBody792_649

def RemovedBody792_651 : StackLang.HolProg 64 :=
.seq RemovedBody792_587 RemovedBody792_650

def RemovedBody792_652 : StackLang.HolProg 64 :=
.seq RemovedBody792_586 RemovedBody792_651

def RemovedBody792_653 : StackLang.HolProg 64 :=
.seq RemovedBody792_585 RemovedBody792_652

def RemovedBody792_654 : StackLang.HolProg 64 :=
.seq RemovedBody792_532 RemovedBody792_653

def RemovedBody792_655 : StackLang.HolProg 64 :=
.seq RemovedBody792_531 RemovedBody792_654

def RemovedBody792_656 : StackLang.HolProg 64 :=
.seq RemovedBody792_530 RemovedBody792_655

def RemovedBody792_657 : StackLang.HolProg 64 :=
.seq RemovedBody792_465 RemovedBody792_656

def RemovedBody792_658 : StackLang.HolProg 64 :=
.seq RemovedBody792_464 RemovedBody792_657

def RemovedBody792_659 : StackLang.HolProg 64 :=
.seq RemovedBody792_463 RemovedBody792_658

def RemovedBody792_660 : StackLang.HolProg 64 :=
.seq RemovedBody792_462 RemovedBody792_659

def RemovedBody792_661 : StackLang.HolProg 64 :=
.seq RemovedBody792_461 RemovedBody792_660

def RemovedBody792_662 : StackLang.HolProg 64 :=
.seq RemovedBody792_364 RemovedBody792_661

def RemovedBody792_663 : StackLang.HolProg 64 :=
.seq RemovedBody792_361 RemovedBody792_662

def RemovedBody792_664 : StackLang.HolProg 64 :=
.seq RemovedBody792_360 RemovedBody792_663

def RemovedBody792_665 : StackLang.HolProg 64 :=
.seq RemovedBody792_359 RemovedBody792_664

def RemovedBody792_666 : StackLang.HolProg 64 :=
.seq RemovedBody792_358 RemovedBody792_665

def RemovedBody792_667 : StackLang.HolProg 64 :=
.seq RemovedBody792_357 RemovedBody792_666

def RemovedBody792_668 : StackLang.HolProg 64 :=
.seq RemovedBody792_356 RemovedBody792_667

def RemovedBody792_669 : StackLang.HolProg 64 :=
.seq RemovedBody792_211 RemovedBody792_668

def RemovedBody792_670 : StackLang.HolProg 64 :=
.seq RemovedBody792_208 RemovedBody792_669

def RemovedBody792_671 : StackLang.HolProg 64 :=
.seq RemovedBody792_207 RemovedBody792_670

def RemovedBody792_672 : StackLang.HolProg 64 :=
.seq RemovedBody792_206 RemovedBody792_671

def RemovedBody792_673 : StackLang.HolProg 64 :=
.seq RemovedBody792_205 RemovedBody792_672

def RemovedBody792_674 : StackLang.HolProg 64 :=
.seq RemovedBody792_148 RemovedBody792_673

def RemovedBody792_675 : StackLang.HolProg 64 :=
.seq RemovedBody792_147 RemovedBody792_674

def RemovedBody792_676 : StackLang.HolProg 64 :=
.seq RemovedBody792_146 RemovedBody792_675

def RemovedBody792_677 : StackLang.HolProg 64 :=
.seq RemovedBody792_145 RemovedBody792_676

def RemovedBody792_678 : StackLang.HolProg 64 :=
.seq RemovedBody792_144 RemovedBody792_677

def RemovedBody792_679 : StackLang.HolProg 64 :=
.seq RemovedBody792_91 RemovedBody792_678

def RemovedBody792_680 : StackLang.HolProg 64 :=
.seq RemovedBody792_90 RemovedBody792_679

def RemovedBody792_681 : StackLang.HolProg 64 :=
.seq RemovedBody792_89 RemovedBody792_680

def RemovedBody792_682 : StackLang.HolProg 64 :=
.seq RemovedBody792_88 RemovedBody792_681

def RemovedBody792_683 : StackLang.HolProg 64 :=
.seq RemovedBody792_35 RemovedBody792_682

def RemovedBody792_684 : StackLang.HolProg 64 :=
.seq RemovedBody792_6 RemovedBody792_683

def Removed792 : Nat × StackLang.HolProg 64 := (792, RemovedBody792_684)
theorem Removed792_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc792 = Removed792 := by
  kernel_rfl
#print axioms Removed792_eq
end InitECandidate.Proofs.BackendStages
