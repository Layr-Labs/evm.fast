import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed498
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody498_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def NamedBody498_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody498_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody498_3 : StackLang.HolProg 64 :=
.seq NamedBody498_1 NamedBody498_2

def NamedBody498_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody498_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody498_3 NamedBody498_4

def NamedBody498_6 : StackLang.HolProg 64 :=
.seq NamedBody498_0 NamedBody498_5

def NamedBody498_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody498_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody498_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1550#64)

def NamedBody498_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody498_11 : StackLang.HolProg 64 :=
.seq NamedBody498_9 NamedBody498_10

def NamedBody498_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody498_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody498_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody498_15 : StackLang.HolProg 64 :=
.seq NamedBody498_13 NamedBody498_14

def NamedBody498_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody498_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody498_15 NamedBody498_16

def NamedBody498_18 : StackLang.HolProg 64 :=
.seq NamedBody498_12 NamedBody498_17

def NamedBody498_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody498_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody498_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 498 3

def NamedBody498_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody498_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody498_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody498_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody498_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody498_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody498_28 : StackLang.HolProg 64 :=
.seq NamedBody498_26 NamedBody498_27

def NamedBody498_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody498_30 : StackLang.HolProg 64 :=
.seq NamedBody498_28 NamedBody498_29

def NamedBody498_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody498_32 : StackLang.HolProg 64 :=
.seq NamedBody498_30 NamedBody498_31

def NamedBody498_33 : StackLang.HolProg 64 :=
.seq NamedBody498_25 NamedBody498_32

def NamedBody498_34 : StackLang.HolProg 64 :=
.seq NamedBody498_24 NamedBody498_33

def NamedBody498_35 : StackLang.HolProg 64 :=
.seq NamedBody498_23 NamedBody498_34

def NamedBody498_36 : StackLang.HolProg 64 :=
.seq NamedBody498_22 NamedBody498_35

def NamedBody498_37 : StackLang.HolProg 64 :=
.seq NamedBody498_21 NamedBody498_36

def NamedBody498_38 : StackLang.HolProg 64 :=
.seq NamedBody498_20 NamedBody498_37

def NamedBody498_39 : StackLang.HolProg 64 :=
.seq NamedBody498_19 NamedBody498_38

def NamedBody498_40 : StackLang.HolProg 64 :=
.seq NamedBody498_18 NamedBody498_39

def NamedBody498_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody498_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody498_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody498_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody498_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody498_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody498_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody498_48 : StackLang.HolProg 64 :=
.seq NamedBody498_46 NamedBody498_47

def NamedBody498_49 : StackLang.HolProg 64 :=
.seq NamedBody498_45 NamedBody498_48

def NamedBody498_50 : StackLang.HolProg 64 :=
.seq NamedBody498_44 NamedBody498_49

def NamedBody498_51 : StackLang.HolProg 64 :=
.seq NamedBody498_43 NamedBody498_50

def NamedBody498_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody498_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody498_54 : StackLang.HolProg 64 :=
.seq NamedBody498_52 NamedBody498_53

def NamedBody498_55 : StackLang.HolProg 64 :=
.call (some (NamedBody498_51, 1, 498, 2)) (Sum.inl 475) (some (NamedBody498_54, 498, 3))

def NamedBody498_56 : StackLang.HolProg 64 :=
.seq NamedBody498_42 NamedBody498_55

def NamedBody498_57 : StackLang.HolProg 64 :=
.seq NamedBody498_41 NamedBody498_56

def NamedBody498_58 : StackLang.HolProg 64 :=
.seq NamedBody498_40 NamedBody498_57

def NamedBody498_59 : StackLang.HolProg 64 :=
.seq NamedBody498_11 NamedBody498_58

def NamedBody498_60 : StackLang.HolProg 64 :=
.seq NamedBody498_8 NamedBody498_59

def NamedBody498_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody498_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody498_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody498_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody498_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody498_66 : StackLang.HolProg 64 :=
.seq NamedBody498_64 NamedBody498_65

def NamedBody498_67 : StackLang.HolProg 64 :=
.seq NamedBody498_63 NamedBody498_66

def NamedBody498_68 : StackLang.HolProg 64 :=
.seq NamedBody498_62 NamedBody498_67

def NamedBody498_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody498_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1551#64)

def NamedBody498_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody498_72 : StackLang.HolProg 64 :=
.seq NamedBody498_70 NamedBody498_71

