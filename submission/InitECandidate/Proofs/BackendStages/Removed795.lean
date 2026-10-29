import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc795
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody795_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 160#64)))

def RemovedBody795_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody795_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody795_3 : StackLang.HolProg 64 :=
.seq RemovedBody795_1 RemovedBody795_2

def RemovedBody795_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody795_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody795_3 RemovedBody795_4

def RemovedBody795_6 : StackLang.HolProg 64 :=
.seq RemovedBody795_0 RemovedBody795_5

def RemovedBody795_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def RemovedBody795_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def RemovedBody795_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def RemovedBody795_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def RemovedBody795_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody795_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody795_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody795_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody795_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody795_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody795_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody795_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody795_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody795_20 : StackLang.HolProg 64 :=
.seq RemovedBody795_18 RemovedBody795_19

def RemovedBody795_21 : StackLang.HolProg 64 :=
.seq RemovedBody795_17 RemovedBody795_20

def RemovedBody795_22 : StackLang.HolProg 64 :=
.seq RemovedBody795_16 RemovedBody795_21

def RemovedBody795_23 : StackLang.HolProg 64 :=
.seq RemovedBody795_15 RemovedBody795_22

def RemovedBody795_24 : StackLang.HolProg 64 :=
.seq RemovedBody795_14 RemovedBody795_23

def RemovedBody795_25 : StackLang.HolProg 64 :=
.seq RemovedBody795_13 RemovedBody795_24

def RemovedBody795_26 : StackLang.HolProg 64 :=
.seq RemovedBody795_12 RemovedBody795_25

def RemovedBody795_27 : StackLang.HolProg 64 :=
.seq RemovedBody795_11 RemovedBody795_26

def RemovedBody795_28 : StackLang.HolProg 64 :=
.seq RemovedBody795_10 RemovedBody795_27

def RemovedBody795_29 : StackLang.HolProg 64 :=
.seq RemovedBody795_9 RemovedBody795_28

def RemovedBody795_30 : StackLang.HolProg 64 :=
.seq RemovedBody795_8 RemovedBody795_29

def RemovedBody795_31 : StackLang.HolProg 64 :=
.seq RemovedBody795_7 RemovedBody795_30

def RemovedBody795_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody795_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3781#64)

def RemovedBody795_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody795_35 : StackLang.HolProg 64 :=
.seq RemovedBody795_33 RemovedBody795_34

def RemovedBody795_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody795_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody795_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody795_39 : StackLang.HolProg 64 :=
.seq RemovedBody795_37 RemovedBody795_38

def RemovedBody795_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody795_41 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody795_39 RemovedBody795_40

def RemovedBody795_42 : StackLang.HolProg 64 :=
.seq RemovedBody795_36 RemovedBody795_41

def RemovedBody795_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody795_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody795_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 795 3

def RemovedBody795_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody795_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody795_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody795_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody795_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody795_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody795_52 : StackLang.HolProg 64 :=
.seq RemovedBody795_50 RemovedBody795_51

def RemovedBody795_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody795_54 : StackLang.HolProg 64 :=
.seq RemovedBody795_52 RemovedBody795_53

def RemovedBody795_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody795_56 : StackLang.HolProg 64 :=
.seq RemovedBody795_54 RemovedBody795_55

def RemovedBody795_57 : StackLang.HolProg 64 :=
.seq RemovedBody795_49 RemovedBody795_56

def RemovedBody795_58 : StackLang.HolProg 64 :=
.seq RemovedBody795_48 RemovedBody795_57

def RemovedBody795_59 : StackLang.HolProg 64 :=
.seq RemovedBody795_47 RemovedBody795_58

def RemovedBody795_60 : StackLang.HolProg 64 :=
.seq RemovedBody795_46 RemovedBody795_59

def RemovedBody795_61 : StackLang.HolProg 64 :=
.seq RemovedBody795_45 RemovedBody795_60

def RemovedBody795_62 : StackLang.HolProg 64 :=
.seq RemovedBody795_44 RemovedBody795_61

def RemovedBody795_63 : StackLang.HolProg 64 :=
.seq RemovedBody795_43 RemovedBody795_62

def RemovedBody795_64 : StackLang.HolProg 64 :=
.seq RemovedBody795_42 RemovedBody795_63

def RemovedBody795_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody795_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody795_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody795_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody795_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody795_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody795_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody795_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def RemovedBody795_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def RemovedBody795_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody795_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody795_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody795_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody795_78 : StackLang.HolProg 64 :=
.seq RemovedBody795_76 RemovedBody795_77

def RemovedBody795_79 : StackLang.HolProg 64 :=
.seq RemovedBody795_75 RemovedBody795_78

def RemovedBody795_80 : StackLang.HolProg 64 :=
.seq RemovedBody795_74 RemovedBody795_79

def RemovedBody795_81 : StackLang.HolProg 64 :=
.seq RemovedBody795_73 RemovedBody795_80

def RemovedBody795_82 : StackLang.HolProg 64 :=
.seq RemovedBody795_72 RemovedBody795_81

def RemovedBody795_83 : StackLang.HolProg 64 :=
.seq RemovedBody795_71 RemovedBody795_82

def RemovedBody795_84 : StackLang.HolProg 64 :=
.seq RemovedBody795_70 RemovedBody795_83

def RemovedBody795_85 : StackLang.HolProg 64 :=
.seq RemovedBody795_69 RemovedBody795_84

def RemovedBody795_86 : StackLang.HolProg 64 :=
.seq RemovedBody795_68 RemovedBody795_85

def RemovedBody795_87 : StackLang.HolProg 64 :=
.seq RemovedBody795_67 RemovedBody795_86

def RemovedBody795_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def RemovedBody795_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def RemovedBody795_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody795_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody795_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody795_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody795_94 : StackLang.HolProg 64 :=
.seq RemovedBody795_92 RemovedBody795_93

def RemovedBody795_95 : StackLang.HolProg 64 :=
.seq RemovedBody795_91 RemovedBody795_94

def RemovedBody795_96 : StackLang.HolProg 64 :=
.seq RemovedBody795_90 RemovedBody795_95

def RemovedBody795_97 : StackLang.HolProg 64 :=
.seq RemovedBody795_89 RemovedBody795_96

def RemovedBody795_98 : StackLang.HolProg 64 :=
.seq RemovedBody795_88 RemovedBody795_97

def RemovedBody795_99 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody795_100 : StackLang.HolProg 64 :=
.seq RemovedBody795_98 RemovedBody795_99

def RemovedBody795_101 : StackLang.HolProg 64 :=
.call (some (RemovedBody795_87, 0, 795, 2)) (Sum.inl 714) (some (RemovedBody795_100, 795, 3))

def RemovedBody795_102 : StackLang.HolProg 64 :=
.seq RemovedBody795_66 RemovedBody795_101

def RemovedBody795_103 : StackLang.HolProg 64 :=
.seq RemovedBody795_65 RemovedBody795_102

def RemovedBody795_104 : StackLang.HolProg 64 :=
.seq RemovedBody795_64 RemovedBody795_103

def RemovedBody795_105 : StackLang.HolProg 64 :=
.seq RemovedBody795_35 RemovedBody795_104

def RemovedBody795_106 : StackLang.HolProg 64 :=
.seq RemovedBody795_32 RemovedBody795_105

def RemovedBody795_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody795_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def RemovedBody795_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody795_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody795_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody795_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def RemovedBody795_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody795_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def RemovedBody795_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody795_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def RemovedBody795_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def RemovedBody795_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def RemovedBody795_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def RemovedBody795_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody795_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody795_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody795_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody795_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody795_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody795_126 : StackLang.HolProg 64 :=
.seq RemovedBody795_124 RemovedBody795_125

def RemovedBody795_127 : StackLang.HolProg 64 :=
.seq RemovedBody795_123 RemovedBody795_126

def RemovedBody795_128 : StackLang.HolProg 64 :=
.seq RemovedBody795_122 RemovedBody795_127

def RemovedBody795_129 : StackLang.HolProg 64 :=
.seq RemovedBody795_121 RemovedBody795_128

def RemovedBody795_130 : StackLang.HolProg 64 :=
.seq RemovedBody795_120 RemovedBody795_129

def RemovedBody795_131 : StackLang.HolProg 64 :=
.seq RemovedBody795_119 RemovedBody795_130

def RemovedBody795_132 : StackLang.HolProg 64 :=
.seq RemovedBody795_118 RemovedBody795_131

def RemovedBody795_133 : StackLang.HolProg 64 :=
.seq RemovedBody795_117 RemovedBody795_132

def RemovedBody795_134 : StackLang.HolProg 64 :=
.seq RemovedBody795_116 RemovedBody795_133

