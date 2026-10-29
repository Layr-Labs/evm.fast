import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed574
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody574_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody574_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody574_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody574_3 : StackLang.HolProg 64 :=
.seq NamedBody574_1 NamedBody574_2

def NamedBody574_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody574_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody574_3 NamedBody574_4

def NamedBody574_6 : StackLang.HolProg 64 :=
.seq NamedBody574_0 NamedBody574_5

def NamedBody574_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody574_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody574_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1996#64)

def NamedBody574_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody574_11 : StackLang.HolProg 64 :=
.seq NamedBody574_9 NamedBody574_10

def NamedBody574_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody574_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody574_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody574_15 : StackLang.HolProg 64 :=
.seq NamedBody574_13 NamedBody574_14

def NamedBody574_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody574_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody574_15 NamedBody574_16

def NamedBody574_18 : StackLang.HolProg 64 :=
.seq NamedBody574_12 NamedBody574_17

def NamedBody574_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody574_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody574_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 574 3

def NamedBody574_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody574_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody574_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody574_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody574_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody574_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody574_28 : StackLang.HolProg 64 :=
.seq NamedBody574_26 NamedBody574_27

def NamedBody574_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody574_30 : StackLang.HolProg 64 :=
.seq NamedBody574_28 NamedBody574_29

def NamedBody574_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody574_32 : StackLang.HolProg 64 :=
.seq NamedBody574_30 NamedBody574_31

def NamedBody574_33 : StackLang.HolProg 64 :=
.seq NamedBody574_25 NamedBody574_32

def NamedBody574_34 : StackLang.HolProg 64 :=
.seq NamedBody574_24 NamedBody574_33

def NamedBody574_35 : StackLang.HolProg 64 :=
.seq NamedBody574_23 NamedBody574_34

def NamedBody574_36 : StackLang.HolProg 64 :=
.seq NamedBody574_22 NamedBody574_35

def NamedBody574_37 : StackLang.HolProg 64 :=
.seq NamedBody574_21 NamedBody574_36

def NamedBody574_38 : StackLang.HolProg 64 :=
.seq NamedBody574_20 NamedBody574_37

def NamedBody574_39 : StackLang.HolProg 64 :=
.seq NamedBody574_19 NamedBody574_38

def NamedBody574_40 : StackLang.HolProg 64 :=
.seq NamedBody574_18 NamedBody574_39

def NamedBody574_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody574_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody574_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody574_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody574_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody574_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody574_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody574_48 : StackLang.HolProg 64 :=
.seq NamedBody574_46 NamedBody574_47

def NamedBody574_49 : StackLang.HolProg 64 :=
.seq NamedBody574_45 NamedBody574_48

def NamedBody574_50 : StackLang.HolProg 64 :=
.seq NamedBody574_44 NamedBody574_49

def NamedBody574_51 : StackLang.HolProg 64 :=
.seq NamedBody574_43 NamedBody574_50

def NamedBody574_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody574_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody574_54 : StackLang.HolProg 64 :=
.seq NamedBody574_52 NamedBody574_53

def NamedBody574_55 : StackLang.HolProg 64 :=
.call (some (NamedBody574_51, 1, 574, 2)) (Sum.inl 475) (some (NamedBody574_54, 574, 3))

def NamedBody574_56 : StackLang.HolProg 64 :=
.seq NamedBody574_42 NamedBody574_55

def NamedBody574_57 : StackLang.HolProg 64 :=
.seq NamedBody574_41 NamedBody574_56

def NamedBody574_58 : StackLang.HolProg 64 :=
.seq NamedBody574_40 NamedBody574_57

def NamedBody574_59 : StackLang.HolProg 64 :=
.seq NamedBody574_11 NamedBody574_58

def NamedBody574_60 : StackLang.HolProg 64 :=
.seq NamedBody574_8 NamedBody574_59

def NamedBody574_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody574_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 3#64)

def NamedBody574_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody574_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody574_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody574_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody574_67 : StackLang.HolProg 64 :=
.seq NamedBody574_65 NamedBody574_66

def NamedBody574_68 : StackLang.HolProg 64 :=
.seq NamedBody574_64 NamedBody574_67

