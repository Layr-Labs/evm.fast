import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed424
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody424_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody424_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody424_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody424_3 : StackLang.HolProg 64 :=
.seq NamedBody424_1 NamedBody424_2

def NamedBody424_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody424_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody424_3 NamedBody424_4

def NamedBody424_6 : StackLang.HolProg 64 :=
.seq NamedBody424_0 NamedBody424_5

def NamedBody424_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody424_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody424_9 : StackLang.HolProg 64 :=
.seq NamedBody424_7 NamedBody424_8

def NamedBody424_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody424_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1264#64)

def NamedBody424_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody424_13 : StackLang.HolProg 64 :=
.seq NamedBody424_11 NamedBody424_12

def NamedBody424_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody424_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody424_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody424_17 : StackLang.HolProg 64 :=
.seq NamedBody424_15 NamedBody424_16

def NamedBody424_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody424_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody424_17 NamedBody424_18

def NamedBody424_20 : StackLang.HolProg 64 :=
.seq NamedBody424_14 NamedBody424_19

def NamedBody424_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody424_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody424_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 424 3

def NamedBody424_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody424_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody424_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody424_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody424_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody424_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody424_30 : StackLang.HolProg 64 :=
.seq NamedBody424_28 NamedBody424_29

def NamedBody424_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody424_32 : StackLang.HolProg 64 :=
.seq NamedBody424_30 NamedBody424_31

def NamedBody424_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody424_34 : StackLang.HolProg 64 :=
.seq NamedBody424_32 NamedBody424_33

def NamedBody424_35 : StackLang.HolProg 64 :=
.seq NamedBody424_27 NamedBody424_34

def NamedBody424_36 : StackLang.HolProg 64 :=
.seq NamedBody424_26 NamedBody424_35

def NamedBody424_37 : StackLang.HolProg 64 :=
.seq NamedBody424_25 NamedBody424_36

def NamedBody424_38 : StackLang.HolProg 64 :=
.seq NamedBody424_24 NamedBody424_37

def NamedBody424_39 : StackLang.HolProg 64 :=
.seq NamedBody424_23 NamedBody424_38

def NamedBody424_40 : StackLang.HolProg 64 :=
.seq NamedBody424_22 NamedBody424_39

def NamedBody424_41 : StackLang.HolProg 64 :=
.seq NamedBody424_21 NamedBody424_40

def NamedBody424_42 : StackLang.HolProg 64 :=
.seq NamedBody424_20 NamedBody424_41

def NamedBody424_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody424_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody424_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody424_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody424_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody424_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody424_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody424_50 : StackLang.HolProg 64 :=
.seq NamedBody424_48 NamedBody424_49

def NamedBody424_51 : StackLang.HolProg 64 :=
.seq NamedBody424_47 NamedBody424_50

def NamedBody424_52 : StackLang.HolProg 64 :=
.seq NamedBody424_46 NamedBody424_51

def NamedBody424_53 : StackLang.HolProg 64 :=
.seq NamedBody424_45 NamedBody424_52

def NamedBody424_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody424_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody424_56 : StackLang.HolProg 64 :=
.seq NamedBody424_54 NamedBody424_55

def NamedBody424_57 : StackLang.HolProg 64 :=
.call (some (NamedBody424_53, 1, 424, 2)) (Sum.inl 421) (some (NamedBody424_56, 424, 3))

def NamedBody424_58 : StackLang.HolProg 64 :=
.seq NamedBody424_44 NamedBody424_57

def NamedBody424_59 : StackLang.HolProg 64 :=
.seq NamedBody424_43 NamedBody424_58

def NamedBody424_60 : StackLang.HolProg 64 :=
.seq NamedBody424_42 NamedBody424_59

def NamedBody424_61 : StackLang.HolProg 64 :=
.seq NamedBody424_13 NamedBody424_60

def NamedBody424_62 : StackLang.HolProg 64 :=
.seq NamedBody424_10 NamedBody424_61

def NamedBody424_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody424_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody424_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody424_66 : StackLang.HolProg 64 :=
.seq NamedBody424_64 NamedBody424_65

def NamedBody424_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody424_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1265#64)

def NamedBody424_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody424_70 : StackLang.HolProg 64 :=
.seq NamedBody424_68 NamedBody424_69

def NamedBody424_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody424_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody424_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody424_74 : StackLang.HolProg 64 :=
.seq NamedBody424_72 NamedBody424_73

def NamedBody424_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody424_76 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody424_74 NamedBody424_75

def NamedBody424_77 : StackLang.HolProg 64 :=
.seq NamedBody424_71 NamedBody424_76