def RemovedBody795_135 : StackLang.HolProg 64 :=
.seq RemovedBody795_115 RemovedBody795_134

def RemovedBody795_136 : StackLang.HolProg 64 :=
.seq RemovedBody795_114 RemovedBody795_135

def RemovedBody795_137 : StackLang.HolProg 64 :=
.seq RemovedBody795_113 RemovedBody795_136

def RemovedBody795_138 : StackLang.HolProg 64 :=
.seq RemovedBody795_112 RemovedBody795_137

def RemovedBody795_139 : StackLang.HolProg 64 :=
.seq RemovedBody795_111 RemovedBody795_138

def RemovedBody795_140 : StackLang.HolProg 64 :=
.seq RemovedBody795_110 RemovedBody795_139

def RemovedBody795_141 : StackLang.HolProg 64 :=
.seq RemovedBody795_109 RemovedBody795_140

def RemovedBody795_142 : StackLang.HolProg 64 :=
.seq RemovedBody795_108 RemovedBody795_141

def RemovedBody795_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody795_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3782#64)

def RemovedBody795_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody795_146 : StackLang.HolProg 64 :=
.seq RemovedBody795_144 RemovedBody795_145

def RemovedBody795_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody795_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody795_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody795_150 : StackLang.HolProg 64 :=
.seq RemovedBody795_148 RemovedBody795_149

def RemovedBody795_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody795_152 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody795_150 RemovedBody795_151

def RemovedBody795_153 : StackLang.HolProg 64 :=
.seq RemovedBody795_147 RemovedBody795_152

def RemovedBody795_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody795_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody795_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 795 5

def RemovedBody795_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody795_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody795_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody795_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody795_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody795_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody795_163 : StackLang.HolProg 64 :=
.seq RemovedBody795_161 RemovedBody795_162

def RemovedBody795_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody795_165 : StackLang.HolProg 64 :=
.seq RemovedBody795_163 RemovedBody795_164

def RemovedBody795_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody795_167 : StackLang.HolProg 64 :=
.seq RemovedBody795_165 RemovedBody795_166

def RemovedBody795_168 : StackLang.HolProg 64 :=
.seq RemovedBody795_160 RemovedBody795_167

def RemovedBody795_169 : StackLang.HolProg 64 :=
.seq RemovedBody795_159 RemovedBody795_168

def RemovedBody795_170 : StackLang.HolProg 64 :=
.seq RemovedBody795_158 RemovedBody795_169

def RemovedBody795_171 : StackLang.HolProg 64 :=
.seq RemovedBody795_157 RemovedBody795_170

def RemovedBody795_172 : StackLang.HolProg 64 :=
.seq RemovedBody795_156 RemovedBody795_171

def RemovedBody795_173 : StackLang.HolProg 64 :=
.seq RemovedBody795_155 RemovedBody795_172

def RemovedBody795_174 : StackLang.HolProg 64 :=
.seq RemovedBody795_154 RemovedBody795_173

def RemovedBody795_175 : StackLang.HolProg 64 :=
.seq RemovedBody795_153 RemovedBody795_174

def RemovedBody795_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody795_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody795_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody795_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody795_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody795_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody795_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody795_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody795_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody795_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody795_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody795_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody795_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def RemovedBody795_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody795_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody795_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody795_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody795_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody795_194 : StackLang.HolProg 64 :=
.seq RemovedBody795_192 RemovedBody795_193

def RemovedBody795_195 : StackLang.HolProg 64 :=
.seq RemovedBody795_191 RemovedBody795_194

def RemovedBody795_196 : StackLang.HolProg 64 :=
.seq RemovedBody795_190 RemovedBody795_195

def RemovedBody795_197 : StackLang.HolProg 64 :=
.seq RemovedBody795_189 RemovedBody795_196

def RemovedBody795_198 : StackLang.HolProg 64 :=
.seq RemovedBody795_188 RemovedBody795_197

def RemovedBody795_199 : StackLang.HolProg 64 :=
.seq RemovedBody795_187 RemovedBody795_198

def RemovedBody795_200 : StackLang.HolProg 64 :=
.seq RemovedBody795_186 RemovedBody795_199

def RemovedBody795_201 : StackLang.HolProg 64 :=
.seq RemovedBody795_185 RemovedBody795_200

def RemovedBody795_202 : StackLang.HolProg 64 :=
.seq RemovedBody795_184 RemovedBody795_201

def RemovedBody795_203 : StackLang.HolProg 64 :=
.seq RemovedBody795_183 RemovedBody795_202

def RemovedBody795_204 : StackLang.HolProg 64 :=
.seq RemovedBody795_182 RemovedBody795_203

def RemovedBody795_205 : StackLang.HolProg 64 :=
.seq RemovedBody795_181 RemovedBody795_204

def RemovedBody795_206 : StackLang.HolProg 64 :=
.seq RemovedBody795_180 RemovedBody795_205

def RemovedBody795_207 : StackLang.HolProg 64 :=
.seq RemovedBody795_179 RemovedBody795_206

def RemovedBody795_208 : StackLang.HolProg 64 :=
.seq RemovedBody795_178 RemovedBody795_207

def RemovedBody795_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def RemovedBody795_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody795_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody795_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody795_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody795_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody795_215 : StackLang.HolProg 64 :=
.seq RemovedBody795_213 RemovedBody795_214

def RemovedBody795_216 : StackLang.HolProg 64 :=
.seq RemovedBody795_212 RemovedBody795_215

def RemovedBody795_217 : StackLang.HolProg 64 :=
.seq RemovedBody795_211 RemovedBody795_216

def RemovedBody795_218 : StackLang.HolProg 64 :=
.seq RemovedBody795_210 RemovedBody795_217

def RemovedBody795_219 : StackLang.HolProg 64 :=
.seq RemovedBody795_209 RemovedBody795_218

def RemovedBody795_220 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody795_221 : StackLang.HolProg 64 :=
.seq RemovedBody795_219 RemovedBody795_220

def RemovedBody795_222 : StackLang.HolProg 64 :=
.call (some (RemovedBody795_208, 0, 795, 4)) (Sum.inl 715) (some (RemovedBody795_221, 795, 5))

def RemovedBody795_223 : StackLang.HolProg 64 :=
.seq RemovedBody795_177 RemovedBody795_222

def RemovedBody795_224 : StackLang.HolProg 64 :=
.seq RemovedBody795_176 RemovedBody795_223

def RemovedBody795_225 : StackLang.HolProg 64 :=
.seq RemovedBody795_175 RemovedBody795_224

def RemovedBody795_226 : StackLang.HolProg 64 :=
.seq RemovedBody795_146 RemovedBody795_225

def RemovedBody795_227 : StackLang.HolProg 64 :=
.seq RemovedBody795_143 RemovedBody795_226

def RemovedBody795_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody795_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody795_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def RemovedBody795_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody795_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody795_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody795_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody795_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody795_236 : StackLang.HolProg 64 :=
.seq RemovedBody795_234 RemovedBody795_235

def RemovedBody795_237 : StackLang.HolProg 64 :=
.seq RemovedBody795_233 RemovedBody795_236

def RemovedBody795_238 : StackLang.HolProg 64 :=
.seq RemovedBody795_232 RemovedBody795_237

def RemovedBody795_239 : StackLang.HolProg 64 :=
.seq RemovedBody795_231 RemovedBody795_238

def RemovedBody795_240 : StackLang.HolProg 64 :=
.seq RemovedBody795_230 RemovedBody795_239

def RemovedBody795_241 : StackLang.HolProg 64 :=
.seq RemovedBody795_229 RemovedBody795_240

def RemovedBody795_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody795_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3783#64)

def RemovedBody795_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody795_245 : StackLang.HolProg 64 :=
.seq RemovedBody795_243 RemovedBody795_244

def RemovedBody795_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody795_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody795_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody795_249 : StackLang.HolProg 64 :=
.seq RemovedBody795_247 RemovedBody795_248

def RemovedBody795_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody795_251 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody795_249 RemovedBody795_250

def RemovedBody795_252 : StackLang.HolProg 64 :=
.seq RemovedBody795_246 RemovedBody795_251

def RemovedBody795_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody795_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody795_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 795 7

def RemovedBody795_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody795_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody795_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody795_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody795_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody795_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody795_262 : StackLang.HolProg 64 :=
.seq RemovedBody795_260 RemovedBody795_261

def RemovedBody795_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody795_264 : StackLang.HolProg 64 :=
.seq RemovedBody795_262 RemovedBody795_263

def RemovedBody795_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody795_266 : StackLang.HolProg 64 :=
.seq RemovedBody795_264 RemovedBody795_265

