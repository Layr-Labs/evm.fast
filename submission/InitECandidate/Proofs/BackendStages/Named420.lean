import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed420
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody420_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 72#64)))

def NamedBody420_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody420_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody420_3 : StackLang.HolProg 64 :=
.seq NamedBody420_1 NamedBody420_2

def NamedBody420_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody420_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody420_3 NamedBody420_4

def NamedBody420_6 : StackLang.HolProg 64 :=
.seq NamedBody420_0 NamedBody420_5

def NamedBody420_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody420_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody420_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody420_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody420_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody420_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody420_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody420_14 : StackLang.HolProg 64 :=
.seq NamedBody420_12 NamedBody420_13

def NamedBody420_15 : StackLang.HolProg 64 :=
.seq NamedBody420_11 NamedBody420_14

def NamedBody420_16 : StackLang.HolProg 64 :=
.seq NamedBody420_10 NamedBody420_15

def NamedBody420_17 : StackLang.HolProg 64 :=
.seq NamedBody420_9 NamedBody420_16

def NamedBody420_18 : StackLang.HolProg 64 :=
.seq NamedBody420_8 NamedBody420_17

def NamedBody420_19 : StackLang.HolProg 64 :=
.seq NamedBody420_7 NamedBody420_18

def NamedBody420_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody420_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1248#64)

def NamedBody420_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody420_23 : StackLang.HolProg 64 :=
.seq NamedBody420_21 NamedBody420_22

def NamedBody420_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody420_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody420_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody420_27 : StackLang.HolProg 64 :=
.seq NamedBody420_25 NamedBody420_26

def NamedBody420_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody420_29 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody420_27 NamedBody420_28

def NamedBody420_30 : StackLang.HolProg 64 :=
.seq NamedBody420_24 NamedBody420_29

def NamedBody420_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody420_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody420_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 420 3

def NamedBody420_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody420_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody420_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody420_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody420_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody420_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody420_40 : StackLang.HolProg 64 :=
.seq NamedBody420_38 NamedBody420_39

def NamedBody420_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody420_42 : StackLang.HolProg 64 :=
.seq NamedBody420_40 NamedBody420_41

def NamedBody420_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody420_44 : StackLang.HolProg 64 :=
.seq NamedBody420_42 NamedBody420_43

def NamedBody420_45 : StackLang.HolProg 64 :=
.seq NamedBody420_37 NamedBody420_44

def NamedBody420_46 : StackLang.HolProg 64 :=
.seq NamedBody420_36 NamedBody420_45

def NamedBody420_47 : StackLang.HolProg 64 :=
.seq NamedBody420_35 NamedBody420_46

def NamedBody420_48 : StackLang.HolProg 64 :=
.seq NamedBody420_34 NamedBody420_47

def NamedBody420_49 : StackLang.HolProg 64 :=
.seq NamedBody420_33 NamedBody420_48

def NamedBody420_50 : StackLang.HolProg 64 :=
.seq NamedBody420_32 NamedBody420_49

def NamedBody420_51 : StackLang.HolProg 64 :=
.seq NamedBody420_31 NamedBody420_50

def NamedBody420_52 : StackLang.HolProg 64 :=
.seq NamedBody420_30 NamedBody420_51

def NamedBody420_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody420_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody420_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody420_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody420_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody420_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody420_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody420_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody420_61 : StackLang.HolProg 64 :=
.seq NamedBody420_59 NamedBody420_60

def NamedBody420_62 : StackLang.HolProg 64 :=
.seq NamedBody420_58 NamedBody420_61

def NamedBody420_63 : StackLang.HolProg 64 :=
.seq NamedBody420_57 NamedBody420_62

def NamedBody420_64 : StackLang.HolProg 64 :=
.seq NamedBody420_56 NamedBody420_63

def NamedBody420_65 : StackLang.HolProg 64 :=
.seq NamedBody420_55 NamedBody420_64

def NamedBody420_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody420_67 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody420_68 : StackLang.HolProg 64 :=
.seq NamedBody420_66 NamedBody420_67

def NamedBody420_69 : StackLang.HolProg 64 :=
.call (some (NamedBody420_65, 1, 420, 2)) (Sum.inl 406) (some (NamedBody420_68, 420, 3))

