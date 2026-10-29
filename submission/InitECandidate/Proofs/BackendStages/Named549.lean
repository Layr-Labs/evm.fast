import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed549
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody549_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody549_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody549_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody549_3 : StackLang.HolProg 64 :=
.seq NamedBody549_1 NamedBody549_2

def NamedBody549_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody549_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody549_3 NamedBody549_4

def NamedBody549_6 : StackLang.HolProg 64 :=
.seq NamedBody549_0 NamedBody549_5

def NamedBody549_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody549_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody549_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1831#64)

def NamedBody549_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody549_11 : StackLang.HolProg 64 :=
.seq NamedBody549_9 NamedBody549_10

def NamedBody549_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody549_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody549_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody549_15 : StackLang.HolProg 64 :=
.seq NamedBody549_13 NamedBody549_14

def NamedBody549_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody549_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody549_15 NamedBody549_16

def NamedBody549_18 : StackLang.HolProg 64 :=
.seq NamedBody549_12 NamedBody549_17

def NamedBody549_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody549_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody549_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 549 3

def NamedBody549_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody549_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody549_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody549_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody549_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody549_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody549_28 : StackLang.HolProg 64 :=
.seq NamedBody549_26 NamedBody549_27

def NamedBody549_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody549_30 : StackLang.HolProg 64 :=
.seq NamedBody549_28 NamedBody549_29

def NamedBody549_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody549_32 : StackLang.HolProg 64 :=
.seq NamedBody549_30 NamedBody549_31

def NamedBody549_33 : StackLang.HolProg 64 :=
.seq NamedBody549_25 NamedBody549_32

def NamedBody549_34 : StackLang.HolProg 64 :=
.seq NamedBody549_24 NamedBody549_33

def NamedBody549_35 : StackLang.HolProg 64 :=
.seq NamedBody549_23 NamedBody549_34

def NamedBody549_36 : StackLang.HolProg 64 :=
.seq NamedBody549_22 NamedBody549_35

def NamedBody549_37 : StackLang.HolProg 64 :=
.seq NamedBody549_21 NamedBody549_36

def NamedBody549_38 : StackLang.HolProg 64 :=
.seq NamedBody549_20 NamedBody549_37

def NamedBody549_39 : StackLang.HolProg 64 :=
.seq NamedBody549_19 NamedBody549_38

def NamedBody549_40 : StackLang.HolProg 64 :=
.seq NamedBody549_18 NamedBody549_39

def NamedBody549_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody549_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody549_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody549_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody549_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody549_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody549_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody549_48 : StackLang.HolProg 64 :=
.seq NamedBody549_46 NamedBody549_47

def NamedBody549_49 : StackLang.HolProg 64 :=
.seq NamedBody549_45 NamedBody549_48

def NamedBody549_50 : StackLang.HolProg 64 :=
.seq NamedBody549_44 NamedBody549_49

def NamedBody549_51 : StackLang.HolProg 64 :=
.seq NamedBody549_43 NamedBody549_50

def NamedBody549_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody549_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody549_54 : StackLang.HolProg 64 :=
.seq NamedBody549_52 NamedBody549_53

def NamedBody549_55 : StackLang.HolProg 64 :=
.call (some (NamedBody549_51, 1, 549, 2)) (Sum.inl 475) (some (NamedBody549_54, 549, 3))

def NamedBody549_56 : StackLang.HolProg 64 :=
.seq NamedBody549_42 NamedBody549_55

def NamedBody549_57 : StackLang.HolProg 64 :=
.seq NamedBody549_41 NamedBody549_56

def NamedBody549_58 : StackLang.HolProg 64 :=
.seq NamedBody549_40 NamedBody549_57

def NamedBody549_59 : StackLang.HolProg 64 :=
.seq NamedBody549_11 NamedBody549_58

def NamedBody549_60 : StackLang.HolProg 64 :=
.seq NamedBody549_8 NamedBody549_59

def NamedBody549_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody549_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody549_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody549_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody549_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551336#64))

def NamedBody549_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody549_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody549_68 : StackLang.HolProg 64 :=
.seq NamedBody549_66 NamedBody549_67

def NamedBody549_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody549_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1832#64)

def NamedBody549_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody549_72 : StackLang.HolProg 64 :=
.seq NamedBody549_70 NamedBody549_71

def NamedBody549_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody549_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody549_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody549_76 : StackLang.HolProg 64 :=
.seq NamedBody549_74 NamedBody549_75

def NamedBody549_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody549_78 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody549_76 NamedBody549_77

def NamedBody549_79 : StackLang.HolProg 64 :=
.seq NamedBody549_73 NamedBody549_78

def NamedBody549_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody549_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody549_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 549 5

def NamedBody549_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody549_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody549_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody549_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody549_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody549_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody549_89 : StackLang.HolProg 64 :=
.seq NamedBody549_87 NamedBody549_88

