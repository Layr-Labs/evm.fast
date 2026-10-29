import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed500
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody500_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def NamedBody500_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody500_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody500_3 : StackLang.HolProg 64 :=
.seq NamedBody500_1 NamedBody500_2

def NamedBody500_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody500_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody500_3 NamedBody500_4

def NamedBody500_6 : StackLang.HolProg 64 :=
.seq NamedBody500_0 NamedBody500_5

def NamedBody500_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody500_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody500_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1562#64)

def NamedBody500_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody500_11 : StackLang.HolProg 64 :=
.seq NamedBody500_9 NamedBody500_10

def NamedBody500_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody500_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody500_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody500_15 : StackLang.HolProg 64 :=
.seq NamedBody500_13 NamedBody500_14

def NamedBody500_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody500_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody500_15 NamedBody500_16

def NamedBody500_18 : StackLang.HolProg 64 :=
.seq NamedBody500_12 NamedBody500_17

def NamedBody500_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody500_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody500_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 500 3

def NamedBody500_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody500_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody500_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody500_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody500_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody500_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody500_28 : StackLang.HolProg 64 :=
.seq NamedBody500_26 NamedBody500_27

def NamedBody500_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody500_30 : StackLang.HolProg 64 :=
.seq NamedBody500_28 NamedBody500_29

def NamedBody500_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody500_32 : StackLang.HolProg 64 :=
.seq NamedBody500_30 NamedBody500_31

def NamedBody500_33 : StackLang.HolProg 64 :=
.seq NamedBody500_25 NamedBody500_32

def NamedBody500_34 : StackLang.HolProg 64 :=
.seq NamedBody500_24 NamedBody500_33

def NamedBody500_35 : StackLang.HolProg 64 :=
.seq NamedBody500_23 NamedBody500_34

def NamedBody500_36 : StackLang.HolProg 64 :=
.seq NamedBody500_22 NamedBody500_35

def NamedBody500_37 : StackLang.HolProg 64 :=
.seq NamedBody500_21 NamedBody500_36

def NamedBody500_38 : StackLang.HolProg 64 :=
.seq NamedBody500_20 NamedBody500_37

def NamedBody500_39 : StackLang.HolProg 64 :=
.seq NamedBody500_19 NamedBody500_38

def NamedBody500_40 : StackLang.HolProg 64 :=
.seq NamedBody500_18 NamedBody500_39

def NamedBody500_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody500_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody500_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody500_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody500_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody500_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody500_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody500_48 : StackLang.HolProg 64 :=
.seq NamedBody500_46 NamedBody500_47

def NamedBody500_49 : StackLang.HolProg 64 :=
.seq NamedBody500_45 NamedBody500_48

def NamedBody500_50 : StackLang.HolProg 64 :=
.seq NamedBody500_44 NamedBody500_49

def NamedBody500_51 : StackLang.HolProg 64 :=
.seq NamedBody500_43 NamedBody500_50

def NamedBody500_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody500_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody500_54 : StackLang.HolProg 64 :=
.seq NamedBody500_52 NamedBody500_53

def NamedBody500_55 : StackLang.HolProg 64 :=
.call (some (NamedBody500_51, 1, 500, 2)) (Sum.inl 475) (some (NamedBody500_54, 500, 3))

def NamedBody500_56 : StackLang.HolProg 64 :=
.seq NamedBody500_42 NamedBody500_55

def NamedBody500_57 : StackLang.HolProg 64 :=
.seq NamedBody500_41 NamedBody500_56

def NamedBody500_58 : StackLang.HolProg 64 :=
.seq NamedBody500_40 NamedBody500_57

def NamedBody500_59 : StackLang.HolProg 64 :=
.seq NamedBody500_11 NamedBody500_58

def NamedBody500_60 : StackLang.HolProg 64 :=
.seq NamedBody500_8 NamedBody500_59

def NamedBody500_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody500_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody500_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody500_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody500_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody500_66 : StackLang.HolProg 64 :=
.seq NamedBody500_64 NamedBody500_65

def NamedBody500_67 : StackLang.HolProg 64 :=
.seq NamedBody500_63 NamedBody500_66

def NamedBody500_68 : StackLang.HolProg 64 :=
.seq NamedBody500_62 NamedBody500_67

def NamedBody500_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody500_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1563#64)

def NamedBody500_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody500_72 : StackLang.HolProg 64 :=
.seq NamedBody500_70 NamedBody500_71

