import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed504
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody504_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 112#64)))

def NamedBody504_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody504_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody504_3 : StackLang.HolProg 64 :=
.seq NamedBody504_1 NamedBody504_2

def NamedBody504_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody504_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody504_3 NamedBody504_4

def NamedBody504_6 : StackLang.HolProg 64 :=
.seq NamedBody504_0 NamedBody504_5

def NamedBody504_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody504_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody504_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1586#64)

def NamedBody504_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody504_11 : StackLang.HolProg 64 :=
.seq NamedBody504_9 NamedBody504_10

def NamedBody504_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody504_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody504_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody504_15 : StackLang.HolProg 64 :=
.seq NamedBody504_13 NamedBody504_14

def NamedBody504_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody504_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody504_15 NamedBody504_16

def NamedBody504_18 : StackLang.HolProg 64 :=
.seq NamedBody504_12 NamedBody504_17

def NamedBody504_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody504_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody504_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 504 3

def NamedBody504_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody504_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody504_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody504_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody504_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody504_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody504_28 : StackLang.HolProg 64 :=
.seq NamedBody504_26 NamedBody504_27

def NamedBody504_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody504_30 : StackLang.HolProg 64 :=
.seq NamedBody504_28 NamedBody504_29

def NamedBody504_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody504_32 : StackLang.HolProg 64 :=
.seq NamedBody504_30 NamedBody504_31

def NamedBody504_33 : StackLang.HolProg 64 :=
.seq NamedBody504_25 NamedBody504_32

def NamedBody504_34 : StackLang.HolProg 64 :=
.seq NamedBody504_24 NamedBody504_33

def NamedBody504_35 : StackLang.HolProg 64 :=
.seq NamedBody504_23 NamedBody504_34

def NamedBody504_36 : StackLang.HolProg 64 :=
.seq NamedBody504_22 NamedBody504_35

def NamedBody504_37 : StackLang.HolProg 64 :=
.seq NamedBody504_21 NamedBody504_36

def NamedBody504_38 : StackLang.HolProg 64 :=
.seq NamedBody504_20 NamedBody504_37

def NamedBody504_39 : StackLang.HolProg 64 :=
.seq NamedBody504_19 NamedBody504_38

def NamedBody504_40 : StackLang.HolProg 64 :=
.seq NamedBody504_18 NamedBody504_39

def NamedBody504_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody504_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody504_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody504_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody504_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody504_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody504_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody504_48 : StackLang.HolProg 64 :=
.seq NamedBody504_46 NamedBody504_47

def NamedBody504_49 : StackLang.HolProg 64 :=
.seq NamedBody504_45 NamedBody504_48

def NamedBody504_50 : StackLang.HolProg 64 :=
.seq NamedBody504_44 NamedBody504_49

def NamedBody504_51 : StackLang.HolProg 64 :=
.seq NamedBody504_43 NamedBody504_50

def NamedBody504_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody504_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody504_54 : StackLang.HolProg 64 :=
.seq NamedBody504_52 NamedBody504_53

def NamedBody504_55 : StackLang.HolProg 64 :=
.call (some (NamedBody504_51, 1, 504, 2)) (Sum.inl 475) (some (NamedBody504_54, 504, 3))

def NamedBody504_56 : StackLang.HolProg 64 :=
.seq NamedBody504_42 NamedBody504_55

def NamedBody504_57 : StackLang.HolProg 64 :=
.seq NamedBody504_41 NamedBody504_56

def NamedBody504_58 : StackLang.HolProg 64 :=
.seq NamedBody504_40 NamedBody504_57

def NamedBody504_59 : StackLang.HolProg 64 :=
.seq NamedBody504_11 NamedBody504_58

def NamedBody504_60 : StackLang.HolProg 64 :=
.seq NamedBody504_8 NamedBody504_59

def NamedBody504_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody504_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody504_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody504_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody504_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody504_66 : StackLang.HolProg 64 :=
.seq NamedBody504_64 NamedBody504_65

