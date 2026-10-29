import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc726
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody726_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def RemovedBody726_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody726_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody726_3 : StackLang.HolProg 64 :=
.seq RemovedBody726_1 RemovedBody726_2

def RemovedBody726_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody726_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody726_3 RemovedBody726_4

def RemovedBody726_6 : StackLang.HolProg 64 :=
.seq RemovedBody726_0 RemovedBody726_5

def RemovedBody726_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody726_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def RemovedBody726_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody726_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody726_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody726_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody726_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody726_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody726_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody726_16 : StackLang.HolProg 64 :=
.seq RemovedBody726_14 RemovedBody726_15

def RemovedBody726_17 : StackLang.HolProg 64 :=
.seq RemovedBody726_13 RemovedBody726_16

def RemovedBody726_18 : StackLang.HolProg 64 :=
.seq RemovedBody726_12 RemovedBody726_17

def RemovedBody726_19 : StackLang.HolProg 64 :=
.seq RemovedBody726_11 RemovedBody726_18

def RemovedBody726_20 : StackLang.HolProg 64 :=
.seq RemovedBody726_10 RemovedBody726_19

def RemovedBody726_21 : StackLang.HolProg 64 :=
.seq RemovedBody726_9 RemovedBody726_20

def RemovedBody726_22 : StackLang.HolProg 64 :=
.seq RemovedBody726_8 RemovedBody726_21

def RemovedBody726_23 : StackLang.HolProg 64 :=
.seq RemovedBody726_7 RemovedBody726_22

def RemovedBody726_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody726_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3248#64)

def RemovedBody726_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody726_27 : StackLang.HolProg 64 :=
.seq RemovedBody726_25 RemovedBody726_26

def RemovedBody726_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody726_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody726_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody726_31 : StackLang.HolProg 64 :=
.seq RemovedBody726_29 RemovedBody726_30

def RemovedBody726_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody726_33 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody726_31 RemovedBody726_32

def RemovedBody726_34 : StackLang.HolProg 64 :=
.seq RemovedBody726_28 RemovedBody726_33

def RemovedBody726_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody726_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody726_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 726 3

def RemovedBody726_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody726_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody726_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody726_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody726_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody726_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody726_44 : StackLang.HolProg 64 :=
.seq RemovedBody726_42 RemovedBody726_43

def RemovedBody726_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody726_46 : StackLang.HolProg 64 :=
.seq RemovedBody726_44 RemovedBody726_45

def RemovedBody726_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody726_48 : StackLang.HolProg 64 :=
.seq RemovedBody726_46 RemovedBody726_47

def RemovedBody726_49 : StackLang.HolProg 64 :=
.seq RemovedBody726_41 RemovedBody726_48

def RemovedBody726_50 : StackLang.HolProg 64 :=
.seq RemovedBody726_40 RemovedBody726_49

def RemovedBody726_51 : StackLang.HolProg 64 :=
.seq RemovedBody726_39 RemovedBody726_50

def RemovedBody726_52 : StackLang.HolProg 64 :=
.seq RemovedBody726_38 RemovedBody726_51

def RemovedBody726_53 : StackLang.HolProg 64 :=
.seq RemovedBody726_37 RemovedBody726_52

def RemovedBody726_54 : StackLang.HolProg 64 :=
.seq RemovedBody726_36 RemovedBody726_53

def RemovedBody726_55 : StackLang.HolProg 64 :=
.seq RemovedBody726_35 RemovedBody726_54

def RemovedBody726_56 : StackLang.HolProg 64 :=
.seq RemovedBody726_34 RemovedBody726_55

def RemovedBody726_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody726_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody726_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody726_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody726_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody726_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody726_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody726_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody726_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody726_66 : StackLang.HolProg 64 :=
.seq RemovedBody726_64 RemovedBody726_65

def RemovedBody726_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody726_68 : StackLang.HolProg 64 :=
.seq RemovedBody726_66 RemovedBody726_67

