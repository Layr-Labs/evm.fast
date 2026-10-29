import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed520
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody520_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def NamedBody520_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody520_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody520_3 : StackLang.HolProg 64 :=
.seq NamedBody520_1 NamedBody520_2

def NamedBody520_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody520_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody520_3 NamedBody520_4

def NamedBody520_6 : StackLang.HolProg 64 :=
.seq NamedBody520_0 NamedBody520_5

def NamedBody520_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody520_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody520_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1682#64)

def NamedBody520_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody520_11 : StackLang.HolProg 64 :=
.seq NamedBody520_9 NamedBody520_10

def NamedBody520_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody520_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody520_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody520_15 : StackLang.HolProg 64 :=
.seq NamedBody520_13 NamedBody520_14

def NamedBody520_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody520_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody520_15 NamedBody520_16

def NamedBody520_18 : StackLang.HolProg 64 :=
.seq NamedBody520_12 NamedBody520_17

def NamedBody520_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody520_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody520_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 520 3

def NamedBody520_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody520_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody520_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody520_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody520_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody520_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody520_28 : StackLang.HolProg 64 :=
.seq NamedBody520_26 NamedBody520_27

def NamedBody520_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody520_30 : StackLang.HolProg 64 :=
.seq NamedBody520_28 NamedBody520_29

def NamedBody520_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody520_32 : StackLang.HolProg 64 :=
.seq NamedBody520_30 NamedBody520_31

def NamedBody520_33 : StackLang.HolProg 64 :=
.seq NamedBody520_25 NamedBody520_32

def NamedBody520_34 : StackLang.HolProg 64 :=
.seq NamedBody520_24 NamedBody520_33

def NamedBody520_35 : StackLang.HolProg 64 :=
.seq NamedBody520_23 NamedBody520_34

def NamedBody520_36 : StackLang.HolProg 64 :=
.seq NamedBody520_22 NamedBody520_35

def NamedBody520_37 : StackLang.HolProg 64 :=
.seq NamedBody520_21 NamedBody520_36

def NamedBody520_38 : StackLang.HolProg 64 :=
.seq NamedBody520_20 NamedBody520_37

def NamedBody520_39 : StackLang.HolProg 64 :=
.seq NamedBody520_19 NamedBody520_38

def NamedBody520_40 : StackLang.HolProg 64 :=
.seq NamedBody520_18 NamedBody520_39

def NamedBody520_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody520_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody520_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody520_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody520_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody520_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody520_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody520_48 : StackLang.HolProg 64 :=
.seq NamedBody520_46 NamedBody520_47

def NamedBody520_49 : StackLang.HolProg 64 :=
.seq NamedBody520_45 NamedBody520_48

def NamedBody520_50 : StackLang.HolProg 64 :=
.seq NamedBody520_44 NamedBody520_49

def NamedBody520_51 : StackLang.HolProg 64 :=
.seq NamedBody520_43 NamedBody520_50

def NamedBody520_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody520_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody520_54 : StackLang.HolProg 64 :=
.seq NamedBody520_52 NamedBody520_53

def NamedBody520_55 : StackLang.HolProg 64 :=
.call (some (NamedBody520_51, 1, 520, 2)) (Sum.inl 475) (some (NamedBody520_54, 520, 3))

def NamedBody520_56 : StackLang.HolProg 64 :=
.seq NamedBody520_42 NamedBody520_55

def NamedBody520_57 : StackLang.HolProg 64 :=
.seq NamedBody520_41 NamedBody520_56

def NamedBody520_58 : StackLang.HolProg 64 :=
.seq NamedBody520_40 NamedBody520_57

def NamedBody520_59 : StackLang.HolProg 64 :=
.seq NamedBody520_11 NamedBody520_58

def NamedBody520_60 : StackLang.HolProg 64 :=
.seq NamedBody520_8 NamedBody520_59

def NamedBody520_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody520_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody520_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody520_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody520_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody520_66 : StackLang.HolProg 64 :=
.seq NamedBody520_64 NamedBody520_65