def NamedBody504_67 : StackLang.HolProg 64 :=
.seq NamedBody504_63 NamedBody504_66

def NamedBody504_68 : StackLang.HolProg 64 :=
.seq NamedBody504_62 NamedBody504_67

def NamedBody504_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody504_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1587#64)

def NamedBody504_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody504_72 : StackLang.HolProg 64 :=
.seq NamedBody504_70 NamedBody504_71

def NamedBody504_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody504_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody504_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody504_76 : StackLang.HolProg 64 :=
.seq NamedBody504_74 NamedBody504_75

def NamedBody504_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody504_78 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody504_76 NamedBody504_77

def NamedBody504_79 : StackLang.HolProg 64 :=
.seq NamedBody504_73 NamedBody504_78

def NamedBody504_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody504_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody504_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 504 5

def NamedBody504_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody504_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody504_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody504_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody504_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody504_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody504_89 : StackLang.HolProg 64 :=
.seq NamedBody504_87 NamedBody504_88

def NamedBody504_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody504_91 : StackLang.HolProg 64 :=
.seq NamedBody504_89 NamedBody504_90

def NamedBody504_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody504_93 : StackLang.HolProg 64 :=
.seq NamedBody504_91 NamedBody504_92

def NamedBody504_94 : StackLang.HolProg 64 :=
.seq NamedBody504_86 NamedBody504_93

def NamedBody504_95 : StackLang.HolProg 64 :=
.seq NamedBody504_85 NamedBody504_94

def NamedBody504_96 : StackLang.HolProg 64 :=
.seq NamedBody504_84 NamedBody504_95

def NamedBody504_97 : StackLang.HolProg 64 :=
.seq NamedBody504_83 NamedBody504_96

def NamedBody504_98 : StackLang.HolProg 64 :=
.seq NamedBody504_82 NamedBody504_97

def NamedBody504_99 : StackLang.HolProg 64 :=
.seq NamedBody504_81 NamedBody504_98

def NamedBody504_100 : StackLang.HolProg 64 :=
.seq NamedBody504_80 NamedBody504_99

def NamedBody504_101 : StackLang.HolProg 64 :=
.seq NamedBody504_79 NamedBody504_100

def NamedBody504_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody504_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody504_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody504_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody504_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody504_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody504_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody504_109 : StackLang.HolProg 64 :=
.seq NamedBody504_107 NamedBody504_108

def NamedBody504_110 : StackLang.HolProg 64 :=
.seq NamedBody504_106 NamedBody504_109

def NamedBody504_111 : StackLang.HolProg 64 :=
.seq NamedBody504_105 NamedBody504_110

def NamedBody504_112 : StackLang.HolProg 64 :=
.seq NamedBody504_104 NamedBody504_111

def NamedBody504_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody504_114 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody504_115 : StackLang.HolProg 64 :=
.seq NamedBody504_113 NamedBody504_114

def NamedBody504_116 : StackLang.HolProg 64 :=
.call (some (NamedBody504_112, 1, 504, 4)) (Sum.inl 475) (some (NamedBody504_115, 504, 5))

def NamedBody504_117 : StackLang.HolProg 64 :=
.seq NamedBody504_103 NamedBody504_116

def NamedBody504_118 : StackLang.HolProg 64 :=
.seq NamedBody504_102 NamedBody504_117

def NamedBody504_119 : StackLang.HolProg 64 :=
.seq NamedBody504_101 NamedBody504_118

def NamedBody504_120 : StackLang.HolProg 64 :=
.seq NamedBody504_72 NamedBody504_119

def NamedBody504_121 : StackLang.HolProg 64 :=
.seq NamedBody504_69 NamedBody504_120

def NamedBody504_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody504_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody504_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody504_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody504_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody504_127 : StackLang.HolProg 64 :=
.seq NamedBody504_125 NamedBody504_126

def NamedBody504_128 : StackLang.HolProg 64 :=
.seq NamedBody504_124 NamedBody504_127

def NamedBody504_129 : StackLang.HolProg 64 :=
.seq NamedBody504_123 NamedBody504_128

