import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc321
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody321_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody321_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody321_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody321_3 : StackLang.HolProg 64 :=
.seq RemovedBody321_1 RemovedBody321_2

def RemovedBody321_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody321_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody321_3 RemovedBody321_4

def RemovedBody321_6 : StackLang.HolProg 64 :=
.seq RemovedBody321_0 RemovedBody321_5

def RemovedBody321_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody321_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def RemovedBody321_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody321_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def RemovedBody321_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody321_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody321_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 3#64)

def RemovedBody321_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody321_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody321_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 40#64))

def RemovedBody321_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody321_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody321_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def RemovedBody321_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody321_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody321_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody321_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody321_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody321_25 : StackLang.HolProg 64 :=
.seq RemovedBody321_23 RemovedBody321_24

def RemovedBody321_26 : StackLang.HolProg 64 :=
.seq RemovedBody321_22 RemovedBody321_25

def RemovedBody321_27 : StackLang.HolProg 64 :=
.seq RemovedBody321_21 RemovedBody321_26

def RemovedBody321_28 : StackLang.HolProg 64 :=
.seq RemovedBody321_20 RemovedBody321_27

def RemovedBody321_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody321_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 899#64)

def RemovedBody321_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody321_32 : StackLang.HolProg 64 :=
.seq RemovedBody321_30 RemovedBody321_31

def RemovedBody321_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody321_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody321_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody321_36 : StackLang.HolProg 64 :=
.seq RemovedBody321_34 RemovedBody321_35

def RemovedBody321_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody321_38 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody321_36 RemovedBody321_37

def RemovedBody321_39 : StackLang.HolProg 64 :=
.seq RemovedBody321_33 RemovedBody321_38

def RemovedBody321_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody321_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody321_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 321 3

def RemovedBody321_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody321_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody321_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody321_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody321_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody321_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody321_49 : StackLang.HolProg 64 :=
.seq RemovedBody321_47 RemovedBody321_48

def RemovedBody321_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody321_51 : StackLang.HolProg 64 :=
.seq RemovedBody321_49 RemovedBody321_50

def RemovedBody321_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody321_53 : StackLang.HolProg 64 :=
.seq RemovedBody321_51 RemovedBody321_52

def RemovedBody321_54 : StackLang.HolProg 64 :=
.seq RemovedBody321_46 RemovedBody321_53

def RemovedBody321_55 : StackLang.HolProg 64 :=
.seq RemovedBody321_45 RemovedBody321_54

def RemovedBody321_56 : StackLang.HolProg 64 :=
.seq RemovedBody321_44 RemovedBody321_55

def RemovedBody321_57 : StackLang.HolProg 64 :=
.seq RemovedBody321_43 RemovedBody321_56

def RemovedBody321_58 : StackLang.HolProg 64 :=
.seq RemovedBody321_42 RemovedBody321_57

def RemovedBody321_59 : StackLang.HolProg 64 :=
.seq RemovedBody321_41 RemovedBody321_58

def RemovedBody321_60 : StackLang.HolProg 64 :=
.seq RemovedBody321_40 RemovedBody321_59

def RemovedBody321_61 : StackLang.HolProg 64 :=
.seq RemovedBody321_39 RemovedBody321_60

def RemovedBody321_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody321_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody321_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody321_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody321_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody321_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody321_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody321_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody321_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody321_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody321_72 : StackLang.HolProg 64 :=
.seq RemovedBody321_70 RemovedBody321_71

def RemovedBody321_73 : StackLang.HolProg 64 :=
.seq RemovedBody321_69 RemovedBody321_72

def RemovedBody321_74 : StackLang.HolProg 64 :=
.seq RemovedBody321_68 RemovedBody321_73

def RemovedBody321_75 : StackLang.HolProg 64 :=
.seq RemovedBody321_67 RemovedBody321_74

def RemovedBody321_76 : StackLang.HolProg 64 :=
.seq RemovedBody321_66 RemovedBody321_75

def RemovedBody321_77 : StackLang.HolProg 64 :=
.seq RemovedBody321_65 RemovedBody321_76

def RemovedBody321_78 : StackLang.HolProg 64 :=
.seq RemovedBody321_64 RemovedBody321_77

