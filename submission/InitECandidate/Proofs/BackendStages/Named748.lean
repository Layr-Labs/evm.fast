import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed748
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody748_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody748_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody748_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody748_3 : StackLang.HolProg 64 :=
.seq NamedBody748_1 NamedBody748_2

def NamedBody748_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody748_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody748_3 NamedBody748_4

def NamedBody748_6 : StackLang.HolProg 64 :=
.seq NamedBody748_0 NamedBody748_5

def NamedBody748_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody748_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody748_9 : StackLang.HolProg 64 :=
.seq NamedBody748_7 NamedBody748_8

def NamedBody748_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody748_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3308#64)

def NamedBody748_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody748_13 : StackLang.HolProg 64 :=
.seq NamedBody748_11 NamedBody748_12

def NamedBody748_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody748_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody748_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody748_17 : StackLang.HolProg 64 :=
.seq NamedBody748_15 NamedBody748_16

def NamedBody748_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody748_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody748_17 NamedBody748_18

def NamedBody748_20 : StackLang.HolProg 64 :=
.seq NamedBody748_14 NamedBody748_19

def NamedBody748_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody748_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody748_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 748 3

def NamedBody748_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody748_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody748_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody748_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody748_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody748_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody748_30 : StackLang.HolProg 64 :=
.seq NamedBody748_28 NamedBody748_29

def NamedBody748_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody748_32 : StackLang.HolProg 64 :=
.seq NamedBody748_30 NamedBody748_31

def NamedBody748_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody748_34 : StackLang.HolProg 64 :=
.seq NamedBody748_32 NamedBody748_33

def NamedBody748_35 : StackLang.HolProg 64 :=
.seq NamedBody748_27 NamedBody748_34

def NamedBody748_36 : StackLang.HolProg 64 :=
.seq NamedBody748_26 NamedBody748_35

def NamedBody748_37 : StackLang.HolProg 64 :=
.seq NamedBody748_25 NamedBody748_36

def NamedBody748_38 : StackLang.HolProg 64 :=
.seq NamedBody748_24 NamedBody748_37

def NamedBody748_39 : StackLang.HolProg 64 :=
.seq NamedBody748_23 NamedBody748_38

def NamedBody748_40 : StackLang.HolProg 64 :=
.seq NamedBody748_22 NamedBody748_39

def NamedBody748_41 : StackLang.HolProg 64 :=
.seq NamedBody748_21 NamedBody748_40

def NamedBody748_42 : StackLang.HolProg 64 :=
.seq NamedBody748_20 NamedBody748_41

def NamedBody748_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody748_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody748_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody748_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody748_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody748_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody748_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody748_50 : StackLang.HolProg 64 :=
.seq NamedBody748_48 NamedBody748_49

def NamedBody748_51 : StackLang.HolProg 64 :=
.seq NamedBody748_47 NamedBody748_50

def NamedBody748_52 : StackLang.HolProg 64 :=
.seq NamedBody748_46 NamedBody748_51

def NamedBody748_53 : StackLang.HolProg 64 :=
.seq NamedBody748_45 NamedBody748_52

def NamedBody748_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody748_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody748_56 : StackLang.HolProg 64 :=
.seq NamedBody748_54 NamedBody748_55

def NamedBody748_57 : StackLang.HolProg 64 :=
.call (some (NamedBody748_53, 1, 748, 2)) (Sum.inl 731) (some (NamedBody748_56, 748, 3))

def NamedBody748_58 : StackLang.HolProg 64 :=
.seq NamedBody748_44 NamedBody748_57

def NamedBody748_59 : StackLang.HolProg 64 :=
.seq NamedBody748_43 NamedBody748_58

def NamedBody748_60 : StackLang.HolProg 64 :=
.seq NamedBody748_42 NamedBody748_59

def NamedBody748_61 : StackLang.HolProg 64 :=
.seq NamedBody748_13 NamedBody748_60

def NamedBody748_62 : StackLang.HolProg 64 :=
.seq NamedBody748_10 NamedBody748_61

def NamedBody748_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody748_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody748_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def NamedBody748_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody748_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody748_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3309#64)

def NamedBody748_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody748_70 : StackLang.HolProg 64 :=
.seq NamedBody748_68 NamedBody748_69

def NamedBody748_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody748_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody748_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody748_74 : StackLang.HolProg 64 :=
.seq NamedBody748_72 NamedBody748_73