def NamedBody498_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody498_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody498_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody498_76 : StackLang.HolProg 64 :=
.seq NamedBody498_74 NamedBody498_75

def NamedBody498_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody498_78 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody498_76 NamedBody498_77

def NamedBody498_79 : StackLang.HolProg 64 :=
.seq NamedBody498_73 NamedBody498_78

def NamedBody498_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody498_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody498_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 498 5

def NamedBody498_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody498_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody498_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody498_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody498_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody498_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody498_89 : StackLang.HolProg 64 :=
.seq NamedBody498_87 NamedBody498_88

def NamedBody498_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody498_91 : StackLang.HolProg 64 :=
.seq NamedBody498_89 NamedBody498_90

def NamedBody498_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody498_93 : StackLang.HolProg 64 :=
.seq NamedBody498_91 NamedBody498_92

def NamedBody498_94 : StackLang.HolProg 64 :=
.seq NamedBody498_86 NamedBody498_93

def NamedBody498_95 : StackLang.HolProg 64 :=
.seq NamedBody498_85 NamedBody498_94

def NamedBody498_96 : StackLang.HolProg 64 :=
.seq NamedBody498_84 NamedBody498_95

def NamedBody498_97 : StackLang.HolProg 64 :=
.seq NamedBody498_83 NamedBody498_96

def NamedBody498_98 : StackLang.HolProg 64 :=
.seq NamedBody498_82 NamedBody498_97

def NamedBody498_99 : StackLang.HolProg 64 :=
.seq NamedBody498_81 NamedBody498_98

def NamedBody498_100 : StackLang.HolProg 64 :=
.seq NamedBody498_80 NamedBody498_99

def NamedBody498_101 : StackLang.HolProg 64 :=
.seq NamedBody498_79 NamedBody498_100

def NamedBody498_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody498_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody498_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody498_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody498_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody498_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody498_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody498_109 : StackLang.HolProg 64 :=
.seq NamedBody498_107 NamedBody498_108

def NamedBody498_110 : StackLang.HolProg 64 :=
.seq NamedBody498_106 NamedBody498_109

def NamedBody498_111 : StackLang.HolProg 64 :=
.seq NamedBody498_105 NamedBody498_110

def NamedBody498_112 : StackLang.HolProg 64 :=
.seq NamedBody498_104 NamedBody498_111

def NamedBody498_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody498_114 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody498_115 : StackLang.HolProg 64 :=
.seq NamedBody498_113 NamedBody498_114

def NamedBody498_116 : StackLang.HolProg 64 :=
.call (some (NamedBody498_112, 1, 498, 4)) (Sum.inl 475) (some (NamedBody498_115, 498, 5))

def NamedBody498_117 : StackLang.HolProg 64 :=
.seq NamedBody498_103 NamedBody498_116

def NamedBody498_118 : StackLang.HolProg 64 :=
.seq NamedBody498_102 NamedBody498_117

def NamedBody498_119 : StackLang.HolProg 64 :=
.seq NamedBody498_101 NamedBody498_118

def NamedBody498_120 : StackLang.HolProg 64 :=
.seq NamedBody498_72 NamedBody498_119

def NamedBody498_121 : StackLang.HolProg 64 :=
.seq NamedBody498_69 NamedBody498_120

def NamedBody498_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody498_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 5#64)

def NamedBody498_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody498_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody498_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody498_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody498_128 : StackLang.HolProg 64 :=
.seq NamedBody498_126 NamedBody498_127

def NamedBody498_129 : StackLang.HolProg 64 :=
.seq NamedBody498_125 NamedBody498_128

def NamedBody498_130 : StackLang.HolProg 64 :=
.seq NamedBody498_124 NamedBody498_129

def NamedBody498_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody498_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1552#64)

def NamedBody498_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody498_134 : StackLang.HolProg 64 :=
.seq NamedBody498_132 NamedBody498_133

def NamedBody498_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody498_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody498_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody498_138 : StackLang.HolProg 64 :=
.seq NamedBody498_136 NamedBody498_137

def NamedBody498_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody498_140 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody498_138 NamedBody498_139

def NamedBody498_141 : StackLang.HolProg 64 :=
.seq NamedBody498_135 NamedBody498_140

def NamedBody498_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody498_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody498_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 498 7

def NamedBody498_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody498_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody498_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody498_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody498_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody498_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody498_151 : StackLang.HolProg 64 :=
.seq NamedBody498_149 NamedBody498_150