def NamedBody574_69 : StackLang.HolProg 64 :=
.seq NamedBody574_63 NamedBody574_68

def NamedBody574_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody574_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1997#64)

def NamedBody574_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody574_73 : StackLang.HolProg 64 :=
.seq NamedBody574_71 NamedBody574_72

def NamedBody574_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody574_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody574_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody574_77 : StackLang.HolProg 64 :=
.seq NamedBody574_75 NamedBody574_76

def NamedBody574_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody574_79 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody574_77 NamedBody574_78

def NamedBody574_80 : StackLang.HolProg 64 :=
.seq NamedBody574_74 NamedBody574_79

def NamedBody574_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody574_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody574_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 574 5

def NamedBody574_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody574_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody574_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody574_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody574_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody574_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody574_90 : StackLang.HolProg 64 :=
.seq NamedBody574_88 NamedBody574_89

def NamedBody574_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody574_92 : StackLang.HolProg 64 :=
.seq NamedBody574_90 NamedBody574_91

def NamedBody574_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody574_94 : StackLang.HolProg 64 :=
.seq NamedBody574_92 NamedBody574_93

def NamedBody574_95 : StackLang.HolProg 64 :=
.seq NamedBody574_87 NamedBody574_94

def NamedBody574_96 : StackLang.HolProg 64 :=
.seq NamedBody574_86 NamedBody574_95

def NamedBody574_97 : StackLang.HolProg 64 :=
.seq NamedBody574_85 NamedBody574_96

def NamedBody574_98 : StackLang.HolProg 64 :=
.seq NamedBody574_84 NamedBody574_97

def NamedBody574_99 : StackLang.HolProg 64 :=
.seq NamedBody574_83 NamedBody574_98

def NamedBody574_100 : StackLang.HolProg 64 :=
.seq NamedBody574_82 NamedBody574_99

def NamedBody574_101 : StackLang.HolProg 64 :=
.seq NamedBody574_81 NamedBody574_100

def NamedBody574_102 : StackLang.HolProg 64 :=
.seq NamedBody574_80 NamedBody574_101

def NamedBody574_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody574_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody574_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody574_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody574_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody574_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody574_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody574_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody574_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody574_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody574_113 : StackLang.HolProg 64 :=
.seq NamedBody574_111 NamedBody574_112

def NamedBody574_114 : StackLang.HolProg 64 :=
.seq NamedBody574_110 NamedBody574_113

def NamedBody574_115 : StackLang.HolProg 64 :=
.seq NamedBody574_109 NamedBody574_114

def NamedBody574_116 : StackLang.HolProg 64 :=
.seq NamedBody574_108 NamedBody574_115

def NamedBody574_117 : StackLang.HolProg 64 :=
.seq NamedBody574_107 NamedBody574_116

def NamedBody574_118 : StackLang.HolProg 64 :=
.seq NamedBody574_106 NamedBody574_117

def NamedBody574_119 : StackLang.HolProg 64 :=
.seq NamedBody574_105 NamedBody574_118

def NamedBody574_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody574_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody574_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody574_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody574_124 : StackLang.HolProg 64 :=
.seq NamedBody574_122 NamedBody574_123

def NamedBody574_125 : StackLang.HolProg 64 :=
.seq NamedBody574_121 NamedBody574_124

def NamedBody574_126 : StackLang.HolProg 64 :=
.seq NamedBody574_120 NamedBody574_125

def NamedBody574_127 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody574_128 : StackLang.HolProg 64 :=
.seq NamedBody574_126 NamedBody574_127

def NamedBody574_129 : StackLang.HolProg 64 :=
.call (some (NamedBody574_119, 1, 574, 4)) (Sum.inl 470) (some (NamedBody574_128, 574, 5))

def NamedBody574_130 : StackLang.HolProg 64 :=
.seq NamedBody574_104 NamedBody574_129

def NamedBody574_131 : StackLang.HolProg 64 :=
.seq NamedBody574_103 NamedBody574_130

def NamedBody574_132 : StackLang.HolProg 64 :=
.seq NamedBody574_102 NamedBody574_131

