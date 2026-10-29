import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc799
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody799_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def RemovedBody799_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody799_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody799_3 : StackLang.HolProg 64 :=
.seq RemovedBody799_1 RemovedBody799_2

def RemovedBody799_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody799_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody799_3 RemovedBody799_4

def RemovedBody799_6 : StackLang.HolProg 64 :=
.seq RemovedBody799_0 RemovedBody799_5

def RemovedBody799_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody799_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody799_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody799_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody799_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody799_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody799_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody799_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody799_15 : StackLang.HolProg 64 :=
.seq RemovedBody799_13 RemovedBody799_14

def RemovedBody799_16 : StackLang.HolProg 64 :=
.seq RemovedBody799_12 RemovedBody799_15

def RemovedBody799_17 : StackLang.HolProg 64 :=
.seq RemovedBody799_11 RemovedBody799_16

def RemovedBody799_18 : StackLang.HolProg 64 :=
.seq RemovedBody799_10 RemovedBody799_17

def RemovedBody799_19 : StackLang.HolProg 64 :=
.seq RemovedBody799_9 RemovedBody799_18

def RemovedBody799_20 : StackLang.HolProg 64 :=
.seq RemovedBody799_8 RemovedBody799_19

def RemovedBody799_21 : StackLang.HolProg 64 :=
.seq RemovedBody799_7 RemovedBody799_20

def RemovedBody799_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody799_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3835#64)

def RemovedBody799_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody799_25 : StackLang.HolProg 64 :=
.seq RemovedBody799_23 RemovedBody799_24

def RemovedBody799_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody799_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody799_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody799_29 : StackLang.HolProg 64 :=
.seq RemovedBody799_27 RemovedBody799_28

def RemovedBody799_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody799_31 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody799_29 RemovedBody799_30

def RemovedBody799_32 : StackLang.HolProg 64 :=
.seq RemovedBody799_26 RemovedBody799_31

def RemovedBody799_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody799_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody799_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 799 3

def RemovedBody799_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody799_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody799_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody799_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody799_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody799_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody799_42 : StackLang.HolProg 64 :=
.seq RemovedBody799_40 RemovedBody799_41

def RemovedBody799_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody799_44 : StackLang.HolProg 64 :=
.seq RemovedBody799_42 RemovedBody799_43

def RemovedBody799_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody799_46 : StackLang.HolProg 64 :=
.seq RemovedBody799_44 RemovedBody799_45

def RemovedBody799_47 : StackLang.HolProg 64 :=
.seq RemovedBody799_39 RemovedBody799_46

def RemovedBody799_48 : StackLang.HolProg 64 :=
.seq RemovedBody799_38 RemovedBody799_47

def RemovedBody799_49 : StackLang.HolProg 64 :=
.seq RemovedBody799_37 RemovedBody799_48

def RemovedBody799_50 : StackLang.HolProg 64 :=
.seq RemovedBody799_36 RemovedBody799_49

def RemovedBody799_51 : StackLang.HolProg 64 :=
.seq RemovedBody799_35 RemovedBody799_50

def RemovedBody799_52 : StackLang.HolProg 64 :=
.seq RemovedBody799_34 RemovedBody799_51

def RemovedBody799_53 : StackLang.HolProg 64 :=
.seq RemovedBody799_33 RemovedBody799_52

def RemovedBody799_54 : StackLang.HolProg 64 :=
.seq RemovedBody799_32 RemovedBody799_53

def RemovedBody799_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody799_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody799_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody799_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody799_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody799_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody799_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody799_62 : StackLang.HolProg 64 :=
.seq RemovedBody799_60 RemovedBody799_61

def RemovedBody799_63 : StackLang.HolProg 64 :=
.seq RemovedBody799_59 RemovedBody799_62

def RemovedBody799_64 : StackLang.HolProg 64 :=
.seq RemovedBody799_58 RemovedBody799_63

