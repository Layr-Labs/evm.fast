import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed488
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody488_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody488_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody488_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody488_3 : StackLang.HolProg 64 :=
.seq NamedBody488_1 NamedBody488_2

def NamedBody488_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody488_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody488_3 NamedBody488_4

def NamedBody488_6 : StackLang.HolProg 64 :=
.seq NamedBody488_0 NamedBody488_5

def NamedBody488_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody488_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 176#64)

def NamedBody488_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody488_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody488_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1527#64)

def NamedBody488_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody488_13 : StackLang.HolProg 64 :=
.seq NamedBody488_11 NamedBody488_12

def NamedBody488_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody488_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody488_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody488_17 : StackLang.HolProg 64 :=
.seq NamedBody488_15 NamedBody488_16

def NamedBody488_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody488_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody488_17 NamedBody488_18

def NamedBody488_20 : StackLang.HolProg 64 :=
.seq NamedBody488_14 NamedBody488_19

def NamedBody488_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody488_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody488_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 488 3

def NamedBody488_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody488_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody488_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody488_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody488_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody488_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody488_30 : StackLang.HolProg 64 :=
.seq NamedBody488_28 NamedBody488_29

def NamedBody488_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody488_32 : StackLang.HolProg 64 :=
.seq NamedBody488_30 NamedBody488_31

def NamedBody488_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody488_34 : StackLang.HolProg 64 :=
.seq NamedBody488_32 NamedBody488_33

def NamedBody488_35 : StackLang.HolProg 64 :=
.seq NamedBody488_27 NamedBody488_34

def NamedBody488_36 : StackLang.HolProg 64 :=
.seq NamedBody488_26 NamedBody488_35

def NamedBody488_37 : StackLang.HolProg 64 :=
.seq NamedBody488_25 NamedBody488_36

def NamedBody488_38 : StackLang.HolProg 64 :=
.seq NamedBody488_24 NamedBody488_37

def NamedBody488_39 : StackLang.HolProg 64 :=
.seq NamedBody488_23 NamedBody488_38

def NamedBody488_40 : StackLang.HolProg 64 :=
.seq NamedBody488_22 NamedBody488_39

def NamedBody488_41 : StackLang.HolProg 64 :=
.seq NamedBody488_21 NamedBody488_40

def NamedBody488_42 : StackLang.HolProg 64 :=
.seq NamedBody488_20 NamedBody488_41

def NamedBody488_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody488_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody488_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody488_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody488_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody488_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody488_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody488_50 : StackLang.HolProg 64 :=
.seq NamedBody488_48 NamedBody488_49

def NamedBody488_51 : StackLang.HolProg 64 :=
.seq NamedBody488_47 NamedBody488_50

def NamedBody488_52 : StackLang.HolProg 64 :=
.seq NamedBody488_46 NamedBody488_51

def NamedBody488_53 : StackLang.HolProg 64 :=
.seq NamedBody488_45 NamedBody488_52

def NamedBody488_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody488_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody488_56 : StackLang.HolProg 64 :=
.seq NamedBody488_54 NamedBody488_55

def NamedBody488_57 : StackLang.HolProg 64 :=
.call (some (NamedBody488_53, 1, 488, 2)) (Sum.inl 74) (some (NamedBody488_56, 488, 3))

def NamedBody488_58 : StackLang.HolProg 64 :=
.seq NamedBody488_44 NamedBody488_57

def NamedBody488_59 : StackLang.HolProg 64 :=
.seq NamedBody488_43 NamedBody488_58

def NamedBody488_60 : StackLang.HolProg 64 :=
.seq NamedBody488_42 NamedBody488_59

def NamedBody488_61 : StackLang.HolProg 64 :=
.seq NamedBody488_13 NamedBody488_60

def NamedBody488_62 : StackLang.HolProg 64 :=
.seq NamedBody488_10 NamedBody488_61

def NamedBody488_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody488_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody488_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 176#64)

def NamedBody488_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody488_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody488_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1528#64)

def NamedBody488_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody488_70 : StackLang.HolProg 64 :=
.seq NamedBody488_68 NamedBody488_69

def NamedBody488_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody488_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody488_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody488_74 : StackLang.HolProg 64 :=
.seq NamedBody488_72 NamedBody488_73

def NamedBody488_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody488_76 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody488_74 NamedBody488_75

def NamedBody488_77 : StackLang.HolProg 64 :=
.seq NamedBody488_71 NamedBody488_76

def NamedBody488_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody488_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody488_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 488 5

def NamedBody488_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody488_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody488_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody488_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody488_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody488_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody488_87 : StackLang.HolProg 64 :=
.seq NamedBody488_85 NamedBody488_86