def NamedBody520_67 : StackLang.HolProg 64 :=
.seq NamedBody520_63 NamedBody520_66

def NamedBody520_68 : StackLang.HolProg 64 :=
.seq NamedBody520_62 NamedBody520_67

def NamedBody520_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody520_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1683#64)

def NamedBody520_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody520_72 : StackLang.HolProg 64 :=
.seq NamedBody520_70 NamedBody520_71

def NamedBody520_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody520_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody520_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody520_76 : StackLang.HolProg 64 :=
.seq NamedBody520_74 NamedBody520_75

def NamedBody520_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody520_78 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody520_76 NamedBody520_77

def NamedBody520_79 : StackLang.HolProg 64 :=
.seq NamedBody520_73 NamedBody520_78

def NamedBody520_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody520_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody520_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 520 5

def NamedBody520_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody520_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody520_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody520_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody520_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody520_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody520_89 : StackLang.HolProg 64 :=
.seq NamedBody520_87 NamedBody520_88

def NamedBody520_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody520_91 : StackLang.HolProg 64 :=
.seq NamedBody520_89 NamedBody520_90

def NamedBody520_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody520_93 : StackLang.HolProg 64 :=
.seq NamedBody520_91 NamedBody520_92

def NamedBody520_94 : StackLang.HolProg 64 :=
.seq NamedBody520_86 NamedBody520_93

def NamedBody520_95 : StackLang.HolProg 64 :=
.seq NamedBody520_85 NamedBody520_94

def NamedBody520_96 : StackLang.HolProg 64 :=
.seq NamedBody520_84 NamedBody520_95

def NamedBody520_97 : StackLang.HolProg 64 :=
.seq NamedBody520_83 NamedBody520_96

def NamedBody520_98 : StackLang.HolProg 64 :=
.seq NamedBody520_82 NamedBody520_97

def NamedBody520_99 : StackLang.HolProg 64 :=
.seq NamedBody520_81 NamedBody520_98

def NamedBody520_100 : StackLang.HolProg 64 :=
.seq NamedBody520_80 NamedBody520_99

def NamedBody520_101 : StackLang.HolProg 64 :=
.seq NamedBody520_79 NamedBody520_100

def NamedBody520_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody520_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody520_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody520_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody520_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody520_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody520_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody520_109 : StackLang.HolProg 64 :=
.seq NamedBody520_107 NamedBody520_108

def NamedBody520_110 : StackLang.HolProg 64 :=
.seq NamedBody520_106 NamedBody520_109

def NamedBody520_111 : StackLang.HolProg 64 :=
.seq NamedBody520_105 NamedBody520_110

def NamedBody520_112 : StackLang.HolProg 64 :=
.seq NamedBody520_104 NamedBody520_111

def NamedBody520_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody520_114 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody520_115 : StackLang.HolProg 64 :=
.seq NamedBody520_113 NamedBody520_114

def NamedBody520_116 : StackLang.HolProg 64 :=
.call (some (NamedBody520_112, 1, 520, 4)) (Sum.inl 475) (some (NamedBody520_115, 520, 5))

def NamedBody520_117 : StackLang.HolProg 64 :=
.seq NamedBody520_103 NamedBody520_116

def NamedBody520_118 : StackLang.HolProg 64 :=
.seq NamedBody520_102 NamedBody520_117

def NamedBody520_119 : StackLang.HolProg 64 :=
.seq NamedBody520_101 NamedBody520_118

def NamedBody520_120 : StackLang.HolProg 64 :=
.seq NamedBody520_72 NamedBody520_119

def NamedBody520_121 : StackLang.HolProg 64 :=
.seq NamedBody520_69 NamedBody520_120

def NamedBody520_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody520_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 3#64)

def NamedBody520_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody520_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody520_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody520_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody520_128 : StackLang.HolProg 64 :=
.seq NamedBody520_126 NamedBody520_127

def NamedBody520_129 : StackLang.HolProg 64 :=
.seq NamedBody520_125 NamedBody520_128