def RemovedBody321_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody321_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody321_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody321_82 : StackLang.HolProg 64 :=
.seq RemovedBody321_80 RemovedBody321_81

def RemovedBody321_83 : StackLang.HolProg 64 :=
.seq RemovedBody321_79 RemovedBody321_82

def RemovedBody321_84 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody321_85 : StackLang.HolProg 64 :=
.seq RemovedBody321_83 RemovedBody321_84

def RemovedBody321_86 : StackLang.HolProg 64 :=
.call (some (RemovedBody321_78, 0, 321, 2)) (Sum.inl 68) (some (RemovedBody321_85, 321, 3))

def RemovedBody321_87 : StackLang.HolProg 64 :=
.seq RemovedBody321_63 RemovedBody321_86

def RemovedBody321_88 : StackLang.HolProg 64 :=
.seq RemovedBody321_62 RemovedBody321_87

def RemovedBody321_89 : StackLang.HolProg 64 :=
.seq RemovedBody321_61 RemovedBody321_88

def RemovedBody321_90 : StackLang.HolProg 64 :=
.seq RemovedBody321_32 RemovedBody321_89

def RemovedBody321_91 : StackLang.HolProg 64 :=
.seq RemovedBody321_29 RemovedBody321_90

def RemovedBody321_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody321_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody321_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody321_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody321_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody321_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1#64)

def RemovedBody321_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody321_99 : StackLang.HolProg 64 :=
.seq RemovedBody321_97 RemovedBody321_98

def RemovedBody321_100 : StackLang.HolProg 64 :=
.seq RemovedBody321_96 RemovedBody321_99

def RemovedBody321_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody321_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody321_103 : StackLang.HolProg 64 :=
.seq RemovedBody321_101 RemovedBody321_102

def RemovedBody321_104 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody321_100 RemovedBody321_103

def RemovedBody321_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody321_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody321_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 32#64))

def RemovedBody321_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody321_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody321_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody321_111 : StackLang.HolProg 64 :=
.seq RemovedBody321_109 RemovedBody321_110

def RemovedBody321_112 : StackLang.HolProg 64 :=
.seq RemovedBody321_108 RemovedBody321_111

def RemovedBody321_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody321_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 900#64)

def RemovedBody321_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody321_116 : StackLang.HolProg 64 :=
.seq RemovedBody321_114 RemovedBody321_115

def RemovedBody321_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody321_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody321_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody321_120 : StackLang.HolProg 64 :=
.seq RemovedBody321_118 RemovedBody321_119

def RemovedBody321_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody321_122 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody321_120 RemovedBody321_121

def RemovedBody321_123 : StackLang.HolProg 64 :=
.seq RemovedBody321_117 RemovedBody321_122

def RemovedBody321_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody321_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody321_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 321 5

def RemovedBody321_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody321_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody321_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody321_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody321_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody321_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody321_133 : StackLang.HolProg 64 :=
.seq RemovedBody321_131 RemovedBody321_132

def RemovedBody321_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody321_135 : StackLang.HolProg 64 :=
.seq RemovedBody321_133 RemovedBody321_134

def RemovedBody321_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody321_137 : StackLang.HolProg 64 :=
.seq RemovedBody321_135 RemovedBody321_136

def RemovedBody321_138 : StackLang.HolProg 64 :=
.seq RemovedBody321_130 RemovedBody321_137

def RemovedBody321_139 : StackLang.HolProg 64 :=
.seq RemovedBody321_129 RemovedBody321_138

def RemovedBody321_140 : StackLang.HolProg 64 :=
.seq RemovedBody321_128 RemovedBody321_139

def RemovedBody321_141 : StackLang.HolProg 64 :=
.seq RemovedBody321_127 RemovedBody321_140

def RemovedBody321_142 : StackLang.HolProg 64 :=
.seq RemovedBody321_126 RemovedBody321_141

def RemovedBody321_143 : StackLang.HolProg 64 :=
.seq RemovedBody321_125 RemovedBody321_142

def RemovedBody321_144 : StackLang.HolProg 64 :=
.seq RemovedBody321_124 RemovedBody321_143

