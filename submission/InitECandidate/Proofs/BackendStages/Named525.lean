import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed525
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody525_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody525_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody525_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody525_3 : StackLang.HolProg 64 :=
.seq NamedBody525_1 NamedBody525_2

def NamedBody525_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody525_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody525_3 NamedBody525_4

def NamedBody525_6 : StackLang.HolProg 64 :=
.seq NamedBody525_0 NamedBody525_5

def NamedBody525_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody525_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody525_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1718#64)

def NamedBody525_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody525_11 : StackLang.HolProg 64 :=
.seq NamedBody525_9 NamedBody525_10

def NamedBody525_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody525_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody525_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody525_15 : StackLang.HolProg 64 :=
.seq NamedBody525_13 NamedBody525_14

def NamedBody525_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody525_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody525_15 NamedBody525_16

def NamedBody525_18 : StackLang.HolProg 64 :=
.seq NamedBody525_12 NamedBody525_17

def NamedBody525_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody525_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody525_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 525 3

def NamedBody525_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody525_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody525_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody525_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody525_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody525_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody525_28 : StackLang.HolProg 64 :=
.seq NamedBody525_26 NamedBody525_27

def NamedBody525_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody525_30 : StackLang.HolProg 64 :=
.seq NamedBody525_28 NamedBody525_29

def NamedBody525_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody525_32 : StackLang.HolProg 64 :=
.seq NamedBody525_30 NamedBody525_31

def NamedBody525_33 : StackLang.HolProg 64 :=
.seq NamedBody525_25 NamedBody525_32

def NamedBody525_34 : StackLang.HolProg 64 :=
.seq NamedBody525_24 NamedBody525_33

def NamedBody525_35 : StackLang.HolProg 64 :=
.seq NamedBody525_23 NamedBody525_34

def NamedBody525_36 : StackLang.HolProg 64 :=
.seq NamedBody525_22 NamedBody525_35

def NamedBody525_37 : StackLang.HolProg 64 :=
.seq NamedBody525_21 NamedBody525_36

def NamedBody525_38 : StackLang.HolProg 64 :=
.seq NamedBody525_20 NamedBody525_37

def NamedBody525_39 : StackLang.HolProg 64 :=
.seq NamedBody525_19 NamedBody525_38

def NamedBody525_40 : StackLang.HolProg 64 :=
.seq NamedBody525_18 NamedBody525_39

def NamedBody525_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody525_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody525_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody525_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody525_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody525_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody525_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody525_48 : StackLang.HolProg 64 :=
.seq NamedBody525_46 NamedBody525_47

def NamedBody525_49 : StackLang.HolProg 64 :=
.seq NamedBody525_45 NamedBody525_48

def NamedBody525_50 : StackLang.HolProg 64 :=
.seq NamedBody525_44 NamedBody525_49

def NamedBody525_51 : StackLang.HolProg 64 :=
.seq NamedBody525_43 NamedBody525_50

def NamedBody525_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody525_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody525_54 : StackLang.HolProg 64 :=
.seq NamedBody525_52 NamedBody525_53

def NamedBody525_55 : StackLang.HolProg 64 :=
.call (some (NamedBody525_51, 1, 525, 2)) (Sum.inl 475) (some (NamedBody525_54, 525, 3))

def NamedBody525_56 : StackLang.HolProg 64 :=
.seq NamedBody525_42 NamedBody525_55

def NamedBody525_57 : StackLang.HolProg 64 :=
.seq NamedBody525_41 NamedBody525_56

def NamedBody525_58 : StackLang.HolProg 64 :=
.seq NamedBody525_40 NamedBody525_57

def NamedBody525_59 : StackLang.HolProg 64 :=
.seq NamedBody525_11 NamedBody525_58

def NamedBody525_60 : StackLang.HolProg 64 :=
.seq NamedBody525_8 NamedBody525_59

def NamedBody525_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody525_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 8#64)

def NamedBody525_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody525_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody525_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody525_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody525_67 : StackLang.HolProg 64 :=
.seq NamedBody525_65 NamedBody525_66

def NamedBody525_68 : StackLang.HolProg 64 :=
.seq NamedBody525_64 NamedBody525_67