def RemovedBody726_69 : StackLang.HolProg 64 :=
.seq RemovedBody726_63 RemovedBody726_68

def RemovedBody726_70 : StackLang.HolProg 64 :=
.seq RemovedBody726_62 RemovedBody726_69

def RemovedBody726_71 : StackLang.HolProg 64 :=
.seq RemovedBody726_61 RemovedBody726_70

def RemovedBody726_72 : StackLang.HolProg 64 :=
.seq RemovedBody726_60 RemovedBody726_71

def RemovedBody726_73 : StackLang.HolProg 64 :=
.seq RemovedBody726_59 RemovedBody726_72

def RemovedBody726_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody726_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody726_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody726_77 : StackLang.HolProg 64 :=
.seq RemovedBody726_75 RemovedBody726_76

def RemovedBody726_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody726_79 : StackLang.HolProg 64 :=
.seq RemovedBody726_77 RemovedBody726_78

def RemovedBody726_80 : StackLang.HolProg 64 :=
.seq RemovedBody726_74 RemovedBody726_79

def RemovedBody726_81 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody726_82 : StackLang.HolProg 64 :=
.seq RemovedBody726_80 RemovedBody726_81

def RemovedBody726_83 : StackLang.HolProg 64 :=
.call (some (RemovedBody726_73, 0, 726, 2)) (Sum.inl 89) (some (RemovedBody726_82, 726, 3))

def RemovedBody726_84 : StackLang.HolProg 64 :=
.seq RemovedBody726_58 RemovedBody726_83

def RemovedBody726_85 : StackLang.HolProg 64 :=
.seq RemovedBody726_57 RemovedBody726_84

def RemovedBody726_86 : StackLang.HolProg 64 :=
.seq RemovedBody726_56 RemovedBody726_85

def RemovedBody726_87 : StackLang.HolProg 64 :=
.seq RemovedBody726_27 RemovedBody726_86

def RemovedBody726_88 : StackLang.HolProg 64 :=
.seq RemovedBody726_24 RemovedBody726_87

def RemovedBody726_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody726_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody726_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody726_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody726_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody726_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3249#64)

def RemovedBody726_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody726_96 : StackLang.HolProg 64 :=
.seq RemovedBody726_94 RemovedBody726_95

def RemovedBody726_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody726_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody726_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody726_100 : StackLang.HolProg 64 :=
.seq RemovedBody726_98 RemovedBody726_99

def RemovedBody726_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody726_102 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody726_100 RemovedBody726_101

def RemovedBody726_103 : StackLang.HolProg 64 :=
.seq RemovedBody726_97 RemovedBody726_102

def RemovedBody726_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody726_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody726_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 726 5

def RemovedBody726_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody726_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody726_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody726_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody726_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody726_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody726_113 : StackLang.HolProg 64 :=
.seq RemovedBody726_111 RemovedBody726_112

def RemovedBody726_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody726_115 : StackLang.HolProg 64 :=
.seq RemovedBody726_113 RemovedBody726_114

def RemovedBody726_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody726_117 : StackLang.HolProg 64 :=
.seq RemovedBody726_115 RemovedBody726_116

def RemovedBody726_118 : StackLang.HolProg 64 :=
.seq RemovedBody726_110 RemovedBody726_117

def RemovedBody726_119 : StackLang.HolProg 64 :=
.seq RemovedBody726_109 RemovedBody726_118

def RemovedBody726_120 : StackLang.HolProg 64 :=
.seq RemovedBody726_108 RemovedBody726_119

def RemovedBody726_121 : StackLang.HolProg 64 :=
.seq RemovedBody726_107 RemovedBody726_120

def RemovedBody726_122 : StackLang.HolProg 64 :=
.seq RemovedBody726_106 RemovedBody726_121

def RemovedBody726_123 : StackLang.HolProg 64 :=
.seq RemovedBody726_105 RemovedBody726_122

def RemovedBody726_124 : StackLang.HolProg 64 :=
.seq RemovedBody726_104 RemovedBody726_123