def RemovedBody321_145 : StackLang.HolProg 64 :=
.seq RemovedBody321_123 RemovedBody321_144

def RemovedBody321_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody321_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody321_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody321_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody321_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody321_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody321_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody321_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody321_154 : StackLang.HolProg 64 :=
.seq RemovedBody321_152 RemovedBody321_153

def RemovedBody321_155 : StackLang.HolProg 64 :=
.seq RemovedBody321_151 RemovedBody321_154

def RemovedBody321_156 : StackLang.HolProg 64 :=
.seq RemovedBody321_150 RemovedBody321_155

def RemovedBody321_157 : StackLang.HolProg 64 :=
.seq RemovedBody321_149 RemovedBody321_156

def RemovedBody321_158 : StackLang.HolProg 64 :=
.seq RemovedBody321_148 RemovedBody321_157

def RemovedBody321_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody321_160 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody321_161 : StackLang.HolProg 64 :=
.seq RemovedBody321_159 RemovedBody321_160

def RemovedBody321_162 : StackLang.HolProg 64 :=
.call (some (RemovedBody321_158, 0, 321, 4)) (Sum.inl 290) (some (RemovedBody321_161, 321, 5))

def RemovedBody321_163 : StackLang.HolProg 64 :=
.seq RemovedBody321_147 RemovedBody321_162

def RemovedBody321_164 : StackLang.HolProg 64 :=
.seq RemovedBody321_146 RemovedBody321_163

def RemovedBody321_165 : StackLang.HolProg 64 :=
.seq RemovedBody321_145 RemovedBody321_164

def RemovedBody321_166 : StackLang.HolProg 64 :=
.seq RemovedBody321_116 RemovedBody321_165

def RemovedBody321_167 : StackLang.HolProg 64 :=
.seq RemovedBody321_113 RemovedBody321_166

def RemovedBody321_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody321_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody321_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedBody321_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody321_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody321_173 : StackLang.HolProg 64 :=
.seq RemovedBody321_171 RemovedBody321_172

def RemovedBody321_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody321_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 901#64)

def RemovedBody321_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody321_177 : StackLang.HolProg 64 :=
.seq RemovedBody321_175 RemovedBody321_176

def RemovedBody321_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody321_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody321_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody321_181 : StackLang.HolProg 64 :=
.seq RemovedBody321_179 RemovedBody321_180

def RemovedBody321_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody321_183 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody321_181 RemovedBody321_182

def RemovedBody321_184 : StackLang.HolProg 64 :=
.seq RemovedBody321_178 RemovedBody321_183

def RemovedBody321_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody321_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody321_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 321 7

def RemovedBody321_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody321_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody321_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody321_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody321_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody321_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody321_194 : StackLang.HolProg 64 :=
.seq RemovedBody321_192 RemovedBody321_193

def RemovedBody321_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody321_196 : StackLang.HolProg 64 :=
.seq RemovedBody321_194 RemovedBody321_195

def RemovedBody321_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody321_198 : StackLang.HolProg 64 :=
.seq RemovedBody321_196 RemovedBody321_197

def RemovedBody321_199 : StackLang.HolProg 64 :=
.seq RemovedBody321_191 RemovedBody321_198

def RemovedBody321_200 : StackLang.HolProg 64 :=
.seq RemovedBody321_190 RemovedBody321_199

def RemovedBody321_201 : StackLang.HolProg 64 :=
.seq RemovedBody321_189 RemovedBody321_200

def RemovedBody321_202 : StackLang.HolProg 64 :=
.seq RemovedBody321_188 RemovedBody321_201

def RemovedBody321_203 : StackLang.HolProg 64 :=
.seq RemovedBody321_187 RemovedBody321_202

def RemovedBody321_204 : StackLang.HolProg 64 :=
.seq RemovedBody321_186 RemovedBody321_203

def RemovedBody321_205 : StackLang.HolProg 64 :=
.seq RemovedBody321_185 RemovedBody321_204

def RemovedBody321_206 : StackLang.HolProg 64 :=
.seq RemovedBody321_184 RemovedBody321_205