def RemovedBody795_267 : StackLang.HolProg 64 :=
.seq RemovedBody795_259 RemovedBody795_266

def RemovedBody795_268 : StackLang.HolProg 64 :=
.seq RemovedBody795_258 RemovedBody795_267

def RemovedBody795_269 : StackLang.HolProg 64 :=
.seq RemovedBody795_257 RemovedBody795_268

def RemovedBody795_270 : StackLang.HolProg 64 :=
.seq RemovedBody795_256 RemovedBody795_269

def RemovedBody795_271 : StackLang.HolProg 64 :=
.seq RemovedBody795_255 RemovedBody795_270

def RemovedBody795_272 : StackLang.HolProg 64 :=
.seq RemovedBody795_254 RemovedBody795_271

def RemovedBody795_273 : StackLang.HolProg 64 :=
.seq RemovedBody795_253 RemovedBody795_272

def RemovedBody795_274 : StackLang.HolProg 64 :=
.seq RemovedBody795_252 RemovedBody795_273

def RemovedBody795_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody795_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody795_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody795_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody795_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody795_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody795_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody795_282 : StackLang.HolProg 64 :=
.seq RemovedBody795_280 RemovedBody795_281

def RemovedBody795_283 : StackLang.HolProg 64 :=
.seq RemovedBody795_279 RemovedBody795_282

def RemovedBody795_284 : StackLang.HolProg 64 :=
.seq RemovedBody795_278 RemovedBody795_283

def RemovedBody795_285 : StackLang.HolProg 64 :=
.seq RemovedBody795_277 RemovedBody795_284

def RemovedBody795_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody795_287 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody795_288 : StackLang.HolProg 64 :=
.seq RemovedBody795_286 RemovedBody795_287

def RemovedBody795_289 : StackLang.HolProg 64 :=
.call (some (RemovedBody795_285, 0, 795, 6)) (Sum.inl 714) (some (RemovedBody795_288, 795, 7))

def RemovedBody795_290 : StackLang.HolProg 64 :=
.seq RemovedBody795_276 RemovedBody795_289

def RemovedBody795_291 : StackLang.HolProg 64 :=
.seq RemovedBody795_275 RemovedBody795_290

def RemovedBody795_292 : StackLang.HolProg 64 :=
.seq RemovedBody795_274 RemovedBody795_291

def RemovedBody795_293 : StackLang.HolProg 64 :=
.seq RemovedBody795_245 RemovedBody795_292

def RemovedBody795_294 : StackLang.HolProg 64 :=
.seq RemovedBody795_242 RemovedBody795_293

def RemovedBody795_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody795_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody795_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody795_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody795_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody795_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551224#64))

def RemovedBody795_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1480#64)))

def RemovedBody795_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 6#64)

def RemovedBody795_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody795_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody795_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3784#64)

def RemovedBody795_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody795_307 : StackLang.HolProg 64 :=
.seq RemovedBody795_305 RemovedBody795_306

def RemovedBody795_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody795_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody795_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody795_311 : StackLang.HolProg 64 :=
.seq RemovedBody795_309 RemovedBody795_310

def RemovedBody795_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody795_313 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody795_311 RemovedBody795_312

def RemovedBody795_314 : StackLang.HolProg 64 :=
.seq RemovedBody795_308 RemovedBody795_313

def RemovedBody795_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody795_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody795_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 795 9

def RemovedBody795_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody795_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody795_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody795_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody795_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody795_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody795_324 : StackLang.HolProg 64 :=
.seq RemovedBody795_322 RemovedBody795_323

def RemovedBody795_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody795_326 : StackLang.HolProg 64 :=
.seq RemovedBody795_324 RemovedBody795_325

def RemovedBody795_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody795_328 : StackLang.HolProg 64 :=
.seq RemovedBody795_326 RemovedBody795_327

def RemovedBody795_329 : StackLang.HolProg 64 :=
.seq RemovedBody795_321 RemovedBody795_328

def RemovedBody795_330 : StackLang.HolProg 64 :=
.seq RemovedBody795_320 RemovedBody795_329

def RemovedBody795_331 : StackLang.HolProg 64 :=
.seq RemovedBody795_319 RemovedBody795_330

def RemovedBody795_332 : StackLang.HolProg 64 :=
.seq RemovedBody795_318 RemovedBody795_331

def RemovedBody795_333 : StackLang.HolProg 64 :=
.seq RemovedBody795_317 RemovedBody795_332

def RemovedBody795_334 : StackLang.HolProg 64 :=
.seq RemovedBody795_316 RemovedBody795_333

def RemovedBody795_335 : StackLang.HolProg 64 :=
.seq RemovedBody795_315 RemovedBody795_334

def RemovedBody795_336 : StackLang.HolProg 64 :=
.seq RemovedBody795_314 RemovedBody795_335

def RemovedBody795_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody795_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody795_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody795_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody795_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody795_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody795_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody795_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody795_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody795_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody795_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody795_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody795_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def RemovedBody795_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def RemovedBody795_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def RemovedBody795_352 : StackLang.HolProg 64 :=
.seq RemovedBody795_350 RemovedBody795_351

def RemovedBody795_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody795_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody795_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def RemovedBody795_356 : StackLang.HolProg 64 :=
.seq RemovedBody795_354 RemovedBody795_355

def RemovedBody795_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody795_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody795_359 : StackLang.HolProg 64 :=
.seq RemovedBody795_357 RemovedBody795_358

def RemovedBody795_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody795_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody795_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody795_363 : StackLang.HolProg 64 :=
.seq RemovedBody795_361 RemovedBody795_362

def RemovedBody795_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody795_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody795_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody795_367 : StackLang.HolProg 64 :=
.seq RemovedBody795_365 RemovedBody795_366

def RemovedBody795_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody795_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody795_370 : StackLang.HolProg 64 :=
.seq RemovedBody795_368 RemovedBody795_369

def RemovedBody795_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody795_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody795_373 : StackLang.HolProg 64 :=
.seq RemovedBody795_371 RemovedBody795_372

def RemovedBody795_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody795_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody795_376 : StackLang.HolProg 64 :=
.seq RemovedBody795_374 RemovedBody795_375

def RemovedBody795_377 : StackLang.HolProg 64 :=
.seq RemovedBody795_373 RemovedBody795_376

def RemovedBody795_378 : StackLang.HolProg 64 :=
.seq RemovedBody795_370 RemovedBody795_377

def RemovedBody795_379 : StackLang.HolProg 64 :=
.seq RemovedBody795_367 RemovedBody795_378

def RemovedBody795_380 : StackLang.HolProg 64 :=
.seq RemovedBody795_364 RemovedBody795_379

def RemovedBody795_381 : StackLang.HolProg 64 :=
.seq RemovedBody795_363 RemovedBody795_380

def RemovedBody795_382 : StackLang.HolProg 64 :=
.seq RemovedBody795_360 RemovedBody795_381

def RemovedBody795_383 : StackLang.HolProg 64 :=
.seq RemovedBody795_359 RemovedBody795_382

def RemovedBody795_384 : StackLang.HolProg 64 :=
.seq RemovedBody795_356 RemovedBody795_383

def RemovedBody795_385 : StackLang.HolProg 64 :=
.seq RemovedBody795_353 RemovedBody795_384

def RemovedBody795_386 : StackLang.HolProg 64 :=
.seq RemovedBody795_352 RemovedBody795_385

def RemovedBody795_387 : StackLang.HolProg 64 :=
.seq RemovedBody795_349 RemovedBody795_386

def RemovedBody795_388 : StackLang.HolProg 64 :=
.seq RemovedBody795_348 RemovedBody795_387

def RemovedBody795_389 : StackLang.HolProg 64 :=
.seq RemovedBody795_347 RemovedBody795_388

def RemovedBody795_390 : StackLang.HolProg 64 :=
.seq RemovedBody795_346 RemovedBody795_389

def RemovedBody795_391 : StackLang.HolProg 64 :=
.seq RemovedBody795_345 RemovedBody795_390

def RemovedBody795_392 : StackLang.HolProg 64 :=
.seq RemovedBody795_344 RemovedBody795_391

def RemovedBody795_393 : StackLang.HolProg 64 :=
.seq RemovedBody795_343 RemovedBody795_392

def RemovedBody795_394 : StackLang.HolProg 64 :=
.seq RemovedBody795_342 RemovedBody795_393

def RemovedBody795_395 : StackLang.HolProg 64 :=
.seq RemovedBody795_341 RemovedBody795_394

def RemovedBody795_396 : StackLang.HolProg 64 :=
.seq RemovedBody795_340 RemovedBody795_395