def NamedBody520_130 : StackLang.HolProg 64 :=
.seq NamedBody520_124 NamedBody520_129

def NamedBody520_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody520_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1684#64)

def NamedBody520_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody520_134 : StackLang.HolProg 64 :=
.seq NamedBody520_132 NamedBody520_133

def NamedBody520_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody520_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody520_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody520_138 : StackLang.HolProg 64 :=
.seq NamedBody520_136 NamedBody520_137

def NamedBody520_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody520_140 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody520_138 NamedBody520_139

def NamedBody520_141 : StackLang.HolProg 64 :=
.seq NamedBody520_135 NamedBody520_140

def NamedBody520_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody520_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody520_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 520 7

def NamedBody520_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody520_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody520_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody520_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody520_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody520_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody520_151 : StackLang.HolProg 64 :=
.seq NamedBody520_149 NamedBody520_150

def NamedBody520_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody520_153 : StackLang.HolProg 64 :=
.seq NamedBody520_151 NamedBody520_152

def NamedBody520_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody520_155 : StackLang.HolProg 64 :=
.seq NamedBody520_153 NamedBody520_154

def NamedBody520_156 : StackLang.HolProg 64 :=
.seq NamedBody520_148 NamedBody520_155

def NamedBody520_157 : StackLang.HolProg 64 :=
.seq NamedBody520_147 NamedBody520_156

def NamedBody520_158 : StackLang.HolProg 64 :=
.seq NamedBody520_146 NamedBody520_157

def NamedBody520_159 : StackLang.HolProg 64 :=
.seq NamedBody520_145 NamedBody520_158

def NamedBody520_160 : StackLang.HolProg 64 :=
.seq NamedBody520_144 NamedBody520_159

def NamedBody520_161 : StackLang.HolProg 64 :=
.seq NamedBody520_143 NamedBody520_160

def NamedBody520_162 : StackLang.HolProg 64 :=
.seq NamedBody520_142 NamedBody520_161

def NamedBody520_163 : StackLang.HolProg 64 :=
.seq NamedBody520_141 NamedBody520_162

def NamedBody520_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody520_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody520_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody520_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody520_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody520_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody520_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody520_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody520_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody520_173 : StackLang.HolProg 64 :=
.seq NamedBody520_171 NamedBody520_172

def NamedBody520_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody520_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody520_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody520_177 : StackLang.HolProg 64 :=
.seq NamedBody520_175 NamedBody520_176

def NamedBody520_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody520_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody520_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody520_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody520_182 : StackLang.HolProg 64 :=
.seq NamedBody520_180 NamedBody520_181

def NamedBody520_183 : StackLang.HolProg 64 :=
.seq NamedBody520_179 NamedBody520_182

def NamedBody520_184 : StackLang.HolProg 64 :=
.seq NamedBody520_178 NamedBody520_183

def NamedBody520_185 : StackLang.HolProg 64 :=
.seq NamedBody520_177 NamedBody520_184

def NamedBody520_186 : StackLang.HolProg 64 :=
.seq NamedBody520_174 NamedBody520_185

def NamedBody520_187 : StackLang.HolProg 64 :=
.seq NamedBody520_173 NamedBody520_186

def NamedBody520_188 : StackLang.HolProg 64 :=
.seq NamedBody520_170 NamedBody520_187

def NamedBody520_189 : StackLang.HolProg 64 :=
.seq NamedBody520_169 NamedBody520_188

def NamedBody520_190 : StackLang.HolProg 64 :=
.seq NamedBody520_168 NamedBody520_189

def NamedBody520_191 : StackLang.HolProg 64 :=
.seq NamedBody520_167 NamedBody520_190

def NamedBody520_192 : StackLang.HolProg 64 :=
.seq NamedBody520_166 NamedBody520_191

def NamedBody520_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody520_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody520_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody520_196 : StackLang.HolProg 64 :=
.seq NamedBody520_194 NamedBody520_195