def RemovedBody726_125 : StackLang.HolProg 64 :=
.seq RemovedBody726_103 RemovedBody726_124

def RemovedBody726_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody726_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody726_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody726_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody726_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody726_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody726_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody726_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody726_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody726_135 : StackLang.HolProg 64 :=
.seq RemovedBody726_133 RemovedBody726_134

def RemovedBody726_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody726_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody726_138 : StackLang.HolProg 64 :=
.seq RemovedBody726_136 RemovedBody726_137

def RemovedBody726_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody726_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody726_141 : StackLang.HolProg 64 :=
.seq RemovedBody726_139 RemovedBody726_140

def RemovedBody726_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody726_143 : StackLang.HolProg 64 :=
.seq RemovedBody726_141 RemovedBody726_142

def RemovedBody726_144 : StackLang.HolProg 64 :=
.seq RemovedBody726_138 RemovedBody726_143

def RemovedBody726_145 : StackLang.HolProg 64 :=
.seq RemovedBody726_135 RemovedBody726_144

def RemovedBody726_146 : StackLang.HolProg 64 :=
.seq RemovedBody726_132 RemovedBody726_145

def RemovedBody726_147 : StackLang.HolProg 64 :=
.seq RemovedBody726_131 RemovedBody726_146

def RemovedBody726_148 : StackLang.HolProg 64 :=
.seq RemovedBody726_130 RemovedBody726_147

def RemovedBody726_149 : StackLang.HolProg 64 :=
.seq RemovedBody726_129 RemovedBody726_148

def RemovedBody726_150 : StackLang.HolProg 64 :=
.seq RemovedBody726_128 RemovedBody726_149

def RemovedBody726_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody726_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody726_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody726_154 : StackLang.HolProg 64 :=
.seq RemovedBody726_152 RemovedBody726_153

def RemovedBody726_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody726_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody726_157 : StackLang.HolProg 64 :=
.seq RemovedBody726_155 RemovedBody726_156

def RemovedBody726_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody726_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody726_160 : StackLang.HolProg 64 :=
.seq RemovedBody726_158 RemovedBody726_159

def RemovedBody726_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody726_162 : StackLang.HolProg 64 :=
.seq RemovedBody726_160 RemovedBody726_161

def RemovedBody726_163 : StackLang.HolProg 64 :=
.seq RemovedBody726_157 RemovedBody726_162

def RemovedBody726_164 : StackLang.HolProg 64 :=
.seq RemovedBody726_154 RemovedBody726_163

def RemovedBody726_165 : StackLang.HolProg 64 :=
.seq RemovedBody726_151 RemovedBody726_164

def RemovedBody726_166 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody726_167 : StackLang.HolProg 64 :=
.seq RemovedBody726_165 RemovedBody726_166

def RemovedBody726_168 : StackLang.HolProg 64 :=
.call (some (RemovedBody726_150, 0, 726, 4)) (Sum.inl 89) (some (RemovedBody726_167, 726, 5))

def RemovedBody726_169 : StackLang.HolProg 64 :=
.seq RemovedBody726_127 RemovedBody726_168

def RemovedBody726_170 : StackLang.HolProg 64 :=
.seq RemovedBody726_126 RemovedBody726_169

def RemovedBody726_171 : StackLang.HolProg 64 :=
.seq RemovedBody726_125 RemovedBody726_170

def RemovedBody726_172 : StackLang.HolProg 64 :=
.seq RemovedBody726_96 RemovedBody726_171

def RemovedBody726_173 : StackLang.HolProg 64 :=
.seq RemovedBody726_93 RemovedBody726_172

def RemovedBody726_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody726_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody726_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody726_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody726_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody726_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3250#64)

def RemovedBody726_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody726_181 : StackLang.HolProg 64 :=
.seq RemovedBody726_179 RemovedBody726_180

def RemovedBody726_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody726_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody726_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody726_185 : StackLang.HolProg 64 :=
.seq RemovedBody726_183 RemovedBody726_184