def RemovedBody795_397 : StackLang.HolProg 64 :=
.seq RemovedBody795_339 RemovedBody795_396

def RemovedBody795_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def RemovedBody795_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def RemovedBody795_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def RemovedBody795_401 : StackLang.HolProg 64 :=
.seq RemovedBody795_399 RemovedBody795_400

def RemovedBody795_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody795_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody795_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def RemovedBody795_405 : StackLang.HolProg 64 :=
.seq RemovedBody795_403 RemovedBody795_404

def RemovedBody795_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody795_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody795_408 : StackLang.HolProg 64 :=
.seq RemovedBody795_406 RemovedBody795_407

def RemovedBody795_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody795_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody795_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody795_412 : StackLang.HolProg 64 :=
.seq RemovedBody795_410 RemovedBody795_411

def RemovedBody795_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody795_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody795_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody795_416 : StackLang.HolProg 64 :=
.seq RemovedBody795_414 RemovedBody795_415

def RemovedBody795_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody795_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody795_419 : StackLang.HolProg 64 :=
.seq RemovedBody795_417 RemovedBody795_418

def RemovedBody795_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody795_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody795_422 : StackLang.HolProg 64 :=
.seq RemovedBody795_420 RemovedBody795_421

def RemovedBody795_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody795_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody795_425 : StackLang.HolProg 64 :=
.seq RemovedBody795_423 RemovedBody795_424

def RemovedBody795_426 : StackLang.HolProg 64 :=
.seq RemovedBody795_422 RemovedBody795_425

def RemovedBody795_427 : StackLang.HolProg 64 :=
.seq RemovedBody795_419 RemovedBody795_426

def RemovedBody795_428 : StackLang.HolProg 64 :=
.seq RemovedBody795_416 RemovedBody795_427

def RemovedBody795_429 : StackLang.HolProg 64 :=
.seq RemovedBody795_413 RemovedBody795_428

def RemovedBody795_430 : StackLang.HolProg 64 :=
.seq RemovedBody795_412 RemovedBody795_429

def RemovedBody795_431 : StackLang.HolProg 64 :=
.seq RemovedBody795_409 RemovedBody795_430

def RemovedBody795_432 : StackLang.HolProg 64 :=
.seq RemovedBody795_408 RemovedBody795_431

def RemovedBody795_433 : StackLang.HolProg 64 :=
.seq RemovedBody795_405 RemovedBody795_432

def RemovedBody795_434 : StackLang.HolProg 64 :=
.seq RemovedBody795_402 RemovedBody795_433

def RemovedBody795_435 : StackLang.HolProg 64 :=
.seq RemovedBody795_401 RemovedBody795_434

def RemovedBody795_436 : StackLang.HolProg 64 :=
.seq RemovedBody795_398 RemovedBody795_435

def RemovedBody795_437 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody795_438 : StackLang.HolProg 64 :=
.seq RemovedBody795_436 RemovedBody795_437

def RemovedBody795_439 : StackLang.HolProg 64 :=
.call (some (RemovedBody795_397, 0, 795, 8)) (Sum.inl 722) (some (RemovedBody795_438, 795, 9))

def RemovedBody795_440 : StackLang.HolProg 64 :=
.seq RemovedBody795_338 RemovedBody795_439

def RemovedBody795_441 : StackLang.HolProg 64 :=
.seq RemovedBody795_337 RemovedBody795_440

def RemovedBody795_442 : StackLang.HolProg 64 :=
.seq RemovedBody795_336 RemovedBody795_441

def RemovedBody795_443 : StackLang.HolProg 64 :=
.seq RemovedBody795_307 RemovedBody795_442

def RemovedBody795_444 : StackLang.HolProg 64 :=
.seq RemovedBody795_304 RemovedBody795_443

def RemovedBody795_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody795_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody795_447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody795_448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3785#64)

def RemovedBody795_449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody795_450 : StackLang.HolProg 64 :=
.seq RemovedBody795_448 RemovedBody795_449

def RemovedBody795_451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody795_452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody795_453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody795_454 : StackLang.HolProg 64 :=
.seq RemovedBody795_452 RemovedBody795_453

def RemovedBody795_455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody795_456 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody795_454 RemovedBody795_455

def RemovedBody795_457 : StackLang.HolProg 64 :=
.seq RemovedBody795_451 RemovedBody795_456

def RemovedBody795_458 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody795_459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody795_460 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 795 11

def RemovedBody795_461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody795_462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody795_463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody795_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody795_465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody795_466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody795_467 : StackLang.HolProg 64 :=
.seq RemovedBody795_465 RemovedBody795_466

def RemovedBody795_468 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody795_469 : StackLang.HolProg 64 :=
.seq RemovedBody795_467 RemovedBody795_468

def RemovedBody795_470 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody795_471 : StackLang.HolProg 64 :=
.seq RemovedBody795_469 RemovedBody795_470

def RemovedBody795_472 : StackLang.HolProg 64 :=
.seq RemovedBody795_464 RemovedBody795_471

def RemovedBody795_473 : StackLang.HolProg 64 :=
.seq RemovedBody795_463 RemovedBody795_472

def RemovedBody795_474 : StackLang.HolProg 64 :=
.seq RemovedBody795_462 RemovedBody795_473

def RemovedBody795_475 : StackLang.HolProg 64 :=
.seq RemovedBody795_461 RemovedBody795_474

def RemovedBody795_476 : StackLang.HolProg 64 :=
.seq RemovedBody795_460 RemovedBody795_475

def RemovedBody795_477 : StackLang.HolProg 64 :=
.seq RemovedBody795_459 RemovedBody795_476

def RemovedBody795_478 : StackLang.HolProg 64 :=
.seq RemovedBody795_458 RemovedBody795_477

def RemovedBody795_479 : StackLang.HolProg 64 :=
.seq RemovedBody795_457 RemovedBody795_478

def RemovedBody795_480 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody795_481 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody795_482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody795_483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody795_484 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody795_485 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody795_486 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody795_487 : StackLang.HolProg 64 :=
.seq RemovedBody795_485 RemovedBody795_486

def RemovedBody795_488 : StackLang.HolProg 64 :=
.seq RemovedBody795_484 RemovedBody795_487

def RemovedBody795_489 : StackLang.HolProg 64 :=
.seq RemovedBody795_483 RemovedBody795_488

def RemovedBody795_490 : StackLang.HolProg 64 :=
.seq RemovedBody795_482 RemovedBody795_489

def RemovedBody795_491 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody795_492 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody795_493 : StackLang.HolProg 64 :=
.seq RemovedBody795_491 RemovedBody795_492

def RemovedBody795_494 : StackLang.HolProg 64 :=
.call (some (RemovedBody795_490, 0, 795, 10)) (Sum.inl 714) (some (RemovedBody795_493, 795, 11))

def RemovedBody795_495 : StackLang.HolProg 64 :=
.seq RemovedBody795_481 RemovedBody795_494

def RemovedBody795_496 : StackLang.HolProg 64 :=
.seq RemovedBody795_480 RemovedBody795_495

def RemovedBody795_497 : StackLang.HolProg 64 :=
.seq RemovedBody795_479 RemovedBody795_496

def RemovedBody795_498 : StackLang.HolProg 64 :=
.seq RemovedBody795_450 RemovedBody795_497

def RemovedBody795_499 : StackLang.HolProg 64 :=
.seq RemovedBody795_447 RemovedBody795_498

def RemovedBody795_500 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody795_501 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody795_502 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody795_503 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody795_504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody795_505 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody795_506 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody795_507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody795_508 : StackLang.HolProg 64 :=
.seq RemovedBody795_506 RemovedBody795_507

def RemovedBody795_509 : StackLang.HolProg 64 :=
.seq RemovedBody795_505 RemovedBody795_508

def RemovedBody795_510 : StackLang.HolProg 64 :=
.seq RemovedBody795_504 RemovedBody795_509

def RemovedBody795_511 : StackLang.HolProg 64 :=
.seq RemovedBody795_503 RemovedBody795_510

def RemovedBody795_512 : StackLang.HolProg 64 :=
.seq RemovedBody795_502 RemovedBody795_511

def RemovedBody795_513 : StackLang.HolProg 64 :=
.seq RemovedBody795_501 RemovedBody795_512

def RemovedBody795_514 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody795_515 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3786#64)

def RemovedBody795_516 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody795_517 : StackLang.HolProg 64 :=
.seq RemovedBody795_515 RemovedBody795_516

def RemovedBody795_518 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody795_519 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody795_520 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody795_521 : StackLang.HolProg 64 :=
.seq RemovedBody795_519 RemovedBody795_520

def RemovedBody795_522 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody795_523 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody795_521 RemovedBody795_522