def RemovedBody321_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody321_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody321_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody321_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody321_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody321_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody321_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody321_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody321_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody321_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody321_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody321_218 : StackLang.HolProg 64 :=
.seq RemovedBody321_216 RemovedBody321_217

def RemovedBody321_219 : StackLang.HolProg 64 :=
.seq RemovedBody321_215 RemovedBody321_218

def RemovedBody321_220 : StackLang.HolProg 64 :=
.seq RemovedBody321_214 RemovedBody321_219

def RemovedBody321_221 : StackLang.HolProg 64 :=
.seq RemovedBody321_213 RemovedBody321_220

def RemovedBody321_222 : StackLang.HolProg 64 :=
.seq RemovedBody321_212 RemovedBody321_221

def RemovedBody321_223 : StackLang.HolProg 64 :=
.seq RemovedBody321_211 RemovedBody321_222

def RemovedBody321_224 : StackLang.HolProg 64 :=
.seq RemovedBody321_210 RemovedBody321_223

def RemovedBody321_225 : StackLang.HolProg 64 :=
.seq RemovedBody321_209 RemovedBody321_224

def RemovedBody321_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody321_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody321_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody321_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody321_230 : StackLang.HolProg 64 :=
.seq RemovedBody321_228 RemovedBody321_229

def RemovedBody321_231 : StackLang.HolProg 64 :=
.seq RemovedBody321_227 RemovedBody321_230

def RemovedBody321_232 : StackLang.HolProg 64 :=
.seq RemovedBody321_226 RemovedBody321_231

def RemovedBody321_233 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody321_234 : StackLang.HolProg 64 :=
.seq RemovedBody321_232 RemovedBody321_233

def RemovedBody321_235 : StackLang.HolProg 64 :=
.call (some (RemovedBody321_225, 0, 321, 6)) (Sum.inl 179) (some (RemovedBody321_234, 321, 7))

def RemovedBody321_236 : StackLang.HolProg 64 :=
.seq RemovedBody321_208 RemovedBody321_235

def RemovedBody321_237 : StackLang.HolProg 64 :=
.seq RemovedBody321_207 RemovedBody321_236

def RemovedBody321_238 : StackLang.HolProg 64 :=
.seq RemovedBody321_206 RemovedBody321_237

def RemovedBody321_239 : StackLang.HolProg 64 :=
.seq RemovedBody321_177 RemovedBody321_238

def RemovedBody321_240 : StackLang.HolProg 64 :=
.seq RemovedBody321_174 RemovedBody321_239

def RemovedBody321_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody321_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody321_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody321_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody321_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody321_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 48#64))

def RemovedBody321_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody321_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 56#64))

def RemovedBody321_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody321_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody321_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 902#64)

def RemovedBody321_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody321_253 : StackLang.HolProg 64 :=
.seq RemovedBody321_251 RemovedBody321_252

def RemovedBody321_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody321_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody321_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody321_257 : StackLang.HolProg 64 :=
.seq RemovedBody321_255 RemovedBody321_256

def RemovedBody321_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody321_259 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody321_257 RemovedBody321_258

def RemovedBody321_260 : StackLang.HolProg 64 :=
.seq RemovedBody321_254 RemovedBody321_259

def RemovedBody321_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody321_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody321_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 321 9

def RemovedBody321_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody321_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody321_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody321_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody321_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody321_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody321_270 : StackLang.HolProg 64 :=
.seq RemovedBody321_268 RemovedBody321_269

def RemovedBody321_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody321_272 : StackLang.HolProg 64 :=
.seq RemovedBody321_270 RemovedBody321_271

def RemovedBody321_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody321_274 : StackLang.HolProg 64 :=
.seq RemovedBody321_272 RemovedBody321_273

def RemovedBody321_275 : StackLang.HolProg 64 :=
.seq RemovedBody321_267 RemovedBody321_274

def RemovedBody321_276 : StackLang.HolProg 64 :=
.seq RemovedBody321_266 RemovedBody321_275

def RemovedBody321_277 : StackLang.HolProg 64 :=
.seq RemovedBody321_265 RemovedBody321_276

def RemovedBody321_278 : StackLang.HolProg 64 :=
.seq RemovedBody321_264 RemovedBody321_277

def RemovedBody321_279 : StackLang.HolProg 64 :=
.seq RemovedBody321_263 RemovedBody321_278