def RemovedBody799_65 : StackLang.HolProg 64 :=
.seq RemovedBody799_57 RemovedBody799_64

def RemovedBody799_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody799_67 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody799_68 : StackLang.HolProg 64 :=
.seq RemovedBody799_66 RemovedBody799_67

def RemovedBody799_69 : StackLang.HolProg 64 :=
.call (some (RemovedBody799_65, 0, 799, 2)) (Sum.inl 69) (some (RemovedBody799_68, 799, 3))

def RemovedBody799_70 : StackLang.HolProg 64 :=
.seq RemovedBody799_56 RemovedBody799_69

def RemovedBody799_71 : StackLang.HolProg 64 :=
.seq RemovedBody799_55 RemovedBody799_70

def RemovedBody799_72 : StackLang.HolProg 64 :=
.seq RemovedBody799_54 RemovedBody799_71

def RemovedBody799_73 : StackLang.HolProg 64 :=
.seq RemovedBody799_25 RemovedBody799_72

def RemovedBody799_74 : StackLang.HolProg 64 :=
.seq RemovedBody799_22 RemovedBody799_73

def RemovedBody799_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody799_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 144#64)

def RemovedBody799_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody799_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody799_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3836#64)

def RemovedBody799_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody799_81 : StackLang.HolProg 64 :=
.seq RemovedBody799_79 RemovedBody799_80

def RemovedBody799_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody799_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody799_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody799_85 : StackLang.HolProg 64 :=
.seq RemovedBody799_83 RemovedBody799_84

def RemovedBody799_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody799_87 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody799_85 RemovedBody799_86

def RemovedBody799_88 : StackLang.HolProg 64 :=
.seq RemovedBody799_82 RemovedBody799_87

def RemovedBody799_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody799_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody799_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 799 5

def RemovedBody799_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody799_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody799_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody799_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody799_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody799_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody799_98 : StackLang.HolProg 64 :=
.seq RemovedBody799_96 RemovedBody799_97

def RemovedBody799_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody799_100 : StackLang.HolProg 64 :=
.seq RemovedBody799_98 RemovedBody799_99

def RemovedBody799_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody799_102 : StackLang.HolProg 64 :=
.seq RemovedBody799_100 RemovedBody799_101

def RemovedBody799_103 : StackLang.HolProg 64 :=
.seq RemovedBody799_95 RemovedBody799_102

def RemovedBody799_104 : StackLang.HolProg 64 :=
.seq RemovedBody799_94 RemovedBody799_103

def RemovedBody799_105 : StackLang.HolProg 64 :=
.seq RemovedBody799_93 RemovedBody799_104

def RemovedBody799_106 : StackLang.HolProg 64 :=
.seq RemovedBody799_92 RemovedBody799_105

def RemovedBody799_107 : StackLang.HolProg 64 :=
.seq RemovedBody799_91 RemovedBody799_106

def RemovedBody799_108 : StackLang.HolProg 64 :=
.seq RemovedBody799_90 RemovedBody799_107

def RemovedBody799_109 : StackLang.HolProg 64 :=
.seq RemovedBody799_89 RemovedBody799_108

def RemovedBody799_110 : StackLang.HolProg 64 :=
.seq RemovedBody799_88 RemovedBody799_109

def RemovedBody799_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody799_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody799_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody799_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody799_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody799_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody799_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody799_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody799_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody799_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody799_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody799_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody799_123 : StackLang.HolProg 64 :=
.seq RemovedBody799_121 RemovedBody799_122

def RemovedBody799_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody799_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody799_126 : StackLang.HolProg 64 :=
.seq RemovedBody799_124 RemovedBody799_125

def RemovedBody799_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody799_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody799_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody799_130 : StackLang.HolProg 64 :=
.seq RemovedBody799_128 RemovedBody799_129

def RemovedBody799_131 : StackLang.HolProg 64 :=
.seq RemovedBody799_127 RemovedBody799_130