def RemovedBody795_524 : StackLang.HolProg 64 :=
.seq RemovedBody795_518 RemovedBody795_523

def RemovedBody795_525 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody795_526 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody795_527 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 795 13

def RemovedBody795_528 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody795_529 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody795_530 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody795_531 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody795_532 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody795_533 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody795_534 : StackLang.HolProg 64 :=
.seq RemovedBody795_532 RemovedBody795_533

def RemovedBody795_535 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody795_536 : StackLang.HolProg 64 :=
.seq RemovedBody795_534 RemovedBody795_535

def RemovedBody795_537 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody795_538 : StackLang.HolProg 64 :=
.seq RemovedBody795_536 RemovedBody795_537

def RemovedBody795_539 : StackLang.HolProg 64 :=
.seq RemovedBody795_531 RemovedBody795_538

def RemovedBody795_540 : StackLang.HolProg 64 :=
.seq RemovedBody795_530 RemovedBody795_539

def RemovedBody795_541 : StackLang.HolProg 64 :=
.seq RemovedBody795_529 RemovedBody795_540

def RemovedBody795_542 : StackLang.HolProg 64 :=
.seq RemovedBody795_528 RemovedBody795_541

def RemovedBody795_543 : StackLang.HolProg 64 :=
.seq RemovedBody795_527 RemovedBody795_542

def RemovedBody795_544 : StackLang.HolProg 64 :=
.seq RemovedBody795_526 RemovedBody795_543

def RemovedBody795_545 : StackLang.HolProg 64 :=
.seq RemovedBody795_525 RemovedBody795_544

def RemovedBody795_546 : StackLang.HolProg 64 :=
.seq RemovedBody795_524 RemovedBody795_545

def RemovedBody795_547 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody795_548 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody795_549 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody795_550 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody795_551 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody795_552 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody795_553 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody795_554 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def RemovedBody795_555 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def RemovedBody795_556 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def RemovedBody795_557 : StackLang.HolProg 64 :=
.seq RemovedBody795_555 RemovedBody795_556

def RemovedBody795_558 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def RemovedBody795_559 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody795_560 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def RemovedBody795_561 : StackLang.HolProg 64 :=
.seq RemovedBody795_559 RemovedBody795_560

def RemovedBody795_562 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody795_563 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def RemovedBody795_564 : StackLang.HolProg 64 :=
.seq RemovedBody795_562 RemovedBody795_563

def RemovedBody795_565 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody795_566 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody795_567 : StackLang.HolProg 64 :=
.seq RemovedBody795_565 RemovedBody795_566

def RemovedBody795_568 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody795_569 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody795_570 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody795_571 : StackLang.HolProg 64 :=
.seq RemovedBody795_569 RemovedBody795_570

def RemovedBody795_572 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody795_573 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody795_574 : StackLang.HolProg 64 :=
.seq RemovedBody795_572 RemovedBody795_573

def RemovedBody795_575 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody795_576 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody795_577 : StackLang.HolProg 64 :=
.seq RemovedBody795_575 RemovedBody795_576

def RemovedBody795_578 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody795_579 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody795_580 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody795_581 : StackLang.HolProg 64 :=
.seq RemovedBody795_579 RemovedBody795_580

def RemovedBody795_582 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody795_583 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody795_584 : StackLang.HolProg 64 :=
.seq RemovedBody795_582 RemovedBody795_583

def RemovedBody795_585 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody795_586 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody795_587 : StackLang.HolProg 64 :=
.seq RemovedBody795_585 RemovedBody795_586

def RemovedBody795_588 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody795_589 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody795_590 : StackLang.HolProg 64 :=
.seq RemovedBody795_588 RemovedBody795_589

def RemovedBody795_591 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody795_592 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody795_593 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody795_594 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody795_595 : StackLang.HolProg 64 :=
.seq RemovedBody795_593 RemovedBody795_594

def RemovedBody795_596 : StackLang.HolProg 64 :=
.seq RemovedBody795_592 RemovedBody795_595

def RemovedBody795_597 : StackLang.HolProg 64 :=
.seq RemovedBody795_591 RemovedBody795_596

def RemovedBody795_598 : StackLang.HolProg 64 :=
.seq RemovedBody795_590 RemovedBody795_597

def RemovedBody795_599 : StackLang.HolProg 64 :=
.seq RemovedBody795_587 RemovedBody795_598

def RemovedBody795_600 : StackLang.HolProg 64 :=
.seq RemovedBody795_584 RemovedBody795_599

def RemovedBody795_601 : StackLang.HolProg 64 :=
.seq RemovedBody795_581 RemovedBody795_600

def RemovedBody795_602 : StackLang.HolProg 64 :=
.seq RemovedBody795_578 RemovedBody795_601

def RemovedBody795_603 : StackLang.HolProg 64 :=
.seq RemovedBody795_577 RemovedBody795_602

def RemovedBody795_604 : StackLang.HolProg 64 :=
.seq RemovedBody795_574 RemovedBody795_603

def RemovedBody795_605 : StackLang.HolProg 64 :=
.seq RemovedBody795_571 RemovedBody795_604

def RemovedBody795_606 : StackLang.HolProg 64 :=
.seq RemovedBody795_568 RemovedBody795_605

def RemovedBody795_607 : StackLang.HolProg 64 :=
.seq RemovedBody795_567 RemovedBody795_606

def RemovedBody795_608 : StackLang.HolProg 64 :=
.seq RemovedBody795_564 RemovedBody795_607

def RemovedBody795_609 : StackLang.HolProg 64 :=
.seq RemovedBody795_561 RemovedBody795_608

def RemovedBody795_610 : StackLang.HolProg 64 :=
.seq RemovedBody795_558 RemovedBody795_609

def RemovedBody795_611 : StackLang.HolProg 64 :=
.seq RemovedBody795_557 RemovedBody795_610

def RemovedBody795_612 : StackLang.HolProg 64 :=
.seq RemovedBody795_554 RemovedBody795_611

def RemovedBody795_613 : StackLang.HolProg 64 :=
.seq RemovedBody795_553 RemovedBody795_612

def RemovedBody795_614 : StackLang.HolProg 64 :=
.seq RemovedBody795_552 RemovedBody795_613

def RemovedBody795_615 : StackLang.HolProg 64 :=
.seq RemovedBody795_551 RemovedBody795_614

def RemovedBody795_616 : StackLang.HolProg 64 :=
.seq RemovedBody795_550 RemovedBody795_615

def RemovedBody795_617 : StackLang.HolProg 64 :=
.seq RemovedBody795_549 RemovedBody795_616

def RemovedBody795_618 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def RemovedBody795_619 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def RemovedBody795_620 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def RemovedBody795_621 : StackLang.HolProg 64 :=
.seq RemovedBody795_619 RemovedBody795_620

def RemovedBody795_622 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def RemovedBody795_623 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody795_624 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def RemovedBody795_625 : StackLang.HolProg 64 :=
.seq RemovedBody795_623 RemovedBody795_624

def RemovedBody795_626 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody795_627 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def RemovedBody795_628 : StackLang.HolProg 64 :=
.seq RemovedBody795_626 RemovedBody795_627

def RemovedBody795_629 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody795_630 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody795_631 : StackLang.HolProg 64 :=
.seq RemovedBody795_629 RemovedBody795_630

def RemovedBody795_632 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody795_633 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody795_634 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody795_635 : StackLang.HolProg 64 :=
.seq RemovedBody795_633 RemovedBody795_634

def RemovedBody795_636 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody795_637 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody795_638 : StackLang.HolProg 64 :=
.seq RemovedBody795_636 RemovedBody795_637

def RemovedBody795_639 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody795_640 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody795_641 : StackLang.HolProg 64 :=
.seq RemovedBody795_639 RemovedBody795_640

def RemovedBody795_642 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody795_643 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody795_644 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody795_645 : StackLang.HolProg 64 :=
.seq RemovedBody795_643 RemovedBody795_644

def RemovedBody795_646 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody795_647 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody795_648 : StackLang.HolProg 64 :=
.seq RemovedBody795_646 RemovedBody795_647

def RemovedBody795_649 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody795_650 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody795_651 : StackLang.HolProg 64 :=
.seq RemovedBody795_649 RemovedBody795_650

def RemovedBody795_652 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody795_653 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody795_654 : StackLang.HolProg 64 :=
.seq RemovedBody795_652 RemovedBody795_653

def RemovedBody795_655 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody795_656 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody795_657 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody795_658 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody795_659 : StackLang.HolProg 64 :=
.seq RemovedBody795_657 RemovedBody795_658

def RemovedBody795_660 : StackLang.HolProg 64 :=
.seq RemovedBody795_656 RemovedBody795_659