def RemovedBody726_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody726_187 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody726_185 RemovedBody726_186

def RemovedBody726_188 : StackLang.HolProg 64 :=
.seq RemovedBody726_182 RemovedBody726_187

def RemovedBody726_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody726_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody726_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 726 7

def RemovedBody726_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody726_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody726_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody726_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody726_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody726_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody726_198 : StackLang.HolProg 64 :=
.seq RemovedBody726_196 RemovedBody726_197

def RemovedBody726_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody726_200 : StackLang.HolProg 64 :=
.seq RemovedBody726_198 RemovedBody726_199

def RemovedBody726_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody726_202 : StackLang.HolProg 64 :=
.seq RemovedBody726_200 RemovedBody726_201

def RemovedBody726_203 : StackLang.HolProg 64 :=
.seq RemovedBody726_195 RemovedBody726_202

def RemovedBody726_204 : StackLang.HolProg 64 :=
.seq RemovedBody726_194 RemovedBody726_203

def RemovedBody726_205 : StackLang.HolProg 64 :=
.seq RemovedBody726_193 RemovedBody726_204

def RemovedBody726_206 : StackLang.HolProg 64 :=
.seq RemovedBody726_192 RemovedBody726_205

def RemovedBody726_207 : StackLang.HolProg 64 :=
.seq RemovedBody726_191 RemovedBody726_206

def RemovedBody726_208 : StackLang.HolProg 64 :=
.seq RemovedBody726_190 RemovedBody726_207

def RemovedBody726_209 : StackLang.HolProg 64 :=
.seq RemovedBody726_189 RemovedBody726_208

def RemovedBody726_210 : StackLang.HolProg 64 :=
.seq RemovedBody726_188 RemovedBody726_209

def RemovedBody726_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody726_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody726_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody726_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody726_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody726_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody726_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody726_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody726_219 : StackLang.HolProg 64 :=
.seq RemovedBody726_217 RemovedBody726_218

def RemovedBody726_220 : StackLang.HolProg 64 :=
.seq RemovedBody726_216 RemovedBody726_219

def RemovedBody726_221 : StackLang.HolProg 64 :=
.seq RemovedBody726_215 RemovedBody726_220

def RemovedBody726_222 : StackLang.HolProg 64 :=
.seq RemovedBody726_214 RemovedBody726_221

def RemovedBody726_223 : StackLang.HolProg 64 :=
.seq RemovedBody726_213 RemovedBody726_222

def RemovedBody726_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody726_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody726_226 : StackLang.HolProg 64 :=
.seq RemovedBody726_224 RemovedBody726_225

def RemovedBody726_227 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody726_228 : StackLang.HolProg 64 :=
.seq RemovedBody726_226 RemovedBody726_227

def RemovedBody726_229 : StackLang.HolProg 64 :=
.call (some (RemovedBody726_223, 0, 726, 6)) (Sum.inl 89) (some (RemovedBody726_228, 726, 7))

def RemovedBody726_230 : StackLang.HolProg 64 :=
.seq RemovedBody726_212 RemovedBody726_229

def RemovedBody726_231 : StackLang.HolProg 64 :=
.seq RemovedBody726_211 RemovedBody726_230

def RemovedBody726_232 : StackLang.HolProg 64 :=
.seq RemovedBody726_210 RemovedBody726_231

def RemovedBody726_233 : StackLang.HolProg 64 :=
.seq RemovedBody726_181 RemovedBody726_232

def RemovedBody726_234 : StackLang.HolProg 64 :=
.seq RemovedBody726_178 RemovedBody726_233

def RemovedBody726_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody726_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody726_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody726_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody726_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody726_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3251#64)

def RemovedBody726_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody726_242 : StackLang.HolProg 64 :=
.seq RemovedBody726_240 RemovedBody726_241

def RemovedBody726_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody726_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody726_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody726_246 : StackLang.HolProg 64 :=
.seq RemovedBody726_244 RemovedBody726_245

def RemovedBody726_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody726_248 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody726_246 RemovedBody726_247