def RemovedBody321_280 : StackLang.HolProg 64 :=
.seq RemovedBody321_262 RemovedBody321_279

def RemovedBody321_281 : StackLang.HolProg 64 :=
.seq RemovedBody321_261 RemovedBody321_280

def RemovedBody321_282 : StackLang.HolProg 64 :=
.seq RemovedBody321_260 RemovedBody321_281

def RemovedBody321_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody321_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody321_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody321_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody321_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody321_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody321_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody321_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody321_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody321_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody321_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody321_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody321_295 : StackLang.HolProg 64 :=
.seq RemovedBody321_293 RemovedBody321_294

def RemovedBody321_296 : StackLang.HolProg 64 :=
.seq RemovedBody321_292 RemovedBody321_295

def RemovedBody321_297 : StackLang.HolProg 64 :=
.seq RemovedBody321_291 RemovedBody321_296

def RemovedBody321_298 : StackLang.HolProg 64 :=
.seq RemovedBody321_290 RemovedBody321_297

def RemovedBody321_299 : StackLang.HolProg 64 :=
.seq RemovedBody321_289 RemovedBody321_298

def RemovedBody321_300 : StackLang.HolProg 64 :=
.seq RemovedBody321_288 RemovedBody321_299

def RemovedBody321_301 : StackLang.HolProg 64 :=
.seq RemovedBody321_287 RemovedBody321_300

def RemovedBody321_302 : StackLang.HolProg 64 :=
.seq RemovedBody321_286 RemovedBody321_301

def RemovedBody321_303 : StackLang.HolProg 64 :=
.seq RemovedBody321_285 RemovedBody321_302

def RemovedBody321_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody321_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody321_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody321_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody321_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody321_309 : StackLang.HolProg 64 :=
.seq RemovedBody321_307 RemovedBody321_308

def RemovedBody321_310 : StackLang.HolProg 64 :=
.seq RemovedBody321_306 RemovedBody321_309

def RemovedBody321_311 : StackLang.HolProg 64 :=
.seq RemovedBody321_305 RemovedBody321_310

def RemovedBody321_312 : StackLang.HolProg 64 :=
.seq RemovedBody321_304 RemovedBody321_311

def RemovedBody321_313 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody321_314 : StackLang.HolProg 64 :=
.seq RemovedBody321_312 RemovedBody321_313

def RemovedBody321_315 : StackLang.HolProg 64 :=
.call (some (RemovedBody321_303, 0, 321, 8)) (Sum.inl 326) (some (RemovedBody321_314, 321, 9))

def RemovedBody321_316 : StackLang.HolProg 64 :=
.seq RemovedBody321_284 RemovedBody321_315

def RemovedBody321_317 : StackLang.HolProg 64 :=
.seq RemovedBody321_283 RemovedBody321_316

def RemovedBody321_318 : StackLang.HolProg 64 :=
.seq RemovedBody321_282 RemovedBody321_317

def RemovedBody321_319 : StackLang.HolProg 64 :=
.seq RemovedBody321_253 RemovedBody321_318

def RemovedBody321_320 : StackLang.HolProg 64 :=
.seq RemovedBody321_250 RemovedBody321_319

def RemovedBody321_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody321_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody321_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody321_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody321_325 : StackLang.HolProg 64 :=
.seq RemovedBody321_323 RemovedBody321_324

def RemovedBody321_326 : StackLang.HolProg 64 :=
.seq RemovedBody321_322 RemovedBody321_325

def RemovedBody321_327 : StackLang.HolProg 64 :=
.seq RemovedBody321_321 RemovedBody321_326

def RemovedBody321_328 : StackLang.HolProg 64 :=
.seq RemovedBody321_320 RemovedBody321_327

def RemovedBody321_329 : StackLang.HolProg 64 :=
.seq RemovedBody321_249 RemovedBody321_328

def RemovedBody321_330 : StackLang.HolProg 64 :=
.seq RemovedBody321_248 RemovedBody321_329

def RemovedBody321_331 : StackLang.HolProg 64 :=
.seq RemovedBody321_247 RemovedBody321_330