def RemovedBody795_661 : StackLang.HolProg 64 :=
.seq RemovedBody795_655 RemovedBody795_660

def RemovedBody795_662 : StackLang.HolProg 64 :=
.seq RemovedBody795_654 RemovedBody795_661

def RemovedBody795_663 : StackLang.HolProg 64 :=
.seq RemovedBody795_651 RemovedBody795_662

def RemovedBody795_664 : StackLang.HolProg 64 :=
.seq RemovedBody795_648 RemovedBody795_663

def RemovedBody795_665 : StackLang.HolProg 64 :=
.seq RemovedBody795_645 RemovedBody795_664

def RemovedBody795_666 : StackLang.HolProg 64 :=
.seq RemovedBody795_642 RemovedBody795_665

def RemovedBody795_667 : StackLang.HolProg 64 :=
.seq RemovedBody795_641 RemovedBody795_666

def RemovedBody795_668 : StackLang.HolProg 64 :=
.seq RemovedBody795_638 RemovedBody795_667

def RemovedBody795_669 : StackLang.HolProg 64 :=
.seq RemovedBody795_635 RemovedBody795_668

def RemovedBody795_670 : StackLang.HolProg 64 :=
.seq RemovedBody795_632 RemovedBody795_669

def RemovedBody795_671 : StackLang.HolProg 64 :=
.seq RemovedBody795_631 RemovedBody795_670

def RemovedBody795_672 : StackLang.HolProg 64 :=
.seq RemovedBody795_628 RemovedBody795_671

def RemovedBody795_673 : StackLang.HolProg 64 :=
.seq RemovedBody795_625 RemovedBody795_672

def RemovedBody795_674 : StackLang.HolProg 64 :=
.seq RemovedBody795_622 RemovedBody795_673

def RemovedBody795_675 : StackLang.HolProg 64 :=
.seq RemovedBody795_621 RemovedBody795_674

def RemovedBody795_676 : StackLang.HolProg 64 :=
.seq RemovedBody795_618 RemovedBody795_675

def RemovedBody795_677 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody795_678 : StackLang.HolProg 64 :=
.seq RemovedBody795_676 RemovedBody795_677

def RemovedBody795_679 : StackLang.HolProg 64 :=
.call (some (RemovedBody795_617, 0, 795, 12)) (Sum.inl 715) (some (RemovedBody795_678, 795, 13))

def RemovedBody795_680 : StackLang.HolProg 64 :=
.seq RemovedBody795_548 RemovedBody795_679

def RemovedBody795_681 : StackLang.HolProg 64 :=
.seq RemovedBody795_547 RemovedBody795_680

def RemovedBody795_682 : StackLang.HolProg 64 :=
.seq RemovedBody795_546 RemovedBody795_681

def RemovedBody795_683 : StackLang.HolProg 64 :=
.seq RemovedBody795_517 RemovedBody795_682

def RemovedBody795_684 : StackLang.HolProg 64 :=
.seq RemovedBody795_514 RemovedBody795_683

def RemovedBody795_685 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody795_686 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody795_687 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody795_688 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3787#64)

def RemovedBody795_689 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody795_690 : StackLang.HolProg 64 :=
.seq RemovedBody795_688 RemovedBody795_689

def RemovedBody795_691 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody795_692 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody795_693 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody795_694 : StackLang.HolProg 64 :=
.seq RemovedBody795_692 RemovedBody795_693

def RemovedBody795_695 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody795_696 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody795_694 RemovedBody795_695

def RemovedBody795_697 : StackLang.HolProg 64 :=
.seq RemovedBody795_691 RemovedBody795_696

def RemovedBody795_698 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody795_699 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody795_700 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 795 15

def RemovedBody795_701 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody795_702 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody795_703 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody795_704 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody795_705 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody795_706 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody795_707 : StackLang.HolProg 64 :=
.seq RemovedBody795_705 RemovedBody795_706

def RemovedBody795_708 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody795_709 : StackLang.HolProg 64 :=
.seq RemovedBody795_707 RemovedBody795_708

def RemovedBody795_710 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody795_711 : StackLang.HolProg 64 :=
.seq RemovedBody795_709 RemovedBody795_710

def RemovedBody795_712 : StackLang.HolProg 64 :=
.seq RemovedBody795_704 RemovedBody795_711

def RemovedBody795_713 : StackLang.HolProg 64 :=
.seq RemovedBody795_703 RemovedBody795_712

def RemovedBody795_714 : StackLang.HolProg 64 :=
.seq RemovedBody795_702 RemovedBody795_713

def RemovedBody795_715 : StackLang.HolProg 64 :=
.seq RemovedBody795_701 RemovedBody795_714

def RemovedBody795_716 : StackLang.HolProg 64 :=
.seq RemovedBody795_700 RemovedBody795_715

def RemovedBody795_717 : StackLang.HolProg 64 :=
.seq RemovedBody795_699 RemovedBody795_716

def RemovedBody795_718 : StackLang.HolProg 64 :=
.seq RemovedBody795_698 RemovedBody795_717

def RemovedBody795_719 : StackLang.HolProg 64 :=
.seq RemovedBody795_697 RemovedBody795_718

def RemovedBody795_720 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody795_721 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody795_722 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody795_723 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody795_724 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody795_725 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody795_726 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody795_727 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def RemovedBody795_728 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def RemovedBody795_729 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def RemovedBody795_730 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def RemovedBody795_731 : StackLang.HolProg 64 :=
.seq RemovedBody795_729 RemovedBody795_730

def RemovedBody795_732 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody795_733 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def RemovedBody795_734 : StackLang.HolProg 64 :=
.seq RemovedBody795_732 RemovedBody795_733

def RemovedBody795_735 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody795_736 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody795_737 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def RemovedBody795_738 : StackLang.HolProg 64 :=
.seq RemovedBody795_736 RemovedBody795_737

def RemovedBody795_739 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody795_740 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody795_741 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody795_742 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody795_743 : StackLang.HolProg 64 :=
.seq RemovedBody795_741 RemovedBody795_742

def RemovedBody795_744 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody795_745 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody795_746 : StackLang.HolProg 64 :=
.seq RemovedBody795_744 RemovedBody795_745

def RemovedBody795_747 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody795_748 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody795_749 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody795_750 : StackLang.HolProg 64 :=
.seq RemovedBody795_748 RemovedBody795_749

def RemovedBody795_751 : StackLang.HolProg 64 :=
.seq RemovedBody795_747 RemovedBody795_750

def RemovedBody795_752 : StackLang.HolProg 64 :=
.seq RemovedBody795_746 RemovedBody795_751

def RemovedBody795_753 : StackLang.HolProg 64 :=
.seq RemovedBody795_743 RemovedBody795_752

def RemovedBody795_754 : StackLang.HolProg 64 :=
.seq RemovedBody795_740 RemovedBody795_753

def RemovedBody795_755 : StackLang.HolProg 64 :=
.seq RemovedBody795_739 RemovedBody795_754

def RemovedBody795_756 : StackLang.HolProg 64 :=
.seq RemovedBody795_738 RemovedBody795_755

def RemovedBody795_757 : StackLang.HolProg 64 :=
.seq RemovedBody795_735 RemovedBody795_756

def RemovedBody795_758 : StackLang.HolProg 64 :=
.seq RemovedBody795_734 RemovedBody795_757

def RemovedBody795_759 : StackLang.HolProg 64 :=
.seq RemovedBody795_731 RemovedBody795_758

def RemovedBody795_760 : StackLang.HolProg 64 :=
.seq RemovedBody795_728 RemovedBody795_759

def RemovedBody795_761 : StackLang.HolProg 64 :=
.seq RemovedBody795_727 RemovedBody795_760

def RemovedBody795_762 : StackLang.HolProg 64 :=
.seq RemovedBody795_726 RemovedBody795_761

def RemovedBody795_763 : StackLang.HolProg 64 :=
.seq RemovedBody795_725 RemovedBody795_762

def RemovedBody795_764 : StackLang.HolProg 64 :=
.seq RemovedBody795_724 RemovedBody795_763

def RemovedBody795_765 : StackLang.HolProg 64 :=
.seq RemovedBody795_723 RemovedBody795_764

def RemovedBody795_766 : StackLang.HolProg 64 :=
.seq RemovedBody795_722 RemovedBody795_765

def RemovedBody795_767 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def RemovedBody795_768 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def RemovedBody795_769 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def RemovedBody795_770 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def RemovedBody795_771 : StackLang.HolProg 64 :=
.seq RemovedBody795_769 RemovedBody795_770

def RemovedBody795_772 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody795_773 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def RemovedBody795_774 : StackLang.HolProg 64 :=
.seq RemovedBody795_772 RemovedBody795_773