def RemovedBody799_132 : StackLang.HolProg 64 :=
.seq RemovedBody799_126 RemovedBody799_131

def RemovedBody799_133 : StackLang.HolProg 64 :=
.seq RemovedBody799_123 RemovedBody799_132

def RemovedBody799_134 : StackLang.HolProg 64 :=
.seq RemovedBody799_120 RemovedBody799_133

def RemovedBody799_135 : StackLang.HolProg 64 :=
.seq RemovedBody799_119 RemovedBody799_134

def RemovedBody799_136 : StackLang.HolProg 64 :=
.seq RemovedBody799_118 RemovedBody799_135

def RemovedBody799_137 : StackLang.HolProg 64 :=
.seq RemovedBody799_117 RemovedBody799_136

def RemovedBody799_138 : StackLang.HolProg 64 :=
.seq RemovedBody799_116 RemovedBody799_137

def RemovedBody799_139 : StackLang.HolProg 64 :=
.seq RemovedBody799_115 RemovedBody799_138

def RemovedBody799_140 : StackLang.HolProg 64 :=
.seq RemovedBody799_114 RemovedBody799_139

def RemovedBody799_141 : StackLang.HolProg 64 :=
.seq RemovedBody799_113 RemovedBody799_140

def RemovedBody799_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody799_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody799_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody799_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody799_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody799_147 : StackLang.HolProg 64 :=
.seq RemovedBody799_145 RemovedBody799_146

def RemovedBody799_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody799_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody799_150 : StackLang.HolProg 64 :=
.seq RemovedBody799_148 RemovedBody799_149

def RemovedBody799_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody799_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody799_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody799_154 : StackLang.HolProg 64 :=
.seq RemovedBody799_152 RemovedBody799_153

def RemovedBody799_155 : StackLang.HolProg 64 :=
.seq RemovedBody799_151 RemovedBody799_154

def RemovedBody799_156 : StackLang.HolProg 64 :=
.seq RemovedBody799_150 RemovedBody799_155

def RemovedBody799_157 : StackLang.HolProg 64 :=
.seq RemovedBody799_147 RemovedBody799_156

def RemovedBody799_158 : StackLang.HolProg 64 :=
.seq RemovedBody799_144 RemovedBody799_157

def RemovedBody799_159 : StackLang.HolProg 64 :=
.seq RemovedBody799_143 RemovedBody799_158

def RemovedBody799_160 : StackLang.HolProg 64 :=
.seq RemovedBody799_142 RemovedBody799_159

def RemovedBody799_161 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody799_162 : StackLang.HolProg 64 :=
.seq RemovedBody799_160 RemovedBody799_161

def RemovedBody799_163 : StackLang.HolProg 64 :=
.call (some (RemovedBody799_141, 0, 799, 4)) (Sum.inl 68) (some (RemovedBody799_162, 799, 5))

def RemovedBody799_164 : StackLang.HolProg 64 :=
.seq RemovedBody799_112 RemovedBody799_163

def RemovedBody799_165 : StackLang.HolProg 64 :=
.seq RemovedBody799_111 RemovedBody799_164

def RemovedBody799_166 : StackLang.HolProg 64 :=
.seq RemovedBody799_110 RemovedBody799_165

def RemovedBody799_167 : StackLang.HolProg 64 :=
.seq RemovedBody799_81 RemovedBody799_166

def RemovedBody799_168 : StackLang.HolProg 64 :=
.seq RemovedBody799_78 RemovedBody799_167

def RemovedBody799_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody799_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody799_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody799_172 : StackLang.HolProg 64 :=
.seq RemovedBody799_170 RemovedBody799_171

def RemovedBody799_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody799_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3837#64)

def RemovedBody799_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody799_176 : StackLang.HolProg 64 :=
.seq RemovedBody799_174 RemovedBody799_175