def NamedBody420_70 : StackLang.HolProg 64 :=
.seq NamedBody420_54 NamedBody420_69

def NamedBody420_71 : StackLang.HolProg 64 :=
.seq NamedBody420_53 NamedBody420_70

def NamedBody420_72 : StackLang.HolProg 64 :=
.seq NamedBody420_52 NamedBody420_71

def NamedBody420_73 : StackLang.HolProg 64 :=
.seq NamedBody420_23 NamedBody420_72

def NamedBody420_74 : StackLang.HolProg 64 :=
.seq NamedBody420_20 NamedBody420_73

def NamedBody420_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody420_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody420_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody420_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody420_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def NamedBody420_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody420_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody420_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 7#64)

def NamedBody420_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody420_84 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody420_85 : StackLang.HolProg 64 :=
.seq NamedBody420_83 NamedBody420_84

def NamedBody420_86 : StackLang.HolProg 64 :=
.seq NamedBody420_82 NamedBody420_85

def NamedBody420_87 : StackLang.HolProg 64 :=
.seq NamedBody420_81 NamedBody420_86

def NamedBody420_88 : StackLang.HolProg 64 :=
.seq NamedBody420_80 NamedBody420_87

def NamedBody420_89 : StackLang.HolProg 64 :=
.seq NamedBody420_79 NamedBody420_88

def NamedBody420_90 : StackLang.HolProg 64 :=
.seq NamedBody420_78 NamedBody420_89

def NamedBody420_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody420_92 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody420_90 NamedBody420_91

def NamedBody420_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody420_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody420_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody420_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody420_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody420_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551432#64))

def NamedBody420_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 32#64))

def NamedBody420_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody420_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody420_102 : StackLang.HolProg 64 :=
.seq NamedBody420_100 NamedBody420_101

def NamedBody420_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody420_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1249#64)

def NamedBody420_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody420_106 : StackLang.HolProg 64 :=
.seq NamedBody420_104 NamedBody420_105

def NamedBody420_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody420_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody420_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody420_110 : StackLang.HolProg 64 :=
.seq NamedBody420_108 NamedBody420_109

def NamedBody420_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody420_112 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody420_110 NamedBody420_111

def NamedBody420_113 : StackLang.HolProg 64 :=
.seq NamedBody420_107 NamedBody420_112

def NamedBody420_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody420_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody420_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 420 5

def NamedBody420_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody420_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody420_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody420_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody420_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody420_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody420_123 : StackLang.HolProg 64 :=
.seq NamedBody420_121 NamedBody420_122

def NamedBody420_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody420_125 : StackLang.HolProg 64 :=
.seq NamedBody420_123 NamedBody420_124

def NamedBody420_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody420_127 : StackLang.HolProg 64 :=
.seq NamedBody420_125 NamedBody420_126

def NamedBody420_128 : StackLang.HolProg 64 :=
.seq NamedBody420_120 NamedBody420_127

def NamedBody420_129 : StackLang.HolProg 64 :=
.seq NamedBody420_119 NamedBody420_128

def NamedBody420_130 : StackLang.HolProg 64 :=
.seq NamedBody420_118 NamedBody420_129

def NamedBody420_131 : StackLang.HolProg 64 :=
.seq NamedBody420_117 NamedBody420_130

def NamedBody420_132 : StackLang.HolProg 64 :=
.seq NamedBody420_116 NamedBody420_131

def NamedBody420_133 : StackLang.HolProg 64 :=
.seq NamedBody420_115 NamedBody420_132

def NamedBody420_134 : StackLang.HolProg 64 :=
.seq NamedBody420_114 NamedBody420_133

def NamedBody420_135 : StackLang.HolProg 64 :=
.seq NamedBody420_113 NamedBody420_134

def NamedBody420_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody420_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody420_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody420_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody420_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody420_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody420_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody420_143 : StackLang.HolProg 64 :=
.seq NamedBody420_141 NamedBody420_142

def NamedBody420_144 : StackLang.HolProg 64 :=
.seq NamedBody420_140 NamedBody420_143