def NamedBody520_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody520_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody520_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody520_200 : StackLang.HolProg 64 :=
.seq NamedBody520_198 NamedBody520_199

def NamedBody520_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody520_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody520_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody520_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody520_205 : StackLang.HolProg 64 :=
.seq NamedBody520_203 NamedBody520_204

def NamedBody520_206 : StackLang.HolProg 64 :=
.seq NamedBody520_202 NamedBody520_205

def NamedBody520_207 : StackLang.HolProg 64 :=
.seq NamedBody520_201 NamedBody520_206

def NamedBody520_208 : StackLang.HolProg 64 :=
.seq NamedBody520_200 NamedBody520_207

def NamedBody520_209 : StackLang.HolProg 64 :=
.seq NamedBody520_197 NamedBody520_208

def NamedBody520_210 : StackLang.HolProg 64 :=
.seq NamedBody520_196 NamedBody520_209

def NamedBody520_211 : StackLang.HolProg 64 :=
.seq NamedBody520_193 NamedBody520_210

def NamedBody520_212 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody520_213 : StackLang.HolProg 64 :=
.seq NamedBody520_211 NamedBody520_212

def NamedBody520_214 : StackLang.HolProg 64 :=
.call (some (NamedBody520_192, 1, 520, 6)) (Sum.inl 470) (some (NamedBody520_213, 520, 7))

def NamedBody520_215 : StackLang.HolProg 64 :=
.seq NamedBody520_165 NamedBody520_214

def NamedBody520_216 : StackLang.HolProg 64 :=
.seq NamedBody520_164 NamedBody520_215

def NamedBody520_217 : StackLang.HolProg 64 :=
.seq NamedBody520_163 NamedBody520_216

def NamedBody520_218 : StackLang.HolProg 64 :=
.seq NamedBody520_134 NamedBody520_217

def NamedBody520_219 : StackLang.HolProg 64 :=
.seq NamedBody520_131 NamedBody520_218

def NamedBody520_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody520_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody520_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody520_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1685#64)

def NamedBody520_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody520_225 : StackLang.HolProg 64 :=
.seq NamedBody520_223 NamedBody520_224

def NamedBody520_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody520_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody520_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody520_229 : StackLang.HolProg 64 :=
.seq NamedBody520_227 NamedBody520_228

def NamedBody520_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody520_231 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody520_229 NamedBody520_230

def NamedBody520_232 : StackLang.HolProg 64 :=
.seq NamedBody520_226 NamedBody520_231

def NamedBody520_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody520_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody520_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 520 9

def NamedBody520_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody520_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody520_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody520_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody520_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody520_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody520_242 : StackLang.HolProg 64 :=
.seq NamedBody520_240 NamedBody520_241

def NamedBody520_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody520_244 : StackLang.HolProg 64 :=
.seq NamedBody520_242 NamedBody520_243

def NamedBody520_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody520_246 : StackLang.HolProg 64 :=
.seq NamedBody520_244 NamedBody520_245

def NamedBody520_247 : StackLang.HolProg 64 :=
.seq NamedBody520_239 NamedBody520_246

def NamedBody520_248 : StackLang.HolProg 64 :=
.seq NamedBody520_238 NamedBody520_247

def NamedBody520_249 : StackLang.HolProg 64 :=
.seq NamedBody520_237 NamedBody520_248

def NamedBody520_250 : StackLang.HolProg 64 :=
.seq NamedBody520_236 NamedBody520_249

def NamedBody520_251 : StackLang.HolProg 64 :=
.seq NamedBody520_235 NamedBody520_250

def NamedBody520_252 : StackLang.HolProg 64 :=
.seq NamedBody520_234 NamedBody520_251

def NamedBody520_253 : StackLang.HolProg 64 :=
.seq NamedBody520_233 NamedBody520_252

def NamedBody520_254 : StackLang.HolProg 64 :=
.seq NamedBody520_232 NamedBody520_253

def NamedBody520_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody520_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody520_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody520_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody520_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody520_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody520_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody520_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody520_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody520_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody520_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody520_266 : StackLang.HolProg 64 :=
.seq NamedBody520_264 NamedBody520_265