def NamedBody504_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody504_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1588#64)

def NamedBody504_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody504_133 : StackLang.HolProg 64 :=
.seq NamedBody504_131 NamedBody504_132

def NamedBody504_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody504_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody504_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody504_137 : StackLang.HolProg 64 :=
.seq NamedBody504_135 NamedBody504_136

def NamedBody504_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody504_139 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody504_137 NamedBody504_138

def NamedBody504_140 : StackLang.HolProg 64 :=
.seq NamedBody504_134 NamedBody504_139

def NamedBody504_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody504_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody504_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 504 7

def NamedBody504_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody504_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody504_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody504_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody504_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody504_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody504_150 : StackLang.HolProg 64 :=
.seq NamedBody504_148 NamedBody504_149

def NamedBody504_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody504_152 : StackLang.HolProg 64 :=
.seq NamedBody504_150 NamedBody504_151

def NamedBody504_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody504_154 : StackLang.HolProg 64 :=
.seq NamedBody504_152 NamedBody504_153

def NamedBody504_155 : StackLang.HolProg 64 :=
.seq NamedBody504_147 NamedBody504_154

def NamedBody504_156 : StackLang.HolProg 64 :=
.seq NamedBody504_146 NamedBody504_155

def NamedBody504_157 : StackLang.HolProg 64 :=
.seq NamedBody504_145 NamedBody504_156

def NamedBody504_158 : StackLang.HolProg 64 :=
.seq NamedBody504_144 NamedBody504_157

def NamedBody504_159 : StackLang.HolProg 64 :=
.seq NamedBody504_143 NamedBody504_158

def NamedBody504_160 : StackLang.HolProg 64 :=
.seq NamedBody504_142 NamedBody504_159

def NamedBody504_161 : StackLang.HolProg 64 :=
.seq NamedBody504_141 NamedBody504_160

def NamedBody504_162 : StackLang.HolProg 64 :=
.seq NamedBody504_140 NamedBody504_161

def NamedBody504_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody504_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody504_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody504_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody504_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody504_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody504_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody504_170 : StackLang.HolProg 64 :=
.seq NamedBody504_168 NamedBody504_169

def NamedBody504_171 : StackLang.HolProg 64 :=
.seq NamedBody504_167 NamedBody504_170

def NamedBody504_172 : StackLang.HolProg 64 :=
.seq NamedBody504_166 NamedBody504_171

def NamedBody504_173 : StackLang.HolProg 64 :=
.seq NamedBody504_165 NamedBody504_172

def NamedBody504_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody504_175 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody504_176 : StackLang.HolProg 64 :=
.seq NamedBody504_174 NamedBody504_175

def NamedBody504_177 : StackLang.HolProg 64 :=
.call (some (NamedBody504_173, 1, 504, 6)) (Sum.inl 475) (some (NamedBody504_176, 504, 7))

def NamedBody504_178 : StackLang.HolProg 64 :=
.seq NamedBody504_164 NamedBody504_177

def NamedBody504_179 : StackLang.HolProg 64 :=
.seq NamedBody504_163 NamedBody504_178

def NamedBody504_180 : StackLang.HolProg 64 :=
.seq NamedBody504_162 NamedBody504_179

def NamedBody504_181 : StackLang.HolProg 64 :=
.seq NamedBody504_133 NamedBody504_180

def NamedBody504_182 : StackLang.HolProg 64 :=
.seq NamedBody504_130 NamedBody504_181

def NamedBody504_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody504_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 8#64)

def NamedBody504_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody504_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody504_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody504_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody504_189 : StackLang.HolProg 64 :=
.seq NamedBody504_187 NamedBody504_188

def NamedBody504_190 : StackLang.HolProg 64 :=
.seq NamedBody504_186 NamedBody504_189

def NamedBody504_191 : StackLang.HolProg 64 :=
.seq NamedBody504_185 NamedBody504_190

def NamedBody504_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody504_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1589#64)

