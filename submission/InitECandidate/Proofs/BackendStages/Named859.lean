import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed859
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody859_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody859_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody859_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody859_3 : StackLang.HolProg 64 :=
.seq NamedBody859_1 NamedBody859_2

def NamedBody859_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody859_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody859_3 NamedBody859_4

def NamedBody859_6 : StackLang.HolProg 64 :=
.seq NamedBody859_0 NamedBody859_5

def NamedBody859_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody859_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 200#64)

def NamedBody859_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody859_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody859_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4364#64)

def NamedBody859_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody859_13 : StackLang.HolProg 64 :=
.seq NamedBody859_11 NamedBody859_12

def NamedBody859_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody859_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody859_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody859_17 : StackLang.HolProg 64 :=
.seq NamedBody859_15 NamedBody859_16

def NamedBody859_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody859_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody859_17 NamedBody859_18

def NamedBody859_20 : StackLang.HolProg 64 :=
.seq NamedBody859_14 NamedBody859_19

def NamedBody859_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody859_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody859_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 859 3

def NamedBody859_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody859_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody859_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody859_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody859_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody859_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody859_30 : StackLang.HolProg 64 :=
.seq NamedBody859_28 NamedBody859_29

def NamedBody859_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody859_32 : StackLang.HolProg 64 :=
.seq NamedBody859_30 NamedBody859_31

def NamedBody859_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody859_34 : StackLang.HolProg 64 :=
.seq NamedBody859_32 NamedBody859_33

def NamedBody859_35 : StackLang.HolProg 64 :=
.seq NamedBody859_27 NamedBody859_34

def NamedBody859_36 : StackLang.HolProg 64 :=
.seq NamedBody859_26 NamedBody859_35

def NamedBody859_37 : StackLang.HolProg 64 :=
.seq NamedBody859_25 NamedBody859_36

def NamedBody859_38 : StackLang.HolProg 64 :=
.seq NamedBody859_24 NamedBody859_37

def NamedBody859_39 : StackLang.HolProg 64 :=
.seq NamedBody859_23 NamedBody859_38

def NamedBody859_40 : StackLang.HolProg 64 :=
.seq NamedBody859_22 NamedBody859_39

def NamedBody859_41 : StackLang.HolProg 64 :=
.seq NamedBody859_21 NamedBody859_40

def NamedBody859_42 : StackLang.HolProg 64 :=
.seq NamedBody859_20 NamedBody859_41

def NamedBody859_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody859_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody859_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody859_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody859_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody859_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody859_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody859_50 : StackLang.HolProg 64 :=
.seq NamedBody859_48 NamedBody859_49

def NamedBody859_51 : StackLang.HolProg 64 :=
.seq NamedBody859_47 NamedBody859_50

def NamedBody859_52 : StackLang.HolProg 64 :=
.seq NamedBody859_46 NamedBody859_51

def NamedBody859_53 : StackLang.HolProg 64 :=
.seq NamedBody859_45 NamedBody859_52

def NamedBody859_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody859_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody859_56 : StackLang.HolProg 64 :=
.seq NamedBody859_54 NamedBody859_55

def NamedBody859_57 : StackLang.HolProg 64 :=
.call (some (NamedBody859_53, 1, 859, 2)) (Sum.inl 68) (some (NamedBody859_56, 859, 3))

def NamedBody859_58 : StackLang.HolProg 64 :=
.seq NamedBody859_44 NamedBody859_57

def NamedBody859_59 : StackLang.HolProg 64 :=
.seq NamedBody859_43 NamedBody859_58

def NamedBody859_60 : StackLang.HolProg 64 :=
.seq NamedBody859_42 NamedBody859_59

def NamedBody859_61 : StackLang.HolProg 64 :=
.seq NamedBody859_13 NamedBody859_60

def NamedBody859_62 : StackLang.HolProg 64 :=
.seq NamedBody859_10 NamedBody859_61

def NamedBody859_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody859_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody859_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 200#64)

def NamedBody859_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody859_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody859_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4365#64)

def NamedBody859_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody859_70 : StackLang.HolProg 64 :=
.seq NamedBody859_68 NamedBody859_69

def NamedBody859_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody859_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody859_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody859_74 : StackLang.HolProg 64 :=
.seq NamedBody859_72 NamedBody859_73

def NamedBody859_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody859_76 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody859_74 NamedBody859_75

def NamedBody859_77 : StackLang.HolProg 64 :=
.seq NamedBody859_71 NamedBody859_76

def NamedBody859_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody859_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody859_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 859 5

def NamedBody859_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody859_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody859_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody859_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody859_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody859_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody859_87 : StackLang.HolProg 64 :=
.seq NamedBody859_85 NamedBody859_86