def NamedBody520_267 : StackLang.HolProg 64 :=
.seq NamedBody520_263 NamedBody520_266

def NamedBody520_268 : StackLang.HolProg 64 :=
.seq NamedBody520_262 NamedBody520_267

def NamedBody520_269 : StackLang.HolProg 64 :=
.seq NamedBody520_261 NamedBody520_268

def NamedBody520_270 : StackLang.HolProg 64 :=
.seq NamedBody520_260 NamedBody520_269

def NamedBody520_271 : StackLang.HolProg 64 :=
.seq NamedBody520_259 NamedBody520_270

def NamedBody520_272 : StackLang.HolProg 64 :=
.seq NamedBody520_258 NamedBody520_271

def NamedBody520_273 : StackLang.HolProg 64 :=
.seq NamedBody520_257 NamedBody520_272

def NamedBody520_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody520_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody520_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody520_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody520_278 : StackLang.HolProg 64 :=
.seq NamedBody520_276 NamedBody520_277

def NamedBody520_279 : StackLang.HolProg 64 :=
.seq NamedBody520_275 NamedBody520_278

def NamedBody520_280 : StackLang.HolProg 64 :=
.seq NamedBody520_274 NamedBody520_279

def NamedBody520_281 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody520_282 : StackLang.HolProg 64 :=
.seq NamedBody520_280 NamedBody520_281

def NamedBody520_283 : StackLang.HolProg 64 :=
.call (some (NamedBody520_273, 1, 520, 8)) (Sum.inl 462) (some (NamedBody520_282, 520, 9))

def NamedBody520_284 : StackLang.HolProg 64 :=
.seq NamedBody520_256 NamedBody520_283

def NamedBody520_285 : StackLang.HolProg 64 :=
.seq NamedBody520_255 NamedBody520_284

def NamedBody520_286 : StackLang.HolProg 64 :=
.seq NamedBody520_254 NamedBody520_285

def NamedBody520_287 : StackLang.HolProg 64 :=
.seq NamedBody520_225 NamedBody520_286

def NamedBody520_288 : StackLang.HolProg 64 :=
.seq NamedBody520_222 NamedBody520_287

def NamedBody520_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody520_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody520_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody520_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1686#64)

def NamedBody520_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody520_294 : StackLang.HolProg 64 :=
.seq NamedBody520_292 NamedBody520_293

def NamedBody520_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody520_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody520_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody520_298 : StackLang.HolProg 64 :=
.seq NamedBody520_296 NamedBody520_297

def NamedBody520_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody520_300 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody520_298 NamedBody520_299

def NamedBody520_301 : StackLang.HolProg 64 :=
.seq NamedBody520_295 NamedBody520_300

def NamedBody520_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody520_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody520_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 520 11

def NamedBody520_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody520_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody520_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody520_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody520_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody520_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody520_311 : StackLang.HolProg 64 :=
.seq NamedBody520_309 NamedBody520_310

def NamedBody520_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody520_313 : StackLang.HolProg 64 :=
.seq NamedBody520_311 NamedBody520_312

def NamedBody520_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody520_315 : StackLang.HolProg 64 :=
.seq NamedBody520_313 NamedBody520_314

def NamedBody520_316 : StackLang.HolProg 64 :=
.seq NamedBody520_308 NamedBody520_315

def NamedBody520_317 : StackLang.HolProg 64 :=
.seq NamedBody520_307 NamedBody520_316

def NamedBody520_318 : StackLang.HolProg 64 :=
.seq NamedBody520_306 NamedBody520_317

def NamedBody520_319 : StackLang.HolProg 64 :=
.seq NamedBody520_305 NamedBody520_318

def NamedBody520_320 : StackLang.HolProg 64 :=
.seq NamedBody520_304 NamedBody520_319

def NamedBody520_321 : StackLang.HolProg 64 :=
.seq NamedBody520_303 NamedBody520_320