def NamedBody504_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody504_195 : StackLang.HolProg 64 :=
.seq NamedBody504_193 NamedBody504_194

def NamedBody504_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody504_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody504_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody504_199 : StackLang.HolProg 64 :=
.seq NamedBody504_197 NamedBody504_198

def NamedBody504_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody504_201 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody504_199 NamedBody504_200

def NamedBody504_202 : StackLang.HolProg 64 :=
.seq NamedBody504_196 NamedBody504_201

def NamedBody504_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody504_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody504_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 504 9

def NamedBody504_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody504_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody504_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody504_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody504_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody504_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody504_212 : StackLang.HolProg 64 :=
.seq NamedBody504_210 NamedBody504_211

def NamedBody504_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody504_214 : StackLang.HolProg 64 :=
.seq NamedBody504_212 NamedBody504_213

def NamedBody504_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody504_216 : StackLang.HolProg 64 :=
.seq NamedBody504_214 NamedBody504_215

def NamedBody504_217 : StackLang.HolProg 64 :=
.seq NamedBody504_209 NamedBody504_216

def NamedBody504_218 : StackLang.HolProg 64 :=
.seq NamedBody504_208 NamedBody504_217

def NamedBody504_219 : StackLang.HolProg 64 :=
.seq NamedBody504_207 NamedBody504_218

def NamedBody504_220 : StackLang.HolProg 64 :=
.seq NamedBody504_206 NamedBody504_219

def NamedBody504_221 : StackLang.HolProg 64 :=
.seq NamedBody504_205 NamedBody504_220

def NamedBody504_222 : StackLang.HolProg 64 :=
.seq NamedBody504_204 NamedBody504_221

def NamedBody504_223 : StackLang.HolProg 64 :=
.seq NamedBody504_203 NamedBody504_222

def NamedBody504_224 : StackLang.HolProg 64 :=
.seq NamedBody504_202 NamedBody504_223

def NamedBody504_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody504_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody504_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody504_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody504_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody504_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody504_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody504_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody504_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody504_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody504_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 29
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody504_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody504_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody504_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody504_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody504_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody504_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 28
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody504_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody504_243 : StackLang.HolProg 64 :=
.seq NamedBody504_241 NamedBody504_242

def NamedBody504_244 : StackLang.HolProg 64 :=
.seq NamedBody504_240 NamedBody504_243

def NamedBody504_245 : StackLang.HolProg 64 :=
.seq NamedBody504_239 NamedBody504_244

def NamedBody504_246 : StackLang.HolProg 64 :=
.seq NamedBody504_238 NamedBody504_245

def NamedBody504_247 : StackLang.HolProg 64 :=
.seq NamedBody504_237 NamedBody504_246

def NamedBody504_248 : StackLang.HolProg 64 :=
.seq NamedBody504_236 NamedBody504_247

def NamedBody504_249 : StackLang.HolProg 64 :=
.seq NamedBody504_235 NamedBody504_248

def NamedBody504_250 : StackLang.HolProg 64 :=
.seq NamedBody504_234 NamedBody504_249

def NamedBody504_251 : StackLang.HolProg 64 :=
.seq NamedBody504_233 NamedBody504_250

def NamedBody504_252 : StackLang.HolProg 64 :=
.seq NamedBody504_232 NamedBody504_251

def NamedBody504_253 : StackLang.HolProg 64 :=
.seq NamedBody504_231 NamedBody504_252

def NamedBody504_254 : StackLang.HolProg 64 :=
.seq NamedBody504_230 NamedBody504_253

def NamedBody504_255 : StackLang.HolProg 64 :=
.seq NamedBody504_229 NamedBody504_254

def NamedBody504_256 : StackLang.HolProg 64 :=
.seq NamedBody504_228 NamedBody504_255

def NamedBody504_257 : StackLang.HolProg 64 :=
.seq NamedBody504_227 NamedBody504_256

def NamedBody504_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody504_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody504_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody504_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody504_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 29
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody504_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody504_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody504_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody504_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody504_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody504_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 28
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody504_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody504_270 : StackLang.HolProg 64 :=
.seq NamedBody504_268 NamedBody504_269