def NamedBody748_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody748_76 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody748_74 NamedBody748_75

def NamedBody748_77 : StackLang.HolProg 64 :=
.seq NamedBody748_71 NamedBody748_76

def NamedBody748_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody748_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody748_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 748 5

def NamedBody748_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody748_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody748_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody748_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody748_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody748_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody748_87 : StackLang.HolProg 64 :=
.seq NamedBody748_85 NamedBody748_86

def NamedBody748_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody748_89 : StackLang.HolProg 64 :=
.seq NamedBody748_87 NamedBody748_88

def NamedBody748_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody748_91 : StackLang.HolProg 64 :=
.seq NamedBody748_89 NamedBody748_90

def NamedBody748_92 : StackLang.HolProg 64 :=
.seq NamedBody748_84 NamedBody748_91

def NamedBody748_93 : StackLang.HolProg 64 :=
.seq NamedBody748_83 NamedBody748_92

def NamedBody748_94 : StackLang.HolProg 64 :=
.seq NamedBody748_82 NamedBody748_93

def NamedBody748_95 : StackLang.HolProg 64 :=
.seq NamedBody748_81 NamedBody748_94

def NamedBody748_96 : StackLang.HolProg 64 :=
.seq NamedBody748_80 NamedBody748_95

def NamedBody748_97 : StackLang.HolProg 64 :=
.seq NamedBody748_79 NamedBody748_96

def NamedBody748_98 : StackLang.HolProg 64 :=
.seq NamedBody748_78 NamedBody748_97

def NamedBody748_99 : StackLang.HolProg 64 :=
.seq NamedBody748_77 NamedBody748_98

def NamedBody748_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody748_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody748_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody748_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody748_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody748_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody748_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody748_107 : StackLang.HolProg 64 :=
.seq NamedBody748_105 NamedBody748_106

def NamedBody748_108 : StackLang.HolProg 64 :=
.seq NamedBody748_104 NamedBody748_107

def NamedBody748_109 : StackLang.HolProg 64 :=
.seq NamedBody748_103 NamedBody748_108

def NamedBody748_110 : StackLang.HolProg 64 :=
.seq NamedBody748_102 NamedBody748_109

def NamedBody748_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody748_112 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody748_113 : StackLang.HolProg 64 :=
.seq NamedBody748_111 NamedBody748_112

def NamedBody748_114 : StackLang.HolProg 64 :=
.call (some (NamedBody748_110, 1, 748, 4)) (Sum.inl 730) (some (NamedBody748_113, 748, 5))

def NamedBody748_115 : StackLang.HolProg 64 :=
.seq NamedBody748_101 NamedBody748_114

def NamedBody748_116 : StackLang.HolProg 64 :=
.seq NamedBody748_100 NamedBody748_115

def NamedBody748_117 : StackLang.HolProg 64 :=
.seq NamedBody748_99 NamedBody748_116

def NamedBody748_118 : StackLang.HolProg 64 :=
.seq NamedBody748_70 NamedBody748_117

def NamedBody748_119 : StackLang.HolProg 64 :=
.seq NamedBody748_67 NamedBody748_118

def NamedBody748_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody748_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody748_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def NamedBody748_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody748_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody748_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3310#64)

def NamedBody748_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody748_127 : StackLang.HolProg 64 :=
.seq NamedBody748_125 NamedBody748_126

def NamedBody748_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody748_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody748_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody748_131 : StackLang.HolProg 64 :=
.seq NamedBody748_129 NamedBody748_130

def NamedBody748_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody748_133 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody748_131 NamedBody748_132

def NamedBody748_134 : StackLang.HolProg 64 :=
.seq NamedBody748_128 NamedBody748_133

def NamedBody748_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody748_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody748_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 748 7

def NamedBody748_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody748_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody748_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody748_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody748_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody748_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody748_144 : StackLang.HolProg 64 :=
.seq NamedBody748_142 NamedBody748_143

def NamedBody748_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody748_146 : StackLang.HolProg 64 :=
.seq NamedBody748_144 NamedBody748_145

def NamedBody748_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody748_148 : StackLang.HolProg 64 :=
.seq NamedBody748_146 NamedBody748_147

def NamedBody748_149 : StackLang.HolProg 64 :=
.seq NamedBody748_141 NamedBody748_148

def NamedBody748_150 : StackLang.HolProg 64 :=
.seq NamedBody748_140 NamedBody748_149