def NamedBody520_322 : StackLang.HolProg 64 :=
.seq NamedBody520_302 NamedBody520_321

def NamedBody520_323 : StackLang.HolProg 64 :=
.seq NamedBody520_301 NamedBody520_322

def NamedBody520_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody520_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody520_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody520_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody520_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody520_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody520_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody520_331 : StackLang.HolProg 64 :=
.seq NamedBody520_329 NamedBody520_330

def NamedBody520_332 : StackLang.HolProg 64 :=
.seq NamedBody520_328 NamedBody520_331

def NamedBody520_333 : StackLang.HolProg 64 :=
.seq NamedBody520_327 NamedBody520_332

def NamedBody520_334 : StackLang.HolProg 64 :=
.seq NamedBody520_326 NamedBody520_333

def NamedBody520_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody520_336 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody520_337 : StackLang.HolProg 64 :=
.seq NamedBody520_335 NamedBody520_336

def NamedBody520_338 : StackLang.HolProg 64 :=
.call (some (NamedBody520_334, 1, 520, 10)) (Sum.inl 142) (some (NamedBody520_337, 520, 11))

def NamedBody520_339 : StackLang.HolProg 64 :=
.seq NamedBody520_325 NamedBody520_338

def NamedBody520_340 : StackLang.HolProg 64 :=
.seq NamedBody520_324 NamedBody520_339

def NamedBody520_341 : StackLang.HolProg 64 :=
.seq NamedBody520_323 NamedBody520_340

def NamedBody520_342 : StackLang.HolProg 64 :=
.seq NamedBody520_294 NamedBody520_341

def NamedBody520_343 : StackLang.HolProg 64 :=
.seq NamedBody520_291 NamedBody520_342

def NamedBody520_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody520_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody520_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody520_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1687#64)

def NamedBody520_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody520_349 : StackLang.HolProg 64 :=
.seq NamedBody520_347 NamedBody520_348

def NamedBody520_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody520_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody520_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody520_353 : StackLang.HolProg 64 :=
.seq NamedBody520_351 NamedBody520_352

def NamedBody520_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody520_355 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody520_353 NamedBody520_354

def NamedBody520_356 : StackLang.HolProg 64 :=
.seq NamedBody520_350 NamedBody520_355

def NamedBody520_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody520_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody520_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 520 13

def NamedBody520_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody520_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody520_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody520_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody520_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody520_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody520_366 : StackLang.HolProg 64 :=
.seq NamedBody520_364 NamedBody520_365

def NamedBody520_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody520_368 : StackLang.HolProg 64 :=
.seq NamedBody520_366 NamedBody520_367

def NamedBody520_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody520_370 : StackLang.HolProg 64 :=
.seq NamedBody520_368 NamedBody520_369

def NamedBody520_371 : StackLang.HolProg 64 :=
.seq NamedBody520_363 NamedBody520_370

def NamedBody520_372 : StackLang.HolProg 64 :=
.seq NamedBody520_362 NamedBody520_371

def NamedBody520_373 : StackLang.HolProg 64 :=
.seq NamedBody520_361 NamedBody520_372

def NamedBody520_374 : StackLang.HolProg 64 :=
.seq NamedBody520_360 NamedBody520_373

def NamedBody520_375 : StackLang.HolProg 64 :=
.seq NamedBody520_359 NamedBody520_374

def NamedBody520_376 : StackLang.HolProg 64 :=
.seq NamedBody520_358 NamedBody520_375

def NamedBody520_377 : StackLang.HolProg 64 :=
.seq NamedBody520_357 NamedBody520_376

def NamedBody520_378 : StackLang.HolProg 64 :=
.seq NamedBody520_356 NamedBody520_377

def NamedBody520_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody520_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody520_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody520_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody520_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody520_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody520_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody520_386 : StackLang.HolProg 64 :=
.seq NamedBody520_384 NamedBody520_385

def NamedBody520_387 : StackLang.HolProg 64 :=
.seq NamedBody520_383 NamedBody520_386

def NamedBody520_388 : StackLang.HolProg 64 :=
.seq NamedBody520_382 NamedBody520_387