def NamedBody859_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody859_89 : StackLang.HolProg 64 :=
.seq NamedBody859_87 NamedBody859_88

def NamedBody859_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody859_91 : StackLang.HolProg 64 :=
.seq NamedBody859_89 NamedBody859_90

def NamedBody859_92 : StackLang.HolProg 64 :=
.seq NamedBody859_84 NamedBody859_91

def NamedBody859_93 : StackLang.HolProg 64 :=
.seq NamedBody859_83 NamedBody859_92

def NamedBody859_94 : StackLang.HolProg 64 :=
.seq NamedBody859_82 NamedBody859_93

def NamedBody859_95 : StackLang.HolProg 64 :=
.seq NamedBody859_81 NamedBody859_94

def NamedBody859_96 : StackLang.HolProg 64 :=
.seq NamedBody859_80 NamedBody859_95

def NamedBody859_97 : StackLang.HolProg 64 :=
.seq NamedBody859_79 NamedBody859_96

def NamedBody859_98 : StackLang.HolProg 64 :=
.seq NamedBody859_78 NamedBody859_97

def NamedBody859_99 : StackLang.HolProg 64 :=
.seq NamedBody859_77 NamedBody859_98

def NamedBody859_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody859_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody859_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody859_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody859_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody859_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody859_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody859_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody859_108 : StackLang.HolProg 64 :=
.seq NamedBody859_106 NamedBody859_107

def NamedBody859_109 : StackLang.HolProg 64 :=
.seq NamedBody859_105 NamedBody859_108

def NamedBody859_110 : StackLang.HolProg 64 :=
.seq NamedBody859_104 NamedBody859_109

def NamedBody859_111 : StackLang.HolProg 64 :=
.seq NamedBody859_103 NamedBody859_110

def NamedBody859_112 : StackLang.HolProg 64 :=
.seq NamedBody859_102 NamedBody859_111

def NamedBody859_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody859_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody859_115 : StackLang.HolProg 64 :=
.seq NamedBody859_113 NamedBody859_114

def NamedBody859_116 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody859_117 : StackLang.HolProg 64 :=
.seq NamedBody859_115 NamedBody859_116

def NamedBody859_118 : StackLang.HolProg 64 :=
.call (some (NamedBody859_112, 1, 859, 4)) (Sum.inl 78) (some (NamedBody859_117, 859, 5))

def NamedBody859_119 : StackLang.HolProg 64 :=
.seq NamedBody859_101 NamedBody859_118

def NamedBody859_120 : StackLang.HolProg 64 :=
.seq NamedBody859_100 NamedBody859_119

def NamedBody859_121 : StackLang.HolProg 64 :=
.seq NamedBody859_99 NamedBody859_120

def NamedBody859_122 : StackLang.HolProg 64 :=
.seq NamedBody859_70 NamedBody859_121

def NamedBody859_123 : StackLang.HolProg 64 :=
.seq NamedBody859_67 NamedBody859_122

def NamedBody859_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody859_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody859_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody859_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody859_128 : StackLang.HolProg 64 :=
.seq NamedBody859_126 NamedBody859_127

def NamedBody859_129 : StackLang.HolProg 64 :=
.seq NamedBody859_125 NamedBody859_128

def NamedBody859_130 : StackLang.HolProg 64 :=
.seq NamedBody859_124 NamedBody859_129

def NamedBody859_131 : StackLang.HolProg 64 :=
.seq NamedBody859_123 NamedBody859_130

def NamedBody859_132 : StackLang.HolProg 64 :=
.seq NamedBody859_66 NamedBody859_131

def NamedBody859_133 : StackLang.HolProg 64 :=
.seq NamedBody859_65 NamedBody859_132

def NamedBody859_134 : StackLang.HolProg 64 :=
.seq NamedBody859_64 NamedBody859_133

def NamedBody859_135 : StackLang.HolProg 64 :=
.seq NamedBody859_63 NamedBody859_134

def NamedBody859_136 : StackLang.HolProg 64 :=
.seq NamedBody859_62 NamedBody859_135

def NamedBody859_137 : StackLang.HolProg 64 :=
.seq NamedBody859_9 NamedBody859_136

def NamedBody859_138 : StackLang.HolProg 64 :=
.seq NamedBody859_8 NamedBody859_137

def NamedBody859_139 : StackLang.HolProg 64 :=
.seq NamedBody859_7 NamedBody859_138

def NamedBody859_140 : StackLang.HolProg 64 :=
.seq NamedBody859_6 NamedBody859_139

def Named859 : Nat × StackLang.HolProg 64 := (859, NamedBody859_140)
theorem Named859_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed859 = Named859 := by
  kernel_rfl
#print axioms Named859_eq
end InitECandidate.Proofs.BackendStages
