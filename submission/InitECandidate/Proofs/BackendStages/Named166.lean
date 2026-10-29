import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed166
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody166_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody166_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody166_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody166_3 : StackLang.HolProg 64 :=
.seq NamedBody166_1 NamedBody166_2

def NamedBody166_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody166_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody166_3 NamedBody166_4

def NamedBody166_6 : StackLang.HolProg 64 :=
.seq NamedBody166_0 NamedBody166_5

def NamedBody166_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody166_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody166_9 : StackLang.HolProg 64 :=
.seq NamedBody166_7 NamedBody166_8

def NamedBody166_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody166_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 182#64)

def NamedBody166_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody166_13 : StackLang.HolProg 64 :=
.seq NamedBody166_11 NamedBody166_12

def NamedBody166_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody166_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody166_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody166_17 : StackLang.HolProg 64 :=
.seq NamedBody166_15 NamedBody166_16

def NamedBody166_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody166_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody166_17 NamedBody166_18

def NamedBody166_20 : StackLang.HolProg 64 :=
.seq NamedBody166_14 NamedBody166_19

def NamedBody166_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody166_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody166_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 166 3

def NamedBody166_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody166_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody166_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody166_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody166_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody166_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody166_30 : StackLang.HolProg 64 :=
.seq NamedBody166_28 NamedBody166_29

def NamedBody166_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody166_32 : StackLang.HolProg 64 :=
.seq NamedBody166_30 NamedBody166_31

def NamedBody166_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody166_34 : StackLang.HolProg 64 :=
.seq NamedBody166_32 NamedBody166_33

def NamedBody166_35 : StackLang.HolProg 64 :=
.seq NamedBody166_27 NamedBody166_34

def NamedBody166_36 : StackLang.HolProg 64 :=
.seq NamedBody166_26 NamedBody166_35

def NamedBody166_37 : StackLang.HolProg 64 :=
.seq NamedBody166_25 NamedBody166_36

def NamedBody166_38 : StackLang.HolProg 64 :=
.seq NamedBody166_24 NamedBody166_37

def NamedBody166_39 : StackLang.HolProg 64 :=
.seq NamedBody166_23 NamedBody166_38

def NamedBody166_40 : StackLang.HolProg 64 :=
.seq NamedBody166_22 NamedBody166_39

def NamedBody166_41 : StackLang.HolProg 64 :=
.seq NamedBody166_21 NamedBody166_40

def NamedBody166_42 : StackLang.HolProg 64 :=
.seq NamedBody166_20 NamedBody166_41

def NamedBody166_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody166_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody166_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody166_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody166_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody166_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody166_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody166_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody166_51 : StackLang.HolProg 64 :=
.seq NamedBody166_49 NamedBody166_50

def NamedBody166_52 : StackLang.HolProg 64 :=
.seq NamedBody166_48 NamedBody166_51

def NamedBody166_53 : StackLang.HolProg 64 :=
.seq NamedBody166_47 NamedBody166_52

def NamedBody166_54 : StackLang.HolProg 64 :=
.seq NamedBody166_46 NamedBody166_53

def NamedBody166_55 : StackLang.HolProg 64 :=
.seq NamedBody166_45 NamedBody166_54

def NamedBody166_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody166_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody166_58 : StackLang.HolProg 64 :=
.seq NamedBody166_56 NamedBody166_57

def NamedBody166_59 : StackLang.HolProg 64 :=
.call (some (NamedBody166_55, 1, 166, 2)) (Sum.inl 163) (some (NamedBody166_58, 166, 3))

def NamedBody166_60 : StackLang.HolProg 64 :=
.seq NamedBody166_44 NamedBody166_59

def NamedBody166_61 : StackLang.HolProg 64 :=
.seq NamedBody166_43 NamedBody166_60

def NamedBody166_62 : StackLang.HolProg 64 :=
.seq NamedBody166_42 NamedBody166_61

def NamedBody166_63 : StackLang.HolProg 64 :=
.seq NamedBody166_13 NamedBody166_62

def NamedBody166_64 : StackLang.HolProg 64 :=
.seq NamedBody166_10 NamedBody166_63

def NamedBody166_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody166_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody166_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody166_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody166_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody166_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody166_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody166_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody166_73 : StackLang.HolProg 64 :=
.seq NamedBody166_71 NamedBody166_72

def NamedBody166_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody166_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 183#64)

def NamedBody166_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody166_77 : StackLang.HolProg 64 :=
.seq NamedBody166_75 NamedBody166_76

def NamedBody166_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody166_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody166_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody166_81 : StackLang.HolProg 64 :=
.seq NamedBody166_79 NamedBody166_80

def NamedBody166_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody166_83 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody166_81 NamedBody166_82

def NamedBody166_84 : StackLang.HolProg 64 :=
.seq NamedBody166_78 NamedBody166_83

def NamedBody166_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody166_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody166_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 166 5

def NamedBody166_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody166_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody166_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody166_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody166_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody166_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody166_94 : StackLang.HolProg 64 :=
.seq NamedBody166_92 NamedBody166_93

def NamedBody166_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody166_96 : StackLang.HolProg 64 :=
.seq NamedBody166_94 NamedBody166_95

def NamedBody166_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody166_98 : StackLang.HolProg 64 :=
.seq NamedBody166_96 NamedBody166_97

def NamedBody166_99 : StackLang.HolProg 64 :=
.seq NamedBody166_91 NamedBody166_98