def NamedBody520_389 : StackLang.HolProg 64 :=
.seq NamedBody520_381 NamedBody520_388

def NamedBody520_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody520_391 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody520_392 : StackLang.HolProg 64 :=
.seq NamedBody520_390 NamedBody520_391

def NamedBody520_393 : StackLang.HolProg 64 :=
.call (some (NamedBody520_389, 1, 520, 12)) (Sum.inl 476) (some (NamedBody520_392, 520, 13))

def NamedBody520_394 : StackLang.HolProg 64 :=
.seq NamedBody520_380 NamedBody520_393

def NamedBody520_395 : StackLang.HolProg 64 :=
.seq NamedBody520_379 NamedBody520_394

def NamedBody520_396 : StackLang.HolProg 64 :=
.seq NamedBody520_378 NamedBody520_395

def NamedBody520_397 : StackLang.HolProg 64 :=
.seq NamedBody520_349 NamedBody520_396

def NamedBody520_398 : StackLang.HolProg 64 :=
.seq NamedBody520_346 NamedBody520_397

def NamedBody520_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody520_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody520_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody520_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody520_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1688#64)

def NamedBody520_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody520_405 : StackLang.HolProg 64 :=
.seq NamedBody520_403 NamedBody520_404

def NamedBody520_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody520_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody520_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody520_409 : StackLang.HolProg 64 :=
.seq NamedBody520_407 NamedBody520_408

def NamedBody520_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody520_411 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody520_409 NamedBody520_410

def NamedBody520_412 : StackLang.HolProg 64 :=
.seq NamedBody520_406 NamedBody520_411

def NamedBody520_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody520_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody520_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 520 15

def NamedBody520_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody520_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody520_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody520_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody520_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody520_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody520_422 : StackLang.HolProg 64 :=
.seq NamedBody520_420 NamedBody520_421

def NamedBody520_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody520_424 : StackLang.HolProg 64 :=
.seq NamedBody520_422 NamedBody520_423

def NamedBody520_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody520_426 : StackLang.HolProg 64 :=
.seq NamedBody520_424 NamedBody520_425

def NamedBody520_427 : StackLang.HolProg 64 :=
.seq NamedBody520_419 NamedBody520_426

def NamedBody520_428 : StackLang.HolProg 64 :=
.seq NamedBody520_418 NamedBody520_427

def NamedBody520_429 : StackLang.HolProg 64 :=
.seq NamedBody520_417 NamedBody520_428

def NamedBody520_430 : StackLang.HolProg 64 :=
.seq NamedBody520_416 NamedBody520_429

def NamedBody520_431 : StackLang.HolProg 64 :=
.seq NamedBody520_415 NamedBody520_430

def NamedBody520_432 : StackLang.HolProg 64 :=
.seq NamedBody520_414 NamedBody520_431

def NamedBody520_433 : StackLang.HolProg 64 :=
.seq NamedBody520_413 NamedBody520_432

def NamedBody520_434 : StackLang.HolProg 64 :=
.seq NamedBody520_412 NamedBody520_433

def NamedBody520_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody520_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody520_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody520_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody520_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody520_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody520_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody520_442 : StackLang.HolProg 64 :=
.seq NamedBody520_440 NamedBody520_441

def NamedBody520_443 : StackLang.HolProg 64 :=
.seq NamedBody520_439 NamedBody520_442

def NamedBody520_444 : StackLang.HolProg 64 :=
.seq NamedBody520_438 NamedBody520_443

def NamedBody520_445 : StackLang.HolProg 64 :=
.seq NamedBody520_437 NamedBody520_444

def NamedBody520_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody520_447 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody520_448 : StackLang.HolProg 64 :=
.seq NamedBody520_446 NamedBody520_447

def NamedBody520_449 : StackLang.HolProg 64 :=
.call (some (NamedBody520_445, 1, 520, 14)) (Sum.inl 490) (some (NamedBody520_448, 520, 15))