def NamedBody424_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody424_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody424_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 424 5

def NamedBody424_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody424_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody424_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody424_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody424_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody424_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody424_87 : StackLang.HolProg 64 :=
.seq NamedBody424_85 NamedBody424_86

def NamedBody424_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody424_89 : StackLang.HolProg 64 :=
.seq NamedBody424_87 NamedBody424_88

def NamedBody424_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody424_91 : StackLang.HolProg 64 :=
.seq NamedBody424_89 NamedBody424_90

def NamedBody424_92 : StackLang.HolProg 64 :=
.seq NamedBody424_84 NamedBody424_91

def NamedBody424_93 : StackLang.HolProg 64 :=
.seq NamedBody424_83 NamedBody424_92

def NamedBody424_94 : StackLang.HolProg 64 :=
.seq NamedBody424_82 NamedBody424_93

def NamedBody424_95 : StackLang.HolProg 64 :=
.seq NamedBody424_81 NamedBody424_94

def NamedBody424_96 : StackLang.HolProg 64 :=
.seq NamedBody424_80 NamedBody424_95

def NamedBody424_97 : StackLang.HolProg 64 :=
.seq NamedBody424_79 NamedBody424_96

def NamedBody424_98 : StackLang.HolProg 64 :=
.seq NamedBody424_78 NamedBody424_97

def NamedBody424_99 : StackLang.HolProg 64 :=
.seq NamedBody424_77 NamedBody424_98

def NamedBody424_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody424_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody424_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody424_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody424_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody424_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody424_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody424_107 : StackLang.HolProg 64 :=
.seq NamedBody424_105 NamedBody424_106

def NamedBody424_108 : StackLang.HolProg 64 :=
.seq NamedBody424_104 NamedBody424_107

def NamedBody424_109 : StackLang.HolProg 64 :=
.seq NamedBody424_103 NamedBody424_108

def NamedBody424_110 : StackLang.HolProg 64 :=
.seq NamedBody424_102 NamedBody424_109

def NamedBody424_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody424_112 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody424_113 : StackLang.HolProg 64 :=
.seq NamedBody424_111 NamedBody424_112

def NamedBody424_114 : StackLang.HolProg 64 :=
.call (some (NamedBody424_110, 1, 424, 4)) (Sum.inl 407) (some (NamedBody424_113, 424, 5))

def NamedBody424_115 : StackLang.HolProg 64 :=
.seq NamedBody424_101 NamedBody424_114

def NamedBody424_116 : StackLang.HolProg 64 :=
.seq NamedBody424_100 NamedBody424_115

def NamedBody424_117 : StackLang.HolProg 64 :=
.seq NamedBody424_99 NamedBody424_116

def NamedBody424_118 : StackLang.HolProg 64 :=
.seq NamedBody424_70 NamedBody424_117

def NamedBody424_119 : StackLang.HolProg 64 :=
.seq NamedBody424_67 NamedBody424_118

def NamedBody424_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody424_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody424_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody424_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1266#64)

def NamedBody424_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody424_125 : StackLang.HolProg 64 :=
.seq NamedBody424_123 NamedBody424_124

def NamedBody424_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody424_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody424_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody424_129 : StackLang.HolProg 64 :=
.seq NamedBody424_127 NamedBody424_128

def NamedBody424_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody424_131 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody424_129 NamedBody424_130

def NamedBody424_132 : StackLang.HolProg 64 :=
.seq NamedBody424_126 NamedBody424_131

def NamedBody424_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody424_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody424_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 424 7

def NamedBody424_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody424_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody424_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody424_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody424_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody424_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody424_142 : StackLang.HolProg 64 :=
.seq NamedBody424_140 NamedBody424_141

def NamedBody424_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody424_144 : StackLang.HolProg 64 :=
.seq NamedBody424_142 NamedBody424_143

def NamedBody424_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody424_146 : StackLang.HolProg 64 :=
.seq NamedBody424_144 NamedBody424_145

def NamedBody424_147 : StackLang.HolProg 64 :=
.seq NamedBody424_139 NamedBody424_146

def NamedBody424_148 : StackLang.HolProg 64 :=
.seq NamedBody424_138 NamedBody424_147

def NamedBody424_149 : StackLang.HolProg 64 :=
.seq NamedBody424_137 NamedBody424_148

def NamedBody424_150 : StackLang.HolProg 64 :=
.seq NamedBody424_136 NamedBody424_149

def NamedBody424_151 : StackLang.HolProg 64 :=
.seq NamedBody424_135 NamedBody424_150

