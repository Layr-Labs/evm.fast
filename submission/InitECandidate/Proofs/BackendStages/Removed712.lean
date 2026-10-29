import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc712
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody712_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def RemovedBody712_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody712_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody712_3 : StackLang.HolProg 64 :=
.seq RemovedBody712_1 RemovedBody712_2

def RemovedBody712_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody712_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody712_3 RemovedBody712_4

def RemovedBody712_6 : StackLang.HolProg 64 :=
.seq RemovedBody712_0 RemovedBody712_5

def RemovedBody712_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody712_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody712_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody712_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody712_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody712_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody712_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody712_14 : StackLang.HolProg 64 :=
.seq RemovedBody712_12 RemovedBody712_13

def RemovedBody712_15 : StackLang.HolProg 64 :=
.seq RemovedBody712_11 RemovedBody712_14

def RemovedBody712_16 : StackLang.HolProg 64 :=
.seq RemovedBody712_10 RemovedBody712_15

def RemovedBody712_17 : StackLang.HolProg 64 :=
.seq RemovedBody712_9 RemovedBody712_16

def RemovedBody712_18 : StackLang.HolProg 64 :=
.seq RemovedBody712_8 RemovedBody712_17

def RemovedBody712_19 : StackLang.HolProg 64 :=
.seq RemovedBody712_7 RemovedBody712_18

def RemovedBody712_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody712_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3156#64)

def RemovedBody712_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody712_23 : StackLang.HolProg 64 :=
.seq RemovedBody712_21 RemovedBody712_22

def RemovedBody712_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody712_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody712_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody712_27 : StackLang.HolProg 64 :=
.seq RemovedBody712_25 RemovedBody712_26

def RemovedBody712_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody712_29 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody712_27 RemovedBody712_28

def RemovedBody712_30 : StackLang.HolProg 64 :=
.seq RemovedBody712_24 RemovedBody712_29

def RemovedBody712_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody712_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody712_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 712 3

def RemovedBody712_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody712_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody712_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody712_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody712_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody712_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody712_40 : StackLang.HolProg 64 :=
.seq RemovedBody712_38 RemovedBody712_39

def RemovedBody712_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody712_42 : StackLang.HolProg 64 :=
.seq RemovedBody712_40 RemovedBody712_41

def RemovedBody712_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody712_44 : StackLang.HolProg 64 :=
.seq RemovedBody712_42 RemovedBody712_43

def RemovedBody712_45 : StackLang.HolProg 64 :=
.seq RemovedBody712_37 RemovedBody712_44

def RemovedBody712_46 : StackLang.HolProg 64 :=
.seq RemovedBody712_36 RemovedBody712_45

def RemovedBody712_47 : StackLang.HolProg 64 :=
.seq RemovedBody712_35 RemovedBody712_46

def RemovedBody712_48 : StackLang.HolProg 64 :=
.seq RemovedBody712_34 RemovedBody712_47

def RemovedBody712_49 : StackLang.HolProg 64 :=
.seq RemovedBody712_33 RemovedBody712_48

def RemovedBody712_50 : StackLang.HolProg 64 :=
.seq RemovedBody712_32 RemovedBody712_49

def RemovedBody712_51 : StackLang.HolProg 64 :=
.seq RemovedBody712_31 RemovedBody712_50

def RemovedBody712_52 : StackLang.HolProg 64 :=
.seq RemovedBody712_30 RemovedBody712_51

def RemovedBody712_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody712_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody712_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody712_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody712_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody712_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody712_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody712_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody712_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody712_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody712_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody712_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody712_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody712_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody712_67 : StackLang.HolProg 64 :=
.seq RemovedBody712_65 RemovedBody712_66

def RemovedBody712_68 : StackLang.HolProg 64 :=
.seq RemovedBody712_64 RemovedBody712_67

def RemovedBody712_69 : StackLang.HolProg 64 :=
.seq RemovedBody712_63 RemovedBody712_68

def RemovedBody712_70 : StackLang.HolProg 64 :=
.seq RemovedBody712_62 RemovedBody712_69

def RemovedBody712_71 : StackLang.HolProg 64 :=
.seq RemovedBody712_61 RemovedBody712_70

def RemovedBody712_72 : StackLang.HolProg 64 :=
.seq RemovedBody712_60 RemovedBody712_71

def RemovedBody712_73 : StackLang.HolProg 64 :=
.seq RemovedBody712_59 RemovedBody712_72

def RemovedBody712_74 : StackLang.HolProg 64 :=
.seq RemovedBody712_58 RemovedBody712_73

def RemovedBody712_75 : StackLang.HolProg 64 :=
.seq RemovedBody712_57 RemovedBody712_74

def RemovedBody712_76 : StackLang.HolProg 64 :=
.seq RemovedBody712_56 RemovedBody712_75

def RemovedBody712_77 : StackLang.HolProg 64 :=
.seq RemovedBody712_55 RemovedBody712_76

def RemovedBody712_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody712_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody712_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody712_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody712_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody712_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody712_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody712_85 : StackLang.HolProg 64 :=
.seq RemovedBody712_83 RemovedBody712_84