def NamedBody525_69 : StackLang.HolProg 64 :=
.seq NamedBody525_63 NamedBody525_68

def NamedBody525_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody525_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1719#64)

def NamedBody525_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody525_73 : StackLang.HolProg 64 :=
.seq NamedBody525_71 NamedBody525_72

def NamedBody525_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody525_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody525_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody525_77 : StackLang.HolProg 64 :=
.seq NamedBody525_75 NamedBody525_76

def NamedBody525_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody525_79 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody525_77 NamedBody525_78

def NamedBody525_80 : StackLang.HolProg 64 :=
.seq NamedBody525_74 NamedBody525_79

def NamedBody525_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody525_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody525_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 525 5

def NamedBody525_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody525_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody525_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody525_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody525_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody525_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody525_90 : StackLang.HolProg 64 :=
.seq NamedBody525_88 NamedBody525_89

def NamedBody525_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody525_92 : StackLang.HolProg 64 :=
.seq NamedBody525_90 NamedBody525_91

def NamedBody525_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody525_94 : StackLang.HolProg 64 :=
.seq NamedBody525_92 NamedBody525_93

def NamedBody525_95 : StackLang.HolProg 64 :=
.seq NamedBody525_87 NamedBody525_94

def NamedBody525_96 : StackLang.HolProg 64 :=
.seq NamedBody525_86 NamedBody525_95

def NamedBody525_97 : StackLang.HolProg 64 :=
.seq NamedBody525_85 NamedBody525_96

def NamedBody525_98 : StackLang.HolProg 64 :=
.seq NamedBody525_84 NamedBody525_97

def NamedBody525_99 : StackLang.HolProg 64 :=
.seq NamedBody525_83 NamedBody525_98

def NamedBody525_100 : StackLang.HolProg 64 :=
.seq NamedBody525_82 NamedBody525_99

def NamedBody525_101 : StackLang.HolProg 64 :=
.seq NamedBody525_81 NamedBody525_100

def NamedBody525_102 : StackLang.HolProg 64 :=
.seq NamedBody525_80 NamedBody525_101

def NamedBody525_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody525_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody525_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody525_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody525_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody525_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody525_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody525_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody525_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody525_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody525_113 : StackLang.HolProg 64 :=
.seq NamedBody525_111 NamedBody525_112

def NamedBody525_114 : StackLang.HolProg 64 :=
.seq NamedBody525_110 NamedBody525_113

def NamedBody525_115 : StackLang.HolProg 64 :=
.seq NamedBody525_109 NamedBody525_114

def NamedBody525_116 : StackLang.HolProg 64 :=
.seq NamedBody525_108 NamedBody525_115

def NamedBody525_117 : StackLang.HolProg 64 :=
.seq NamedBody525_107 NamedBody525_116

def NamedBody525_118 : StackLang.HolProg 64 :=
.seq NamedBody525_106 NamedBody525_117

def NamedBody525_119 : StackLang.HolProg 64 :=
.seq NamedBody525_105 NamedBody525_118

def NamedBody525_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody525_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody525_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody525_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody525_124 : StackLang.HolProg 64 :=
.seq NamedBody525_122 NamedBody525_123

def NamedBody525_125 : StackLang.HolProg 64 :=
.seq NamedBody525_121 NamedBody525_124

def NamedBody525_126 : StackLang.HolProg 64 :=
.seq NamedBody525_120 NamedBody525_125

def NamedBody525_127 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody525_128 : StackLang.HolProg 64 :=
.seq NamedBody525_126 NamedBody525_127

def NamedBody525_129 : StackLang.HolProg 64 :=
.call (some (NamedBody525_119, 1, 525, 4)) (Sum.inl 470) (some (NamedBody525_128, 525, 5))

def NamedBody525_130 : StackLang.HolProg 64 :=
.seq NamedBody525_104 NamedBody525_129

def NamedBody525_131 : StackLang.HolProg 64 :=
.seq NamedBody525_103 NamedBody525_130

def NamedBody525_132 : StackLang.HolProg 64 :=
.seq NamedBody525_102 NamedBody525_131

def NamedBody525_133 : StackLang.HolProg 64 :=
.seq NamedBody525_73 NamedBody525_132