def NamedBody420_145 : StackLang.HolProg 64 :=
.seq NamedBody420_139 NamedBody420_144

def NamedBody420_146 : StackLang.HolProg 64 :=
.seq NamedBody420_138 NamedBody420_145

def NamedBody420_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody420_148 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody420_149 : StackLang.HolProg 64 :=
.seq NamedBody420_147 NamedBody420_148

def NamedBody420_150 : StackLang.HolProg 64 :=
.call (some (NamedBody420_146, 1, 420, 4)) (Sum.inl 186) (some (NamedBody420_149, 420, 5))

def NamedBody420_151 : StackLang.HolProg 64 :=
.seq NamedBody420_137 NamedBody420_150

def NamedBody420_152 : StackLang.HolProg 64 :=
.seq NamedBody420_136 NamedBody420_151

def NamedBody420_153 : StackLang.HolProg 64 :=
.seq NamedBody420_135 NamedBody420_152

def NamedBody420_154 : StackLang.HolProg 64 :=
.seq NamedBody420_106 NamedBody420_153

def NamedBody420_155 : StackLang.HolProg 64 :=
.seq NamedBody420_103 NamedBody420_154

def NamedBody420_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody420_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody420_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody420_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody420_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 8#64)

def NamedBody420_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 32#64)

def NamedBody420_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody420_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody420_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1250#64)

def NamedBody420_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody420_166 : StackLang.HolProg 64 :=
.seq NamedBody420_164 NamedBody420_165

def NamedBody420_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody420_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody420_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody420_170 : StackLang.HolProg 64 :=
.seq NamedBody420_168 NamedBody420_169

def NamedBody420_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody420_172 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody420_170 NamedBody420_171

def NamedBody420_173 : StackLang.HolProg 64 :=
.seq NamedBody420_167 NamedBody420_172

def NamedBody420_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody420_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody420_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 420 7

def NamedBody420_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody420_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody420_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody420_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody420_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody420_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody420_183 : StackLang.HolProg 64 :=
.seq NamedBody420_181 NamedBody420_182

def NamedBody420_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody420_185 : StackLang.HolProg 64 :=
.seq NamedBody420_183 NamedBody420_184

def NamedBody420_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody420_187 : StackLang.HolProg 64 :=
.seq NamedBody420_185 NamedBody420_186

def NamedBody420_188 : StackLang.HolProg 64 :=
.seq NamedBody420_180 NamedBody420_187

def NamedBody420_189 : StackLang.HolProg 64 :=
.seq NamedBody420_179 NamedBody420_188

def NamedBody420_190 : StackLang.HolProg 64 :=
.seq NamedBody420_178 NamedBody420_189

def NamedBody420_191 : StackLang.HolProg 64 :=
.seq NamedBody420_177 NamedBody420_190

def NamedBody420_192 : StackLang.HolProg 64 :=
.seq NamedBody420_176 NamedBody420_191

def NamedBody420_193 : StackLang.HolProg 64 :=
.seq NamedBody420_175 NamedBody420_192

def NamedBody420_194 : StackLang.HolProg 64 :=
.seq NamedBody420_174 NamedBody420_193

def NamedBody420_195 : StackLang.HolProg 64 :=
.seq NamedBody420_173 NamedBody420_194

def NamedBody420_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody420_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody420_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody420_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody420_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody420_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody420_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody420_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody420_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody420_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody420_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody420_207 : StackLang.HolProg 64 :=
.seq NamedBody420_205 NamedBody420_206

def NamedBody420_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody420_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody420_210 : StackLang.HolProg 64 :=
.seq NamedBody420_208 NamedBody420_209

def NamedBody420_211 : StackLang.HolProg 64 :=
.seq NamedBody420_207 NamedBody420_210

def NamedBody420_212 : StackLang.HolProg 64 :=
.seq NamedBody420_204 NamedBody420_211

def NamedBody420_213 : StackLang.HolProg 64 :=
.seq NamedBody420_203 NamedBody420_212

def NamedBody420_214 : StackLang.HolProg 64 :=
.seq NamedBody420_202 NamedBody420_213