def NamedBody500_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody500_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody500_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody500_76 : StackLang.HolProg 64 :=
.seq NamedBody500_74 NamedBody500_75

def NamedBody500_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody500_78 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody500_76 NamedBody500_77

def NamedBody500_79 : StackLang.HolProg 64 :=
.seq NamedBody500_73 NamedBody500_78

def NamedBody500_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody500_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody500_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 500 5

def NamedBody500_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody500_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody500_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody500_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody500_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody500_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody500_89 : StackLang.HolProg 64 :=
.seq NamedBody500_87 NamedBody500_88

def NamedBody500_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody500_91 : StackLang.HolProg 64 :=
.seq NamedBody500_89 NamedBody500_90

def NamedBody500_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody500_93 : StackLang.HolProg 64 :=
.seq NamedBody500_91 NamedBody500_92

def NamedBody500_94 : StackLang.HolProg 64 :=
.seq NamedBody500_86 NamedBody500_93

def NamedBody500_95 : StackLang.HolProg 64 :=
.seq NamedBody500_85 NamedBody500_94

def NamedBody500_96 : StackLang.HolProg 64 :=
.seq NamedBody500_84 NamedBody500_95

def NamedBody500_97 : StackLang.HolProg 64 :=
.seq NamedBody500_83 NamedBody500_96

def NamedBody500_98 : StackLang.HolProg 64 :=
.seq NamedBody500_82 NamedBody500_97

def NamedBody500_99 : StackLang.HolProg 64 :=
.seq NamedBody500_81 NamedBody500_98

def NamedBody500_100 : StackLang.HolProg 64 :=
.seq NamedBody500_80 NamedBody500_99

def NamedBody500_101 : StackLang.HolProg 64 :=
.seq NamedBody500_79 NamedBody500_100

def NamedBody500_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody500_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody500_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody500_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody500_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody500_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody500_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody500_109 : StackLang.HolProg 64 :=
.seq NamedBody500_107 NamedBody500_108

def NamedBody500_110 : StackLang.HolProg 64 :=
.seq NamedBody500_106 NamedBody500_109

def NamedBody500_111 : StackLang.HolProg 64 :=
.seq NamedBody500_105 NamedBody500_110

def NamedBody500_112 : StackLang.HolProg 64 :=
.seq NamedBody500_104 NamedBody500_111

def NamedBody500_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody500_114 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody500_115 : StackLang.HolProg 64 :=
.seq NamedBody500_113 NamedBody500_114

def NamedBody500_116 : StackLang.HolProg 64 :=
.call (some (NamedBody500_112, 1, 500, 4)) (Sum.inl 475) (some (NamedBody500_115, 500, 5))

def NamedBody500_117 : StackLang.HolProg 64 :=
.seq NamedBody500_103 NamedBody500_116

def NamedBody500_118 : StackLang.HolProg 64 :=
.seq NamedBody500_102 NamedBody500_117

def NamedBody500_119 : StackLang.HolProg 64 :=
.seq NamedBody500_101 NamedBody500_118

def NamedBody500_120 : StackLang.HolProg 64 :=
.seq NamedBody500_72 NamedBody500_119

def NamedBody500_121 : StackLang.HolProg 64 :=
.seq NamedBody500_69 NamedBody500_120

def NamedBody500_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody500_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 5#64)

def NamedBody500_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody500_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody500_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody500_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody500_128 : StackLang.HolProg 64 :=
.seq NamedBody500_126 NamedBody500_127

def NamedBody500_129 : StackLang.HolProg 64 :=
.seq NamedBody500_125 NamedBody500_128

def NamedBody500_130 : StackLang.HolProg 64 :=
.seq NamedBody500_124 NamedBody500_129

def NamedBody500_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody500_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1564#64)

def NamedBody500_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody500_134 : StackLang.HolProg 64 :=
.seq NamedBody500_132 NamedBody500_133

def NamedBody500_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody500_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody500_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody500_138 : StackLang.HolProg 64 :=
.seq NamedBody500_136 NamedBody500_137

def NamedBody500_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody500_140 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody500_138 NamedBody500_139

def NamedBody500_141 : StackLang.HolProg 64 :=
.seq NamedBody500_135 NamedBody500_140

def NamedBody500_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody500_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody500_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 500 7

def NamedBody500_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody500_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody500_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody500_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody500_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody500_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody500_151 : StackLang.HolProg 64 :=
.seq NamedBody500_149 NamedBody500_150