def NamedBody574_133 : StackLang.HolProg 64 :=
.seq NamedBody574_73 NamedBody574_132

def NamedBody574_134 : StackLang.HolProg 64 :=
.seq NamedBody574_70 NamedBody574_133

def NamedBody574_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody574_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody574_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody574_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody574_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def NamedBody574_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 112#64))

def NamedBody574_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def NamedBody574_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody574_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 136#64))

def NamedBody574_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody574_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody574_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody574_147 : StackLang.HolProg 64 :=
.seq NamedBody574_145 NamedBody574_146

def NamedBody574_148 : StackLang.HolProg 64 :=
.seq NamedBody574_144 NamedBody574_147

def NamedBody574_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody574_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1998#64)

def NamedBody574_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody574_152 : StackLang.HolProg 64 :=
.seq NamedBody574_150 NamedBody574_151

def NamedBody574_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody574_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody574_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody574_156 : StackLang.HolProg 64 :=
.seq NamedBody574_154 NamedBody574_155

def NamedBody574_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody574_158 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody574_156 NamedBody574_157

def NamedBody574_159 : StackLang.HolProg 64 :=
.seq NamedBody574_153 NamedBody574_158

def NamedBody574_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody574_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody574_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 574 7

def NamedBody574_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody574_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody574_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody574_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody574_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody574_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody574_169 : StackLang.HolProg 64 :=
.seq NamedBody574_167 NamedBody574_168

def NamedBody574_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody574_171 : StackLang.HolProg 64 :=
.seq NamedBody574_169 NamedBody574_170

def NamedBody574_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody574_173 : StackLang.HolProg 64 :=
.seq NamedBody574_171 NamedBody574_172

def NamedBody574_174 : StackLang.HolProg 64 :=
.seq NamedBody574_166 NamedBody574_173

def NamedBody574_175 : StackLang.HolProg 64 :=
.seq NamedBody574_165 NamedBody574_174

def NamedBody574_176 : StackLang.HolProg 64 :=
.seq NamedBody574_164 NamedBody574_175

def NamedBody574_177 : StackLang.HolProg 64 :=
.seq NamedBody574_163 NamedBody574_176

def NamedBody574_178 : StackLang.HolProg 64 :=
.seq NamedBody574_162 NamedBody574_177

def NamedBody574_179 : StackLang.HolProg 64 :=
.seq NamedBody574_161 NamedBody574_178

def NamedBody574_180 : StackLang.HolProg 64 :=
.seq NamedBody574_160 NamedBody574_179

def NamedBody574_181 : StackLang.HolProg 64 :=
.seq NamedBody574_159 NamedBody574_180

def NamedBody574_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody574_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody574_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody574_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody574_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody574_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody574_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody574_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody574_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody574_191 : StackLang.HolProg 64 :=
.seq NamedBody574_189 NamedBody574_190

def NamedBody574_192 : StackLang.HolProg 64 :=
.seq NamedBody574_188 NamedBody574_191

def NamedBody574_193 : StackLang.HolProg 64 :=
.seq NamedBody574_187 NamedBody574_192

def NamedBody574_194 : StackLang.HolProg 64 :=
.seq NamedBody574_186 NamedBody574_193

def NamedBody574_195 : StackLang.HolProg 64 :=
.seq NamedBody574_185 NamedBody574_194

def NamedBody574_196 : StackLang.HolProg 64 :=
.seq NamedBody574_184 NamedBody574_195

def NamedBody574_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody574_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody574_199 : StackLang.HolProg 64 :=
.seq NamedBody574_197 NamedBody574_198

def NamedBody574_200 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody574_201 : StackLang.HolProg 64 :=
.seq NamedBody574_199 NamedBody574_200

def NamedBody574_202 : StackLang.HolProg 64 :=
.call (some (NamedBody574_196, 1, 574, 6)) (Sum.inl 462) (some (NamedBody574_201, 574, 7))

def NamedBody574_203 : StackLang.HolProg 64 :=
.seq NamedBody574_183 NamedBody574_202

def NamedBody574_204 : StackLang.HolProg 64 :=
.seq NamedBody574_182 NamedBody574_203