def NamedBody420_215 : StackLang.HolProg 64 :=
.seq NamedBody420_201 NamedBody420_214

def NamedBody420_216 : StackLang.HolProg 64 :=
.seq NamedBody420_200 NamedBody420_215

def NamedBody420_217 : StackLang.HolProg 64 :=
.seq NamedBody420_199 NamedBody420_216

def NamedBody420_218 : StackLang.HolProg 64 :=
.seq NamedBody420_198 NamedBody420_217

def NamedBody420_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody420_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody420_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody420_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody420_223 : StackLang.HolProg 64 :=
.seq NamedBody420_221 NamedBody420_222

def NamedBody420_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody420_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody420_226 : StackLang.HolProg 64 :=
.seq NamedBody420_224 NamedBody420_225

def NamedBody420_227 : StackLang.HolProg 64 :=
.seq NamedBody420_223 NamedBody420_226

def NamedBody420_228 : StackLang.HolProg 64 :=
.seq NamedBody420_220 NamedBody420_227

def NamedBody420_229 : StackLang.HolProg 64 :=
.seq NamedBody420_219 NamedBody420_228

def NamedBody420_230 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody420_231 : StackLang.HolProg 64 :=
.seq NamedBody420_229 NamedBody420_230

def NamedBody420_232 : StackLang.HolProg 64 :=
.call (some (NamedBody420_218, 1, 420, 6)) (Sum.inl 182) (some (NamedBody420_231, 420, 7))

def NamedBody420_233 : StackLang.HolProg 64 :=
.seq NamedBody420_197 NamedBody420_232

def NamedBody420_234 : StackLang.HolProg 64 :=
.seq NamedBody420_196 NamedBody420_233

def NamedBody420_235 : StackLang.HolProg 64 :=
.seq NamedBody420_195 NamedBody420_234

def NamedBody420_236 : StackLang.HolProg 64 :=
.seq NamedBody420_166 NamedBody420_235

def NamedBody420_237 : StackLang.HolProg 64 :=
.seq NamedBody420_163 NamedBody420_236

def NamedBody420_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody420_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody420_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody420_241 : StackLang.HolProg 64 :=
.seq NamedBody420_239 NamedBody420_240

def NamedBody420_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody420_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1251#64)

def NamedBody420_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody420_245 : StackLang.HolProg 64 :=
.seq NamedBody420_243 NamedBody420_244

def NamedBody420_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody420_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody420_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody420_249 : StackLang.HolProg 64 :=
.seq NamedBody420_247 NamedBody420_248

def NamedBody420_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody420_251 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody420_249 NamedBody420_250

def NamedBody420_252 : StackLang.HolProg 64 :=
.seq NamedBody420_246 NamedBody420_251

def NamedBody420_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody420_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody420_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 420 9

def NamedBody420_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody420_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody420_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody420_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody420_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody420_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody420_262 : StackLang.HolProg 64 :=
.seq NamedBody420_260 NamedBody420_261

def NamedBody420_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody420_264 : StackLang.HolProg 64 :=
.seq NamedBody420_262 NamedBody420_263

def NamedBody420_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody420_266 : StackLang.HolProg 64 :=
.seq NamedBody420_264 NamedBody420_265

def NamedBody420_267 : StackLang.HolProg 64 :=
.seq NamedBody420_259 NamedBody420_266

def NamedBody420_268 : StackLang.HolProg 64 :=
.seq NamedBody420_258 NamedBody420_267

def NamedBody420_269 : StackLang.HolProg 64 :=
.seq NamedBody420_257 NamedBody420_268

def NamedBody420_270 : StackLang.HolProg 64 :=
.seq NamedBody420_256 NamedBody420_269

def NamedBody420_271 : StackLang.HolProg 64 :=
.seq NamedBody420_255 NamedBody420_270

def NamedBody420_272 : StackLang.HolProg 64 :=
.seq NamedBody420_254 NamedBody420_271

def NamedBody420_273 : StackLang.HolProg 64 :=
.seq NamedBody420_253 NamedBody420_272

def NamedBody420_274 : StackLang.HolProg 64 :=
.seq NamedBody420_252 NamedBody420_273