def RemovedBody795_775 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody795_776 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody795_777 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def RemovedBody795_778 : StackLang.HolProg 64 :=
.seq RemovedBody795_776 RemovedBody795_777

def RemovedBody795_779 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody795_780 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody795_781 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody795_782 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody795_783 : StackLang.HolProg 64 :=
.seq RemovedBody795_781 RemovedBody795_782

def RemovedBody795_784 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody795_785 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody795_786 : StackLang.HolProg 64 :=
.seq RemovedBody795_784 RemovedBody795_785

def RemovedBody795_787 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody795_788 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody795_789 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody795_790 : StackLang.HolProg 64 :=
.seq RemovedBody795_788 RemovedBody795_789

def RemovedBody795_791 : StackLang.HolProg 64 :=
.seq RemovedBody795_787 RemovedBody795_790

def RemovedBody795_792 : StackLang.HolProg 64 :=
.seq RemovedBody795_786 RemovedBody795_791

def RemovedBody795_793 : StackLang.HolProg 64 :=
.seq RemovedBody795_783 RemovedBody795_792

def RemovedBody795_794 : StackLang.HolProg 64 :=
.seq RemovedBody795_780 RemovedBody795_793

def RemovedBody795_795 : StackLang.HolProg 64 :=
.seq RemovedBody795_779 RemovedBody795_794

def RemovedBody795_796 : StackLang.HolProg 64 :=
.seq RemovedBody795_778 RemovedBody795_795

def RemovedBody795_797 : StackLang.HolProg 64 :=
.seq RemovedBody795_775 RemovedBody795_796

def RemovedBody795_798 : StackLang.HolProg 64 :=
.seq RemovedBody795_774 RemovedBody795_797

def RemovedBody795_799 : StackLang.HolProg 64 :=
.seq RemovedBody795_771 RemovedBody795_798

def RemovedBody795_800 : StackLang.HolProg 64 :=
.seq RemovedBody795_768 RemovedBody795_799

def RemovedBody795_801 : StackLang.HolProg 64 :=
.seq RemovedBody795_767 RemovedBody795_800

def RemovedBody795_802 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody795_803 : StackLang.HolProg 64 :=
.seq RemovedBody795_801 RemovedBody795_802

def RemovedBody795_804 : StackLang.HolProg 64 :=
.call (some (RemovedBody795_766, 0, 795, 14)) (Sum.inl 714) (some (RemovedBody795_803, 795, 15))

def RemovedBody795_805 : StackLang.HolProg 64 :=
.seq RemovedBody795_721 RemovedBody795_804

def RemovedBody795_806 : StackLang.HolProg 64 :=
.seq RemovedBody795_720 RemovedBody795_805

def RemovedBody795_807 : StackLang.HolProg 64 :=
.seq RemovedBody795_719 RemovedBody795_806

def RemovedBody795_808 : StackLang.HolProg 64 :=
.seq RemovedBody795_690 RemovedBody795_807

def RemovedBody795_809 : StackLang.HolProg 64 :=
.seq RemovedBody795_687 RemovedBody795_808

def RemovedBody795_810 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody795_811 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody795_812 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody795_813 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3788#64)

def RemovedBody795_814 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody795_815 : StackLang.HolProg 64 :=
.seq RemovedBody795_813 RemovedBody795_814

def RemovedBody795_816 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody795_817 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody795_818 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody795_819 : StackLang.HolProg 64 :=
.seq RemovedBody795_817 RemovedBody795_818

def RemovedBody795_820 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody795_821 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody795_819 RemovedBody795_820

def RemovedBody795_822 : StackLang.HolProg 64 :=
.seq RemovedBody795_816 RemovedBody795_821

def RemovedBody795_823 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody795_824 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody795_825 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 795 17

def RemovedBody795_826 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody795_827 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody795_828 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody795_829 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody795_830 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody795_831 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody795_832 : StackLang.HolProg 64 :=
.seq RemovedBody795_830 RemovedBody795_831

def RemovedBody795_833 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody795_834 : StackLang.HolProg 64 :=
.seq RemovedBody795_832 RemovedBody795_833

def RemovedBody795_835 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody795_836 : StackLang.HolProg 64 :=
.seq RemovedBody795_834 RemovedBody795_835

def RemovedBody795_837 : StackLang.HolProg 64 :=
.seq RemovedBody795_829 RemovedBody795_836

def RemovedBody795_838 : StackLang.HolProg 64 :=
.seq RemovedBody795_828 RemovedBody795_837

def RemovedBody795_839 : StackLang.HolProg 64 :=
.seq RemovedBody795_827 RemovedBody795_838

def RemovedBody795_840 : StackLang.HolProg 64 :=
.seq RemovedBody795_826 RemovedBody795_839

def RemovedBody795_841 : StackLang.HolProg 64 :=
.seq RemovedBody795_825 RemovedBody795_840

def RemovedBody795_842 : StackLang.HolProg 64 :=
.seq RemovedBody795_824 RemovedBody795_841

def RemovedBody795_843 : StackLang.HolProg 64 :=
.seq RemovedBody795_823 RemovedBody795_842

def RemovedBody795_844 : StackLang.HolProg 64 :=
.seq RemovedBody795_822 RemovedBody795_843

def RemovedBody795_845 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody795_846 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody795_847 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody795_848 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody795_849 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody795_850 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody795_851 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody795_852 : StackLang.HolProg 64 :=
.seq RemovedBody795_850 RemovedBody795_851

def RemovedBody795_853 : StackLang.HolProg 64 :=
.seq RemovedBody795_849 RemovedBody795_852

def RemovedBody795_854 : StackLang.HolProg 64 :=
.seq RemovedBody795_848 RemovedBody795_853

def RemovedBody795_855 : StackLang.HolProg 64 :=
.seq RemovedBody795_847 RemovedBody795_854

def RemovedBody795_856 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody795_857 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody795_858 : StackLang.HolProg 64 :=
.seq RemovedBody795_856 RemovedBody795_857

def RemovedBody795_859 : StackLang.HolProg 64 :=
.call (some (RemovedBody795_855, 0, 795, 16)) (Sum.inl 711) (some (RemovedBody795_858, 795, 17))

def RemovedBody795_860 : StackLang.HolProg 64 :=
.seq RemovedBody795_846 RemovedBody795_859

def RemovedBody795_861 : StackLang.HolProg 64 :=
.seq RemovedBody795_845 RemovedBody795_860

def RemovedBody795_862 : StackLang.HolProg 64 :=
.seq RemovedBody795_844 RemovedBody795_861

def RemovedBody795_863 : StackLang.HolProg 64 :=
.seq RemovedBody795_815 RemovedBody795_862

def RemovedBody795_864 : StackLang.HolProg 64 :=
.seq RemovedBody795_812 RemovedBody795_863

def RemovedBody795_865 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody795_866 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody795_867 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody795_868 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3789#64)

def RemovedBody795_869 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody795_870 : StackLang.HolProg 64 :=
.seq RemovedBody795_868 RemovedBody795_869

def RemovedBody795_871 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody795_872 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody795_873 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody795_874 : StackLang.HolProg 64 :=
.seq RemovedBody795_872 RemovedBody795_873

def RemovedBody795_875 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody795_876 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody795_874 RemovedBody795_875

def RemovedBody795_877 : StackLang.HolProg 64 :=
.seq RemovedBody795_871 RemovedBody795_876

def RemovedBody795_878 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody795_879 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody795_880 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 795 19

def RemovedBody795_881 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody795_882 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody795_883 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody795_884 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody795_885 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody795_886 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody795_887 : StackLang.HolProg 64 :=
.seq RemovedBody795_885 RemovedBody795_886

def RemovedBody795_888 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody795_889 : StackLang.HolProg 64 :=
.seq RemovedBody795_887 RemovedBody795_888

def RemovedBody795_890 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody795_891 : StackLang.HolProg 64 :=
.seq RemovedBody795_889 RemovedBody795_890

def RemovedBody795_892 : StackLang.HolProg 64 :=
.seq RemovedBody795_884 RemovedBody795_891

def RemovedBody795_893 : StackLang.HolProg 64 :=
.seq RemovedBody795_883 RemovedBody795_892

def RemovedBody795_894 : StackLang.HolProg 64 :=
.seq RemovedBody795_882 RemovedBody795_893

def RemovedBody795_895 : StackLang.HolProg 64 :=
.seq RemovedBody795_881 RemovedBody795_894

def RemovedBody795_896 : StackLang.HolProg 64 :=
.seq RemovedBody795_880 RemovedBody795_895