def RemovedBody321_332 : StackLang.HolProg 64 :=
.seq RemovedBody321_246 RemovedBody321_331

def RemovedBody321_333 : StackLang.HolProg 64 :=
.seq RemovedBody321_245 RemovedBody321_332

def RemovedBody321_334 : StackLang.HolProg 64 :=
.seq RemovedBody321_244 RemovedBody321_333

def RemovedBody321_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody321_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody321_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody321_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody321_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody321_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody321_341 : StackLang.HolProg 64 :=
.seq RemovedBody321_339 RemovedBody321_340

def RemovedBody321_342 : StackLang.HolProg 64 :=
.seq RemovedBody321_338 RemovedBody321_341

def RemovedBody321_343 : StackLang.HolProg 64 :=
.seq RemovedBody321_337 RemovedBody321_342

def RemovedBody321_344 : StackLang.HolProg 64 :=
.seq RemovedBody321_336 RemovedBody321_343

def RemovedBody321_345 : StackLang.HolProg 64 :=
.seq RemovedBody321_335 RemovedBody321_344

def RemovedBody321_346 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody321_334 RemovedBody321_345

def RemovedBody321_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody321_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody321_349 : StackLang.HolProg 64 :=
.seq RemovedBody321_347 RemovedBody321_348

def RemovedBody321_350 : StackLang.HolProg 64 :=
.seq RemovedBody321_346 RemovedBody321_349

def RemovedBody321_351 : StackLang.HolProg 64 :=
.seq RemovedBody321_243 RemovedBody321_350

def RemovedBody321_352 : StackLang.HolProg 64 :=
.seq RemovedBody321_242 RemovedBody321_351

def RemovedBody321_353 : StackLang.HolProg 64 :=
.seq RemovedBody321_241 RemovedBody321_352

def RemovedBody321_354 : StackLang.HolProg 64 :=
.seq RemovedBody321_240 RemovedBody321_353

def RemovedBody321_355 : StackLang.HolProg 64 :=
.seq RemovedBody321_173 RemovedBody321_354

def RemovedBody321_356 : StackLang.HolProg 64 :=
.seq RemovedBody321_170 RemovedBody321_355

def RemovedBody321_357 : StackLang.HolProg 64 :=
.seq RemovedBody321_169 RemovedBody321_356

def RemovedBody321_358 : StackLang.HolProg 64 :=
.seq RemovedBody321_168 RemovedBody321_357

def RemovedBody321_359 : StackLang.HolProg 64 :=
.seq RemovedBody321_167 RemovedBody321_358

def RemovedBody321_360 : StackLang.HolProg 64 :=
.seq RemovedBody321_112 RemovedBody321_359

def RemovedBody321_361 : StackLang.HolProg 64 :=
.seq RemovedBody321_107 RemovedBody321_360

def RemovedBody321_362 : StackLang.HolProg 64 :=
.seq RemovedBody321_106 RemovedBody321_361

def RemovedBody321_363 : StackLang.HolProg 64 :=
.seq RemovedBody321_105 RemovedBody321_362

def RemovedBody321_364 : StackLang.HolProg 64 :=
.seq RemovedBody321_104 RemovedBody321_363

def RemovedBody321_365 : StackLang.HolProg 64 :=
.seq RemovedBody321_95 RemovedBody321_364

def RemovedBody321_366 : StackLang.HolProg 64 :=
.seq RemovedBody321_94 RemovedBody321_365

def RemovedBody321_367 : StackLang.HolProg 64 :=
.seq RemovedBody321_93 RemovedBody321_366

def RemovedBody321_368 : StackLang.HolProg 64 :=
.seq RemovedBody321_92 RemovedBody321_367

def RemovedBody321_369 : StackLang.HolProg 64 :=
.seq RemovedBody321_91 RemovedBody321_368

def RemovedBody321_370 : StackLang.HolProg 64 :=
.seq RemovedBody321_28 RemovedBody321_369

def RemovedBody321_371 : StackLang.HolProg 64 :=
.seq RemovedBody321_19 RemovedBody321_370

def RemovedBody321_372 : StackLang.HolProg 64 :=
.seq RemovedBody321_18 RemovedBody321_371

def RemovedBody321_373 : StackLang.HolProg 64 :=
.seq RemovedBody321_17 RemovedBody321_372