def NamedBody549_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody549_91 : StackLang.HolProg 64 :=
.seq NamedBody549_89 NamedBody549_90

def NamedBody549_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody549_93 : StackLang.HolProg 64 :=
.seq NamedBody549_91 NamedBody549_92

def NamedBody549_94 : StackLang.HolProg 64 :=
.seq NamedBody549_86 NamedBody549_93

def NamedBody549_95 : StackLang.HolProg 64 :=
.seq NamedBody549_85 NamedBody549_94

def NamedBody549_96 : StackLang.HolProg 64 :=
.seq NamedBody549_84 NamedBody549_95

def NamedBody549_97 : StackLang.HolProg 64 :=
.seq NamedBody549_83 NamedBody549_96

def NamedBody549_98 : StackLang.HolProg 64 :=
.seq NamedBody549_82 NamedBody549_97

def NamedBody549_99 : StackLang.HolProg 64 :=
.seq NamedBody549_81 NamedBody549_98

def NamedBody549_100 : StackLang.HolProg 64 :=
.seq NamedBody549_80 NamedBody549_99

def NamedBody549_101 : StackLang.HolProg 64 :=
.seq NamedBody549_79 NamedBody549_100

def NamedBody549_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody549_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody549_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody549_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody549_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody549_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody549_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody549_109 : StackLang.HolProg 64 :=
.seq NamedBody549_107 NamedBody549_108

def NamedBody549_110 : StackLang.HolProg 64 :=
.seq NamedBody549_106 NamedBody549_109

def NamedBody549_111 : StackLang.HolProg 64 :=
.seq NamedBody549_105 NamedBody549_110

def NamedBody549_112 : StackLang.HolProg 64 :=
.seq NamedBody549_104 NamedBody549_111

def NamedBody549_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody549_114 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody549_115 : StackLang.HolProg 64 :=
.seq NamedBody549_113 NamedBody549_114

def NamedBody549_116 : StackLang.HolProg 64 :=
.call (some (NamedBody549_112, 1, 549, 4)) (Sum.inl 147) (some (NamedBody549_115, 549, 5))

def NamedBody549_117 : StackLang.HolProg 64 :=
.seq NamedBody549_103 NamedBody549_116

def NamedBody549_118 : StackLang.HolProg 64 :=
.seq NamedBody549_102 NamedBody549_117

def NamedBody549_119 : StackLang.HolProg 64 :=
.seq NamedBody549_101 NamedBody549_118

def NamedBody549_120 : StackLang.HolProg 64 :=
.seq NamedBody549_72 NamedBody549_119

def NamedBody549_121 : StackLang.HolProg 64 :=
.seq NamedBody549_69 NamedBody549_120

def NamedBody549_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody549_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody549_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody549_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody549_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def NamedBody549_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 112#64))

def NamedBody549_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 32#64))

def NamedBody549_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody549_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody549_131 : StackLang.HolProg 64 :=
.seq NamedBody549_129 NamedBody549_130

def NamedBody549_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody549_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1833#64)

def NamedBody549_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody549_135 : StackLang.HolProg 64 :=
.seq NamedBody549_133 NamedBody549_134

def NamedBody549_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody549_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody549_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody549_139 : StackLang.HolProg 64 :=
.seq NamedBody549_137 NamedBody549_138

def NamedBody549_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody549_141 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody549_139 NamedBody549_140

def NamedBody549_142 : StackLang.HolProg 64 :=
.seq NamedBody549_136 NamedBody549_141

def NamedBody549_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody549_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody549_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 549 7

def NamedBody549_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody549_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody549_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody549_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody549_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody549_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody549_152 : StackLang.HolProg 64 :=
.seq NamedBody549_150 NamedBody549_151

def NamedBody549_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody549_154 : StackLang.HolProg 64 :=
.seq NamedBody549_152 NamedBody549_153

def NamedBody549_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody549_156 : StackLang.HolProg 64 :=
.seq NamedBody549_154 NamedBody549_155

def NamedBody549_157 : StackLang.HolProg 64 :=
.seq NamedBody549_149 NamedBody549_156

def NamedBody549_158 : StackLang.HolProg 64 :=
.seq NamedBody549_148 NamedBody549_157

def NamedBody549_159 : StackLang.HolProg 64 :=
.seq NamedBody549_147 NamedBody549_158

def NamedBody549_160 : StackLang.HolProg 64 :=
.seq NamedBody549_146 NamedBody549_159

def NamedBody549_161 : StackLang.HolProg 64 :=
.seq NamedBody549_145 NamedBody549_160

def NamedBody549_162 : StackLang.HolProg 64 :=
.seq NamedBody549_144 NamedBody549_161

def NamedBody549_163 : StackLang.HolProg 64 :=
.seq NamedBody549_143 NamedBody549_162

def NamedBody549_164 : StackLang.HolProg 64 :=
.seq NamedBody549_142 NamedBody549_163