def NamedBody525_134 : StackLang.HolProg 64 :=
.seq NamedBody525_70 NamedBody525_133

def NamedBody525_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody525_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody525_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody525_138 : StackLang.HolProg 64 :=
.seq NamedBody525_136 NamedBody525_137

def NamedBody525_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody525_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1720#64)

def NamedBody525_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody525_142 : StackLang.HolProg 64 :=
.seq NamedBody525_140 NamedBody525_141

def NamedBody525_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody525_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody525_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody525_146 : StackLang.HolProg 64 :=
.seq NamedBody525_144 NamedBody525_145

def NamedBody525_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody525_148 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody525_146 NamedBody525_147

def NamedBody525_149 : StackLang.HolProg 64 :=
.seq NamedBody525_143 NamedBody525_148

def NamedBody525_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody525_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody525_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 525 7

def NamedBody525_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody525_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody525_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody525_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody525_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody525_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody525_159 : StackLang.HolProg 64 :=
.seq NamedBody525_157 NamedBody525_158

def NamedBody525_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody525_161 : StackLang.HolProg 64 :=
.seq NamedBody525_159 NamedBody525_160

def NamedBody525_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody525_163 : StackLang.HolProg 64 :=
.seq NamedBody525_161 NamedBody525_162

def NamedBody525_164 : StackLang.HolProg 64 :=
.seq NamedBody525_156 NamedBody525_163

def NamedBody525_165 : StackLang.HolProg 64 :=
.seq NamedBody525_155 NamedBody525_164

def NamedBody525_166 : StackLang.HolProg 64 :=
.seq NamedBody525_154 NamedBody525_165

def NamedBody525_167 : StackLang.HolProg 64 :=
.seq NamedBody525_153 NamedBody525_166

def NamedBody525_168 : StackLang.HolProg 64 :=
.seq NamedBody525_152 NamedBody525_167

def NamedBody525_169 : StackLang.HolProg 64 :=
.seq NamedBody525_151 NamedBody525_168

def NamedBody525_170 : StackLang.HolProg 64 :=
.seq NamedBody525_150 NamedBody525_169

def NamedBody525_171 : StackLang.HolProg 64 :=
.seq NamedBody525_149 NamedBody525_170

def NamedBody525_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody525_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody525_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody525_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody525_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody525_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody525_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody525_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody525_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody525_181 : StackLang.HolProg 64 :=
.seq NamedBody525_179 NamedBody525_180

def NamedBody525_182 : StackLang.HolProg 64 :=
.seq NamedBody525_178 NamedBody525_181

def NamedBody525_183 : StackLang.HolProg 64 :=
.seq NamedBody525_177 NamedBody525_182

def NamedBody525_184 : StackLang.HolProg 64 :=
.seq NamedBody525_176 NamedBody525_183

def NamedBody525_185 : StackLang.HolProg 64 :=
.seq NamedBody525_175 NamedBody525_184

def NamedBody525_186 : StackLang.HolProg 64 :=
.seq NamedBody525_174 NamedBody525_185

def NamedBody525_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody525_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody525_189 : StackLang.HolProg 64 :=
.seq NamedBody525_187 NamedBody525_188

def NamedBody525_190 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody525_191 : StackLang.HolProg 64 :=
.seq NamedBody525_189 NamedBody525_190

def NamedBody525_192 : StackLang.HolProg 64 :=
.call (some (NamedBody525_186, 1, 525, 6)) (Sum.inl 486) (some (NamedBody525_191, 525, 7))

def NamedBody525_193 : StackLang.HolProg 64 :=
.seq NamedBody525_173 NamedBody525_192

def NamedBody525_194 : StackLang.HolProg 64 :=
.seq NamedBody525_172 NamedBody525_193

def NamedBody525_195 : StackLang.HolProg 64 :=
.seq NamedBody525_171 NamedBody525_194

def NamedBody525_196 : StackLang.HolProg 64 :=
.seq NamedBody525_142 NamedBody525_195

def NamedBody525_197 : StackLang.HolProg 64 :=
.seq NamedBody525_139 NamedBody525_196

def NamedBody525_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody525_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody525_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody525_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody525_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 6#64)