def RemovedBody321_374 : StackLang.HolProg 64 :=
.seq RemovedBody321_16 RemovedBody321_373

def RemovedBody321_375 : StackLang.HolProg 64 :=
.seq RemovedBody321_15 RemovedBody321_374

def RemovedBody321_376 : StackLang.HolProg 64 :=
.seq RemovedBody321_14 RemovedBody321_375

def RemovedBody321_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody321_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody321_379 : StackLang.HolProg 64 :=
.seq RemovedBody321_377 RemovedBody321_378

def RemovedBody321_380 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7) RemovedBody321_376 RemovedBody321_379

def RemovedBody321_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody321_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody321_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody321_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody321_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def RemovedBody321_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody321_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody321_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody321_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def RemovedBody321_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody321_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody321_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody321_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def RemovedBody321_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody321_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody321_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody321_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody321_398 : StackLang.HolProg 64 :=
.seq RemovedBody321_396 RemovedBody321_397

def RemovedBody321_399 : StackLang.HolProg 64 :=
.seq RemovedBody321_395 RemovedBody321_398

def RemovedBody321_400 : StackLang.HolProg 64 :=
.seq RemovedBody321_394 RemovedBody321_399

def RemovedBody321_401 : StackLang.HolProg 64 :=
.seq RemovedBody321_393 RemovedBody321_400

def RemovedBody321_402 : StackLang.HolProg 64 :=
.seq RemovedBody321_392 RemovedBody321_401

def RemovedBody321_403 : StackLang.HolProg 64 :=
.seq RemovedBody321_391 RemovedBody321_402

def RemovedBody321_404 : StackLang.HolProg 64 :=
.seq RemovedBody321_390 RemovedBody321_403

def RemovedBody321_405 : StackLang.HolProg 64 :=
.seq RemovedBody321_389 RemovedBody321_404

def RemovedBody321_406 : StackLang.HolProg 64 :=
.seq RemovedBody321_388 RemovedBody321_405

def RemovedBody321_407 : StackLang.HolProg 64 :=
.seq RemovedBody321_387 RemovedBody321_406

def RemovedBody321_408 : StackLang.HolProg 64 :=
.seq RemovedBody321_386 RemovedBody321_407

def RemovedBody321_409 : StackLang.HolProg 64 :=
.seq RemovedBody321_385 RemovedBody321_408

def RemovedBody321_410 : StackLang.HolProg 64 :=
.seq RemovedBody321_384 RemovedBody321_409

def RemovedBody321_411 : StackLang.HolProg 64 :=
.seq RemovedBody321_383 RemovedBody321_410

def RemovedBody321_412 : StackLang.HolProg 64 :=
.seq RemovedBody321_382 RemovedBody321_411

def RemovedBody321_413 : StackLang.HolProg 64 :=
.seq RemovedBody321_381 RemovedBody321_412

def RemovedBody321_414 : StackLang.HolProg 64 :=
.seq RemovedBody321_380 RemovedBody321_413

def RemovedBody321_415 : StackLang.HolProg 64 :=
.seq RemovedBody321_13 RemovedBody321_414

def RemovedBody321_416 : StackLang.HolProg 64 :=
.seq RemovedBody321_12 RemovedBody321_415

def RemovedBody321_417 : StackLang.HolProg 64 :=
.seq RemovedBody321_11 RemovedBody321_416

def RemovedBody321_418 : StackLang.HolProg 64 :=
.seq RemovedBody321_10 RemovedBody321_417

def RemovedBody321_419 : StackLang.HolProg 64 :=
.seq RemovedBody321_9 RemovedBody321_418

def RemovedBody321_420 : StackLang.HolProg 64 :=
.seq RemovedBody321_8 RemovedBody321_419

def RemovedBody321_421 : StackLang.HolProg 64 :=
.seq RemovedBody321_7 RemovedBody321_420

def RemovedBody321_422 : StackLang.HolProg 64 :=
.seq RemovedBody321_6 RemovedBody321_421

def Removed321 : Nat × StackLang.HolProg 64 := (321, RemovedBody321_422)
theorem Removed321_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc321 = Removed321 := by
  kernel_rfl
#print axioms Removed321_eq
end InitECandidate.Proofs.BackendStages