def NamedBody549_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody549_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody549_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody549_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody549_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody549_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody549_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody549_172 : StackLang.HolProg 64 :=
.seq NamedBody549_170 NamedBody549_171

def NamedBody549_173 : StackLang.HolProg 64 :=
.seq NamedBody549_169 NamedBody549_172

def NamedBody549_174 : StackLang.HolProg 64 :=
.seq NamedBody549_168 NamedBody549_173

def NamedBody549_175 : StackLang.HolProg 64 :=
.seq NamedBody549_167 NamedBody549_174

def NamedBody549_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody549_177 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody549_178 : StackLang.HolProg 64 :=
.seq NamedBody549_176 NamedBody549_177

def NamedBody549_179 : StackLang.HolProg 64 :=
.call (some (NamedBody549_175, 1, 549, 6)) (Sum.inl 547) (some (NamedBody549_178, 549, 7))

def NamedBody549_180 : StackLang.HolProg 64 :=
.seq NamedBody549_166 NamedBody549_179

def NamedBody549_181 : StackLang.HolProg 64 :=
.seq NamedBody549_165 NamedBody549_180

def NamedBody549_182 : StackLang.HolProg 64 :=
.seq NamedBody549_164 NamedBody549_181

def NamedBody549_183 : StackLang.HolProg 64 :=
.seq NamedBody549_135 NamedBody549_182

def NamedBody549_184 : StackLang.HolProg 64 :=
.seq NamedBody549_132 NamedBody549_183

def NamedBody549_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody549_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody549_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody549_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody549_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 100#64)

def NamedBody549_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody549_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody549_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1834#64)

def NamedBody549_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody549_194 : StackLang.HolProg 64 :=
.seq NamedBody549_192 NamedBody549_193

def NamedBody549_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody549_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody549_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody549_198 : StackLang.HolProg 64 :=
.seq NamedBody549_196 NamedBody549_197

def NamedBody549_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody549_200 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody549_198 NamedBody549_199

def NamedBody549_201 : StackLang.HolProg 64 :=
.seq NamedBody549_195 NamedBody549_200

def NamedBody549_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody549_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody549_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 549 9

def NamedBody549_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody549_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody549_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody549_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody549_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody549_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody549_211 : StackLang.HolProg 64 :=
.seq NamedBody549_209 NamedBody549_210

def NamedBody549_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody549_213 : StackLang.HolProg 64 :=
.seq NamedBody549_211 NamedBody549_212

def NamedBody549_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody549_215 : StackLang.HolProg 64 :=
.seq NamedBody549_213 NamedBody549_214

def NamedBody549_216 : StackLang.HolProg 64 :=
.seq NamedBody549_208 NamedBody549_215

def NamedBody549_217 : StackLang.HolProg 64 :=
.seq NamedBody549_207 NamedBody549_216

def NamedBody549_218 : StackLang.HolProg 64 :=
.seq NamedBody549_206 NamedBody549_217

def NamedBody549_219 : StackLang.HolProg 64 :=
.seq NamedBody549_205 NamedBody549_218

def NamedBody549_220 : StackLang.HolProg 64 :=
.seq NamedBody549_204 NamedBody549_219

def NamedBody549_221 : StackLang.HolProg 64 :=
.seq NamedBody549_203 NamedBody549_220

def NamedBody549_222 : StackLang.HolProg 64 :=
.seq NamedBody549_202 NamedBody549_221

def NamedBody549_223 : StackLang.HolProg 64 :=
.seq NamedBody549_201 NamedBody549_222

def NamedBody549_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody549_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody549_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody549_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody549_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody549_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody549_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody549_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody549_232 : StackLang.HolProg 64 :=
.seq NamedBody549_230 NamedBody549_231

def NamedBody549_233 : StackLang.HolProg 64 :=
.seq NamedBody549_229 NamedBody549_232

def NamedBody549_234 : StackLang.HolProg 64 :=
.seq NamedBody549_228 NamedBody549_233

def NamedBody549_235 : StackLang.HolProg 64 :=
.seq NamedBody549_227 NamedBody549_234

def NamedBody549_236 : StackLang.HolProg 64 :=
.seq NamedBody549_226 NamedBody549_235

def NamedBody549_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody549_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody549_239 : StackLang.HolProg 64 :=
.seq NamedBody549_237 NamedBody549_238

def NamedBody549_240 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody549_241 : StackLang.HolProg 64 :=
.seq NamedBody549_239 NamedBody549_240

def NamedBody549_242 : StackLang.HolProg 64 :=
.call (some (NamedBody549_236, 1, 549, 8)) (Sum.inl 470) (some (NamedBody549_241, 549, 9))

def NamedBody549_243 : StackLang.HolProg 64 :=
.seq NamedBody549_225 NamedBody549_242

def NamedBody549_244 : StackLang.HolProg 64 :=
.seq NamedBody549_224 NamedBody549_243

def NamedBody549_245 : StackLang.HolProg 64 :=
.seq NamedBody549_223 NamedBody549_244