def NamedBody420_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody420_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody420_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody420_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody420_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody420_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody420_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody420_282 : StackLang.HolProg 64 :=
.seq NamedBody420_280 NamedBody420_281

def NamedBody420_283 : StackLang.HolProg 64 :=
.seq NamedBody420_279 NamedBody420_282

def NamedBody420_284 : StackLang.HolProg 64 :=
.seq NamedBody420_278 NamedBody420_283

def NamedBody420_285 : StackLang.HolProg 64 :=
.seq NamedBody420_277 NamedBody420_284

def NamedBody420_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody420_287 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody420_288 : StackLang.HolProg 64 :=
.seq NamedBody420_286 NamedBody420_287

def NamedBody420_289 : StackLang.HolProg 64 :=
.call (some (NamedBody420_285, 1, 420, 8)) (Sum.inl 388) (some (NamedBody420_288, 420, 9))

def NamedBody420_290 : StackLang.HolProg 64 :=
.seq NamedBody420_276 NamedBody420_289

def NamedBody420_291 : StackLang.HolProg 64 :=
.seq NamedBody420_275 NamedBody420_290

def NamedBody420_292 : StackLang.HolProg 64 :=
.seq NamedBody420_274 NamedBody420_291

def NamedBody420_293 : StackLang.HolProg 64 :=
.seq NamedBody420_245 NamedBody420_292

def NamedBody420_294 : StackLang.HolProg 64 :=
.seq NamedBody420_242 NamedBody420_293

def NamedBody420_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody420_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody420_297 : StackLang.HolProg 64 :=
.seq NamedBody420_295 NamedBody420_296

def NamedBody420_298 : StackLang.HolProg 64 :=
.seq NamedBody420_294 NamedBody420_297

def NamedBody420_299 : StackLang.HolProg 64 :=
.seq NamedBody420_241 NamedBody420_298

def NamedBody420_300 : StackLang.HolProg 64 :=
.seq NamedBody420_238 NamedBody420_299

def NamedBody420_301 : StackLang.HolProg 64 :=
.seq NamedBody420_237 NamedBody420_300

def NamedBody420_302 : StackLang.HolProg 64 :=
.seq NamedBody420_162 NamedBody420_301

def NamedBody420_303 : StackLang.HolProg 64 :=
.seq NamedBody420_161 NamedBody420_302

def NamedBody420_304 : StackLang.HolProg 64 :=
.seq NamedBody420_160 NamedBody420_303

def NamedBody420_305 : StackLang.HolProg 64 :=
.seq NamedBody420_159 NamedBody420_304

def NamedBody420_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody420_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody420_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody420_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody420_310 : StackLang.HolProg 64 :=
.seq NamedBody420_308 NamedBody420_309

def NamedBody420_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody420_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody420_313 : StackLang.HolProg 64 :=
.seq NamedBody420_311 NamedBody420_312

def NamedBody420_314 : StackLang.HolProg 64 :=
.seq NamedBody420_310 NamedBody420_313

def NamedBody420_315 : StackLang.HolProg 64 :=
.seq NamedBody420_307 NamedBody420_314

def NamedBody420_316 : StackLang.HolProg 64 :=
.seq NamedBody420_306 NamedBody420_315

def NamedBody420_317 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody420_305 NamedBody420_316

def NamedBody420_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody420_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 32#64)

def NamedBody420_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody420_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody420_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1252#64)

def NamedBody420_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody420_324 : StackLang.HolProg 64 :=
.seq NamedBody420_322 NamedBody420_323

def NamedBody420_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody420_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody420_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody420_328 : StackLang.HolProg 64 :=
.seq NamedBody420_326 NamedBody420_327

def NamedBody420_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody420_330 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody420_328 NamedBody420_329

def NamedBody420_331 : StackLang.HolProg 64 :=
.seq NamedBody420_325 NamedBody420_330

def NamedBody420_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody420_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody420_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 420 11

def NamedBody420_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody420_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody420_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody420_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody420_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody420_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody420_341 : StackLang.HolProg 64 :=
.seq NamedBody420_339 NamedBody420_340

def NamedBody420_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody420_343 : StackLang.HolProg 64 :=
.seq NamedBody420_341 NamedBody420_342