def NamedBody498_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody498_153 : StackLang.HolProg 64 :=
.seq NamedBody498_151 NamedBody498_152

def NamedBody498_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody498_155 : StackLang.HolProg 64 :=
.seq NamedBody498_153 NamedBody498_154

def NamedBody498_156 : StackLang.HolProg 64 :=
.seq NamedBody498_148 NamedBody498_155

def NamedBody498_157 : StackLang.HolProg 64 :=
.seq NamedBody498_147 NamedBody498_156

def NamedBody498_158 : StackLang.HolProg 64 :=
.seq NamedBody498_146 NamedBody498_157

def NamedBody498_159 : StackLang.HolProg 64 :=
.seq NamedBody498_145 NamedBody498_158

def NamedBody498_160 : StackLang.HolProg 64 :=
.seq NamedBody498_144 NamedBody498_159

def NamedBody498_161 : StackLang.HolProg 64 :=
.seq NamedBody498_143 NamedBody498_160

def NamedBody498_162 : StackLang.HolProg 64 :=
.seq NamedBody498_142 NamedBody498_161

def NamedBody498_163 : StackLang.HolProg 64 :=
.seq NamedBody498_141 NamedBody498_162

def NamedBody498_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody498_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody498_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody498_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody498_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody498_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody498_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody498_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody498_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody498_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody498_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody498_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody498_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody498_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody498_178 : StackLang.HolProg 64 :=
.seq NamedBody498_176 NamedBody498_177

def NamedBody498_179 : StackLang.HolProg 64 :=
.seq NamedBody498_175 NamedBody498_178

def NamedBody498_180 : StackLang.HolProg 64 :=
.seq NamedBody498_174 NamedBody498_179

def NamedBody498_181 : StackLang.HolProg 64 :=
.seq NamedBody498_173 NamedBody498_180

def NamedBody498_182 : StackLang.HolProg 64 :=
.seq NamedBody498_172 NamedBody498_181

def NamedBody498_183 : StackLang.HolProg 64 :=
.seq NamedBody498_171 NamedBody498_182

def NamedBody498_184 : StackLang.HolProg 64 :=
.seq NamedBody498_170 NamedBody498_183

def NamedBody498_185 : StackLang.HolProg 64 :=
.seq NamedBody498_169 NamedBody498_184

def NamedBody498_186 : StackLang.HolProg 64 :=
.seq NamedBody498_168 NamedBody498_185

def NamedBody498_187 : StackLang.HolProg 64 :=
.seq NamedBody498_167 NamedBody498_186

def NamedBody498_188 : StackLang.HolProg 64 :=
.seq NamedBody498_166 NamedBody498_187

def NamedBody498_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody498_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody498_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody498_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody498_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody498_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody498_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody498_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody498_197 : StackLang.HolProg 64 :=
.seq NamedBody498_195 NamedBody498_196

def NamedBody498_198 : StackLang.HolProg 64 :=
.seq NamedBody498_194 NamedBody498_197

def NamedBody498_199 : StackLang.HolProg 64 :=
.seq NamedBody498_193 NamedBody498_198

def NamedBody498_200 : StackLang.HolProg 64 :=
.seq NamedBody498_192 NamedBody498_199

def NamedBody498_201 : StackLang.HolProg 64 :=
.seq NamedBody498_191 NamedBody498_200

def NamedBody498_202 : StackLang.HolProg 64 :=
.seq NamedBody498_190 NamedBody498_201

def NamedBody498_203 : StackLang.HolProg 64 :=
.seq NamedBody498_189 NamedBody498_202

def NamedBody498_204 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody498_205 : StackLang.HolProg 64 :=
.seq NamedBody498_203 NamedBody498_204

def NamedBody498_206 : StackLang.HolProg 64 :=
.call (some (NamedBody498_188, 1, 498, 6)) (Sum.inl 470) (some (NamedBody498_205, 498, 7))

def NamedBody498_207 : StackLang.HolProg 64 :=
.seq NamedBody498_165 NamedBody498_206

def NamedBody498_208 : StackLang.HolProg 64 :=
.seq NamedBody498_164 NamedBody498_207

def NamedBody498_209 : StackLang.HolProg 64 :=
.seq NamedBody498_163 NamedBody498_208

def NamedBody498_210 : StackLang.HolProg 64 :=
.seq NamedBody498_134 NamedBody498_209

def NamedBody498_211 : StackLang.HolProg 64 :=
.seq NamedBody498_131 NamedBody498_210

def NamedBody498_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody498_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody498_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody498_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1553#64)