def NamedBody504_271 : StackLang.HolProg 64 :=
.seq NamedBody504_267 NamedBody504_270

def NamedBody504_272 : StackLang.HolProg 64 :=
.seq NamedBody504_266 NamedBody504_271

def NamedBody504_273 : StackLang.HolProg 64 :=
.seq NamedBody504_265 NamedBody504_272

def NamedBody504_274 : StackLang.HolProg 64 :=
.seq NamedBody504_264 NamedBody504_273

def NamedBody504_275 : StackLang.HolProg 64 :=
.seq NamedBody504_263 NamedBody504_274

def NamedBody504_276 : StackLang.HolProg 64 :=
.seq NamedBody504_262 NamedBody504_275

def NamedBody504_277 : StackLang.HolProg 64 :=
.seq NamedBody504_261 NamedBody504_276

def NamedBody504_278 : StackLang.HolProg 64 :=
.seq NamedBody504_260 NamedBody504_277

def NamedBody504_279 : StackLang.HolProg 64 :=
.seq NamedBody504_259 NamedBody504_278

def NamedBody504_280 : StackLang.HolProg 64 :=
.seq NamedBody504_258 NamedBody504_279

def NamedBody504_281 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody504_282 : StackLang.HolProg 64 :=
.seq NamedBody504_280 NamedBody504_281

def NamedBody504_283 : StackLang.HolProg 64 :=
.call (some (NamedBody504_257, 1, 504, 8)) (Sum.inl 470) (some (NamedBody504_282, 504, 9))

def NamedBody504_284 : StackLang.HolProg 64 :=
.seq NamedBody504_226 NamedBody504_283

def NamedBody504_285 : StackLang.HolProg 64 :=
.seq NamedBody504_225 NamedBody504_284

def NamedBody504_286 : StackLang.HolProg 64 :=
.seq NamedBody504_224 NamedBody504_285

def NamedBody504_287 : StackLang.HolProg 64 :=
.seq NamedBody504_195 NamedBody504_286

def NamedBody504_288 : StackLang.HolProg 64 :=
.seq NamedBody504_192 NamedBody504_287

def NamedBody504_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody504_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody504_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody504_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1590#64)

def NamedBody504_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody504_294 : StackLang.HolProg 64 :=
.seq NamedBody504_292 NamedBody504_293

def NamedBody504_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody504_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody504_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody504_298 : StackLang.HolProg 64 :=
.seq NamedBody504_296 NamedBody504_297

def NamedBody504_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody504_300 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody504_298 NamedBody504_299

def NamedBody504_301 : StackLang.HolProg 64 :=
.seq NamedBody504_295 NamedBody504_300

def NamedBody504_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody504_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody504_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 504 11

def NamedBody504_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody504_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody504_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody504_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody504_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody504_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody504_311 : StackLang.HolProg 64 :=
.seq NamedBody504_309 NamedBody504_310

def NamedBody504_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody504_313 : StackLang.HolProg 64 :=
.seq NamedBody504_311 NamedBody504_312

def NamedBody504_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody504_315 : StackLang.HolProg 64 :=
.seq NamedBody504_313 NamedBody504_314

def NamedBody504_316 : StackLang.HolProg 64 :=
.seq NamedBody504_308 NamedBody504_315

def NamedBody504_317 : StackLang.HolProg 64 :=
.seq NamedBody504_307 NamedBody504_316

def NamedBody504_318 : StackLang.HolProg 64 :=
.seq NamedBody504_306 NamedBody504_317

def NamedBody504_319 : StackLang.HolProg 64 :=
.seq NamedBody504_305 NamedBody504_318

def NamedBody504_320 : StackLang.HolProg 64 :=
.seq NamedBody504_304 NamedBody504_319

def NamedBody504_321 : StackLang.HolProg 64 :=
.seq NamedBody504_303 NamedBody504_320

def NamedBody504_322 : StackLang.HolProg 64 :=
.seq NamedBody504_302 NamedBody504_321