def NamedBody549_246 : StackLang.HolProg 64 :=
.seq NamedBody549_194 NamedBody549_245

def NamedBody549_247 : StackLang.HolProg 64 :=
.seq NamedBody549_191 NamedBody549_246

def NamedBody549_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody549_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody549_250 : StackLang.HolProg 64 :=
.seq NamedBody549_248 NamedBody549_249

def NamedBody549_251 : StackLang.HolProg 64 :=
.seq NamedBody549_247 NamedBody549_250

def NamedBody549_252 : StackLang.HolProg 64 :=
.seq NamedBody549_190 NamedBody549_251

def NamedBody549_253 : StackLang.HolProg 64 :=
.seq NamedBody549_189 NamedBody549_252

def NamedBody549_254 : StackLang.HolProg 64 :=
.seq NamedBody549_188 NamedBody549_253

def NamedBody549_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody549_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2100#64)

def NamedBody549_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody549_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody549_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1835#64)

def NamedBody549_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody549_261 : StackLang.HolProg 64 :=
.seq NamedBody549_259 NamedBody549_260

def NamedBody549_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody549_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody549_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody549_265 : StackLang.HolProg 64 :=
.seq NamedBody549_263 NamedBody549_264

def NamedBody549_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody549_267 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody549_265 NamedBody549_266

def NamedBody549_268 : StackLang.HolProg 64 :=
.seq NamedBody549_262 NamedBody549_267

def NamedBody549_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody549_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody549_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 549 11

def NamedBody549_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody549_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody549_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody549_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody549_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody549_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody549_278 : StackLang.HolProg 64 :=
.seq NamedBody549_276 NamedBody549_277

def NamedBody549_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody549_280 : StackLang.HolProg 64 :=
.seq NamedBody549_278 NamedBody549_279

def NamedBody549_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody549_282 : StackLang.HolProg 64 :=
.seq NamedBody549_280 NamedBody549_281

def NamedBody549_283 : StackLang.HolProg 64 :=
.seq NamedBody549_275 NamedBody549_282

def NamedBody549_284 : StackLang.HolProg 64 :=
.seq NamedBody549_274 NamedBody549_283

def NamedBody549_285 : StackLang.HolProg 64 :=
.seq NamedBody549_273 NamedBody549_284

def NamedBody549_286 : StackLang.HolProg 64 :=
.seq NamedBody549_272 NamedBody549_285

def NamedBody549_287 : StackLang.HolProg 64 :=
.seq NamedBody549_271 NamedBody549_286

def NamedBody549_288 : StackLang.HolProg 64 :=
.seq NamedBody549_270 NamedBody549_287

def NamedBody549_289 : StackLang.HolProg 64 :=
.seq NamedBody549_269 NamedBody549_288

def NamedBody549_290 : StackLang.HolProg 64 :=
.seq NamedBody549_268 NamedBody549_289

def NamedBody549_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody549_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody549_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody549_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody549_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody549_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody549_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody549_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody549_299 : StackLang.HolProg 64 :=
.seq NamedBody549_297 NamedBody549_298

def NamedBody549_300 : StackLang.HolProg 64 :=
.seq NamedBody549_296 NamedBody549_299

def NamedBody549_301 : StackLang.HolProg 64 :=
.seq NamedBody549_295 NamedBody549_300

def NamedBody549_302 : StackLang.HolProg 64 :=
.seq NamedBody549_294 NamedBody549_301

def NamedBody549_303 : StackLang.HolProg 64 :=
.seq NamedBody549_293 NamedBody549_302

def NamedBody549_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody549_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody549_306 : StackLang.HolProg 64 :=
.seq NamedBody549_304 NamedBody549_305

def NamedBody549_307 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody549_308 : StackLang.HolProg 64 :=
.seq NamedBody549_306 NamedBody549_307

def NamedBody549_309 : StackLang.HolProg 64 :=
.call (some (NamedBody549_303, 1, 549, 10)) (Sum.inl 470) (some (NamedBody549_308, 549, 11))

def NamedBody549_310 : StackLang.HolProg 64 :=
.seq NamedBody549_292 NamedBody549_309

def NamedBody549_311 : StackLang.HolProg 64 :=
.seq NamedBody549_291 NamedBody549_310

def NamedBody549_312 : StackLang.HolProg 64 :=
.seq NamedBody549_290 NamedBody549_311

def NamedBody549_313 : StackLang.HolProg 64 :=
.seq NamedBody549_261 NamedBody549_312

def NamedBody549_314 : StackLang.HolProg 64 :=
.seq NamedBody549_258 NamedBody549_313

def NamedBody549_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody549_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody549_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody549_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody549_319 : StackLang.HolProg 64 :=
.seq NamedBody549_317 NamedBody549_318

def NamedBody549_320 : StackLang.HolProg 64 :=
.seq NamedBody549_316 NamedBody549_319

def NamedBody549_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody549_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1836#64)