def NamedBody424_152 : StackLang.HolProg 64 :=
.seq NamedBody424_134 NamedBody424_151

def NamedBody424_153 : StackLang.HolProg 64 :=
.seq NamedBody424_133 NamedBody424_152

def NamedBody424_154 : StackLang.HolProg 64 :=
.seq NamedBody424_132 NamedBody424_153

def NamedBody424_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody424_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody424_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody424_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody424_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody424_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody424_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody424_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody424_163 : StackLang.HolProg 64 :=
.seq NamedBody424_161 NamedBody424_162

def NamedBody424_164 : StackLang.HolProg 64 :=
.seq NamedBody424_160 NamedBody424_163

def NamedBody424_165 : StackLang.HolProg 64 :=
.seq NamedBody424_159 NamedBody424_164

def NamedBody424_166 : StackLang.HolProg 64 :=
.seq NamedBody424_158 NamedBody424_165

def NamedBody424_167 : StackLang.HolProg 64 :=
.seq NamedBody424_157 NamedBody424_166

def NamedBody424_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody424_169 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody424_170 : StackLang.HolProg 64 :=
.seq NamedBody424_168 NamedBody424_169

def NamedBody424_171 : StackLang.HolProg 64 :=
.call (some (NamedBody424_167, 1, 424, 6)) (Sum.inl 395) (some (NamedBody424_170, 424, 7))

def NamedBody424_172 : StackLang.HolProg 64 :=
.seq NamedBody424_156 NamedBody424_171

def NamedBody424_173 : StackLang.HolProg 64 :=
.seq NamedBody424_155 NamedBody424_172

def NamedBody424_174 : StackLang.HolProg 64 :=
.seq NamedBody424_154 NamedBody424_173

def NamedBody424_175 : StackLang.HolProg 64 :=
.seq NamedBody424_125 NamedBody424_174

def NamedBody424_176 : StackLang.HolProg 64 :=
.seq NamedBody424_122 NamedBody424_175

def NamedBody424_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody424_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody424_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def NamedBody424_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody424_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def NamedBody424_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody424_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody424_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody424_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody424_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody424_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551480#64))

def NamedBody424_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody424_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody424_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody424_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody424_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1267#64)

def NamedBody424_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody424_194 : StackLang.HolProg 64 :=
.seq NamedBody424_192 NamedBody424_193

def NamedBody424_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody424_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody424_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody424_198 : StackLang.HolProg 64 :=
.seq NamedBody424_196 NamedBody424_197

def NamedBody424_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody424_200 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody424_198 NamedBody424_199

def NamedBody424_201 : StackLang.HolProg 64 :=
.seq NamedBody424_195 NamedBody424_200

def NamedBody424_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody424_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody424_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 424 9

def NamedBody424_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody424_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody424_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody424_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody424_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody424_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody424_211 : StackLang.HolProg 64 :=
.seq NamedBody424_209 NamedBody424_210

def NamedBody424_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody424_213 : StackLang.HolProg 64 :=
.seq NamedBody424_211 NamedBody424_212

def NamedBody424_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody424_215 : StackLang.HolProg 64 :=
.seq NamedBody424_213 NamedBody424_214

def NamedBody424_216 : StackLang.HolProg 64 :=
.seq NamedBody424_208 NamedBody424_215

def NamedBody424_217 : StackLang.HolProg 64 :=
.seq NamedBody424_207 NamedBody424_216

def NamedBody424_218 : StackLang.HolProg 64 :=
.seq NamedBody424_206 NamedBody424_217

def NamedBody424_219 : StackLang.HolProg 64 :=
.seq NamedBody424_205 NamedBody424_218

def NamedBody424_220 : StackLang.HolProg 64 :=
.seq NamedBody424_204 NamedBody424_219

def NamedBody424_221 : StackLang.HolProg 64 :=
.seq NamedBody424_203 NamedBody424_220

def NamedBody424_222 : StackLang.HolProg 64 :=
.seq NamedBody424_202 NamedBody424_221

def NamedBody424_223 : StackLang.HolProg 64 :=
.seq NamedBody424_201 NamedBody424_222

def NamedBody424_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody424_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody424_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody424_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody424_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody424_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody424_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody424_231 : StackLang.HolProg 64 :=
.seq NamedBody424_229 NamedBody424_230

def NamedBody424_232 : StackLang.HolProg 64 :=
.seq NamedBody424_228 NamedBody424_231

def NamedBody424_233 : StackLang.HolProg 64 :=
.seq NamedBody424_227 NamedBody424_232