def NamedBody420_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody420_345 : StackLang.HolProg 64 :=
.seq NamedBody420_343 NamedBody420_344

def NamedBody420_346 : StackLang.HolProg 64 :=
.seq NamedBody420_338 NamedBody420_345

def NamedBody420_347 : StackLang.HolProg 64 :=
.seq NamedBody420_337 NamedBody420_346

def NamedBody420_348 : StackLang.HolProg 64 :=
.seq NamedBody420_336 NamedBody420_347

def NamedBody420_349 : StackLang.HolProg 64 :=
.seq NamedBody420_335 NamedBody420_348

def NamedBody420_350 : StackLang.HolProg 64 :=
.seq NamedBody420_334 NamedBody420_349

def NamedBody420_351 : StackLang.HolProg 64 :=
.seq NamedBody420_333 NamedBody420_350

def NamedBody420_352 : StackLang.HolProg 64 :=
.seq NamedBody420_332 NamedBody420_351

def NamedBody420_353 : StackLang.HolProg 64 :=
.seq NamedBody420_331 NamedBody420_352

def NamedBody420_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody420_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody420_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody420_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody420_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody420_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody420_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody420_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody420_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody420_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody420_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody420_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody420_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody420_367 : StackLang.HolProg 64 :=
.seq NamedBody420_365 NamedBody420_366

def NamedBody420_368 : StackLang.HolProg 64 :=
.seq NamedBody420_364 NamedBody420_367

def NamedBody420_369 : StackLang.HolProg 64 :=
.seq NamedBody420_363 NamedBody420_368

def NamedBody420_370 : StackLang.HolProg 64 :=
.seq NamedBody420_362 NamedBody420_369

def NamedBody420_371 : StackLang.HolProg 64 :=
.seq NamedBody420_361 NamedBody420_370

def NamedBody420_372 : StackLang.HolProg 64 :=
.seq NamedBody420_360 NamedBody420_371

def NamedBody420_373 : StackLang.HolProg 64 :=
.seq NamedBody420_359 NamedBody420_372

def NamedBody420_374 : StackLang.HolProg 64 :=
.seq NamedBody420_358 NamedBody420_373

def NamedBody420_375 : StackLang.HolProg 64 :=
.seq NamedBody420_357 NamedBody420_374

def NamedBody420_376 : StackLang.HolProg 64 :=
.seq NamedBody420_356 NamedBody420_375

def NamedBody420_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody420_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody420_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody420_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody420_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody420_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody420_383 : StackLang.HolProg 64 :=
.seq NamedBody420_381 NamedBody420_382

def NamedBody420_384 : StackLang.HolProg 64 :=
.seq NamedBody420_380 NamedBody420_383

def NamedBody420_385 : StackLang.HolProg 64 :=
.seq NamedBody420_379 NamedBody420_384

def NamedBody420_386 : StackLang.HolProg 64 :=
.seq NamedBody420_378 NamedBody420_385

def NamedBody420_387 : StackLang.HolProg 64 :=
.seq NamedBody420_377 NamedBody420_386

def NamedBody420_388 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody420_389 : StackLang.HolProg 64 :=
.seq NamedBody420_387 NamedBody420_388

def NamedBody420_390 : StackLang.HolProg 64 :=
.call (some (NamedBody420_376, 1, 420, 10)) (Sum.inl 68) (some (NamedBody420_389, 420, 11))

def NamedBody420_391 : StackLang.HolProg 64 :=
.seq NamedBody420_355 NamedBody420_390

def NamedBody420_392 : StackLang.HolProg 64 :=
.seq NamedBody420_354 NamedBody420_391

def NamedBody420_393 : StackLang.HolProg 64 :=
.seq NamedBody420_353 NamedBody420_392

def NamedBody420_394 : StackLang.HolProg 64 :=
.seq NamedBody420_324 NamedBody420_393

def NamedBody420_395 : StackLang.HolProg 64 :=
.seq NamedBody420_321 NamedBody420_394

def NamedBody420_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody420_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody420_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 0#64))

def NamedBody420_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody420_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 8#64))

def NamedBody420_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody420_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 16#64))

def NamedBody420_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody420_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 24#64))