def RemovedBody726_249 : StackLang.HolProg 64 :=
.seq RemovedBody726_243 RemovedBody726_248

def RemovedBody726_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody726_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody726_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 726 9

def RemovedBody726_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody726_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody726_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody726_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody726_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody726_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody726_259 : StackLang.HolProg 64 :=
.seq RemovedBody726_257 RemovedBody726_258

def RemovedBody726_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody726_261 : StackLang.HolProg 64 :=
.seq RemovedBody726_259 RemovedBody726_260

def RemovedBody726_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody726_263 : StackLang.HolProg 64 :=
.seq RemovedBody726_261 RemovedBody726_262

def RemovedBody726_264 : StackLang.HolProg 64 :=
.seq RemovedBody726_256 RemovedBody726_263

def RemovedBody726_265 : StackLang.HolProg 64 :=
.seq RemovedBody726_255 RemovedBody726_264

def RemovedBody726_266 : StackLang.HolProg 64 :=
.seq RemovedBody726_254 RemovedBody726_265

def RemovedBody726_267 : StackLang.HolProg 64 :=
.seq RemovedBody726_253 RemovedBody726_266

def RemovedBody726_268 : StackLang.HolProg 64 :=
.seq RemovedBody726_252 RemovedBody726_267

def RemovedBody726_269 : StackLang.HolProg 64 :=
.seq RemovedBody726_251 RemovedBody726_268

def RemovedBody726_270 : StackLang.HolProg 64 :=
.seq RemovedBody726_250 RemovedBody726_269

def RemovedBody726_271 : StackLang.HolProg 64 :=
.seq RemovedBody726_249 RemovedBody726_270

def RemovedBody726_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody726_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody726_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody726_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody726_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody726_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody726_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody726_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody726_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody726_281 : StackLang.HolProg 64 :=
.seq RemovedBody726_279 RemovedBody726_280

def RemovedBody726_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody726_283 : StackLang.HolProg 64 :=
.seq RemovedBody726_281 RemovedBody726_282

def RemovedBody726_284 : StackLang.HolProg 64 :=
.seq RemovedBody726_278 RemovedBody726_283

def RemovedBody726_285 : StackLang.HolProg 64 :=
.seq RemovedBody726_277 RemovedBody726_284

def RemovedBody726_286 : StackLang.HolProg 64 :=
.seq RemovedBody726_276 RemovedBody726_285

def RemovedBody726_287 : StackLang.HolProg 64 :=
.seq RemovedBody726_275 RemovedBody726_286

def RemovedBody726_288 : StackLang.HolProg 64 :=
.seq RemovedBody726_274 RemovedBody726_287

def RemovedBody726_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody726_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody726_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody726_292 : StackLang.HolProg 64 :=
.seq RemovedBody726_290 RemovedBody726_291

def RemovedBody726_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody726_294 : StackLang.HolProg 64 :=
.seq RemovedBody726_292 RemovedBody726_293

def RemovedBody726_295 : StackLang.HolProg 64 :=
.seq RemovedBody726_289 RemovedBody726_294

def RemovedBody726_296 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody726_297 : StackLang.HolProg 64 :=
.seq RemovedBody726_295 RemovedBody726_296

def RemovedBody726_298 : StackLang.HolProg 64 :=
.call (some (RemovedBody726_288, 0, 726, 8)) (Sum.inl 89) (some (RemovedBody726_297, 726, 9))

def RemovedBody726_299 : StackLang.HolProg 64 :=
.seq RemovedBody726_273 RemovedBody726_298

def RemovedBody726_300 : StackLang.HolProg 64 :=
.seq RemovedBody726_272 RemovedBody726_299

def RemovedBody726_301 : StackLang.HolProg 64 :=
.seq RemovedBody726_271 RemovedBody726_300

def RemovedBody726_302 : StackLang.HolProg 64 :=
.seq RemovedBody726_242 RemovedBody726_301

def RemovedBody726_303 : StackLang.HolProg 64 :=
.seq RemovedBody726_239 RemovedBody726_302