def NamedBody498_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody498_217 : StackLang.HolProg 64 :=
.seq NamedBody498_215 NamedBody498_216

def NamedBody498_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody498_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody498_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody498_221 : StackLang.HolProg 64 :=
.seq NamedBody498_219 NamedBody498_220

def NamedBody498_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody498_223 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody498_221 NamedBody498_222

def NamedBody498_224 : StackLang.HolProg 64 :=
.seq NamedBody498_218 NamedBody498_223

def NamedBody498_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody498_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody498_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 498 9

def NamedBody498_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody498_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody498_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody498_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody498_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody498_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody498_234 : StackLang.HolProg 64 :=
.seq NamedBody498_232 NamedBody498_233

def NamedBody498_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody498_236 : StackLang.HolProg 64 :=
.seq NamedBody498_234 NamedBody498_235

def NamedBody498_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody498_238 : StackLang.HolProg 64 :=
.seq NamedBody498_236 NamedBody498_237

def NamedBody498_239 : StackLang.HolProg 64 :=
.seq NamedBody498_231 NamedBody498_238

def NamedBody498_240 : StackLang.HolProg 64 :=
.seq NamedBody498_230 NamedBody498_239

def NamedBody498_241 : StackLang.HolProg 64 :=
.seq NamedBody498_229 NamedBody498_240

def NamedBody498_242 : StackLang.HolProg 64 :=
.seq NamedBody498_228 NamedBody498_241

def NamedBody498_243 : StackLang.HolProg 64 :=
.seq NamedBody498_227 NamedBody498_242

def NamedBody498_244 : StackLang.HolProg 64 :=
.seq NamedBody498_226 NamedBody498_243

def NamedBody498_245 : StackLang.HolProg 64 :=
.seq NamedBody498_225 NamedBody498_244

def NamedBody498_246 : StackLang.HolProg 64 :=
.seq NamedBody498_224 NamedBody498_245

def NamedBody498_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody498_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody498_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody498_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody498_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody498_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody498_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody498_254 : StackLang.HolProg 64 :=
.seq NamedBody498_252 NamedBody498_253

def NamedBody498_255 : StackLang.HolProg 64 :=
.seq NamedBody498_251 NamedBody498_254

def NamedBody498_256 : StackLang.HolProg 64 :=
.seq NamedBody498_250 NamedBody498_255

def NamedBody498_257 : StackLang.HolProg 64 :=
.seq NamedBody498_249 NamedBody498_256

def NamedBody498_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody498_259 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody498_260 : StackLang.HolProg 64 :=
.seq NamedBody498_258 NamedBody498_259

def NamedBody498_261 : StackLang.HolProg 64 :=
.call (some (NamedBody498_257, 1, 498, 8)) (Sum.inl 120) (some (NamedBody498_260, 498, 9))

def NamedBody498_262 : StackLang.HolProg 64 :=
.seq NamedBody498_248 NamedBody498_261

def NamedBody498_263 : StackLang.HolProg 64 :=
.seq NamedBody498_247 NamedBody498_262

def NamedBody498_264 : StackLang.HolProg 64 :=
.seq NamedBody498_246 NamedBody498_263

def NamedBody498_265 : StackLang.HolProg 64 :=
.seq NamedBody498_217 NamedBody498_264

def NamedBody498_266 : StackLang.HolProg 64 :=
.seq NamedBody498_214 NamedBody498_265

def NamedBody498_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody498_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody498_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody498_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1554#64)

def NamedBody498_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody498_272 : StackLang.HolProg 64 :=
.seq NamedBody498_270 NamedBody498_271

def NamedBody498_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody498_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody498_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody498_276 : StackLang.HolProg 64 :=
.seq NamedBody498_274 NamedBody498_275

def NamedBody498_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody498_278 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody498_276 NamedBody498_277

def NamedBody498_279 : StackLang.HolProg 64 :=
.seq NamedBody498_273 NamedBody498_278

def NamedBody498_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody498_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody498_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 498 11

def NamedBody498_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody498_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody498_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody498_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody498_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody498_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody498_289 : StackLang.HolProg 64 :=
.seq NamedBody498_287 NamedBody498_288

def NamedBody498_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody498_291 : StackLang.HolProg 64 :=
.seq NamedBody498_289 NamedBody498_290

def NamedBody498_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody498_293 : StackLang.HolProg 64 :=
.seq NamedBody498_291 NamedBody498_292