def NamedBody500_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody500_153 : StackLang.HolProg 64 :=
.seq NamedBody500_151 NamedBody500_152

def NamedBody500_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody500_155 : StackLang.HolProg 64 :=
.seq NamedBody500_153 NamedBody500_154

def NamedBody500_156 : StackLang.HolProg 64 :=
.seq NamedBody500_148 NamedBody500_155

def NamedBody500_157 : StackLang.HolProg 64 :=
.seq NamedBody500_147 NamedBody500_156

def NamedBody500_158 : StackLang.HolProg 64 :=
.seq NamedBody500_146 NamedBody500_157

def NamedBody500_159 : StackLang.HolProg 64 :=
.seq NamedBody500_145 NamedBody500_158

def NamedBody500_160 : StackLang.HolProg 64 :=
.seq NamedBody500_144 NamedBody500_159

def NamedBody500_161 : StackLang.HolProg 64 :=
.seq NamedBody500_143 NamedBody500_160

def NamedBody500_162 : StackLang.HolProg 64 :=
.seq NamedBody500_142 NamedBody500_161

def NamedBody500_163 : StackLang.HolProg 64 :=
.seq NamedBody500_141 NamedBody500_162

def NamedBody500_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody500_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody500_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody500_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody500_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody500_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody500_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody500_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody500_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody500_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody500_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody500_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody500_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody500_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody500_178 : StackLang.HolProg 64 :=
.seq NamedBody500_176 NamedBody500_177

def NamedBody500_179 : StackLang.HolProg 64 :=
.seq NamedBody500_175 NamedBody500_178

def NamedBody500_180 : StackLang.HolProg 64 :=
.seq NamedBody500_174 NamedBody500_179

def NamedBody500_181 : StackLang.HolProg 64 :=
.seq NamedBody500_173 NamedBody500_180

def NamedBody500_182 : StackLang.HolProg 64 :=
.seq NamedBody500_172 NamedBody500_181

def NamedBody500_183 : StackLang.HolProg 64 :=
.seq NamedBody500_171 NamedBody500_182

def NamedBody500_184 : StackLang.HolProg 64 :=
.seq NamedBody500_170 NamedBody500_183

def NamedBody500_185 : StackLang.HolProg 64 :=
.seq NamedBody500_169 NamedBody500_184

def NamedBody500_186 : StackLang.HolProg 64 :=
.seq NamedBody500_168 NamedBody500_185

def NamedBody500_187 : StackLang.HolProg 64 :=
.seq NamedBody500_167 NamedBody500_186

def NamedBody500_188 : StackLang.HolProg 64 :=
.seq NamedBody500_166 NamedBody500_187

def NamedBody500_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody500_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody500_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody500_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody500_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody500_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody500_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody500_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody500_197 : StackLang.HolProg 64 :=
.seq NamedBody500_195 NamedBody500_196

def NamedBody500_198 : StackLang.HolProg 64 :=
.seq NamedBody500_194 NamedBody500_197

def NamedBody500_199 : StackLang.HolProg 64 :=
.seq NamedBody500_193 NamedBody500_198

def NamedBody500_200 : StackLang.HolProg 64 :=
.seq NamedBody500_192 NamedBody500_199

def NamedBody500_201 : StackLang.HolProg 64 :=
.seq NamedBody500_191 NamedBody500_200

def NamedBody500_202 : StackLang.HolProg 64 :=
.seq NamedBody500_190 NamedBody500_201

def NamedBody500_203 : StackLang.HolProg 64 :=
.seq NamedBody500_189 NamedBody500_202

def NamedBody500_204 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody500_205 : StackLang.HolProg 64 :=
.seq NamedBody500_203 NamedBody500_204

def NamedBody500_206 : StackLang.HolProg 64 :=
.call (some (NamedBody500_188, 1, 500, 6)) (Sum.inl 470) (some (NamedBody500_205, 500, 7))

def NamedBody500_207 : StackLang.HolProg 64 :=
.seq NamedBody500_165 NamedBody500_206

def NamedBody500_208 : StackLang.HolProg 64 :=
.seq NamedBody500_164 NamedBody500_207

def NamedBody500_209 : StackLang.HolProg 64 :=
.seq NamedBody500_163 NamedBody500_208

def NamedBody500_210 : StackLang.HolProg 64 :=
.seq NamedBody500_134 NamedBody500_209

def NamedBody500_211 : StackLang.HolProg 64 :=
.seq NamedBody500_131 NamedBody500_210

def NamedBody500_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody500_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody500_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody500_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1565#64)