def NamedBody574_205 : StackLang.HolProg 64 :=
.seq NamedBody574_181 NamedBody574_204

def NamedBody574_206 : StackLang.HolProg 64 :=
.seq NamedBody574_152 NamedBody574_205

def NamedBody574_207 : StackLang.HolProg 64 :=
.seq NamedBody574_149 NamedBody574_206

def NamedBody574_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody574_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody574_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody574_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody574_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def NamedBody574_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody574_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 128#64))

def NamedBody574_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody574_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 32#64)

def NamedBody574_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody574_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody574_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1999#64)

def NamedBody574_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody574_221 : StackLang.HolProg 64 :=
.seq NamedBody574_219 NamedBody574_220

def NamedBody574_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody574_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody574_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody574_225 : StackLang.HolProg 64 :=
.seq NamedBody574_223 NamedBody574_224

def NamedBody574_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody574_227 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody574_225 NamedBody574_226

def NamedBody574_228 : StackLang.HolProg 64 :=
.seq NamedBody574_222 NamedBody574_227

def NamedBody574_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody574_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody574_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 574 9

def NamedBody574_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody574_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody574_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody574_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody574_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody574_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody574_238 : StackLang.HolProg 64 :=
.seq NamedBody574_236 NamedBody574_237

def NamedBody574_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody574_240 : StackLang.HolProg 64 :=
.seq NamedBody574_238 NamedBody574_239

def NamedBody574_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody574_242 : StackLang.HolProg 64 :=
.seq NamedBody574_240 NamedBody574_241

def NamedBody574_243 : StackLang.HolProg 64 :=
.seq NamedBody574_235 NamedBody574_242

def NamedBody574_244 : StackLang.HolProg 64 :=
.seq NamedBody574_234 NamedBody574_243

def NamedBody574_245 : StackLang.HolProg 64 :=
.seq NamedBody574_233 NamedBody574_244

def NamedBody574_246 : StackLang.HolProg 64 :=
.seq NamedBody574_232 NamedBody574_245

def NamedBody574_247 : StackLang.HolProg 64 :=
.seq NamedBody574_231 NamedBody574_246

def NamedBody574_248 : StackLang.HolProg 64 :=
.seq NamedBody574_230 NamedBody574_247

def NamedBody574_249 : StackLang.HolProg 64 :=
.seq NamedBody574_229 NamedBody574_248

def NamedBody574_250 : StackLang.HolProg 64 :=
.seq NamedBody574_228 NamedBody574_249

def NamedBody574_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody574_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody574_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody574_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody574_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody574_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody574_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody574_258 : StackLang.HolProg 64 :=
.seq NamedBody574_256 NamedBody574_257

def NamedBody574_259 : StackLang.HolProg 64 :=
.seq NamedBody574_255 NamedBody574_258

def NamedBody574_260 : StackLang.HolProg 64 :=
.seq NamedBody574_254 NamedBody574_259

def NamedBody574_261 : StackLang.HolProg 64 :=
.seq NamedBody574_253 NamedBody574_260

def NamedBody574_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody574_263 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody574_264 : StackLang.HolProg 64 :=
.seq NamedBody574_262 NamedBody574_263

def NamedBody574_265 : StackLang.HolProg 64 :=
.call (some (NamedBody574_261, 1, 574, 8)) (Sum.inl 146) (some (NamedBody574_264, 574, 9))

def NamedBody574_266 : StackLang.HolProg 64 :=
.seq NamedBody574_252 NamedBody574_265

def NamedBody574_267 : StackLang.HolProg 64 :=
.seq NamedBody574_251 NamedBody574_266

def NamedBody574_268 : StackLang.HolProg 64 :=
.seq NamedBody574_250 NamedBody574_267

def NamedBody574_269 : StackLang.HolProg 64 :=
.seq NamedBody574_221 NamedBody574_268

def NamedBody574_270 : StackLang.HolProg 64 :=
.seq NamedBody574_218 NamedBody574_269

def NamedBody574_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody574_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody574_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody574_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2000#64)

def NamedBody574_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody574_276 : StackLang.HolProg 64 :=
.seq NamedBody574_274 NamedBody574_275