def NamedBody504_323 : StackLang.HolProg 64 :=
.seq NamedBody504_301 NamedBody504_322

def NamedBody504_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody504_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody504_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody504_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody504_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody504_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody504_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody504_331 : StackLang.HolProg 64 :=
.seq NamedBody504_329 NamedBody504_330

def NamedBody504_332 : StackLang.HolProg 64 :=
.seq NamedBody504_328 NamedBody504_331

def NamedBody504_333 : StackLang.HolProg 64 :=
.seq NamedBody504_327 NamedBody504_332

def NamedBody504_334 : StackLang.HolProg 64 :=
.seq NamedBody504_326 NamedBody504_333

def NamedBody504_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody504_336 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody504_337 : StackLang.HolProg 64 :=
.seq NamedBody504_335 NamedBody504_336

def NamedBody504_338 : StackLang.HolProg 64 :=
.call (some (NamedBody504_334, 1, 504, 10)) (Sum.inl 135) (some (NamedBody504_337, 504, 11))

def NamedBody504_339 : StackLang.HolProg 64 :=
.seq NamedBody504_325 NamedBody504_338

def NamedBody504_340 : StackLang.HolProg 64 :=
.seq NamedBody504_324 NamedBody504_339

def NamedBody504_341 : StackLang.HolProg 64 :=
.seq NamedBody504_323 NamedBody504_340

def NamedBody504_342 : StackLang.HolProg 64 :=
.seq NamedBody504_294 NamedBody504_341

def NamedBody504_343 : StackLang.HolProg 64 :=
.seq NamedBody504_291 NamedBody504_342

def NamedBody504_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody504_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody504_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody504_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1591#64)

def NamedBody504_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody504_349 : StackLang.HolProg 64 :=
.seq NamedBody504_347 NamedBody504_348

def NamedBody504_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody504_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody504_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody504_353 : StackLang.HolProg 64 :=
.seq NamedBody504_351 NamedBody504_352

def NamedBody504_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody504_355 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody504_353 NamedBody504_354

def NamedBody504_356 : StackLang.HolProg 64 :=
.seq NamedBody504_350 NamedBody504_355

def NamedBody504_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody504_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody504_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 504 13

def NamedBody504_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody504_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody504_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody504_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody504_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody504_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody504_366 : StackLang.HolProg 64 :=
.seq NamedBody504_364 NamedBody504_365

def NamedBody504_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody504_368 : StackLang.HolProg 64 :=
.seq NamedBody504_366 NamedBody504_367

def NamedBody504_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody504_370 : StackLang.HolProg 64 :=
.seq NamedBody504_368 NamedBody504_369

def NamedBody504_371 : StackLang.HolProg 64 :=
.seq NamedBody504_363 NamedBody504_370

def NamedBody504_372 : StackLang.HolProg 64 :=
.seq NamedBody504_362 NamedBody504_371

def NamedBody504_373 : StackLang.HolProg 64 :=
.seq NamedBody504_361 NamedBody504_372

def NamedBody504_374 : StackLang.HolProg 64 :=
.seq NamedBody504_360 NamedBody504_373

def NamedBody504_375 : StackLang.HolProg 64 :=
.seq NamedBody504_359 NamedBody504_374

def NamedBody504_376 : StackLang.HolProg 64 :=
.seq NamedBody504_358 NamedBody504_375

def NamedBody504_377 : StackLang.HolProg 64 :=
.seq NamedBody504_357 NamedBody504_376

def NamedBody504_378 : StackLang.HolProg 64 :=
.seq NamedBody504_356 NamedBody504_377

def NamedBody504_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody504_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody504_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody504_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody504_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody504_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody504_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody504_386 : StackLang.HolProg 64 :=
.seq NamedBody504_384 NamedBody504_385

def NamedBody504_387 : StackLang.HolProg 64 :=
.seq NamedBody504_383 NamedBody504_386

def NamedBody504_388 : StackLang.HolProg 64 :=
.seq NamedBody504_382 NamedBody504_387