def RemovedBody799_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody799_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody799_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody799_180 : StackLang.HolProg 64 :=
.seq RemovedBody799_178 RemovedBody799_179

def RemovedBody799_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody799_182 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody799_180 RemovedBody799_181

def RemovedBody799_183 : StackLang.HolProg 64 :=
.seq RemovedBody799_177 RemovedBody799_182

def RemovedBody799_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody799_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody799_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 799 7

def RemovedBody799_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody799_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody799_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody799_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody799_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody799_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody799_193 : StackLang.HolProg 64 :=
.seq RemovedBody799_191 RemovedBody799_192

def RemovedBody799_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody799_195 : StackLang.HolProg 64 :=
.seq RemovedBody799_193 RemovedBody799_194

def RemovedBody799_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody799_197 : StackLang.HolProg 64 :=
.seq RemovedBody799_195 RemovedBody799_196

def RemovedBody799_198 : StackLang.HolProg 64 :=
.seq RemovedBody799_190 RemovedBody799_197

def RemovedBody799_199 : StackLang.HolProg 64 :=
.seq RemovedBody799_189 RemovedBody799_198

def RemovedBody799_200 : StackLang.HolProg 64 :=
.seq RemovedBody799_188 RemovedBody799_199

def RemovedBody799_201 : StackLang.HolProg 64 :=
.seq RemovedBody799_187 RemovedBody799_200

def RemovedBody799_202 : StackLang.HolProg 64 :=
.seq RemovedBody799_186 RemovedBody799_201

def RemovedBody799_203 : StackLang.HolProg 64 :=
.seq RemovedBody799_185 RemovedBody799_202

def RemovedBody799_204 : StackLang.HolProg 64 :=
.seq RemovedBody799_184 RemovedBody799_203

def RemovedBody799_205 : StackLang.HolProg 64 :=
.seq RemovedBody799_183 RemovedBody799_204

def RemovedBody799_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody799_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody799_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody799_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody799_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody799_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody799_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody799_213 : StackLang.HolProg 64 :=
.seq RemovedBody799_211 RemovedBody799_212

def RemovedBody799_214 : StackLang.HolProg 64 :=
.seq RemovedBody799_210 RemovedBody799_213

def RemovedBody799_215 : StackLang.HolProg 64 :=
.seq RemovedBody799_209 RemovedBody799_214

def RemovedBody799_216 : StackLang.HolProg 64 :=
.seq RemovedBody799_208 RemovedBody799_215

def RemovedBody799_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody799_218 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody799_219 : StackLang.HolProg 64 :=
.seq RemovedBody799_217 RemovedBody799_218

def RemovedBody799_220 : StackLang.HolProg 64 :=
.call (some (RemovedBody799_216, 0, 799, 6)) (Sum.inl 796) (some (RemovedBody799_219, 799, 7))

def RemovedBody799_221 : StackLang.HolProg 64 :=
.seq RemovedBody799_207 RemovedBody799_220

def RemovedBody799_222 : StackLang.HolProg 64 :=
.seq RemovedBody799_206 RemovedBody799_221

def RemovedBody799_223 : StackLang.HolProg 64 :=
.seq RemovedBody799_205 RemovedBody799_222

def RemovedBody799_224 : StackLang.HolProg 64 :=
.seq RemovedBody799_176 RemovedBody799_223

def RemovedBody799_225 : StackLang.HolProg 64 :=
.seq RemovedBody799_173 RemovedBody799_224

def RemovedBody799_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody799_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody799_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody799_229 : StackLang.HolProg 64 :=
.seq RemovedBody799_227 RemovedBody799_228

def RemovedBody799_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody799_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3838#64)

def RemovedBody799_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody799_233 : StackLang.HolProg 64 :=
.seq RemovedBody799_231 RemovedBody799_232

def RemovedBody799_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody799_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody799_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody799_237 : StackLang.HolProg 64 :=
.seq RemovedBody799_235 RemovedBody799_236