def RemovedBody726_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody726_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody726_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody726_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody726_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody726_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3252#64)

def RemovedBody726_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody726_311 : StackLang.HolProg 64 :=
.seq RemovedBody726_309 RemovedBody726_310

def RemovedBody726_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody726_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody726_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody726_315 : StackLang.HolProg 64 :=
.seq RemovedBody726_313 RemovedBody726_314

def RemovedBody726_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody726_317 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody726_315 RemovedBody726_316

def RemovedBody726_318 : StackLang.HolProg 64 :=
.seq RemovedBody726_312 RemovedBody726_317

def RemovedBody726_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody726_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody726_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 726 11

def RemovedBody726_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody726_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody726_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody726_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody726_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody726_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody726_328 : StackLang.HolProg 64 :=
.seq RemovedBody726_326 RemovedBody726_327

def RemovedBody726_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody726_330 : StackLang.HolProg 64 :=
.seq RemovedBody726_328 RemovedBody726_329

def RemovedBody726_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody726_332 : StackLang.HolProg 64 :=
.seq RemovedBody726_330 RemovedBody726_331

def RemovedBody726_333 : StackLang.HolProg 64 :=
.seq RemovedBody726_325 RemovedBody726_332

def RemovedBody726_334 : StackLang.HolProg 64 :=
.seq RemovedBody726_324 RemovedBody726_333

def RemovedBody726_335 : StackLang.HolProg 64 :=
.seq RemovedBody726_323 RemovedBody726_334

def RemovedBody726_336 : StackLang.HolProg 64 :=
.seq RemovedBody726_322 RemovedBody726_335

def RemovedBody726_337 : StackLang.HolProg 64 :=
.seq RemovedBody726_321 RemovedBody726_336

def RemovedBody726_338 : StackLang.HolProg 64 :=
.seq RemovedBody726_320 RemovedBody726_337

def RemovedBody726_339 : StackLang.HolProg 64 :=
.seq RemovedBody726_319 RemovedBody726_338

def RemovedBody726_340 : StackLang.HolProg 64 :=
.seq RemovedBody726_318 RemovedBody726_339

def RemovedBody726_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody726_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody726_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody726_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody726_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody726_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody726_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody726_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody726_349 : StackLang.HolProg 64 :=
.seq RemovedBody726_347 RemovedBody726_348

def RemovedBody726_350 : StackLang.HolProg 64 :=
.seq RemovedBody726_346 RemovedBody726_349

def RemovedBody726_351 : StackLang.HolProg 64 :=
.seq RemovedBody726_345 RemovedBody726_350

def RemovedBody726_352 : StackLang.HolProg 64 :=
.seq RemovedBody726_344 RemovedBody726_351

def RemovedBody726_353 : StackLang.HolProg 64 :=
.seq RemovedBody726_343 RemovedBody726_352

def RemovedBody726_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody726_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody726_356 : StackLang.HolProg 64 :=
.seq RemovedBody726_354 RemovedBody726_355

def RemovedBody726_357 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody726_358 : StackLang.HolProg 64 :=
.seq RemovedBody726_356 RemovedBody726_357

def RemovedBody726_359 : StackLang.HolProg 64 :=
.call (some (RemovedBody726_353, 0, 726, 10)) (Sum.inl 89) (some (RemovedBody726_358, 726, 11))

def RemovedBody726_360 : StackLang.HolProg 64 :=
.seq RemovedBody726_342 RemovedBody726_359

def RemovedBody726_361 : StackLang.HolProg 64 :=
.seq RemovedBody726_341 RemovedBody726_360

def RemovedBody726_362 : StackLang.HolProg 64 :=
.seq RemovedBody726_340 RemovedBody726_361

def RemovedBody726_363 : StackLang.HolProg 64 :=
.seq RemovedBody726_311 RemovedBody726_362

def RemovedBody726_364 : StackLang.HolProg 64 :=
.seq RemovedBody726_308 RemovedBody726_363