def NamedBody504_389 : StackLang.HolProg 64 :=
.seq NamedBody504_381 NamedBody504_388

def NamedBody504_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody504_391 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody504_392 : StackLang.HolProg 64 :=
.seq NamedBody504_390 NamedBody504_391

def NamedBody504_393 : StackLang.HolProg 64 :=
.call (some (NamedBody504_389, 1, 504, 12)) (Sum.inl 476) (some (NamedBody504_392, 504, 13))

def NamedBody504_394 : StackLang.HolProg 64 :=
.seq NamedBody504_380 NamedBody504_393

def NamedBody504_395 : StackLang.HolProg 64 :=
.seq NamedBody504_379 NamedBody504_394

def NamedBody504_396 : StackLang.HolProg 64 :=
.seq NamedBody504_378 NamedBody504_395

def NamedBody504_397 : StackLang.HolProg 64 :=
.seq NamedBody504_349 NamedBody504_396

def NamedBody504_398 : StackLang.HolProg 64 :=
.seq NamedBody504_346 NamedBody504_397

def NamedBody504_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody504_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody504_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody504_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody504_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1592#64)

def NamedBody504_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody504_405 : StackLang.HolProg 64 :=
.seq NamedBody504_403 NamedBody504_404

def NamedBody504_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody504_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody504_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody504_409 : StackLang.HolProg 64 :=
.seq NamedBody504_407 NamedBody504_408

def NamedBody504_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody504_411 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody504_409 NamedBody504_410

def NamedBody504_412 : StackLang.HolProg 64 :=
.seq NamedBody504_406 NamedBody504_411

def NamedBody504_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody504_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody504_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 504 15

def NamedBody504_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody504_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody504_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody504_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody504_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody504_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody504_422 : StackLang.HolProg 64 :=
.seq NamedBody504_420 NamedBody504_421

def NamedBody504_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody504_424 : StackLang.HolProg 64 :=
.seq NamedBody504_422 NamedBody504_423

def NamedBody504_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody504_426 : StackLang.HolProg 64 :=
.seq NamedBody504_424 NamedBody504_425

def NamedBody504_427 : StackLang.HolProg 64 :=
.seq NamedBody504_419 NamedBody504_426

def NamedBody504_428 : StackLang.HolProg 64 :=
.seq NamedBody504_418 NamedBody504_427

def NamedBody504_429 : StackLang.HolProg 64 :=
.seq NamedBody504_417 NamedBody504_428

def NamedBody504_430 : StackLang.HolProg 64 :=
.seq NamedBody504_416 NamedBody504_429

def NamedBody504_431 : StackLang.HolProg 64 :=
.seq NamedBody504_415 NamedBody504_430

def NamedBody504_432 : StackLang.HolProg 64 :=
.seq NamedBody504_414 NamedBody504_431

def NamedBody504_433 : StackLang.HolProg 64 :=
.seq NamedBody504_413 NamedBody504_432

def NamedBody504_434 : StackLang.HolProg 64 :=
.seq NamedBody504_412 NamedBody504_433

def NamedBody504_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody504_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody504_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody504_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody504_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody504_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody504_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody504_442 : StackLang.HolProg 64 :=
.seq NamedBody504_440 NamedBody504_441

def NamedBody504_443 : StackLang.HolProg 64 :=
.seq NamedBody504_439 NamedBody504_442

def NamedBody504_444 : StackLang.HolProg 64 :=
.seq NamedBody504_438 NamedBody504_443

def NamedBody504_445 : StackLang.HolProg 64 :=
.seq NamedBody504_437 NamedBody504_444

def NamedBody504_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody504_447 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody504_448 : StackLang.HolProg 64 :=
.seq NamedBody504_446 NamedBody504_447

def NamedBody504_449 : StackLang.HolProg 64 :=
.call (some (NamedBody504_445, 1, 504, 14)) (Sum.inl 490) (some (NamedBody504_448, 504, 15))