def NamedBody549_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody549_324 : StackLang.HolProg 64 :=
.seq NamedBody549_322 NamedBody549_323

def NamedBody549_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody549_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody549_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody549_328 : StackLang.HolProg 64 :=
.seq NamedBody549_326 NamedBody549_327

def NamedBody549_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody549_330 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody549_328 NamedBody549_329

def NamedBody549_331 : StackLang.HolProg 64 :=
.seq NamedBody549_325 NamedBody549_330

def NamedBody549_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody549_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody549_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 549 13

def NamedBody549_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody549_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody549_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody549_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody549_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody549_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody549_341 : StackLang.HolProg 64 :=
.seq NamedBody549_339 NamedBody549_340

def NamedBody549_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody549_343 : StackLang.HolProg 64 :=
.seq NamedBody549_341 NamedBody549_342

def NamedBody549_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody549_345 : StackLang.HolProg 64 :=
.seq NamedBody549_343 NamedBody549_344

def NamedBody549_346 : StackLang.HolProg 64 :=
.seq NamedBody549_338 NamedBody549_345

def NamedBody549_347 : StackLang.HolProg 64 :=
.seq NamedBody549_337 NamedBody549_346

def NamedBody549_348 : StackLang.HolProg 64 :=
.seq NamedBody549_336 NamedBody549_347

def NamedBody549_349 : StackLang.HolProg 64 :=
.seq NamedBody549_335 NamedBody549_348

def NamedBody549_350 : StackLang.HolProg 64 :=
.seq NamedBody549_334 NamedBody549_349

def NamedBody549_351 : StackLang.HolProg 64 :=
.seq NamedBody549_333 NamedBody549_350

def NamedBody549_352 : StackLang.HolProg 64 :=
.seq NamedBody549_332 NamedBody549_351

def NamedBody549_353 : StackLang.HolProg 64 :=
.seq NamedBody549_331 NamedBody549_352

def NamedBody549_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody549_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody549_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody549_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody549_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody549_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody549_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody549_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody549_362 : StackLang.HolProg 64 :=
.seq NamedBody549_360 NamedBody549_361

def NamedBody549_363 : StackLang.HolProg 64 :=
.seq NamedBody549_359 NamedBody549_362

def NamedBody549_364 : StackLang.HolProg 64 :=
.seq NamedBody549_358 NamedBody549_363

def NamedBody549_365 : StackLang.HolProg 64 :=
.seq NamedBody549_357 NamedBody549_364

def NamedBody549_366 : StackLang.HolProg 64 :=
.seq NamedBody549_356 NamedBody549_365

def NamedBody549_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody549_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody549_369 : StackLang.HolProg 64 :=
.seq NamedBody549_367 NamedBody549_368

def NamedBody549_370 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody549_371 : StackLang.HolProg 64 :=
.seq NamedBody549_369 NamedBody549_370

def NamedBody549_372 : StackLang.HolProg 64 :=
.call (some (NamedBody549_366, 1, 549, 12)) (Sum.inl 548) (some (NamedBody549_371, 549, 13))

def NamedBody549_373 : StackLang.HolProg 64 :=
.seq NamedBody549_355 NamedBody549_372

def NamedBody549_374 : StackLang.HolProg 64 :=
.seq NamedBody549_354 NamedBody549_373

def NamedBody549_375 : StackLang.HolProg 64 :=
.seq NamedBody549_353 NamedBody549_374

def NamedBody549_376 : StackLang.HolProg 64 :=
.seq NamedBody549_324 NamedBody549_375

def NamedBody549_377 : StackLang.HolProg 64 :=
.seq NamedBody549_321 NamedBody549_376

def NamedBody549_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody549_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody549_380 : StackLang.HolProg 64 :=
.seq NamedBody549_378 NamedBody549_379

def NamedBody549_381 : StackLang.HolProg 64 :=
.seq NamedBody549_377 NamedBody549_380

def NamedBody549_382 : StackLang.HolProg 64 :=
.seq NamedBody549_320 NamedBody549_381

def NamedBody549_383 : StackLang.HolProg 64 :=
.seq NamedBody549_315 NamedBody549_382

def NamedBody549_384 : StackLang.HolProg 64 :=
.seq NamedBody549_314 NamedBody549_383

def NamedBody549_385 : StackLang.HolProg 64 :=
.seq NamedBody549_257 NamedBody549_384

def NamedBody549_386 : StackLang.HolProg 64 :=
.seq NamedBody549_256 NamedBody549_385

def NamedBody549_387 : StackLang.HolProg 64 :=
.seq NamedBody549_255 NamedBody549_386

def NamedBody549_388 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody549_254 NamedBody549_387

def NamedBody549_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody549_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody549_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody549_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1837#64)

def NamedBody549_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody549_394 : StackLang.HolProg 64 :=
.seq NamedBody549_392 NamedBody549_393

def NamedBody549_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody549_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody549_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody549_398 : StackLang.HolProg 64 :=
.seq NamedBody549_396 NamedBody549_397