def NamedBody420_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def NamedBody420_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody420_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1253#64)

def NamedBody420_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody420_409 : StackLang.HolProg 64 :=
.seq NamedBody420_407 NamedBody420_408

def NamedBody420_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody420_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody420_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody420_413 : StackLang.HolProg 64 :=
.seq NamedBody420_411 NamedBody420_412

def NamedBody420_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody420_415 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody420_413 NamedBody420_414

def NamedBody420_416 : StackLang.HolProg 64 :=
.seq NamedBody420_410 NamedBody420_415

def NamedBody420_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody420_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody420_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 420 13

def NamedBody420_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody420_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody420_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody420_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody420_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody420_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody420_426 : StackLang.HolProg 64 :=
.seq NamedBody420_424 NamedBody420_425

def NamedBody420_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody420_428 : StackLang.HolProg 64 :=
.seq NamedBody420_426 NamedBody420_427

def NamedBody420_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody420_430 : StackLang.HolProg 64 :=
.seq NamedBody420_428 NamedBody420_429

def NamedBody420_431 : StackLang.HolProg 64 :=
.seq NamedBody420_423 NamedBody420_430

def NamedBody420_432 : StackLang.HolProg 64 :=
.seq NamedBody420_422 NamedBody420_431

def NamedBody420_433 : StackLang.HolProg 64 :=
.seq NamedBody420_421 NamedBody420_432

def NamedBody420_434 : StackLang.HolProg 64 :=
.seq NamedBody420_420 NamedBody420_433

def NamedBody420_435 : StackLang.HolProg 64 :=
.seq NamedBody420_419 NamedBody420_434

def NamedBody420_436 : StackLang.HolProg 64 :=
.seq NamedBody420_418 NamedBody420_435

def NamedBody420_437 : StackLang.HolProg 64 :=
.seq NamedBody420_417 NamedBody420_436

def NamedBody420_438 : StackLang.HolProg 64 :=
.seq NamedBody420_416 NamedBody420_437

def NamedBody420_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody420_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody420_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody420_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody420_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody420_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody420_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody420_446 : StackLang.HolProg 64 :=
.seq NamedBody420_444 NamedBody420_445

def NamedBody420_447 : StackLang.HolProg 64 :=
.seq NamedBody420_443 NamedBody420_446

def NamedBody420_448 : StackLang.HolProg 64 :=
.seq NamedBody420_442 NamedBody420_447

def NamedBody420_449 : StackLang.HolProg 64 :=
.seq NamedBody420_441 NamedBody420_448

def NamedBody420_450 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody420_451 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody420_452 : StackLang.HolProg 64 :=
.seq NamedBody420_450 NamedBody420_451

def NamedBody420_453 : StackLang.HolProg 64 :=
.call (some (NamedBody420_449, 1, 420, 12)) (Sum.inl 388) (some (NamedBody420_452, 420, 13))

def NamedBody420_454 : StackLang.HolProg 64 :=
.seq NamedBody420_440 NamedBody420_453

def NamedBody420_455 : StackLang.HolProg 64 :=
.seq NamedBody420_439 NamedBody420_454

def NamedBody420_456 : StackLang.HolProg 64 :=
.seq NamedBody420_438 NamedBody420_455

def NamedBody420_457 : StackLang.HolProg 64 :=
.seq NamedBody420_409 NamedBody420_456

def NamedBody420_458 : StackLang.HolProg 64 :=
.seq NamedBody420_406 NamedBody420_457

def NamedBody420_459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody420_460 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody420_461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody420_462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 72#64)))

def NamedBody420_463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody420_464 : StackLang.HolProg 64 :=
.seq NamedBody420_462 NamedBody420_463

def NamedBody420_465 : StackLang.HolProg 64 :=
.seq NamedBody420_461 NamedBody420_464

def NamedBody420_466 : StackLang.HolProg 64 :=
.seq NamedBody420_460 NamedBody420_465

def NamedBody420_467 : StackLang.HolProg 64 :=
.seq NamedBody420_459 NamedBody420_466

def NamedBody420_468 : StackLang.HolProg 64 :=
.seq NamedBody420_458 NamedBody420_467