def NamedBody498_294 : StackLang.HolProg 64 :=
.seq NamedBody498_286 NamedBody498_293

def NamedBody498_295 : StackLang.HolProg 64 :=
.seq NamedBody498_285 NamedBody498_294

def NamedBody498_296 : StackLang.HolProg 64 :=
.seq NamedBody498_284 NamedBody498_295

def NamedBody498_297 : StackLang.HolProg 64 :=
.seq NamedBody498_283 NamedBody498_296

def NamedBody498_298 : StackLang.HolProg 64 :=
.seq NamedBody498_282 NamedBody498_297

def NamedBody498_299 : StackLang.HolProg 64 :=
.seq NamedBody498_281 NamedBody498_298

def NamedBody498_300 : StackLang.HolProg 64 :=
.seq NamedBody498_280 NamedBody498_299

def NamedBody498_301 : StackLang.HolProg 64 :=
.seq NamedBody498_279 NamedBody498_300

def NamedBody498_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody498_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody498_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody498_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody498_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody498_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody498_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody498_309 : StackLang.HolProg 64 :=
.seq NamedBody498_307 NamedBody498_308

def NamedBody498_310 : StackLang.HolProg 64 :=
.seq NamedBody498_306 NamedBody498_309

def NamedBody498_311 : StackLang.HolProg 64 :=
.seq NamedBody498_305 NamedBody498_310

def NamedBody498_312 : StackLang.HolProg 64 :=
.seq NamedBody498_304 NamedBody498_311

def NamedBody498_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody498_314 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody498_315 : StackLang.HolProg 64 :=
.seq NamedBody498_313 NamedBody498_314

def NamedBody498_316 : StackLang.HolProg 64 :=
.call (some (NamedBody498_312, 1, 498, 10)) (Sum.inl 476) (some (NamedBody498_315, 498, 11))

def NamedBody498_317 : StackLang.HolProg 64 :=
.seq NamedBody498_303 NamedBody498_316

def NamedBody498_318 : StackLang.HolProg 64 :=
.seq NamedBody498_302 NamedBody498_317

def NamedBody498_319 : StackLang.HolProg 64 :=
.seq NamedBody498_301 NamedBody498_318

def NamedBody498_320 : StackLang.HolProg 64 :=
.seq NamedBody498_272 NamedBody498_319

def NamedBody498_321 : StackLang.HolProg 64 :=
.seq NamedBody498_269 NamedBody498_320

def NamedBody498_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody498_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody498_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody498_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody498_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1555#64)

def NamedBody498_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody498_328 : StackLang.HolProg 64 :=
.seq NamedBody498_326 NamedBody498_327

def NamedBody498_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody498_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody498_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody498_332 : StackLang.HolProg 64 :=
.seq NamedBody498_330 NamedBody498_331

def NamedBody498_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody498_334 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody498_332 NamedBody498_333

def NamedBody498_335 : StackLang.HolProg 64 :=
.seq NamedBody498_329 NamedBody498_334

def NamedBody498_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody498_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody498_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 498 13

def NamedBody498_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody498_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody498_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody498_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody498_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody498_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody498_345 : StackLang.HolProg 64 :=
.seq NamedBody498_343 NamedBody498_344

def NamedBody498_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody498_347 : StackLang.HolProg 64 :=
.seq NamedBody498_345 NamedBody498_346

def NamedBody498_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody498_349 : StackLang.HolProg 64 :=
.seq NamedBody498_347 NamedBody498_348

def NamedBody498_350 : StackLang.HolProg 64 :=
.seq NamedBody498_342 NamedBody498_349

def NamedBody498_351 : StackLang.HolProg 64 :=
.seq NamedBody498_341 NamedBody498_350

def NamedBody498_352 : StackLang.HolProg 64 :=
.seq NamedBody498_340 NamedBody498_351

def NamedBody498_353 : StackLang.HolProg 64 :=
.seq NamedBody498_339 NamedBody498_352

def NamedBody498_354 : StackLang.HolProg 64 :=
.seq NamedBody498_338 NamedBody498_353

def NamedBody498_355 : StackLang.HolProg 64 :=
.seq NamedBody498_337 NamedBody498_354

def NamedBody498_356 : StackLang.HolProg 64 :=
.seq NamedBody498_336 NamedBody498_355

def NamedBody498_357 : StackLang.HolProg 64 :=
.seq NamedBody498_335 NamedBody498_356