def RemovedBody726_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody726_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody726_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody726_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody726_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody726_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3253#64)

def RemovedBody726_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody726_372 : StackLang.HolProg 64 :=
.seq RemovedBody726_370 RemovedBody726_371

def RemovedBody726_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody726_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody726_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody726_376 : StackLang.HolProg 64 :=
.seq RemovedBody726_374 RemovedBody726_375

def RemovedBody726_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody726_378 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody726_376 RemovedBody726_377

def RemovedBody726_379 : StackLang.HolProg 64 :=
.seq RemovedBody726_373 RemovedBody726_378

def RemovedBody726_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody726_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody726_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 726 13

def RemovedBody726_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody726_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody726_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody726_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody726_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody726_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody726_389 : StackLang.HolProg 64 :=
.seq RemovedBody726_387 RemovedBody726_388

def RemovedBody726_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody726_391 : StackLang.HolProg 64 :=
.seq RemovedBody726_389 RemovedBody726_390

def RemovedBody726_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody726_393 : StackLang.HolProg 64 :=
.seq RemovedBody726_391 RemovedBody726_392

def RemovedBody726_394 : StackLang.HolProg 64 :=
.seq RemovedBody726_386 RemovedBody726_393

def RemovedBody726_395 : StackLang.HolProg 64 :=
.seq RemovedBody726_385 RemovedBody726_394

def RemovedBody726_396 : StackLang.HolProg 64 :=
.seq RemovedBody726_384 RemovedBody726_395

def RemovedBody726_397 : StackLang.HolProg 64 :=
.seq RemovedBody726_383 RemovedBody726_396

def RemovedBody726_398 : StackLang.HolProg 64 :=
.seq RemovedBody726_382 RemovedBody726_397

def RemovedBody726_399 : StackLang.HolProg 64 :=
.seq RemovedBody726_381 RemovedBody726_398

def RemovedBody726_400 : StackLang.HolProg 64 :=
.seq RemovedBody726_380 RemovedBody726_399

def RemovedBody726_401 : StackLang.HolProg 64 :=
.seq RemovedBody726_379 RemovedBody726_400

def RemovedBody726_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody726_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody726_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody726_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody726_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody726_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody726_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody726_409 : StackLang.HolProg 64 :=
.seq RemovedBody726_407 RemovedBody726_408

def RemovedBody726_410 : StackLang.HolProg 64 :=
.seq RemovedBody726_406 RemovedBody726_409

def RemovedBody726_411 : StackLang.HolProg 64 :=
.seq RemovedBody726_405 RemovedBody726_410

def RemovedBody726_412 : StackLang.HolProg 64 :=
.seq RemovedBody726_404 RemovedBody726_411

def RemovedBody726_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody726_414 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody726_415 : StackLang.HolProg 64 :=
.seq RemovedBody726_413 RemovedBody726_414

def RemovedBody726_416 : StackLang.HolProg 64 :=
.call (some (RemovedBody726_412, 0, 726, 12)) (Sum.inl 89) (some (RemovedBody726_415, 726, 13))

def RemovedBody726_417 : StackLang.HolProg 64 :=
.seq RemovedBody726_403 RemovedBody726_416

def RemovedBody726_418 : StackLang.HolProg 64 :=
.seq RemovedBody726_402 RemovedBody726_417

def RemovedBody726_419 : StackLang.HolProg 64 :=
.seq RemovedBody726_401 RemovedBody726_418

def RemovedBody726_420 : StackLang.HolProg 64 :=
.seq RemovedBody726_372 RemovedBody726_419

def RemovedBody726_421 : StackLang.HolProg 64 :=
.seq RemovedBody726_369 RemovedBody726_420

def RemovedBody726_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody726_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody726_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody726_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def RemovedBody726_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody726_427 : StackLang.HolProg 64 :=
.seq RemovedBody726_425 RemovedBody726_426

def RemovedBody726_428 : StackLang.HolProg 64 :=
.seq RemovedBody726_424 RemovedBody726_427