def NamedBody549_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody549_400 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody549_398 NamedBody549_399

def NamedBody549_401 : StackLang.HolProg 64 :=
.seq NamedBody549_395 NamedBody549_400

def NamedBody549_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody549_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody549_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 549 15

def NamedBody549_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody549_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody549_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody549_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody549_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody549_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody549_411 : StackLang.HolProg 64 :=
.seq NamedBody549_409 NamedBody549_410

def NamedBody549_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody549_413 : StackLang.HolProg 64 :=
.seq NamedBody549_411 NamedBody549_412

def NamedBody549_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody549_415 : StackLang.HolProg 64 :=
.seq NamedBody549_413 NamedBody549_414

def NamedBody549_416 : StackLang.HolProg 64 :=
.seq NamedBody549_408 NamedBody549_415

def NamedBody549_417 : StackLang.HolProg 64 :=
.seq NamedBody549_407 NamedBody549_416

def NamedBody549_418 : StackLang.HolProg 64 :=
.seq NamedBody549_406 NamedBody549_417

def NamedBody549_419 : StackLang.HolProg 64 :=
.seq NamedBody549_405 NamedBody549_418

def NamedBody549_420 : StackLang.HolProg 64 :=
.seq NamedBody549_404 NamedBody549_419

def NamedBody549_421 : StackLang.HolProg 64 :=
.seq NamedBody549_403 NamedBody549_420

def NamedBody549_422 : StackLang.HolProg 64 :=
.seq NamedBody549_402 NamedBody549_421

def NamedBody549_423 : StackLang.HolProg 64 :=
.seq NamedBody549_401 NamedBody549_422

def NamedBody549_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody549_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody549_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody549_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody549_428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody549_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody549_430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody549_431 : StackLang.HolProg 64 :=
.seq NamedBody549_429 NamedBody549_430

def NamedBody549_432 : StackLang.HolProg 64 :=
.seq NamedBody549_428 NamedBody549_431

def NamedBody549_433 : StackLang.HolProg 64 :=
.seq NamedBody549_427 NamedBody549_432

def NamedBody549_434 : StackLang.HolProg 64 :=
.seq NamedBody549_426 NamedBody549_433

def NamedBody549_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody549_436 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody549_437 : StackLang.HolProg 64 :=
.seq NamedBody549_435 NamedBody549_436

def NamedBody549_438 : StackLang.HolProg 64 :=
.call (some (NamedBody549_434, 1, 549, 14)) (Sum.inl 410) (some (NamedBody549_437, 549, 15))

def NamedBody549_439 : StackLang.HolProg 64 :=
.seq NamedBody549_425 NamedBody549_438

def NamedBody549_440 : StackLang.HolProg 64 :=
.seq NamedBody549_424 NamedBody549_439

def NamedBody549_441 : StackLang.HolProg 64 :=
.seq NamedBody549_423 NamedBody549_440

def NamedBody549_442 : StackLang.HolProg 64 :=
.seq NamedBody549_394 NamedBody549_441

def NamedBody549_443 : StackLang.HolProg 64 :=
.seq NamedBody549_391 NamedBody549_442

def NamedBody549_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody549_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody549_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody549_447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1838#64)

def NamedBody549_448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody549_449 : StackLang.HolProg 64 :=
.seq NamedBody549_447 NamedBody549_448

def NamedBody549_450 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody549_451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody549_452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody549_453 : StackLang.HolProg 64 :=
.seq NamedBody549_451 NamedBody549_452

def NamedBody549_454 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody549_455 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody549_453 NamedBody549_454

def NamedBody549_456 : StackLang.HolProg 64 :=
.seq NamedBody549_450 NamedBody549_455

def NamedBody549_457 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody549_458 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody549_459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 549 17

def NamedBody549_460 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody549_461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody549_462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody549_463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody549_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody549_465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody549_466 : StackLang.HolProg 64 :=
.seq NamedBody549_464 NamedBody549_465

def NamedBody549_467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody549_468 : StackLang.HolProg 64 :=
.seq NamedBody549_466 NamedBody549_467

def NamedBody549_469 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody549_470 : StackLang.HolProg 64 :=
.seq NamedBody549_468 NamedBody549_469

def NamedBody549_471 : StackLang.HolProg 64 :=
.seq NamedBody549_463 NamedBody549_470

def NamedBody549_472 : StackLang.HolProg 64 :=
.seq NamedBody549_462 NamedBody549_471

def NamedBody549_473 : StackLang.HolProg 64 :=
.seq NamedBody549_461 NamedBody549_472

def NamedBody549_474 : StackLang.HolProg 64 :=
.seq NamedBody549_460 NamedBody549_473

def NamedBody549_475 : StackLang.HolProg 64 :=
.seq NamedBody549_459 NamedBody549_474

def NamedBody549_476 : StackLang.HolProg 64 :=
.seq NamedBody549_458 NamedBody549_475