def NamedBody500_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody500_217 : StackLang.HolProg 64 :=
.seq NamedBody500_215 NamedBody500_216

def NamedBody500_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody500_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody500_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody500_221 : StackLang.HolProg 64 :=
.seq NamedBody500_219 NamedBody500_220

def NamedBody500_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody500_223 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody500_221 NamedBody500_222

def NamedBody500_224 : StackLang.HolProg 64 :=
.seq NamedBody500_218 NamedBody500_223

def NamedBody500_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody500_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody500_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 500 9

def NamedBody500_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody500_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody500_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody500_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody500_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody500_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody500_234 : StackLang.HolProg 64 :=
.seq NamedBody500_232 NamedBody500_233

def NamedBody500_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody500_236 : StackLang.HolProg 64 :=
.seq NamedBody500_234 NamedBody500_235

def NamedBody500_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody500_238 : StackLang.HolProg 64 :=
.seq NamedBody500_236 NamedBody500_237

def NamedBody500_239 : StackLang.HolProg 64 :=
.seq NamedBody500_231 NamedBody500_238

def NamedBody500_240 : StackLang.HolProg 64 :=
.seq NamedBody500_230 NamedBody500_239

def NamedBody500_241 : StackLang.HolProg 64 :=
.seq NamedBody500_229 NamedBody500_240

def NamedBody500_242 : StackLang.HolProg 64 :=
.seq NamedBody500_228 NamedBody500_241

def NamedBody500_243 : StackLang.HolProg 64 :=
.seq NamedBody500_227 NamedBody500_242

def NamedBody500_244 : StackLang.HolProg 64 :=
.seq NamedBody500_226 NamedBody500_243

def NamedBody500_245 : StackLang.HolProg 64 :=
.seq NamedBody500_225 NamedBody500_244

def NamedBody500_246 : StackLang.HolProg 64 :=
.seq NamedBody500_224 NamedBody500_245

def NamedBody500_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody500_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody500_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody500_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody500_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody500_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody500_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody500_254 : StackLang.HolProg 64 :=
.seq NamedBody500_252 NamedBody500_253

def NamedBody500_255 : StackLang.HolProg 64 :=
.seq NamedBody500_251 NamedBody500_254

def NamedBody500_256 : StackLang.HolProg 64 :=
.seq NamedBody500_250 NamedBody500_255

def NamedBody500_257 : StackLang.HolProg 64 :=
.seq NamedBody500_249 NamedBody500_256

def NamedBody500_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody500_259 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody500_260 : StackLang.HolProg 64 :=
.seq NamedBody500_258 NamedBody500_259

def NamedBody500_261 : StackLang.HolProg 64 :=
.call (some (NamedBody500_257, 1, 500, 8)) (Sum.inl 130) (some (NamedBody500_260, 500, 9))

def NamedBody500_262 : StackLang.HolProg 64 :=
.seq NamedBody500_248 NamedBody500_261

def NamedBody500_263 : StackLang.HolProg 64 :=
.seq NamedBody500_247 NamedBody500_262

def NamedBody500_264 : StackLang.HolProg 64 :=
.seq NamedBody500_246 NamedBody500_263

def NamedBody500_265 : StackLang.HolProg 64 :=
.seq NamedBody500_217 NamedBody500_264

def NamedBody500_266 : StackLang.HolProg 64 :=
.seq NamedBody500_214 NamedBody500_265

def NamedBody500_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody500_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody500_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody500_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1566#64)

def NamedBody500_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody500_272 : StackLang.HolProg 64 :=
.seq NamedBody500_270 NamedBody500_271

def NamedBody500_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody500_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody500_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody500_276 : StackLang.HolProg 64 :=
.seq NamedBody500_274 NamedBody500_275

def NamedBody500_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody500_278 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody500_276 NamedBody500_277

def NamedBody500_279 : StackLang.HolProg 64 :=
.seq NamedBody500_273 NamedBody500_278

def NamedBody500_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody500_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody500_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 500 11

def NamedBody500_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody500_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody500_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody500_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody500_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody500_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody500_289 : StackLang.HolProg 64 :=
.seq NamedBody500_287 NamedBody500_288

def NamedBody500_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody500_291 : StackLang.HolProg 64 :=
.seq NamedBody500_289 NamedBody500_290

def NamedBody500_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody500_293 : StackLang.HolProg 64 :=
.seq NamedBody500_291 NamedBody500_292