def NamedBody420_469 : StackLang.HolProg 64 :=
.seq NamedBody420_405 NamedBody420_468

def NamedBody420_470 : StackLang.HolProg 64 :=
.seq NamedBody420_404 NamedBody420_469

def NamedBody420_471 : StackLang.HolProg 64 :=
.seq NamedBody420_403 NamedBody420_470

def NamedBody420_472 : StackLang.HolProg 64 :=
.seq NamedBody420_402 NamedBody420_471

def NamedBody420_473 : StackLang.HolProg 64 :=
.seq NamedBody420_401 NamedBody420_472

def NamedBody420_474 : StackLang.HolProg 64 :=
.seq NamedBody420_400 NamedBody420_473

def NamedBody420_475 : StackLang.HolProg 64 :=
.seq NamedBody420_399 NamedBody420_474

def NamedBody420_476 : StackLang.HolProg 64 :=
.seq NamedBody420_398 NamedBody420_475

def NamedBody420_477 : StackLang.HolProg 64 :=
.seq NamedBody420_397 NamedBody420_476

def NamedBody420_478 : StackLang.HolProg 64 :=
.seq NamedBody420_396 NamedBody420_477

def NamedBody420_479 : StackLang.HolProg 64 :=
.seq NamedBody420_395 NamedBody420_478

def NamedBody420_480 : StackLang.HolProg 64 :=
.seq NamedBody420_320 NamedBody420_479

def NamedBody420_481 : StackLang.HolProg 64 :=
.seq NamedBody420_319 NamedBody420_480

def NamedBody420_482 : StackLang.HolProg 64 :=
.seq NamedBody420_318 NamedBody420_481

def NamedBody420_483 : StackLang.HolProg 64 :=
.seq NamedBody420_317 NamedBody420_482

def NamedBody420_484 : StackLang.HolProg 64 :=
.seq NamedBody420_158 NamedBody420_483

def NamedBody420_485 : StackLang.HolProg 64 :=
.seq NamedBody420_157 NamedBody420_484

def NamedBody420_486 : StackLang.HolProg 64 :=
.seq NamedBody420_156 NamedBody420_485

def NamedBody420_487 : StackLang.HolProg 64 :=
.seq NamedBody420_155 NamedBody420_486

def NamedBody420_488 : StackLang.HolProg 64 :=
.seq NamedBody420_102 NamedBody420_487

def NamedBody420_489 : StackLang.HolProg 64 :=
.seq NamedBody420_99 NamedBody420_488

def NamedBody420_490 : StackLang.HolProg 64 :=
.seq NamedBody420_98 NamedBody420_489

def NamedBody420_491 : StackLang.HolProg 64 :=
.seq NamedBody420_97 NamedBody420_490

def NamedBody420_492 : StackLang.HolProg 64 :=
.seq NamedBody420_96 NamedBody420_491

def NamedBody420_493 : StackLang.HolProg 64 :=
.seq NamedBody420_95 NamedBody420_492

def NamedBody420_494 : StackLang.HolProg 64 :=
.seq NamedBody420_94 NamedBody420_493

def NamedBody420_495 : StackLang.HolProg 64 :=
.seq NamedBody420_93 NamedBody420_494

def NamedBody420_496 : StackLang.HolProg 64 :=
.seq NamedBody420_92 NamedBody420_495

def NamedBody420_497 : StackLang.HolProg 64 :=
.seq NamedBody420_77 NamedBody420_496

def NamedBody420_498 : StackLang.HolProg 64 :=
.seq NamedBody420_76 NamedBody420_497

def NamedBody420_499 : StackLang.HolProg 64 :=
.seq NamedBody420_75 NamedBody420_498

def NamedBody420_500 : StackLang.HolProg 64 :=
.seq NamedBody420_74 NamedBody420_499

def NamedBody420_501 : StackLang.HolProg 64 :=
.seq NamedBody420_19 NamedBody420_500

def NamedBody420_502 : StackLang.HolProg 64 :=
.seq NamedBody420_6 NamedBody420_501

def Named420 : Nat × StackLang.HolProg 64 := (420, NamedBody420_502)
theorem Named420_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed420 = Named420 := by
  kernel_rfl
#print axioms Named420_eq
end InitECandidate.Proofs.BackendStages