def RemovedBody799_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody799_239 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody799_237 RemovedBody799_238

def RemovedBody799_240 : StackLang.HolProg 64 :=
.seq RemovedBody799_234 RemovedBody799_239

def RemovedBody799_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody799_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody799_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 799 9

def RemovedBody799_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody799_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody799_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody799_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody799_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody799_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody799_250 : StackLang.HolProg 64 :=
.seq RemovedBody799_248 RemovedBody799_249

def RemovedBody799_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody799_252 : StackLang.HolProg 64 :=
.seq RemovedBody799_250 RemovedBody799_251

def RemovedBody799_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody799_254 : StackLang.HolProg 64 :=
.seq RemovedBody799_252 RemovedBody799_253

def RemovedBody799_255 : StackLang.HolProg 64 :=
.seq RemovedBody799_247 RemovedBody799_254

def RemovedBody799_256 : StackLang.HolProg 64 :=
.seq RemovedBody799_246 RemovedBody799_255

def RemovedBody799_257 : StackLang.HolProg 64 :=
.seq RemovedBody799_245 RemovedBody799_256

def RemovedBody799_258 : StackLang.HolProg 64 :=
.seq RemovedBody799_244 RemovedBody799_257

def RemovedBody799_259 : StackLang.HolProg 64 :=
.seq RemovedBody799_243 RemovedBody799_258

def RemovedBody799_260 : StackLang.HolProg 64 :=
.seq RemovedBody799_242 RemovedBody799_259

def RemovedBody799_261 : StackLang.HolProg 64 :=
.seq RemovedBody799_241 RemovedBody799_260

def RemovedBody799_262 : StackLang.HolProg 64 :=
.seq RemovedBody799_240 RemovedBody799_261

def RemovedBody799_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody799_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody799_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody799_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody799_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody799_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody799_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody799_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody799_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody799_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody799_273 : StackLang.HolProg 64 :=
.seq RemovedBody799_271 RemovedBody799_272

def RemovedBody799_274 : StackLang.HolProg 64 :=
.seq RemovedBody799_270 RemovedBody799_273

def RemovedBody799_275 : StackLang.HolProg 64 :=
.seq RemovedBody799_269 RemovedBody799_274

def RemovedBody799_276 : StackLang.HolProg 64 :=
.seq RemovedBody799_268 RemovedBody799_275

def RemovedBody799_277 : StackLang.HolProg 64 :=
.seq RemovedBody799_267 RemovedBody799_276

def RemovedBody799_278 : StackLang.HolProg 64 :=
.seq RemovedBody799_266 RemovedBody799_277

def RemovedBody799_279 : StackLang.HolProg 64 :=
.seq RemovedBody799_265 RemovedBody799_278

def RemovedBody799_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody799_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody799_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody799_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody799_284 : StackLang.HolProg 64 :=
.seq RemovedBody799_282 RemovedBody799_283

def RemovedBody799_285 : StackLang.HolProg 64 :=
.seq RemovedBody799_281 RemovedBody799_284

def RemovedBody799_286 : StackLang.HolProg 64 :=
.seq RemovedBody799_280 RemovedBody799_285

def RemovedBody799_287 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody799_288 : StackLang.HolProg 64 :=
.seq RemovedBody799_286 RemovedBody799_287

def RemovedBody799_289 : StackLang.HolProg 64 :=
.call (some (RemovedBody799_279, 0, 799, 8)) (Sum.inl 798) (some (RemovedBody799_288, 799, 9))

def RemovedBody799_290 : StackLang.HolProg 64 :=
.seq RemovedBody799_264 RemovedBody799_289

def RemovedBody799_291 : StackLang.HolProg 64 :=
.seq RemovedBody799_263 RemovedBody799_290

def RemovedBody799_292 : StackLang.HolProg 64 :=
.seq RemovedBody799_262 RemovedBody799_291

def RemovedBody799_293 : StackLang.HolProg 64 :=
.seq RemovedBody799_233 RemovedBody799_292