def NamedBody500_294 : StackLang.HolProg 64 :=
.seq NamedBody500_286 NamedBody500_293

def NamedBody500_295 : StackLang.HolProg 64 :=
.seq NamedBody500_285 NamedBody500_294

def NamedBody500_296 : StackLang.HolProg 64 :=
.seq NamedBody500_284 NamedBody500_295

def NamedBody500_297 : StackLang.HolProg 64 :=
.seq NamedBody500_283 NamedBody500_296

def NamedBody500_298 : StackLang.HolProg 64 :=
.seq NamedBody500_282 NamedBody500_297

def NamedBody500_299 : StackLang.HolProg 64 :=
.seq NamedBody500_281 NamedBody500_298

def NamedBody500_300 : StackLang.HolProg 64 :=
.seq NamedBody500_280 NamedBody500_299

def NamedBody500_301 : StackLang.HolProg 64 :=
.seq NamedBody500_279 NamedBody500_300

def NamedBody500_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody500_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody500_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody500_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody500_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody500_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody500_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody500_309 : StackLang.HolProg 64 :=
.seq NamedBody500_307 NamedBody500_308

def NamedBody500_310 : StackLang.HolProg 64 :=
.seq NamedBody500_306 NamedBody500_309

def NamedBody500_311 : StackLang.HolProg 64 :=
.seq NamedBody500_305 NamedBody500_310

def NamedBody500_312 : StackLang.HolProg 64 :=
.seq NamedBody500_304 NamedBody500_311

def NamedBody500_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody500_314 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody500_315 : StackLang.HolProg 64 :=
.seq NamedBody500_313 NamedBody500_314

def NamedBody500_316 : StackLang.HolProg 64 :=
.call (some (NamedBody500_312, 1, 500, 10)) (Sum.inl 476) (some (NamedBody500_315, 500, 11))

def NamedBody500_317 : StackLang.HolProg 64 :=
.seq NamedBody500_303 NamedBody500_316

def NamedBody500_318 : StackLang.HolProg 64 :=
.seq NamedBody500_302 NamedBody500_317

def NamedBody500_319 : StackLang.HolProg 64 :=
.seq NamedBody500_301 NamedBody500_318

def NamedBody500_320 : StackLang.HolProg 64 :=
.seq NamedBody500_272 NamedBody500_319

def NamedBody500_321 : StackLang.HolProg 64 :=
.seq NamedBody500_269 NamedBody500_320

def NamedBody500_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody500_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody500_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody500_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody500_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1567#64)

def NamedBody500_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody500_328 : StackLang.HolProg 64 :=
.seq NamedBody500_326 NamedBody500_327

def NamedBody500_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody500_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody500_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody500_332 : StackLang.HolProg 64 :=
.seq NamedBody500_330 NamedBody500_331

def NamedBody500_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody500_334 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody500_332 NamedBody500_333

def NamedBody500_335 : StackLang.HolProg 64 :=
.seq NamedBody500_329 NamedBody500_334

def NamedBody500_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody500_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody500_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 500 13

def NamedBody500_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody500_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody500_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody500_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody500_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody500_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody500_345 : StackLang.HolProg 64 :=
.seq NamedBody500_343 NamedBody500_344

def NamedBody500_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody500_347 : StackLang.HolProg 64 :=
.seq NamedBody500_345 NamedBody500_346

def NamedBody500_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody500_349 : StackLang.HolProg 64 :=
.seq NamedBody500_347 NamedBody500_348

def NamedBody500_350 : StackLang.HolProg 64 :=
.seq NamedBody500_342 NamedBody500_349

def NamedBody500_351 : StackLang.HolProg 64 :=
.seq NamedBody500_341 NamedBody500_350

def NamedBody500_352 : StackLang.HolProg 64 :=
.seq NamedBody500_340 NamedBody500_351

def NamedBody500_353 : StackLang.HolProg 64 :=
.seq NamedBody500_339 NamedBody500_352

def NamedBody500_354 : StackLang.HolProg 64 :=
.seq NamedBody500_338 NamedBody500_353

def NamedBody500_355 : StackLang.HolProg 64 :=
.seq NamedBody500_337 NamedBody500_354

def NamedBody500_356 : StackLang.HolProg 64 :=
.seq NamedBody500_336 NamedBody500_355

def NamedBody500_357 : StackLang.HolProg 64 :=
.seq NamedBody500_335 NamedBody500_356