def NamedBody166_100 : StackLang.HolProg 64 :=
.seq NamedBody166_90 NamedBody166_99

def NamedBody166_101 : StackLang.HolProg 64 :=
.seq NamedBody166_89 NamedBody166_100

def NamedBody166_102 : StackLang.HolProg 64 :=
.seq NamedBody166_88 NamedBody166_101

def NamedBody166_103 : StackLang.HolProg 64 :=
.seq NamedBody166_87 NamedBody166_102

def NamedBody166_104 : StackLang.HolProg 64 :=
.seq NamedBody166_86 NamedBody166_103

def NamedBody166_105 : StackLang.HolProg 64 :=
.seq NamedBody166_85 NamedBody166_104

def NamedBody166_106 : StackLang.HolProg 64 :=
.seq NamedBody166_84 NamedBody166_105

def NamedBody166_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody166_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody166_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody166_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody166_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody166_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody166_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody166_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody166_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody166_116 : StackLang.HolProg 64 :=
.seq NamedBody166_114 NamedBody166_115

def NamedBody166_117 : StackLang.HolProg 64 :=
.seq NamedBody166_113 NamedBody166_116

def NamedBody166_118 : StackLang.HolProg 64 :=
.seq NamedBody166_112 NamedBody166_117

def NamedBody166_119 : StackLang.HolProg 64 :=
.seq NamedBody166_111 NamedBody166_118

def NamedBody166_120 : StackLang.HolProg 64 :=
.seq NamedBody166_110 NamedBody166_119

def NamedBody166_121 : StackLang.HolProg 64 :=
.seq NamedBody166_109 NamedBody166_120

def NamedBody166_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody166_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody166_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody166_125 : StackLang.HolProg 64 :=
.seq NamedBody166_123 NamedBody166_124

def NamedBody166_126 : StackLang.HolProg 64 :=
.seq NamedBody166_122 NamedBody166_125

def NamedBody166_127 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody166_128 : StackLang.HolProg 64 :=
.seq NamedBody166_126 NamedBody166_127

def NamedBody166_129 : StackLang.HolProg 64 :=
.call (some (NamedBody166_121, 1, 166, 4)) (Sum.inl 165) (some (NamedBody166_128, 166, 5))

def NamedBody166_130 : StackLang.HolProg 64 :=
.seq NamedBody166_108 NamedBody166_129

def NamedBody166_131 : StackLang.HolProg 64 :=
.seq NamedBody166_107 NamedBody166_130

def NamedBody166_132 : StackLang.HolProg 64 :=
.seq NamedBody166_106 NamedBody166_131

def NamedBody166_133 : StackLang.HolProg 64 :=
.seq NamedBody166_77 NamedBody166_132

def NamedBody166_134 : StackLang.HolProg 64 :=
.seq NamedBody166_74 NamedBody166_133

def NamedBody166_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody166_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody166_137 : StackLang.HolProg 64 :=
.seq NamedBody166_135 NamedBody166_136

def NamedBody166_138 : StackLang.HolProg 64 :=
.seq NamedBody166_134 NamedBody166_137

def NamedBody166_139 : StackLang.HolProg 64 :=
.seq NamedBody166_73 NamedBody166_138

def NamedBody166_140 : StackLang.HolProg 64 :=
.seq NamedBody166_70 NamedBody166_139

def NamedBody166_141 : StackLang.HolProg 64 :=
.seq NamedBody166_69 NamedBody166_140

def NamedBody166_142 : StackLang.HolProg 64 :=
.seq NamedBody166_68 NamedBody166_141

def NamedBody166_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody166_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody166_145 : StackLang.HolProg 64 :=
.seq NamedBody166_143 NamedBody166_144

def NamedBody166_146 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody166_142 NamedBody166_145

def NamedBody166_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody166_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody166_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody166_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody166_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody166_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody166_153 : StackLang.HolProg 64 :=
.seq NamedBody166_151 NamedBody166_152

def NamedBody166_154 : StackLang.HolProg 64 :=
.seq NamedBody166_150 NamedBody166_153

def NamedBody166_155 : StackLang.HolProg 64 :=
.seq NamedBody166_149 NamedBody166_154

def NamedBody166_156 : StackLang.HolProg 64 :=
.seq NamedBody166_148 NamedBody166_155

def NamedBody166_157 : StackLang.HolProg 64 :=
.seq NamedBody166_147 NamedBody166_156

def NamedBody166_158 : StackLang.HolProg 64 :=
.seq NamedBody166_146 NamedBody166_157

def NamedBody166_159 : StackLang.HolProg 64 :=
.seq NamedBody166_67 NamedBody166_158

def NamedBody166_160 : StackLang.HolProg 64 :=
.seq NamedBody166_66 NamedBody166_159

def NamedBody166_161 : StackLang.HolProg 64 :=
.seq NamedBody166_65 NamedBody166_160

def NamedBody166_162 : StackLang.HolProg 64 :=
.seq NamedBody166_64 NamedBody166_161

def NamedBody166_163 : StackLang.HolProg 64 :=
.seq NamedBody166_9 NamedBody166_162

def NamedBody166_164 : StackLang.HolProg 64 :=
.seq NamedBody166_6 NamedBody166_163

def Named166 : Nat × StackLang.HolProg 64 := (166, NamedBody166_164)
theorem Named166_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed166 = Named166 := by
  kernel_rfl
#print axioms Named166_eq
end InitECandidate.Proofs.BackendStages