def NamedBody574_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody574_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody574_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody574_280 : StackLang.HolProg 64 :=
.seq NamedBody574_278 NamedBody574_279

def NamedBody574_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody574_282 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody574_280 NamedBody574_281

def NamedBody574_283 : StackLang.HolProg 64 :=
.seq NamedBody574_277 NamedBody574_282

def NamedBody574_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody574_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody574_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 574 11

def NamedBody574_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody574_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody574_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody574_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody574_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody574_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody574_293 : StackLang.HolProg 64 :=
.seq NamedBody574_291 NamedBody574_292

def NamedBody574_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody574_295 : StackLang.HolProg 64 :=
.seq NamedBody574_293 NamedBody574_294

def NamedBody574_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody574_297 : StackLang.HolProg 64 :=
.seq NamedBody574_295 NamedBody574_296

def NamedBody574_298 : StackLang.HolProg 64 :=
.seq NamedBody574_290 NamedBody574_297

def NamedBody574_299 : StackLang.HolProg 64 :=
.seq NamedBody574_289 NamedBody574_298

def NamedBody574_300 : StackLang.HolProg 64 :=
.seq NamedBody574_288 NamedBody574_299

def NamedBody574_301 : StackLang.HolProg 64 :=
.seq NamedBody574_287 NamedBody574_300

def NamedBody574_302 : StackLang.HolProg 64 :=
.seq NamedBody574_286 NamedBody574_301

def NamedBody574_303 : StackLang.HolProg 64 :=
.seq NamedBody574_285 NamedBody574_302

def NamedBody574_304 : StackLang.HolProg 64 :=
.seq NamedBody574_284 NamedBody574_303

def NamedBody574_305 : StackLang.HolProg 64 :=
.seq NamedBody574_283 NamedBody574_304

def NamedBody574_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody574_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody574_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody574_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody574_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody574_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody574_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody574_313 : StackLang.HolProg 64 :=
.seq NamedBody574_311 NamedBody574_312

def NamedBody574_314 : StackLang.HolProg 64 :=
.seq NamedBody574_310 NamedBody574_313

def NamedBody574_315 : StackLang.HolProg 64 :=
.seq NamedBody574_309 NamedBody574_314

def NamedBody574_316 : StackLang.HolProg 64 :=
.seq NamedBody574_308 NamedBody574_315

def NamedBody574_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody574_318 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody574_319 : StackLang.HolProg 64 :=
.seq NamedBody574_317 NamedBody574_318

def NamedBody574_320 : StackLang.HolProg 64 :=
.call (some (NamedBody574_316, 1, 574, 10)) (Sum.inl 476) (some (NamedBody574_319, 574, 11))

def NamedBody574_321 : StackLang.HolProg 64 :=
.seq NamedBody574_307 NamedBody574_320

def NamedBody574_322 : StackLang.HolProg 64 :=
.seq NamedBody574_306 NamedBody574_321

def NamedBody574_323 : StackLang.HolProg 64 :=
.seq NamedBody574_305 NamedBody574_322

def NamedBody574_324 : StackLang.HolProg 64 :=
.seq NamedBody574_276 NamedBody574_323

def NamedBody574_325 : StackLang.HolProg 64 :=
.seq NamedBody574_273 NamedBody574_324

def NamedBody574_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody574_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody574_328 : StackLang.HolProg 64 :=
.seq NamedBody574_326 NamedBody574_327

def NamedBody574_329 : StackLang.HolProg 64 :=
.seq NamedBody574_325 NamedBody574_328

def NamedBody574_330 : StackLang.HolProg 64 :=
.seq NamedBody574_272 NamedBody574_329

def NamedBody574_331 : StackLang.HolProg 64 :=
.seq NamedBody574_271 NamedBody574_330

def NamedBody574_332 : StackLang.HolProg 64 :=
.seq NamedBody574_270 NamedBody574_331

def NamedBody574_333 : StackLang.HolProg 64 :=
.seq NamedBody574_217 NamedBody574_332

def NamedBody574_334 : StackLang.HolProg 64 :=
.seq NamedBody574_216 NamedBody574_333