def NamedBody498_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody498_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody498_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody498_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody498_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody498_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody498_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody498_365 : StackLang.HolProg 64 :=
.seq NamedBody498_363 NamedBody498_364

def NamedBody498_366 : StackLang.HolProg 64 :=
.seq NamedBody498_362 NamedBody498_365

def NamedBody498_367 : StackLang.HolProg 64 :=
.seq NamedBody498_361 NamedBody498_366

def NamedBody498_368 : StackLang.HolProg 64 :=
.seq NamedBody498_360 NamedBody498_367

def NamedBody498_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody498_370 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody498_371 : StackLang.HolProg 64 :=
.seq NamedBody498_369 NamedBody498_370

def NamedBody498_372 : StackLang.HolProg 64 :=
.call (some (NamedBody498_368, 1, 498, 12)) (Sum.inl 490) (some (NamedBody498_371, 498, 13))

def NamedBody498_373 : StackLang.HolProg 64 :=
.seq NamedBody498_359 NamedBody498_372

def NamedBody498_374 : StackLang.HolProg 64 :=
.seq NamedBody498_358 NamedBody498_373

def NamedBody498_375 : StackLang.HolProg 64 :=
.seq NamedBody498_357 NamedBody498_374

def NamedBody498_376 : StackLang.HolProg 64 :=
.seq NamedBody498_328 NamedBody498_375

def NamedBody498_377 : StackLang.HolProg 64 :=
.seq NamedBody498_325 NamedBody498_376

def NamedBody498_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody498_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody498_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody498_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def NamedBody498_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody498_383 : StackLang.HolProg 64 :=
.seq NamedBody498_381 NamedBody498_382

def NamedBody498_384 : StackLang.HolProg 64 :=
.seq NamedBody498_380 NamedBody498_383

def NamedBody498_385 : StackLang.HolProg 64 :=
.seq NamedBody498_379 NamedBody498_384

def NamedBody498_386 : StackLang.HolProg 64 :=
.seq NamedBody498_378 NamedBody498_385

def NamedBody498_387 : StackLang.HolProg 64 :=
.seq NamedBody498_377 NamedBody498_386

def NamedBody498_388 : StackLang.HolProg 64 :=
.seq NamedBody498_324 NamedBody498_387

def NamedBody498_389 : StackLang.HolProg 64 :=
.seq NamedBody498_323 NamedBody498_388

def NamedBody498_390 : StackLang.HolProg 64 :=
.seq NamedBody498_322 NamedBody498_389

def NamedBody498_391 : StackLang.HolProg 64 :=
.seq NamedBody498_321 NamedBody498_390

def NamedBody498_392 : StackLang.HolProg 64 :=
.seq NamedBody498_268 NamedBody498_391

def NamedBody498_393 : StackLang.HolProg 64 :=
.seq NamedBody498_267 NamedBody498_392

def NamedBody498_394 : StackLang.HolProg 64 :=
.seq NamedBody498_266 NamedBody498_393

def NamedBody498_395 : StackLang.HolProg 64 :=
.seq NamedBody498_213 NamedBody498_394

def NamedBody498_396 : StackLang.HolProg 64 :=
.seq NamedBody498_212 NamedBody498_395

def NamedBody498_397 : StackLang.HolProg 64 :=
.seq NamedBody498_211 NamedBody498_396

def NamedBody498_398 : StackLang.HolProg 64 :=
.seq NamedBody498_130 NamedBody498_397

def NamedBody498_399 : StackLang.HolProg 64 :=
.seq NamedBody498_123 NamedBody498_398

def NamedBody498_400 : StackLang.HolProg 64 :=
.seq NamedBody498_122 NamedBody498_399

def NamedBody498_401 : StackLang.HolProg 64 :=
.seq NamedBody498_121 NamedBody498_400

def NamedBody498_402 : StackLang.HolProg 64 :=
.seq NamedBody498_68 NamedBody498_401

def NamedBody498_403 : StackLang.HolProg 64 :=
.seq NamedBody498_61 NamedBody498_402

def NamedBody498_404 : StackLang.HolProg 64 :=
.seq NamedBody498_60 NamedBody498_403

def NamedBody498_405 : StackLang.HolProg 64 :=
.seq NamedBody498_7 NamedBody498_404

def NamedBody498_406 : StackLang.HolProg 64 :=
.seq NamedBody498_6 NamedBody498_405

def Named498 : Nat × StackLang.HolProg 64 := (498, NamedBody498_406)
theorem Named498_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed498 = Named498 := by
  kernel_rfl
#print axioms Named498_eq
end InitECandidate.Proofs.BackendStages