def RemovedBody726_429 : StackLang.HolProg 64 :=
.seq RemovedBody726_423 RemovedBody726_428

def RemovedBody726_430 : StackLang.HolProg 64 :=
.seq RemovedBody726_422 RemovedBody726_429

def RemovedBody726_431 : StackLang.HolProg 64 :=
.seq RemovedBody726_421 RemovedBody726_430

def RemovedBody726_432 : StackLang.HolProg 64 :=
.seq RemovedBody726_368 RemovedBody726_431

def RemovedBody726_433 : StackLang.HolProg 64 :=
.seq RemovedBody726_367 RemovedBody726_432

def RemovedBody726_434 : StackLang.HolProg 64 :=
.seq RemovedBody726_366 RemovedBody726_433

def RemovedBody726_435 : StackLang.HolProg 64 :=
.seq RemovedBody726_365 RemovedBody726_434

def RemovedBody726_436 : StackLang.HolProg 64 :=
.seq RemovedBody726_364 RemovedBody726_435

def RemovedBody726_437 : StackLang.HolProg 64 :=
.seq RemovedBody726_307 RemovedBody726_436

def RemovedBody726_438 : StackLang.HolProg 64 :=
.seq RemovedBody726_306 RemovedBody726_437

def RemovedBody726_439 : StackLang.HolProg 64 :=
.seq RemovedBody726_305 RemovedBody726_438

def RemovedBody726_440 : StackLang.HolProg 64 :=
.seq RemovedBody726_304 RemovedBody726_439

def RemovedBody726_441 : StackLang.HolProg 64 :=
.seq RemovedBody726_303 RemovedBody726_440

def RemovedBody726_442 : StackLang.HolProg 64 :=
.seq RemovedBody726_238 RemovedBody726_441

def RemovedBody726_443 : StackLang.HolProg 64 :=
.seq RemovedBody726_237 RemovedBody726_442

def RemovedBody726_444 : StackLang.HolProg 64 :=
.seq RemovedBody726_236 RemovedBody726_443

def RemovedBody726_445 : StackLang.HolProg 64 :=
.seq RemovedBody726_235 RemovedBody726_444

def RemovedBody726_446 : StackLang.HolProg 64 :=
.seq RemovedBody726_234 RemovedBody726_445

def RemovedBody726_447 : StackLang.HolProg 64 :=
.seq RemovedBody726_177 RemovedBody726_446

def RemovedBody726_448 : StackLang.HolProg 64 :=
.seq RemovedBody726_176 RemovedBody726_447

def RemovedBody726_449 : StackLang.HolProg 64 :=
.seq RemovedBody726_175 RemovedBody726_448

def RemovedBody726_450 : StackLang.HolProg 64 :=
.seq RemovedBody726_174 RemovedBody726_449

def RemovedBody726_451 : StackLang.HolProg 64 :=
.seq RemovedBody726_173 RemovedBody726_450

def RemovedBody726_452 : StackLang.HolProg 64 :=
.seq RemovedBody726_92 RemovedBody726_451

def RemovedBody726_453 : StackLang.HolProg 64 :=
.seq RemovedBody726_91 RemovedBody726_452

def RemovedBody726_454 : StackLang.HolProg 64 :=
.seq RemovedBody726_90 RemovedBody726_453

def RemovedBody726_455 : StackLang.HolProg 64 :=
.seq RemovedBody726_89 RemovedBody726_454

def RemovedBody726_456 : StackLang.HolProg 64 :=
.seq RemovedBody726_88 RemovedBody726_455

def RemovedBody726_457 : StackLang.HolProg 64 :=
.seq RemovedBody726_23 RemovedBody726_456

def RemovedBody726_458 : StackLang.HolProg 64 :=
.seq RemovedBody726_6 RemovedBody726_457

def Removed726 : Nat × StackLang.HolProg 64 := (726, RemovedBody726_458)
theorem Removed726_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc726 = Removed726 := by
  kernel_rfl
#print axioms Removed726_eq
end InitECandidate.Proofs.BackendStages