def NamedBody748_151 : StackLang.HolProg 64 :=
.seq NamedBody748_139 NamedBody748_150

def NamedBody748_152 : StackLang.HolProg 64 :=
.seq NamedBody748_138 NamedBody748_151

def NamedBody748_153 : StackLang.HolProg 64 :=
.seq NamedBody748_137 NamedBody748_152

def NamedBody748_154 : StackLang.HolProg 64 :=
.seq NamedBody748_136 NamedBody748_153

def NamedBody748_155 : StackLang.HolProg 64 :=
.seq NamedBody748_135 NamedBody748_154

def NamedBody748_156 : StackLang.HolProg 64 :=
.seq NamedBody748_134 NamedBody748_155

def NamedBody748_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody748_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody748_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody748_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody748_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody748_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody748_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody748_164 : StackLang.HolProg 64 :=
.seq NamedBody748_162 NamedBody748_163

def NamedBody748_165 : StackLang.HolProg 64 :=
.seq NamedBody748_161 NamedBody748_164

def NamedBody748_166 : StackLang.HolProg 64 :=
.seq NamedBody748_160 NamedBody748_165

def NamedBody748_167 : StackLang.HolProg 64 :=
.seq NamedBody748_159 NamedBody748_166

def NamedBody748_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody748_169 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody748_170 : StackLang.HolProg 64 :=
.seq NamedBody748_168 NamedBody748_169

def NamedBody748_171 : StackLang.HolProg 64 :=
.call (some (NamedBody748_167, 1, 748, 6)) (Sum.inl 730) (some (NamedBody748_170, 748, 7))

def NamedBody748_172 : StackLang.HolProg 64 :=
.seq NamedBody748_158 NamedBody748_171

def NamedBody748_173 : StackLang.HolProg 64 :=
.seq NamedBody748_157 NamedBody748_172

def NamedBody748_174 : StackLang.HolProg 64 :=
.seq NamedBody748_156 NamedBody748_173

def NamedBody748_175 : StackLang.HolProg 64 :=
.seq NamedBody748_127 NamedBody748_174

def NamedBody748_176 : StackLang.HolProg 64 :=
.seq NamedBody748_124 NamedBody748_175

def NamedBody748_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody748_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody748_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody748_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody748_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody748_182 : StackLang.HolProg 64 :=
.seq NamedBody748_180 NamedBody748_181

def NamedBody748_183 : StackLang.HolProg 64 :=
.seq NamedBody748_179 NamedBody748_182

def NamedBody748_184 : StackLang.HolProg 64 :=
.seq NamedBody748_178 NamedBody748_183

def NamedBody748_185 : StackLang.HolProg 64 :=
.seq NamedBody748_177 NamedBody748_184

def NamedBody748_186 : StackLang.HolProg 64 :=
.seq NamedBody748_176 NamedBody748_185

def NamedBody748_187 : StackLang.HolProg 64 :=
.seq NamedBody748_123 NamedBody748_186

def NamedBody748_188 : StackLang.HolProg 64 :=
.seq NamedBody748_122 NamedBody748_187

def NamedBody748_189 : StackLang.HolProg 64 :=
.seq NamedBody748_121 NamedBody748_188

def NamedBody748_190 : StackLang.HolProg 64 :=
.seq NamedBody748_120 NamedBody748_189

def NamedBody748_191 : StackLang.HolProg 64 :=
.seq NamedBody748_119 NamedBody748_190

def NamedBody748_192 : StackLang.HolProg 64 :=
.seq NamedBody748_66 NamedBody748_191

def NamedBody748_193 : StackLang.HolProg 64 :=
.seq NamedBody748_65 NamedBody748_192

def NamedBody748_194 : StackLang.HolProg 64 :=
.seq NamedBody748_64 NamedBody748_193

def NamedBody748_195 : StackLang.HolProg 64 :=
.seq NamedBody748_63 NamedBody748_194

def NamedBody748_196 : StackLang.HolProg 64 :=
.seq NamedBody748_62 NamedBody748_195

def NamedBody748_197 : StackLang.HolProg 64 :=
.seq NamedBody748_9 NamedBody748_196

def NamedBody748_198 : StackLang.HolProg 64 :=
.seq NamedBody748_6 NamedBody748_197

def Named748 : Nat × StackLang.HolProg 64 := (748, NamedBody748_198)
theorem Named748_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed748 = Named748 := by
  kernel_rfl
#print axioms Named748_eq
end InitECandidate.Proofs.BackendStages