def NamedBody504_450 : StackLang.HolProg 64 :=
.seq NamedBody504_436 NamedBody504_449

def NamedBody504_451 : StackLang.HolProg 64 :=
.seq NamedBody504_435 NamedBody504_450

def NamedBody504_452 : StackLang.HolProg 64 :=
.seq NamedBody504_434 NamedBody504_451

def NamedBody504_453 : StackLang.HolProg 64 :=
.seq NamedBody504_405 NamedBody504_452

def NamedBody504_454 : StackLang.HolProg 64 :=
.seq NamedBody504_402 NamedBody504_453

def NamedBody504_455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody504_456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody504_457 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody504_458 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 112#64)))

def NamedBody504_459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody504_460 : StackLang.HolProg 64 :=
.seq NamedBody504_458 NamedBody504_459

def NamedBody504_461 : StackLang.HolProg 64 :=
.seq NamedBody504_457 NamedBody504_460

def NamedBody504_462 : StackLang.HolProg 64 :=
.seq NamedBody504_456 NamedBody504_461

def NamedBody504_463 : StackLang.HolProg 64 :=
.seq NamedBody504_455 NamedBody504_462

def NamedBody504_464 : StackLang.HolProg 64 :=
.seq NamedBody504_454 NamedBody504_463

def NamedBody504_465 : StackLang.HolProg 64 :=
.seq NamedBody504_401 NamedBody504_464

def NamedBody504_466 : StackLang.HolProg 64 :=
.seq NamedBody504_400 NamedBody504_465

def NamedBody504_467 : StackLang.HolProg 64 :=
.seq NamedBody504_399 NamedBody504_466

def NamedBody504_468 : StackLang.HolProg 64 :=
.seq NamedBody504_398 NamedBody504_467

def NamedBody504_469 : StackLang.HolProg 64 :=
.seq NamedBody504_345 NamedBody504_468

def NamedBody504_470 : StackLang.HolProg 64 :=
.seq NamedBody504_344 NamedBody504_469

def NamedBody504_471 : StackLang.HolProg 64 :=
.seq NamedBody504_343 NamedBody504_470

def NamedBody504_472 : StackLang.HolProg 64 :=
.seq NamedBody504_290 NamedBody504_471

def NamedBody504_473 : StackLang.HolProg 64 :=
.seq NamedBody504_289 NamedBody504_472

def NamedBody504_474 : StackLang.HolProg 64 :=
.seq NamedBody504_288 NamedBody504_473

def NamedBody504_475 : StackLang.HolProg 64 :=
.seq NamedBody504_191 NamedBody504_474

def NamedBody504_476 : StackLang.HolProg 64 :=
.seq NamedBody504_184 NamedBody504_475

def NamedBody504_477 : StackLang.HolProg 64 :=
.seq NamedBody504_183 NamedBody504_476

def NamedBody504_478 : StackLang.HolProg 64 :=
.seq NamedBody504_182 NamedBody504_477

def NamedBody504_479 : StackLang.HolProg 64 :=
.seq NamedBody504_129 NamedBody504_478

def NamedBody504_480 : StackLang.HolProg 64 :=
.seq NamedBody504_122 NamedBody504_479

def NamedBody504_481 : StackLang.HolProg 64 :=
.seq NamedBody504_121 NamedBody504_480

def NamedBody504_482 : StackLang.HolProg 64 :=
.seq NamedBody504_68 NamedBody504_481

def NamedBody504_483 : StackLang.HolProg 64 :=
.seq NamedBody504_61 NamedBody504_482

def NamedBody504_484 : StackLang.HolProg 64 :=
.seq NamedBody504_60 NamedBody504_483

def NamedBody504_485 : StackLang.HolProg 64 :=
.seq NamedBody504_7 NamedBody504_484

def NamedBody504_486 : StackLang.HolProg 64 :=
.seq NamedBody504_6 NamedBody504_485

def Named504 : Nat × StackLang.HolProg 64 := (504, NamedBody504_486)
theorem Named504_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed504 = Named504 := by
  kernel_rfl
#print axioms Named504_eq
end InitECandidate.Proofs.BackendStages