def RemovedBody712_86 : StackLang.HolProg 64 :=
.seq RemovedBody712_82 RemovedBody712_85

def RemovedBody712_87 : StackLang.HolProg 64 :=
.seq RemovedBody712_81 RemovedBody712_86

def RemovedBody712_88 : StackLang.HolProg 64 :=
.seq RemovedBody712_80 RemovedBody712_87

def RemovedBody712_89 : StackLang.HolProg 64 :=
.seq RemovedBody712_79 RemovedBody712_88

def RemovedBody712_90 : StackLang.HolProg 64 :=
.seq RemovedBody712_78 RemovedBody712_89

def RemovedBody712_91 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody712_92 : StackLang.HolProg 64 :=
.seq RemovedBody712_90 RemovedBody712_91

def RemovedBody712_93 : StackLang.HolProg 64 :=
.call (some (RemovedBody712_77, 0, 712, 2)) (Sum.inl 705) (some (RemovedBody712_92, 712, 3))

def RemovedBody712_94 : StackLang.HolProg 64 :=
.seq RemovedBody712_54 RemovedBody712_93

def RemovedBody712_95 : StackLang.HolProg 64 :=
.seq RemovedBody712_53 RemovedBody712_94

def RemovedBody712_96 : StackLang.HolProg 64 :=
.seq RemovedBody712_52 RemovedBody712_95

def RemovedBody712_97 : StackLang.HolProg 64 :=
.seq RemovedBody712_23 RemovedBody712_96

def RemovedBody712_98 : StackLang.HolProg 64 :=
.seq RemovedBody712_20 RemovedBody712_97

def RemovedBody712_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody712_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody712_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody712_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody712_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody712_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody712_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody712_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody712_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def RemovedBody712_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def RemovedBody712_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody712_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def RemovedBody712_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 13

def RemovedBody712_112 : StackLang.HolProg 64 :=
.seq RemovedBody712_110 RemovedBody712_111

def RemovedBody712_113 : StackLang.HolProg 64 :=
.seq RemovedBody712_109 RemovedBody712_112

def RemovedBody712_114 : StackLang.HolProg 64 :=
.seq RemovedBody712_108 RemovedBody712_113

def RemovedBody712_115 : StackLang.HolProg 64 :=
.seq RemovedBody712_107 RemovedBody712_114

def RemovedBody712_116 : StackLang.HolProg 64 :=
.seq RemovedBody712_106 RemovedBody712_115

def RemovedBody712_117 : StackLang.HolProg 64 :=
.seq RemovedBody712_105 RemovedBody712_116

def RemovedBody712_118 : StackLang.HolProg 64 :=
.seq RemovedBody712_104 RemovedBody712_117

def RemovedBody712_119 : StackLang.HolProg 64 :=
.seq RemovedBody712_103 RemovedBody712_118

def RemovedBody712_120 : StackLang.HolProg 64 :=
.seq RemovedBody712_102 RemovedBody712_119

def RemovedBody712_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody712_122 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody712_120 RemovedBody712_121

def RemovedBody712_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody712_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody712_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody712_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 1873798617647539866#64)

def RemovedBody712_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 5412103778470702295#64)

def RemovedBody712_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 7239337960414712511#64)

def RemovedBody712_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 7435674573564081700#64)

def RemovedBody712_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 2210141511517208575#64)

def RemovedBody712_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 13402431016077863595#64)

def RemovedBody712_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody712_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody712_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3157#64)

def RemovedBody712_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody712_136 : StackLang.HolProg 64 :=
.seq RemovedBody712_134 RemovedBody712_135

def RemovedBody712_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody712_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody712_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody712_140 : StackLang.HolProg 64 :=
.seq RemovedBody712_138 RemovedBody712_139

def RemovedBody712_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody712_142 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody712_140 RemovedBody712_141

def RemovedBody712_143 : StackLang.HolProg 64 :=
.seq RemovedBody712_137 RemovedBody712_142

def RemovedBody712_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody712_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody712_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 712 5

def RemovedBody712_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody712_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody712_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody712_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody712_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody712_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody712_153 : StackLang.HolProg 64 :=
.seq RemovedBody712_151 RemovedBody712_152

def RemovedBody712_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody712_155 : StackLang.HolProg 64 :=
.seq RemovedBody712_153 RemovedBody712_154

def RemovedBody712_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody712_157 : StackLang.HolProg 64 :=
.seq RemovedBody712_155 RemovedBody712_156

def RemovedBody712_158 : StackLang.HolProg 64 :=
.seq RemovedBody712_150 RemovedBody712_157

def RemovedBody712_159 : StackLang.HolProg 64 :=
.seq RemovedBody712_149 RemovedBody712_158

def RemovedBody712_160 : StackLang.HolProg 64 :=
.seq RemovedBody712_148 RemovedBody712_159

def RemovedBody712_161 : StackLang.HolProg 64 :=
.seq RemovedBody712_147 RemovedBody712_160