def RemovedBody795_897 : StackLang.HolProg 64 :=
.seq RemovedBody795_879 RemovedBody795_896

def RemovedBody795_898 : StackLang.HolProg 64 :=
.seq RemovedBody795_878 RemovedBody795_897

def RemovedBody795_899 : StackLang.HolProg 64 :=
.seq RemovedBody795_877 RemovedBody795_898

def RemovedBody795_900 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody795_901 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody795_902 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody795_903 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody795_904 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody795_905 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody795_906 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody795_907 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def RemovedBody795_908 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def RemovedBody795_909 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def RemovedBody795_910 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def RemovedBody795_911 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody795_912 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody795_913 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody795_914 : StackLang.HolProg 64 :=
.seq RemovedBody795_912 RemovedBody795_913

def RemovedBody795_915 : StackLang.HolProg 64 :=
.seq RemovedBody795_911 RemovedBody795_914

def RemovedBody795_916 : StackLang.HolProg 64 :=
.seq RemovedBody795_910 RemovedBody795_915

def RemovedBody795_917 : StackLang.HolProg 64 :=
.seq RemovedBody795_909 RemovedBody795_916

def RemovedBody795_918 : StackLang.HolProg 64 :=
.seq RemovedBody795_908 RemovedBody795_917

def RemovedBody795_919 : StackLang.HolProg 64 :=
.seq RemovedBody795_907 RemovedBody795_918

def RemovedBody795_920 : StackLang.HolProg 64 :=
.seq RemovedBody795_906 RemovedBody795_919

def RemovedBody795_921 : StackLang.HolProg 64 :=
.seq RemovedBody795_905 RemovedBody795_920

def RemovedBody795_922 : StackLang.HolProg 64 :=
.seq RemovedBody795_904 RemovedBody795_921

def RemovedBody795_923 : StackLang.HolProg 64 :=
.seq RemovedBody795_903 RemovedBody795_922

def RemovedBody795_924 : StackLang.HolProg 64 :=
.seq RemovedBody795_902 RemovedBody795_923

def RemovedBody795_925 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def RemovedBody795_926 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def RemovedBody795_927 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def RemovedBody795_928 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def RemovedBody795_929 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody795_930 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody795_931 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody795_932 : StackLang.HolProg 64 :=
.seq RemovedBody795_930 RemovedBody795_931

def RemovedBody795_933 : StackLang.HolProg 64 :=
.seq RemovedBody795_929 RemovedBody795_932

def RemovedBody795_934 : StackLang.HolProg 64 :=
.seq RemovedBody795_928 RemovedBody795_933

def RemovedBody795_935 : StackLang.HolProg 64 :=
.seq RemovedBody795_927 RemovedBody795_934

def RemovedBody795_936 : StackLang.HolProg 64 :=
.seq RemovedBody795_926 RemovedBody795_935

def RemovedBody795_937 : StackLang.HolProg 64 :=
.seq RemovedBody795_925 RemovedBody795_936

def RemovedBody795_938 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody795_939 : StackLang.HolProg 64 :=
.seq RemovedBody795_937 RemovedBody795_938

def RemovedBody795_940 : StackLang.HolProg 64 :=
.call (some (RemovedBody795_924, 0, 795, 18)) (Sum.inl 705) (some (RemovedBody795_939, 795, 19))

def RemovedBody795_941 : StackLang.HolProg 64 :=
.seq RemovedBody795_901 RemovedBody795_940

def RemovedBody795_942 : StackLang.HolProg 64 :=
.seq RemovedBody795_900 RemovedBody795_941

def RemovedBody795_943 : StackLang.HolProg 64 :=
.seq RemovedBody795_899 RemovedBody795_942

def RemovedBody795_944 : StackLang.HolProg 64 :=
.seq RemovedBody795_870 RemovedBody795_943

def RemovedBody795_945 : StackLang.HolProg 64 :=
.seq RemovedBody795_867 RemovedBody795_944

def RemovedBody795_946 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody795_947 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def RemovedBody795_948 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 160#64)))

def RemovedBody795_949 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody795_950 : StackLang.HolProg 64 :=
.seq RemovedBody795_948 RemovedBody795_949

def RemovedBody795_951 : StackLang.HolProg 64 :=
.seq RemovedBody795_947 RemovedBody795_950

def RemovedBody795_952 : StackLang.HolProg 64 :=
.seq RemovedBody795_946 RemovedBody795_951

def RemovedBody795_953 : StackLang.HolProg 64 :=
.seq RemovedBody795_945 RemovedBody795_952

def RemovedBody795_954 : StackLang.HolProg 64 :=
.seq RemovedBody795_866 RemovedBody795_953

def RemovedBody795_955 : StackLang.HolProg 64 :=
.seq RemovedBody795_865 RemovedBody795_954

def RemovedBody795_956 : StackLang.HolProg 64 :=
.seq RemovedBody795_864 RemovedBody795_955

def RemovedBody795_957 : StackLang.HolProg 64 :=
.seq RemovedBody795_811 RemovedBody795_956

def RemovedBody795_958 : StackLang.HolProg 64 :=
.seq RemovedBody795_810 RemovedBody795_957

def RemovedBody795_959 : StackLang.HolProg 64 :=
.seq RemovedBody795_809 RemovedBody795_958

def RemovedBody795_960 : StackLang.HolProg 64 :=
.seq RemovedBody795_686 RemovedBody795_959

def RemovedBody795_961 : StackLang.HolProg 64 :=
.seq RemovedBody795_685 RemovedBody795_960

def RemovedBody795_962 : StackLang.HolProg 64 :=
.seq RemovedBody795_684 RemovedBody795_961

def RemovedBody795_963 : StackLang.HolProg 64 :=
.seq RemovedBody795_513 RemovedBody795_962

def RemovedBody795_964 : StackLang.HolProg 64 :=
.seq RemovedBody795_500 RemovedBody795_963

def RemovedBody795_965 : StackLang.HolProg 64 :=
.seq RemovedBody795_499 RemovedBody795_964

def RemovedBody795_966 : StackLang.HolProg 64 :=
.seq RemovedBody795_446 RemovedBody795_965

def RemovedBody795_967 : StackLang.HolProg 64 :=
.seq RemovedBody795_445 RemovedBody795_966

def RemovedBody795_968 : StackLang.HolProg 64 :=
.seq RemovedBody795_444 RemovedBody795_967

def RemovedBody795_969 : StackLang.HolProg 64 :=
.seq RemovedBody795_303 RemovedBody795_968

def RemovedBody795_970 : StackLang.HolProg 64 :=
.seq RemovedBody795_302 RemovedBody795_969

def RemovedBody795_971 : StackLang.HolProg 64 :=
.seq RemovedBody795_301 RemovedBody795_970

def RemovedBody795_972 : StackLang.HolProg 64 :=
.seq RemovedBody795_300 RemovedBody795_971

def RemovedBody795_973 : StackLang.HolProg 64 :=
.seq RemovedBody795_299 RemovedBody795_972

def RemovedBody795_974 : StackLang.HolProg 64 :=
.seq RemovedBody795_298 RemovedBody795_973

def RemovedBody795_975 : StackLang.HolProg 64 :=
.seq RemovedBody795_297 RemovedBody795_974

def RemovedBody795_976 : StackLang.HolProg 64 :=
.seq RemovedBody795_296 RemovedBody795_975

def RemovedBody795_977 : StackLang.HolProg 64 :=
.seq RemovedBody795_295 RemovedBody795_976

def RemovedBody795_978 : StackLang.HolProg 64 :=
.seq RemovedBody795_294 RemovedBody795_977

def RemovedBody795_979 : StackLang.HolProg 64 :=
.seq RemovedBody795_241 RemovedBody795_978

def RemovedBody795_980 : StackLang.HolProg 64 :=
.seq RemovedBody795_228 RemovedBody795_979

def RemovedBody795_981 : StackLang.HolProg 64 :=
.seq RemovedBody795_227 RemovedBody795_980

def RemovedBody795_982 : StackLang.HolProg 64 :=
.seq RemovedBody795_142 RemovedBody795_981

def RemovedBody795_983 : StackLang.HolProg 64 :=
.seq RemovedBody795_107 RemovedBody795_982

def RemovedBody795_984 : StackLang.HolProg 64 :=
.seq RemovedBody795_106 RemovedBody795_983

def RemovedBody795_985 : StackLang.HolProg 64 :=
.seq RemovedBody795_31 RemovedBody795_984

def RemovedBody795_986 : StackLang.HolProg 64 :=
.seq RemovedBody795_6 RemovedBody795_985

def Removed795 : Nat × StackLang.HolProg 64 := (795, RemovedBody795_986)
theorem Removed795_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc795 = Removed795 := by
  kernel_rfl
#print axioms Removed795_eq
end InitECandidate.Proofs.BackendStages