def RemovedBody799_294 : StackLang.HolProg 64 :=
.seq RemovedBody799_230 RemovedBody799_293

def RemovedBody799_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody799_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody799_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody799_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody799_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody799_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551224#64))

def RemovedBody799_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1624#64)))

def RemovedBody799_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 1#64)

def RemovedBody799_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody799_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody799_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3839#64)

def RemovedBody799_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody799_307 : StackLang.HolProg 64 :=
.seq RemovedBody799_305 RemovedBody799_306

def RemovedBody799_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody799_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody799_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody799_311 : StackLang.HolProg 64 :=
.seq RemovedBody799_309 RemovedBody799_310

def RemovedBody799_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody799_313 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody799_311 RemovedBody799_312

def RemovedBody799_314 : StackLang.HolProg 64 :=
.seq RemovedBody799_308 RemovedBody799_313

def RemovedBody799_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody799_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody799_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 799 11

def RemovedBody799_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody799_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody799_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody799_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody799_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody799_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody799_324 : StackLang.HolProg 64 :=
.seq RemovedBody799_322 RemovedBody799_323

def RemovedBody799_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody799_326 : StackLang.HolProg 64 :=
.seq RemovedBody799_324 RemovedBody799_325

def RemovedBody799_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody799_328 : StackLang.HolProg 64 :=
.seq RemovedBody799_326 RemovedBody799_327

def RemovedBody799_329 : StackLang.HolProg 64 :=
.seq RemovedBody799_321 RemovedBody799_328

def RemovedBody799_330 : StackLang.HolProg 64 :=
.seq RemovedBody799_320 RemovedBody799_329

def RemovedBody799_331 : StackLang.HolProg 64 :=
.seq RemovedBody799_319 RemovedBody799_330

def RemovedBody799_332 : StackLang.HolProg 64 :=
.seq RemovedBody799_318 RemovedBody799_331

def RemovedBody799_333 : StackLang.HolProg 64 :=
.seq RemovedBody799_317 RemovedBody799_332

def RemovedBody799_334 : StackLang.HolProg 64 :=
.seq RemovedBody799_316 RemovedBody799_333

def RemovedBody799_335 : StackLang.HolProg 64 :=
.seq RemovedBody799_315 RemovedBody799_334

def RemovedBody799_336 : StackLang.HolProg 64 :=
.seq RemovedBody799_314 RemovedBody799_335

def RemovedBody799_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody799_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody799_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody799_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody799_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody799_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody799_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody799_344 : StackLang.HolProg 64 :=
.seq RemovedBody799_342 RemovedBody799_343

def RemovedBody799_345 : StackLang.HolProg 64 :=
.seq RemovedBody799_341 RemovedBody799_344

def RemovedBody799_346 : StackLang.HolProg 64 :=
.seq RemovedBody799_340 RemovedBody799_345

def RemovedBody799_347 : StackLang.HolProg 64 :=
.seq RemovedBody799_339 RemovedBody799_346

def RemovedBody799_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody799_349 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody799_350 : StackLang.HolProg 64 :=
.seq RemovedBody799_348 RemovedBody799_349

def RemovedBody799_351 : StackLang.HolProg 64 :=
.call (some (RemovedBody799_347, 0, 799, 10)) (Sum.inl 772) (some (RemovedBody799_350, 799, 11))

def RemovedBody799_352 : StackLang.HolProg 64 :=
.seq RemovedBody799_338 RemovedBody799_351

def RemovedBody799_353 : StackLang.HolProg 64 :=
.seq RemovedBody799_337 RemovedBody799_352

def RemovedBody799_354 : StackLang.HolProg 64 :=
.seq RemovedBody799_336 RemovedBody799_353

def RemovedBody799_355 : StackLang.HolProg 64 :=
.seq RemovedBody799_307 RemovedBody799_354