def RemovedBody712_162 : StackLang.HolProg 64 :=
.seq RemovedBody712_146 RemovedBody712_161

def RemovedBody712_163 : StackLang.HolProg 64 :=
.seq RemovedBody712_145 RemovedBody712_162

def RemovedBody712_164 : StackLang.HolProg 64 :=
.seq RemovedBody712_144 RemovedBody712_163

def RemovedBody712_165 : StackLang.HolProg 64 :=
.seq RemovedBody712_143 RemovedBody712_164

def RemovedBody712_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody712_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody712_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody712_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody712_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody712_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody712_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody712_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody712_174 : StackLang.HolProg 64 :=
.seq RemovedBody712_172 RemovedBody712_173

def RemovedBody712_175 : StackLang.HolProg 64 :=
.seq RemovedBody712_171 RemovedBody712_174

def RemovedBody712_176 : StackLang.HolProg 64 :=
.seq RemovedBody712_170 RemovedBody712_175

def RemovedBody712_177 : StackLang.HolProg 64 :=
.seq RemovedBody712_169 RemovedBody712_176

def RemovedBody712_178 : StackLang.HolProg 64 :=
.seq RemovedBody712_168 RemovedBody712_177

def RemovedBody712_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody712_180 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody712_181 : StackLang.HolProg 64 :=
.seq RemovedBody712_179 RemovedBody712_180

def RemovedBody712_182 : StackLang.HolProg 64 :=
.call (some (RemovedBody712_178, 0, 712, 4)) (Sum.inl 709) (some (RemovedBody712_181, 712, 5))

def RemovedBody712_183 : StackLang.HolProg 64 :=
.seq RemovedBody712_167 RemovedBody712_182

def RemovedBody712_184 : StackLang.HolProg 64 :=
.seq RemovedBody712_166 RemovedBody712_183

def RemovedBody712_185 : StackLang.HolProg 64 :=
.seq RemovedBody712_165 RemovedBody712_184

def RemovedBody712_186 : StackLang.HolProg 64 :=
.seq RemovedBody712_136 RemovedBody712_185

def RemovedBody712_187 : StackLang.HolProg 64 :=
.seq RemovedBody712_133 RemovedBody712_186

def RemovedBody712_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody712_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def RemovedBody712_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def RemovedBody712_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody712_192 : StackLang.HolProg 64 :=
.seq RemovedBody712_190 RemovedBody712_191

def RemovedBody712_193 : StackLang.HolProg 64 :=
.seq RemovedBody712_189 RemovedBody712_192

def RemovedBody712_194 : StackLang.HolProg 64 :=
.seq RemovedBody712_188 RemovedBody712_193

def RemovedBody712_195 : StackLang.HolProg 64 :=
.seq RemovedBody712_187 RemovedBody712_194

def RemovedBody712_196 : StackLang.HolProg 64 :=
.seq RemovedBody712_132 RemovedBody712_195

def RemovedBody712_197 : StackLang.HolProg 64 :=
.seq RemovedBody712_131 RemovedBody712_196

def RemovedBody712_198 : StackLang.HolProg 64 :=
.seq RemovedBody712_130 RemovedBody712_197

def RemovedBody712_199 : StackLang.HolProg 64 :=
.seq RemovedBody712_129 RemovedBody712_198

def RemovedBody712_200 : StackLang.HolProg 64 :=
.seq RemovedBody712_128 RemovedBody712_199

def RemovedBody712_201 : StackLang.HolProg 64 :=
.seq RemovedBody712_127 RemovedBody712_200

def RemovedBody712_202 : StackLang.HolProg 64 :=
.seq RemovedBody712_126 RemovedBody712_201

def RemovedBody712_203 : StackLang.HolProg 64 :=
.seq RemovedBody712_125 RemovedBody712_202

def RemovedBody712_204 : StackLang.HolProg 64 :=
.seq RemovedBody712_124 RemovedBody712_203

def RemovedBody712_205 : StackLang.HolProg 64 :=
.seq RemovedBody712_123 RemovedBody712_204

def RemovedBody712_206 : StackLang.HolProg 64 :=
.seq RemovedBody712_122 RemovedBody712_205

def RemovedBody712_207 : StackLang.HolProg 64 :=
.seq RemovedBody712_101 RemovedBody712_206

def RemovedBody712_208 : StackLang.HolProg 64 :=
.seq RemovedBody712_100 RemovedBody712_207

def RemovedBody712_209 : StackLang.HolProg 64 :=
.seq RemovedBody712_99 RemovedBody712_208

def RemovedBody712_210 : StackLang.HolProg 64 :=
.seq RemovedBody712_98 RemovedBody712_209

def RemovedBody712_211 : StackLang.HolProg 64 :=
.seq RemovedBody712_19 RemovedBody712_210

def RemovedBody712_212 : StackLang.HolProg 64 :=
.seq RemovedBody712_6 RemovedBody712_211

def Removed712 : Nat × StackLang.HolProg 64 := (712, RemovedBody712_212)
theorem Removed712_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc712 = Removed712 := by
  kernel_rfl
#print axioms Removed712_eq
end InitECandidate.Proofs.BackendStages