def NamedBody488_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody488_89 : StackLang.HolProg 64 :=
.seq NamedBody488_87 NamedBody488_88

def NamedBody488_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody488_91 : StackLang.HolProg 64 :=
.seq NamedBody488_89 NamedBody488_90

def NamedBody488_92 : StackLang.HolProg 64 :=
.seq NamedBody488_84 NamedBody488_91

def NamedBody488_93 : StackLang.HolProg 64 :=
.seq NamedBody488_83 NamedBody488_92

def NamedBody488_94 : StackLang.HolProg 64 :=
.seq NamedBody488_82 NamedBody488_93

def NamedBody488_95 : StackLang.HolProg 64 :=
.seq NamedBody488_81 NamedBody488_94

def NamedBody488_96 : StackLang.HolProg 64 :=
.seq NamedBody488_80 NamedBody488_95

def NamedBody488_97 : StackLang.HolProg 64 :=
.seq NamedBody488_79 NamedBody488_96

def NamedBody488_98 : StackLang.HolProg 64 :=
.seq NamedBody488_78 NamedBody488_97

def NamedBody488_99 : StackLang.HolProg 64 :=
.seq NamedBody488_77 NamedBody488_98

def NamedBody488_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody488_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody488_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody488_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody488_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody488_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody488_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody488_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody488_108 : StackLang.HolProg 64 :=
.seq NamedBody488_106 NamedBody488_107

def NamedBody488_109 : StackLang.HolProg 64 :=
.seq NamedBody488_105 NamedBody488_108

def NamedBody488_110 : StackLang.HolProg 64 :=
.seq NamedBody488_104 NamedBody488_109

def NamedBody488_111 : StackLang.HolProg 64 :=
.seq NamedBody488_103 NamedBody488_110

def NamedBody488_112 : StackLang.HolProg 64 :=
.seq NamedBody488_102 NamedBody488_111

def NamedBody488_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody488_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody488_115 : StackLang.HolProg 64 :=
.seq NamedBody488_113 NamedBody488_114

def NamedBody488_116 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody488_117 : StackLang.HolProg 64 :=
.seq NamedBody488_115 NamedBody488_116

def NamedBody488_118 : StackLang.HolProg 64 :=
.call (some (NamedBody488_112, 1, 488, 4)) (Sum.inl 78) (some (NamedBody488_117, 488, 5))

def NamedBody488_119 : StackLang.HolProg 64 :=
.seq NamedBody488_101 NamedBody488_118

def NamedBody488_120 : StackLang.HolProg 64 :=
.seq NamedBody488_100 NamedBody488_119

def NamedBody488_121 : StackLang.HolProg 64 :=
.seq NamedBody488_99 NamedBody488_120

def NamedBody488_122 : StackLang.HolProg 64 :=
.seq NamedBody488_70 NamedBody488_121

def NamedBody488_123 : StackLang.HolProg 64 :=
.seq NamedBody488_67 NamedBody488_122

def NamedBody488_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody488_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody488_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody488_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody488_128 : StackLang.HolProg 64 :=
.seq NamedBody488_126 NamedBody488_127

def NamedBody488_129 : StackLang.HolProg 64 :=
.seq NamedBody488_125 NamedBody488_128

def NamedBody488_130 : StackLang.HolProg 64 :=
.seq NamedBody488_124 NamedBody488_129

def NamedBody488_131 : StackLang.HolProg 64 :=
.seq NamedBody488_123 NamedBody488_130

def NamedBody488_132 : StackLang.HolProg 64 :=
.seq NamedBody488_66 NamedBody488_131

def NamedBody488_133 : StackLang.HolProg 64 :=
.seq NamedBody488_65 NamedBody488_132

def NamedBody488_134 : StackLang.HolProg 64 :=
.seq NamedBody488_64 NamedBody488_133

def NamedBody488_135 : StackLang.HolProg 64 :=
.seq NamedBody488_63 NamedBody488_134

def NamedBody488_136 : StackLang.HolProg 64 :=
.seq NamedBody488_62 NamedBody488_135

def NamedBody488_137 : StackLang.HolProg 64 :=
.seq NamedBody488_9 NamedBody488_136

def NamedBody488_138 : StackLang.HolProg 64 :=
.seq NamedBody488_8 NamedBody488_137

def NamedBody488_139 : StackLang.HolProg 64 :=
.seq NamedBody488_7 NamedBody488_138

def NamedBody488_140 : StackLang.HolProg 64 :=
.seq NamedBody488_6 NamedBody488_139

def Named488 : Nat × StackLang.HolProg 64 := (488, NamedBody488_140)
theorem Named488_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed488 = Named488 := by
  kernel_rfl
#print axioms Named488_eq
end InitECandidate.Proofs.BackendStages