def NamedBody574_335 : StackLang.HolProg 64 :=
.seq NamedBody574_215 NamedBody574_334

def NamedBody574_336 : StackLang.HolProg 64 :=
.seq NamedBody574_214 NamedBody574_335

def NamedBody574_337 : StackLang.HolProg 64 :=
.seq NamedBody574_213 NamedBody574_336

def NamedBody574_338 : StackLang.HolProg 64 :=
.seq NamedBody574_212 NamedBody574_337

def NamedBody574_339 : StackLang.HolProg 64 :=
.seq NamedBody574_211 NamedBody574_338

def NamedBody574_340 : StackLang.HolProg 64 :=
.seq NamedBody574_210 NamedBody574_339

def NamedBody574_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody574_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody574_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody574_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody574_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody574_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody574_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody574_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2001#64)

def NamedBody574_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody574_350 : StackLang.HolProg 64 :=
.seq NamedBody574_348 NamedBody574_349

def NamedBody574_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody574_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody574_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody574_354 : StackLang.HolProg 64 :=
.seq NamedBody574_352 NamedBody574_353

def NamedBody574_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody574_356 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody574_354 NamedBody574_355

def NamedBody574_357 : StackLang.HolProg 64 :=
.seq NamedBody574_351 NamedBody574_356

def NamedBody574_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody574_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody574_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 574 13

def NamedBody574_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody574_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody574_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody574_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody574_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody574_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody574_367 : StackLang.HolProg 64 :=
.seq NamedBody574_365 NamedBody574_366

def NamedBody574_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody574_369 : StackLang.HolProg 64 :=
.seq NamedBody574_367 NamedBody574_368

def NamedBody574_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody574_371 : StackLang.HolProg 64 :=
.seq NamedBody574_369 NamedBody574_370

def NamedBody574_372 : StackLang.HolProg 64 :=
.seq NamedBody574_364 NamedBody574_371

def NamedBody574_373 : StackLang.HolProg 64 :=
.seq NamedBody574_363 NamedBody574_372

def NamedBody574_374 : StackLang.HolProg 64 :=
.seq NamedBody574_362 NamedBody574_373

def NamedBody574_375 : StackLang.HolProg 64 :=
.seq NamedBody574_361 NamedBody574_374

def NamedBody574_376 : StackLang.HolProg 64 :=
.seq NamedBody574_360 NamedBody574_375

def NamedBody574_377 : StackLang.HolProg 64 :=
.seq NamedBody574_359 NamedBody574_376

def NamedBody574_378 : StackLang.HolProg 64 :=
.seq NamedBody574_358 NamedBody574_377

def NamedBody574_379 : StackLang.HolProg 64 :=
.seq NamedBody574_357 NamedBody574_378

def NamedBody574_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody574_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody574_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody574_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody574_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody574_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody574_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody574_387 : StackLang.HolProg 64 :=
.seq NamedBody574_385 NamedBody574_386

def NamedBody574_388 : StackLang.HolProg 64 :=
.seq NamedBody574_384 NamedBody574_387

def NamedBody574_389 : StackLang.HolProg 64 :=
.seq NamedBody574_383 NamedBody574_388

def NamedBody574_390 : StackLang.HolProg 64 :=
.seq NamedBody574_382 NamedBody574_389

def NamedBody574_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody574_392 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody574_393 : StackLang.HolProg 64 :=
.seq NamedBody574_391 NamedBody574_392

def NamedBody574_394 : StackLang.HolProg 64 :=
.call (some (NamedBody574_390, 1, 574, 12)) (Sum.inl 476) (some (NamedBody574_393, 574, 13))

def NamedBody574_395 : StackLang.HolProg 64 :=
.seq NamedBody574_381 NamedBody574_394

def NamedBody574_396 : StackLang.HolProg 64 :=
.seq NamedBody574_380 NamedBody574_395

def NamedBody574_397 : StackLang.HolProg 64 :=
.seq NamedBody574_379 NamedBody574_396

def NamedBody574_398 : StackLang.HolProg 64 :=
.seq NamedBody574_350 NamedBody574_397

def NamedBody574_399 : StackLang.HolProg 64 :=
.seq NamedBody574_347 NamedBody574_398