def NamedBody424_234 : StackLang.HolProg 64 :=
.seq NamedBody424_226 NamedBody424_233

def NamedBody424_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody424_236 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody424_237 : StackLang.HolProg 64 :=
.seq NamedBody424_235 NamedBody424_236

def NamedBody424_238 : StackLang.HolProg 64 :=
.call (some (NamedBody424_234, 1, 424, 8)) (Sum.inl 423) (some (NamedBody424_237, 424, 9))

def NamedBody424_239 : StackLang.HolProg 64 :=
.seq NamedBody424_225 NamedBody424_238

def NamedBody424_240 : StackLang.HolProg 64 :=
.seq NamedBody424_224 NamedBody424_239

def NamedBody424_241 : StackLang.HolProg 64 :=
.seq NamedBody424_223 NamedBody424_240

def NamedBody424_242 : StackLang.HolProg 64 :=
.seq NamedBody424_194 NamedBody424_241

def NamedBody424_243 : StackLang.HolProg 64 :=
.seq NamedBody424_191 NamedBody424_242

def NamedBody424_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody424_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody424_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody424_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody424_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody424_249 : StackLang.HolProg 64 :=
.seq NamedBody424_247 NamedBody424_248

def NamedBody424_250 : StackLang.HolProg 64 :=
.seq NamedBody424_246 NamedBody424_249

def NamedBody424_251 : StackLang.HolProg 64 :=
.seq NamedBody424_245 NamedBody424_250

def NamedBody424_252 : StackLang.HolProg 64 :=
.seq NamedBody424_244 NamedBody424_251

def NamedBody424_253 : StackLang.HolProg 64 :=
.seq NamedBody424_243 NamedBody424_252

def NamedBody424_254 : StackLang.HolProg 64 :=
.seq NamedBody424_190 NamedBody424_253

def NamedBody424_255 : StackLang.HolProg 64 :=
.seq NamedBody424_189 NamedBody424_254

def NamedBody424_256 : StackLang.HolProg 64 :=
.seq NamedBody424_188 NamedBody424_255

def NamedBody424_257 : StackLang.HolProg 64 :=
.seq NamedBody424_187 NamedBody424_256

def NamedBody424_258 : StackLang.HolProg 64 :=
.seq NamedBody424_186 NamedBody424_257

def NamedBody424_259 : StackLang.HolProg 64 :=
.seq NamedBody424_185 NamedBody424_258

def NamedBody424_260 : StackLang.HolProg 64 :=
.seq NamedBody424_184 NamedBody424_259

def NamedBody424_261 : StackLang.HolProg 64 :=
.seq NamedBody424_183 NamedBody424_260

def NamedBody424_262 : StackLang.HolProg 64 :=
.seq NamedBody424_182 NamedBody424_261

def NamedBody424_263 : StackLang.HolProg 64 :=
.seq NamedBody424_181 NamedBody424_262

def NamedBody424_264 : StackLang.HolProg 64 :=
.seq NamedBody424_180 NamedBody424_263

def NamedBody424_265 : StackLang.HolProg 64 :=
.seq NamedBody424_179 NamedBody424_264

def NamedBody424_266 : StackLang.HolProg 64 :=
.seq NamedBody424_178 NamedBody424_265

def NamedBody424_267 : StackLang.HolProg 64 :=
.seq NamedBody424_177 NamedBody424_266

def NamedBody424_268 : StackLang.HolProg 64 :=
.seq NamedBody424_176 NamedBody424_267

def NamedBody424_269 : StackLang.HolProg 64 :=
.seq NamedBody424_121 NamedBody424_268

def NamedBody424_270 : StackLang.HolProg 64 :=
.seq NamedBody424_120 NamedBody424_269

def NamedBody424_271 : StackLang.HolProg 64 :=
.seq NamedBody424_119 NamedBody424_270

def NamedBody424_272 : StackLang.HolProg 64 :=
.seq NamedBody424_66 NamedBody424_271

def NamedBody424_273 : StackLang.HolProg 64 :=
.seq NamedBody424_63 NamedBody424_272

def NamedBody424_274 : StackLang.HolProg 64 :=
.seq NamedBody424_62 NamedBody424_273

def NamedBody424_275 : StackLang.HolProg 64 :=
.seq NamedBody424_9 NamedBody424_274

def NamedBody424_276 : StackLang.HolProg 64 :=
.seq NamedBody424_6 NamedBody424_275

def Named424 : Nat × StackLang.HolProg 64 := (424, NamedBody424_276)
theorem Named424_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed424 = Named424 := by
  kernel_rfl
#print axioms Named424_eq
end InitECandidate.Proofs.BackendStages