def NamedBody549_477 : StackLang.HolProg 64 :=
.seq NamedBody549_457 NamedBody549_476

def NamedBody549_478 : StackLang.HolProg 64 :=
.seq NamedBody549_456 NamedBody549_477

def NamedBody549_479 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody549_480 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody549_481 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody549_482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody549_483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody549_484 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody549_485 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody549_486 : StackLang.HolProg 64 :=
.seq NamedBody549_484 NamedBody549_485

def NamedBody549_487 : StackLang.HolProg 64 :=
.seq NamedBody549_483 NamedBody549_486

def NamedBody549_488 : StackLang.HolProg 64 :=
.seq NamedBody549_482 NamedBody549_487

def NamedBody549_489 : StackLang.HolProg 64 :=
.seq NamedBody549_481 NamedBody549_488

def NamedBody549_490 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody549_491 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody549_492 : StackLang.HolProg 64 :=
.seq NamedBody549_490 NamedBody549_491

def NamedBody549_493 : StackLang.HolProg 64 :=
.call (some (NamedBody549_489, 1, 549, 16)) (Sum.inl 476) (some (NamedBody549_492, 549, 17))

def NamedBody549_494 : StackLang.HolProg 64 :=
.seq NamedBody549_480 NamedBody549_493

def NamedBody549_495 : StackLang.HolProg 64 :=
.seq NamedBody549_479 NamedBody549_494

def NamedBody549_496 : StackLang.HolProg 64 :=
.seq NamedBody549_478 NamedBody549_495

def NamedBody549_497 : StackLang.HolProg 64 :=
.seq NamedBody549_449 NamedBody549_496

def NamedBody549_498 : StackLang.HolProg 64 :=
.seq NamedBody549_446 NamedBody549_497

def NamedBody549_499 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody549_500 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody549_501 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody549_502 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody549_503 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1839#64)

def NamedBody549_504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody549_505 : StackLang.HolProg 64 :=
.seq NamedBody549_503 NamedBody549_504

def NamedBody549_506 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody549_507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody549_508 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody549_509 : StackLang.HolProg 64 :=
.seq NamedBody549_507 NamedBody549_508

def NamedBody549_510 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody549_511 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody549_509 NamedBody549_510

def NamedBody549_512 : StackLang.HolProg 64 :=
.seq NamedBody549_506 NamedBody549_511

def NamedBody549_513 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody549_514 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody549_515 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 549 19

def NamedBody549_516 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody549_517 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody549_518 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody549_519 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody549_520 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody549_521 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody549_522 : StackLang.HolProg 64 :=
.seq NamedBody549_520 NamedBody549_521

def NamedBody549_523 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody549_524 : StackLang.HolProg 64 :=
.seq NamedBody549_522 NamedBody549_523

def NamedBody549_525 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody549_526 : StackLang.HolProg 64 :=
.seq NamedBody549_524 NamedBody549_525

def NamedBody549_527 : StackLang.HolProg 64 :=
.seq NamedBody549_519 NamedBody549_526

def NamedBody549_528 : StackLang.HolProg 64 :=
.seq NamedBody549_518 NamedBody549_527

def NamedBody549_529 : StackLang.HolProg 64 :=
.seq NamedBody549_517 NamedBody549_528

def NamedBody549_530 : StackLang.HolProg 64 :=
.seq NamedBody549_516 NamedBody549_529

def NamedBody549_531 : StackLang.HolProg 64 :=
.seq NamedBody549_515 NamedBody549_530

def NamedBody549_532 : StackLang.HolProg 64 :=
.seq NamedBody549_514 NamedBody549_531

def NamedBody549_533 : StackLang.HolProg 64 :=
.seq NamedBody549_513 NamedBody549_532

def NamedBody549_534 : StackLang.HolProg 64 :=
.seq NamedBody549_512 NamedBody549_533

def NamedBody549_535 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody549_536 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody549_537 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody549_538 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody549_539 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody549_540 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody549_541 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody549_542 : StackLang.HolProg 64 :=
.seq NamedBody549_540 NamedBody549_541

def NamedBody549_543 : StackLang.HolProg 64 :=
.seq NamedBody549_539 NamedBody549_542

def NamedBody549_544 : StackLang.HolProg 64 :=
.seq NamedBody549_538 NamedBody549_543

def NamedBody549_545 : StackLang.HolProg 64 :=
.seq NamedBody549_537 NamedBody549_544

def NamedBody549_546 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody549_547 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody549_548 : StackLang.HolProg 64 :=
.seq NamedBody549_546 NamedBody549_547

def NamedBody549_549 : StackLang.HolProg 64 :=
.call (some (NamedBody549_545, 1, 549, 18)) (Sum.inl 490) (some (NamedBody549_548, 549, 19))

def NamedBody549_550 : StackLang.HolProg 64 :=
.seq NamedBody549_536 NamedBody549_549

def NamedBody549_551 : StackLang.HolProg 64 :=
.seq NamedBody549_535 NamedBody549_550