def NamedBody574_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody574_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody574_402 : StackLang.HolProg 64 :=
.seq NamedBody574_400 NamedBody574_401

def NamedBody574_403 : StackLang.HolProg 64 :=
.seq NamedBody574_399 NamedBody574_402

def NamedBody574_404 : StackLang.HolProg 64 :=
.seq NamedBody574_346 NamedBody574_403

def NamedBody574_405 : StackLang.HolProg 64 :=
.seq NamedBody574_345 NamedBody574_404

def NamedBody574_406 : StackLang.HolProg 64 :=
.seq NamedBody574_344 NamedBody574_405

def NamedBody574_407 : StackLang.HolProg 64 :=
.seq NamedBody574_343 NamedBody574_406

def NamedBody574_408 : StackLang.HolProg 64 :=
.seq NamedBody574_342 NamedBody574_407

def NamedBody574_409 : StackLang.HolProg 64 :=
.seq NamedBody574_341 NamedBody574_408

def NamedBody574_410 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12) NamedBody574_340 NamedBody574_409

def NamedBody574_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody574_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody574_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody574_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody574_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2002#64)

def NamedBody574_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody574_417 : StackLang.HolProg 64 :=
.seq NamedBody574_415 NamedBody574_416

def NamedBody574_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody574_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody574_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody574_421 : StackLang.HolProg 64 :=
.seq NamedBody574_419 NamedBody574_420

def NamedBody574_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody574_423 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody574_421 NamedBody574_422

def NamedBody574_424 : StackLang.HolProg 64 :=
.seq NamedBody574_418 NamedBody574_423

def NamedBody574_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody574_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody574_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 574 15

def NamedBody574_428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody574_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody574_430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody574_431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody574_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody574_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody574_434 : StackLang.HolProg 64 :=
.seq NamedBody574_432 NamedBody574_433

def NamedBody574_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody574_436 : StackLang.HolProg 64 :=
.seq NamedBody574_434 NamedBody574_435

def NamedBody574_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody574_438 : StackLang.HolProg 64 :=
.seq NamedBody574_436 NamedBody574_437

def NamedBody574_439 : StackLang.HolProg 64 :=
.seq NamedBody574_431 NamedBody574_438

def NamedBody574_440 : StackLang.HolProg 64 :=
.seq NamedBody574_430 NamedBody574_439

def NamedBody574_441 : StackLang.HolProg 64 :=
.seq NamedBody574_429 NamedBody574_440

def NamedBody574_442 : StackLang.HolProg 64 :=
.seq NamedBody574_428 NamedBody574_441

def NamedBody574_443 : StackLang.HolProg 64 :=
.seq NamedBody574_427 NamedBody574_442

def NamedBody574_444 : StackLang.HolProg 64 :=
.seq NamedBody574_426 NamedBody574_443

def NamedBody574_445 : StackLang.HolProg 64 :=
.seq NamedBody574_425 NamedBody574_444

def NamedBody574_446 : StackLang.HolProg 64 :=
.seq NamedBody574_424 NamedBody574_445

def NamedBody574_447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody574_448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody574_449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody574_450 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody574_451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody574_452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody574_453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody574_454 : StackLang.HolProg 64 :=
.seq NamedBody574_452 NamedBody574_453

def NamedBody574_455 : StackLang.HolProg 64 :=
.seq NamedBody574_451 NamedBody574_454

def NamedBody574_456 : StackLang.HolProg 64 :=
.seq NamedBody574_450 NamedBody574_455

def NamedBody574_457 : StackLang.HolProg 64 :=
.seq NamedBody574_449 NamedBody574_456

def NamedBody574_458 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody574_459 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody574_460 : StackLang.HolProg 64 :=
.seq NamedBody574_458 NamedBody574_459

def NamedBody574_461 : StackLang.HolProg 64 :=
.call (some (NamedBody574_457, 1, 574, 14)) (Sum.inl 490) (some (NamedBody574_460, 574, 15))

def NamedBody574_462 : StackLang.HolProg 64 :=
.seq NamedBody574_448 NamedBody574_461