def NamedBody525_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody525_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody525_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 8#64)

def NamedBody525_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody525_207 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody525_208 : StackLang.HolProg 64 :=
.seq NamedBody525_206 NamedBody525_207

def NamedBody525_209 : StackLang.HolProg 64 :=
.seq NamedBody525_205 NamedBody525_208

def NamedBody525_210 : StackLang.HolProg 64 :=
.seq NamedBody525_204 NamedBody525_209

def NamedBody525_211 : StackLang.HolProg 64 :=
.seq NamedBody525_203 NamedBody525_210

def NamedBody525_212 : StackLang.HolProg 64 :=
.seq NamedBody525_202 NamedBody525_211

def NamedBody525_213 : StackLang.HolProg 64 :=
.seq NamedBody525_201 NamedBody525_212

def NamedBody525_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody525_215 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody525_213 NamedBody525_214

def NamedBody525_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody525_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody525_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody525_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody525_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody525_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551360#64))

def NamedBody525_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody525_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody525_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody525_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody525_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody525_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 12

def NamedBody525_228 : StackLang.HolProg 64 :=
.seq NamedBody525_226 NamedBody525_227

def NamedBody525_229 : StackLang.HolProg 64 :=
.seq NamedBody525_225 NamedBody525_228

def NamedBody525_230 : StackLang.HolProg 64 :=
.seq NamedBody525_224 NamedBody525_229

def NamedBody525_231 : StackLang.HolProg 64 :=
.seq NamedBody525_223 NamedBody525_230

def NamedBody525_232 : StackLang.HolProg 64 :=
.seq NamedBody525_222 NamedBody525_231

def NamedBody525_233 : StackLang.HolProg 64 :=
.seq NamedBody525_221 NamedBody525_232

def NamedBody525_234 : StackLang.HolProg 64 :=
.seq NamedBody525_220 NamedBody525_233

def NamedBody525_235 : StackLang.HolProg 64 :=
.seq NamedBody525_219 NamedBody525_234

def NamedBody525_236 : StackLang.HolProg 64 :=
.seq NamedBody525_218 NamedBody525_235

def NamedBody525_237 : StackLang.HolProg 64 :=
.seq NamedBody525_217 NamedBody525_236

def NamedBody525_238 : StackLang.HolProg 64 :=
.seq NamedBody525_216 NamedBody525_237

def NamedBody525_239 : StackLang.HolProg 64 :=
.seq NamedBody525_215 NamedBody525_238

def NamedBody525_240 : StackLang.HolProg 64 :=
.seq NamedBody525_200 NamedBody525_239

def NamedBody525_241 : StackLang.HolProg 64 :=
.seq NamedBody525_199 NamedBody525_240

def NamedBody525_242 : StackLang.HolProg 64 :=
.seq NamedBody525_198 NamedBody525_241

def NamedBody525_243 : StackLang.HolProg 64 :=
.seq NamedBody525_197 NamedBody525_242

def NamedBody525_244 : StackLang.HolProg 64 :=
.seq NamedBody525_138 NamedBody525_243

def NamedBody525_245 : StackLang.HolProg 64 :=
.seq NamedBody525_135 NamedBody525_244

def NamedBody525_246 : StackLang.HolProg 64 :=
.seq NamedBody525_134 NamedBody525_245

def NamedBody525_247 : StackLang.HolProg 64 :=
.seq NamedBody525_69 NamedBody525_246

def NamedBody525_248 : StackLang.HolProg 64 :=
.seq NamedBody525_62 NamedBody525_247

def NamedBody525_249 : StackLang.HolProg 64 :=
.seq NamedBody525_61 NamedBody525_248

def NamedBody525_250 : StackLang.HolProg 64 :=
.seq NamedBody525_60 NamedBody525_249

def NamedBody525_251 : StackLang.HolProg 64 :=
.seq NamedBody525_7 NamedBody525_250

def NamedBody525_252 : StackLang.HolProg 64 :=
.seq NamedBody525_6 NamedBody525_251

def Named525 : Nat × StackLang.HolProg 64 := (525, NamedBody525_252)
theorem Named525_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed525 = Named525 := by
  kernel_rfl
#print axioms Named525_eq
end InitECandidate.Proofs.BackendStages