def RemovedBody799_356 : StackLang.HolProg 64 :=
.seq RemovedBody799_304 RemovedBody799_355

def RemovedBody799_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody799_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody799_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody799_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3840#64)

def RemovedBody799_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody799_362 : StackLang.HolProg 64 :=
.seq RemovedBody799_360 RemovedBody799_361

def RemovedBody799_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody799_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody799_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody799_366 : StackLang.HolProg 64 :=
.seq RemovedBody799_364 RemovedBody799_365

def RemovedBody799_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody799_368 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody799_366 RemovedBody799_367

def RemovedBody799_369 : StackLang.HolProg 64 :=
.seq RemovedBody799_363 RemovedBody799_368

def RemovedBody799_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody799_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody799_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 799 13

def RemovedBody799_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody799_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody799_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody799_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody799_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody799_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody799_379 : StackLang.HolProg 64 :=
.seq RemovedBody799_377 RemovedBody799_378

def RemovedBody799_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody799_381 : StackLang.HolProg 64 :=
.seq RemovedBody799_379 RemovedBody799_380

def RemovedBody799_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody799_383 : StackLang.HolProg 64 :=
.seq RemovedBody799_381 RemovedBody799_382

def RemovedBody799_384 : StackLang.HolProg 64 :=
.seq RemovedBody799_376 RemovedBody799_383

def RemovedBody799_385 : StackLang.HolProg 64 :=
.seq RemovedBody799_375 RemovedBody799_384

def RemovedBody799_386 : StackLang.HolProg 64 :=
.seq RemovedBody799_374 RemovedBody799_385

def RemovedBody799_387 : StackLang.HolProg 64 :=
.seq RemovedBody799_373 RemovedBody799_386

def RemovedBody799_388 : StackLang.HolProg 64 :=
.seq RemovedBody799_372 RemovedBody799_387

def RemovedBody799_389 : StackLang.HolProg 64 :=
.seq RemovedBody799_371 RemovedBody799_388

def RemovedBody799_390 : StackLang.HolProg 64 :=
.seq RemovedBody799_370 RemovedBody799_389

def RemovedBody799_391 : StackLang.HolProg 64 :=
.seq RemovedBody799_369 RemovedBody799_390

def RemovedBody799_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody799_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody799_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody799_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody799_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody799_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody799_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody799_399 : StackLang.HolProg 64 :=
.seq RemovedBody799_397 RemovedBody799_398

def RemovedBody799_400 : StackLang.HolProg 64 :=
.seq RemovedBody799_396 RemovedBody799_399

def RemovedBody799_401 : StackLang.HolProg 64 :=
.seq RemovedBody799_395 RemovedBody799_400

def RemovedBody799_402 : StackLang.HolProg 64 :=
.seq RemovedBody799_394 RemovedBody799_401

def RemovedBody799_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody799_404 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody799_405 : StackLang.HolProg 64 :=
.seq RemovedBody799_403 RemovedBody799_404

def RemovedBody799_406 : StackLang.HolProg 64 :=
.call (some (RemovedBody799_402, 0, 799, 12)) (Sum.inl 70) (some (RemovedBody799_405, 799, 13))

def RemovedBody799_407 : StackLang.HolProg 64 :=
.seq RemovedBody799_393 RemovedBody799_406

def RemovedBody799_408 : StackLang.HolProg 64 :=
.seq RemovedBody799_392 RemovedBody799_407

def RemovedBody799_409 : StackLang.HolProg 64 :=
.seq RemovedBody799_391 RemovedBody799_408

def RemovedBody799_410 : StackLang.HolProg 64 :=
.seq RemovedBody799_362 RemovedBody799_409

def RemovedBody799_411 : StackLang.HolProg 64 :=
.seq RemovedBody799_359 RemovedBody799_410

def RemovedBody799_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody799_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody799_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody799_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def RemovedBody799_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody799_417 : StackLang.HolProg 64 :=
.seq RemovedBody799_415 RemovedBody799_416