def NamedBody574_463 : StackLang.HolProg 64 :=
.seq NamedBody574_447 NamedBody574_462

def NamedBody574_464 : StackLang.HolProg 64 :=
.seq NamedBody574_446 NamedBody574_463

def NamedBody574_465 : StackLang.HolProg 64 :=
.seq NamedBody574_417 NamedBody574_464

def NamedBody574_466 : StackLang.HolProg 64 :=
.seq NamedBody574_414 NamedBody574_465

def NamedBody574_467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody574_468 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody574_469 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody574_470 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody574_471 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody574_472 : StackLang.HolProg 64 :=
.seq NamedBody574_470 NamedBody574_471

def NamedBody574_473 : StackLang.HolProg 64 :=
.seq NamedBody574_469 NamedBody574_472

def NamedBody574_474 : StackLang.HolProg 64 :=
.seq NamedBody574_468 NamedBody574_473

def NamedBody574_475 : StackLang.HolProg 64 :=
.seq NamedBody574_467 NamedBody574_474

def NamedBody574_476 : StackLang.HolProg 64 :=
.seq NamedBody574_466 NamedBody574_475

def NamedBody574_477 : StackLang.HolProg 64 :=
.seq NamedBody574_413 NamedBody574_476

def NamedBody574_478 : StackLang.HolProg 64 :=
.seq NamedBody574_412 NamedBody574_477

def NamedBody574_479 : StackLang.HolProg 64 :=
.seq NamedBody574_411 NamedBody574_478

def NamedBody574_480 : StackLang.HolProg 64 :=
.seq NamedBody574_410 NamedBody574_479

def NamedBody574_481 : StackLang.HolProg 64 :=
.seq NamedBody574_209 NamedBody574_480

def NamedBody574_482 : StackLang.HolProg 64 :=
.seq NamedBody574_208 NamedBody574_481

def NamedBody574_483 : StackLang.HolProg 64 :=
.seq NamedBody574_207 NamedBody574_482

def NamedBody574_484 : StackLang.HolProg 64 :=
.seq NamedBody574_148 NamedBody574_483

def NamedBody574_485 : StackLang.HolProg 64 :=
.seq NamedBody574_143 NamedBody574_484

def NamedBody574_486 : StackLang.HolProg 64 :=
.seq NamedBody574_142 NamedBody574_485

def NamedBody574_487 : StackLang.HolProg 64 :=
.seq NamedBody574_141 NamedBody574_486

def NamedBody574_488 : StackLang.HolProg 64 :=
.seq NamedBody574_140 NamedBody574_487

def NamedBody574_489 : StackLang.HolProg 64 :=
.seq NamedBody574_139 NamedBody574_488

def NamedBody574_490 : StackLang.HolProg 64 :=
.seq NamedBody574_138 NamedBody574_489

def NamedBody574_491 : StackLang.HolProg 64 :=
.seq NamedBody574_137 NamedBody574_490

def NamedBody574_492 : StackLang.HolProg 64 :=
.seq NamedBody574_136 NamedBody574_491

def NamedBody574_493 : StackLang.HolProg 64 :=
.seq NamedBody574_135 NamedBody574_492

def NamedBody574_494 : StackLang.HolProg 64 :=
.seq NamedBody574_134 NamedBody574_493

def NamedBody574_495 : StackLang.HolProg 64 :=
.seq NamedBody574_69 NamedBody574_494

def NamedBody574_496 : StackLang.HolProg 64 :=
.seq NamedBody574_62 NamedBody574_495

def NamedBody574_497 : StackLang.HolProg 64 :=
.seq NamedBody574_61 NamedBody574_496

def NamedBody574_498 : StackLang.HolProg 64 :=
.seq NamedBody574_60 NamedBody574_497

def NamedBody574_499 : StackLang.HolProg 64 :=
.seq NamedBody574_7 NamedBody574_498

def NamedBody574_500 : StackLang.HolProg 64 :=
.seq NamedBody574_6 NamedBody574_499

def Named574 : Nat × StackLang.HolProg 64 := (574, NamedBody574_500)
theorem Named574_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed574 = Named574 := by
  kernel_rfl
#print axioms Named574_eq
end InitECandidate.Proofs.BackendStages