def NamedBody520_450 : StackLang.HolProg 64 :=
.seq NamedBody520_436 NamedBody520_449

def NamedBody520_451 : StackLang.HolProg 64 :=
.seq NamedBody520_435 NamedBody520_450

def NamedBody520_452 : StackLang.HolProg 64 :=
.seq NamedBody520_434 NamedBody520_451

def NamedBody520_453 : StackLang.HolProg 64 :=
.seq NamedBody520_405 NamedBody520_452

def NamedBody520_454 : StackLang.HolProg 64 :=
.seq NamedBody520_402 NamedBody520_453

def NamedBody520_455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody520_456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody520_457 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody520_458 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def NamedBody520_459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody520_460 : StackLang.HolProg 64 :=
.seq NamedBody520_458 NamedBody520_459

def NamedBody520_461 : StackLang.HolProg 64 :=
.seq NamedBody520_457 NamedBody520_460

def NamedBody520_462 : StackLang.HolProg 64 :=
.seq NamedBody520_456 NamedBody520_461

def NamedBody520_463 : StackLang.HolProg 64 :=
.seq NamedBody520_455 NamedBody520_462

def NamedBody520_464 : StackLang.HolProg 64 :=
.seq NamedBody520_454 NamedBody520_463

def NamedBody520_465 : StackLang.HolProg 64 :=
.seq NamedBody520_401 NamedBody520_464

def NamedBody520_466 : StackLang.HolProg 64 :=
.seq NamedBody520_400 NamedBody520_465

def NamedBody520_467 : StackLang.HolProg 64 :=
.seq NamedBody520_399 NamedBody520_466

def NamedBody520_468 : StackLang.HolProg 64 :=
.seq NamedBody520_398 NamedBody520_467

def NamedBody520_469 : StackLang.HolProg 64 :=
.seq NamedBody520_345 NamedBody520_468

def NamedBody520_470 : StackLang.HolProg 64 :=
.seq NamedBody520_344 NamedBody520_469

def NamedBody520_471 : StackLang.HolProg 64 :=
.seq NamedBody520_343 NamedBody520_470

def NamedBody520_472 : StackLang.HolProg 64 :=
.seq NamedBody520_290 NamedBody520_471

def NamedBody520_473 : StackLang.HolProg 64 :=
.seq NamedBody520_289 NamedBody520_472

def NamedBody520_474 : StackLang.HolProg 64 :=
.seq NamedBody520_288 NamedBody520_473

def NamedBody520_475 : StackLang.HolProg 64 :=
.seq NamedBody520_221 NamedBody520_474

def NamedBody520_476 : StackLang.HolProg 64 :=
.seq NamedBody520_220 NamedBody520_475

def NamedBody520_477 : StackLang.HolProg 64 :=
.seq NamedBody520_219 NamedBody520_476

def NamedBody520_478 : StackLang.HolProg 64 :=
.seq NamedBody520_130 NamedBody520_477

def NamedBody520_479 : StackLang.HolProg 64 :=
.seq NamedBody520_123 NamedBody520_478

def NamedBody520_480 : StackLang.HolProg 64 :=
.seq NamedBody520_122 NamedBody520_479

def NamedBody520_481 : StackLang.HolProg 64 :=
.seq NamedBody520_121 NamedBody520_480

def NamedBody520_482 : StackLang.HolProg 64 :=
.seq NamedBody520_68 NamedBody520_481

def NamedBody520_483 : StackLang.HolProg 64 :=
.seq NamedBody520_61 NamedBody520_482

def NamedBody520_484 : StackLang.HolProg 64 :=
.seq NamedBody520_60 NamedBody520_483

def NamedBody520_485 : StackLang.HolProg 64 :=
.seq NamedBody520_7 NamedBody520_484

def NamedBody520_486 : StackLang.HolProg 64 :=
.seq NamedBody520_6 NamedBody520_485

def Named520 : Nat × StackLang.HolProg 64 := (520, NamedBody520_486)
theorem Named520_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed520 = Named520 := by
  kernel_rfl
#print axioms Named520_eq
end InitECandidate.Proofs.BackendStages