def RemovedBody799_418 : StackLang.HolProg 64 :=
.seq RemovedBody799_414 RemovedBody799_417

def RemovedBody799_419 : StackLang.HolProg 64 :=
.seq RemovedBody799_413 RemovedBody799_418

def RemovedBody799_420 : StackLang.HolProg 64 :=
.seq RemovedBody799_412 RemovedBody799_419

def RemovedBody799_421 : StackLang.HolProg 64 :=
.seq RemovedBody799_411 RemovedBody799_420

def RemovedBody799_422 : StackLang.HolProg 64 :=
.seq RemovedBody799_358 RemovedBody799_421

def RemovedBody799_423 : StackLang.HolProg 64 :=
.seq RemovedBody799_357 RemovedBody799_422

def RemovedBody799_424 : StackLang.HolProg 64 :=
.seq RemovedBody799_356 RemovedBody799_423

def RemovedBody799_425 : StackLang.HolProg 64 :=
.seq RemovedBody799_303 RemovedBody799_424

def RemovedBody799_426 : StackLang.HolProg 64 :=
.seq RemovedBody799_302 RemovedBody799_425

def RemovedBody799_427 : StackLang.HolProg 64 :=
.seq RemovedBody799_301 RemovedBody799_426

def RemovedBody799_428 : StackLang.HolProg 64 :=
.seq RemovedBody799_300 RemovedBody799_427

def RemovedBody799_429 : StackLang.HolProg 64 :=
.seq RemovedBody799_299 RemovedBody799_428

def RemovedBody799_430 : StackLang.HolProg 64 :=
.seq RemovedBody799_298 RemovedBody799_429

def RemovedBody799_431 : StackLang.HolProg 64 :=
.seq RemovedBody799_297 RemovedBody799_430

def RemovedBody799_432 : StackLang.HolProg 64 :=
.seq RemovedBody799_296 RemovedBody799_431

def RemovedBody799_433 : StackLang.HolProg 64 :=
.seq RemovedBody799_295 RemovedBody799_432

def RemovedBody799_434 : StackLang.HolProg 64 :=
.seq RemovedBody799_294 RemovedBody799_433

def RemovedBody799_435 : StackLang.HolProg 64 :=
.seq RemovedBody799_229 RemovedBody799_434

def RemovedBody799_436 : StackLang.HolProg 64 :=
.seq RemovedBody799_226 RemovedBody799_435

def RemovedBody799_437 : StackLang.HolProg 64 :=
.seq RemovedBody799_225 RemovedBody799_436

def RemovedBody799_438 : StackLang.HolProg 64 :=
.seq RemovedBody799_172 RemovedBody799_437

def RemovedBody799_439 : StackLang.HolProg 64 :=
.seq RemovedBody799_169 RemovedBody799_438

def RemovedBody799_440 : StackLang.HolProg 64 :=
.seq RemovedBody799_168 RemovedBody799_439

def RemovedBody799_441 : StackLang.HolProg 64 :=
.seq RemovedBody799_77 RemovedBody799_440

def RemovedBody799_442 : StackLang.HolProg 64 :=
.seq RemovedBody799_76 RemovedBody799_441

def RemovedBody799_443 : StackLang.HolProg 64 :=
.seq RemovedBody799_75 RemovedBody799_442

def RemovedBody799_444 : StackLang.HolProg 64 :=
.seq RemovedBody799_74 RemovedBody799_443

def RemovedBody799_445 : StackLang.HolProg 64 :=
.seq RemovedBody799_21 RemovedBody799_444

def RemovedBody799_446 : StackLang.HolProg 64 :=
.seq RemovedBody799_6 RemovedBody799_445

def Removed799 : Nat × StackLang.HolProg 64 := (799, RemovedBody799_446)
theorem Removed799_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc799 = Removed799 := by
  kernel_rfl
#print axioms Removed799_eq
end InitECandidate.Proofs.BackendStages