def NamedBody549_552 : StackLang.HolProg 64 :=
.seq NamedBody549_534 NamedBody549_551

def NamedBody549_553 : StackLang.HolProg 64 :=
.seq NamedBody549_505 NamedBody549_552

def NamedBody549_554 : StackLang.HolProg 64 :=
.seq NamedBody549_502 NamedBody549_553

def NamedBody549_555 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody549_556 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody549_557 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody549_558 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody549_559 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody549_560 : StackLang.HolProg 64 :=
.seq NamedBody549_558 NamedBody549_559

def NamedBody549_561 : StackLang.HolProg 64 :=
.seq NamedBody549_557 NamedBody549_560

def NamedBody549_562 : StackLang.HolProg 64 :=
.seq NamedBody549_556 NamedBody549_561

def NamedBody549_563 : StackLang.HolProg 64 :=
.seq NamedBody549_555 NamedBody549_562

def NamedBody549_564 : StackLang.HolProg 64 :=
.seq NamedBody549_554 NamedBody549_563

def NamedBody549_565 : StackLang.HolProg 64 :=
.seq NamedBody549_501 NamedBody549_564

def NamedBody549_566 : StackLang.HolProg 64 :=
.seq NamedBody549_500 NamedBody549_565

def NamedBody549_567 : StackLang.HolProg 64 :=
.seq NamedBody549_499 NamedBody549_566

def NamedBody549_568 : StackLang.HolProg 64 :=
.seq NamedBody549_498 NamedBody549_567

def NamedBody549_569 : StackLang.HolProg 64 :=
.seq NamedBody549_445 NamedBody549_568

def NamedBody549_570 : StackLang.HolProg 64 :=
.seq NamedBody549_444 NamedBody549_569

def NamedBody549_571 : StackLang.HolProg 64 :=
.seq NamedBody549_443 NamedBody549_570

def NamedBody549_572 : StackLang.HolProg 64 :=
.seq NamedBody549_390 NamedBody549_571

def NamedBody549_573 : StackLang.HolProg 64 :=
.seq NamedBody549_389 NamedBody549_572

def NamedBody549_574 : StackLang.HolProg 64 :=
.seq NamedBody549_388 NamedBody549_573

def NamedBody549_575 : StackLang.HolProg 64 :=
.seq NamedBody549_187 NamedBody549_574

def NamedBody549_576 : StackLang.HolProg 64 :=
.seq NamedBody549_186 NamedBody549_575

def NamedBody549_577 : StackLang.HolProg 64 :=
.seq NamedBody549_185 NamedBody549_576

def NamedBody549_578 : StackLang.HolProg 64 :=
.seq NamedBody549_184 NamedBody549_577

def NamedBody549_579 : StackLang.HolProg 64 :=
.seq NamedBody549_131 NamedBody549_578

def NamedBody549_580 : StackLang.HolProg 64 :=
.seq NamedBody549_128 NamedBody549_579

def NamedBody549_581 : StackLang.HolProg 64 :=
.seq NamedBody549_127 NamedBody549_580

def NamedBody549_582 : StackLang.HolProg 64 :=
.seq NamedBody549_126 NamedBody549_581

def NamedBody549_583 : StackLang.HolProg 64 :=
.seq NamedBody549_125 NamedBody549_582

def NamedBody549_584 : StackLang.HolProg 64 :=
.seq NamedBody549_124 NamedBody549_583

def NamedBody549_585 : StackLang.HolProg 64 :=
.seq NamedBody549_123 NamedBody549_584

def NamedBody549_586 : StackLang.HolProg 64 :=
.seq NamedBody549_122 NamedBody549_585

def NamedBody549_587 : StackLang.HolProg 64 :=
.seq NamedBody549_121 NamedBody549_586

def NamedBody549_588 : StackLang.HolProg 64 :=
.seq NamedBody549_68 NamedBody549_587

def NamedBody549_589 : StackLang.HolProg 64 :=
.seq NamedBody549_65 NamedBody549_588

def NamedBody549_590 : StackLang.HolProg 64 :=
.seq NamedBody549_64 NamedBody549_589

def NamedBody549_591 : StackLang.HolProg 64 :=
.seq NamedBody549_63 NamedBody549_590

def NamedBody549_592 : StackLang.HolProg 64 :=
.seq NamedBody549_62 NamedBody549_591

def NamedBody549_593 : StackLang.HolProg 64 :=
.seq NamedBody549_61 NamedBody549_592

def NamedBody549_594 : StackLang.HolProg 64 :=
.seq NamedBody549_60 NamedBody549_593

def NamedBody549_595 : StackLang.HolProg 64 :=
.seq NamedBody549_7 NamedBody549_594

def NamedBody549_596 : StackLang.HolProg 64 :=
.seq NamedBody549_6 NamedBody549_595

def Named549 : Nat × StackLang.HolProg 64 := (549, NamedBody549_596)
theorem Named549_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed549 = Named549 := by
  kernel_rfl
#print axioms Named549_eq
end InitECandidate.Proofs.BackendStages