def NamedBody500_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody500_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody500_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody500_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody500_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody500_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody500_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody500_365 : StackLang.HolProg 64 :=
.seq NamedBody500_363 NamedBody500_364

def NamedBody500_366 : StackLang.HolProg 64 :=
.seq NamedBody500_362 NamedBody500_365

def NamedBody500_367 : StackLang.HolProg 64 :=
.seq NamedBody500_361 NamedBody500_366

def NamedBody500_368 : StackLang.HolProg 64 :=
.seq NamedBody500_360 NamedBody500_367

def NamedBody500_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody500_370 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody500_371 : StackLang.HolProg 64 :=
.seq NamedBody500_369 NamedBody500_370

def NamedBody500_372 : StackLang.HolProg 64 :=
.call (some (NamedBody500_368, 1, 500, 12)) (Sum.inl 490) (some (NamedBody500_371, 500, 13))

def NamedBody500_373 : StackLang.HolProg 64 :=
.seq NamedBody500_359 NamedBody500_372

def NamedBody500_374 : StackLang.HolProg 64 :=
.seq NamedBody500_358 NamedBody500_373

def NamedBody500_375 : StackLang.HolProg 64 :=
.seq NamedBody500_357 NamedBody500_374

def NamedBody500_376 : StackLang.HolProg 64 :=
.seq NamedBody500_328 NamedBody500_375

def NamedBody500_377 : StackLang.HolProg 64 :=
.seq NamedBody500_325 NamedBody500_376

def NamedBody500_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody500_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody500_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody500_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def NamedBody500_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody500_383 : StackLang.HolProg 64 :=
.seq NamedBody500_381 NamedBody500_382

def NamedBody500_384 : StackLang.HolProg 64 :=
.seq NamedBody500_380 NamedBody500_383

def NamedBody500_385 : StackLang.HolProg 64 :=
.seq NamedBody500_379 NamedBody500_384

def NamedBody500_386 : StackLang.HolProg 64 :=
.seq NamedBody500_378 NamedBody500_385

def NamedBody500_387 : StackLang.HolProg 64 :=
.seq NamedBody500_377 NamedBody500_386

def NamedBody500_388 : StackLang.HolProg 64 :=
.seq NamedBody500_324 NamedBody500_387

def NamedBody500_389 : StackLang.HolProg 64 :=
.seq NamedBody500_323 NamedBody500_388

def NamedBody500_390 : StackLang.HolProg 64 :=
.seq NamedBody500_322 NamedBody500_389

def NamedBody500_391 : StackLang.HolProg 64 :=
.seq NamedBody500_321 NamedBody500_390

def NamedBody500_392 : StackLang.HolProg 64 :=
.seq NamedBody500_268 NamedBody500_391

def NamedBody500_393 : StackLang.HolProg 64 :=
.seq NamedBody500_267 NamedBody500_392

def NamedBody500_394 : StackLang.HolProg 64 :=
.seq NamedBody500_266 NamedBody500_393

def NamedBody500_395 : StackLang.HolProg 64 :=
.seq NamedBody500_213 NamedBody500_394

def NamedBody500_396 : StackLang.HolProg 64 :=
.seq NamedBody500_212 NamedBody500_395

def NamedBody500_397 : StackLang.HolProg 64 :=
.seq NamedBody500_211 NamedBody500_396

def NamedBody500_398 : StackLang.HolProg 64 :=
.seq NamedBody500_130 NamedBody500_397

def NamedBody500_399 : StackLang.HolProg 64 :=
.seq NamedBody500_123 NamedBody500_398

def NamedBody500_400 : StackLang.HolProg 64 :=
.seq NamedBody500_122 NamedBody500_399

def NamedBody500_401 : StackLang.HolProg 64 :=
.seq NamedBody500_121 NamedBody500_400

def NamedBody500_402 : StackLang.HolProg 64 :=
.seq NamedBody500_68 NamedBody500_401

def NamedBody500_403 : StackLang.HolProg 64 :=
.seq NamedBody500_61 NamedBody500_402

def NamedBody500_404 : StackLang.HolProg 64 :=
.seq NamedBody500_60 NamedBody500_403

def NamedBody500_405 : StackLang.HolProg 64 :=
.seq NamedBody500_7 NamedBody500_404

def NamedBody500_406 : StackLang.HolProg 64 :=
.seq NamedBody500_6 NamedBody500_405

def Named500 : Nat × StackLang.HolProg 64 := (500, NamedBody500_406)
theorem Named500_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed500 = Named500 := by
  kernel_rfl
#print axioms Named500_eq
end InitECandidate.Proofs.BackendStages
