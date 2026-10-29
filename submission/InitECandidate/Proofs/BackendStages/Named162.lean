import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed162
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody162_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody162_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody162_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody162_3 : StackLang.HolProg 64 :=
.seq NamedBody162_1 NamedBody162_2

def NamedBody162_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody162_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody162_3 NamedBody162_4

def NamedBody162_6 : StackLang.HolProg 64 :=
.seq NamedBody162_0 NamedBody162_5

def NamedBody162_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody162_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody162_9 : StackLang.HolProg 64 :=
.seq NamedBody162_7 NamedBody162_8

def NamedBody162_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody162_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 162#64)

def NamedBody162_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody162_13 : StackLang.HolProg 64 :=
.seq NamedBody162_11 NamedBody162_12

def NamedBody162_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody162_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody162_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody162_17 : StackLang.HolProg 64 :=
.seq NamedBody162_15 NamedBody162_16

def NamedBody162_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody162_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody162_17 NamedBody162_18

def NamedBody162_20 : StackLang.HolProg 64 :=
.seq NamedBody162_14 NamedBody162_19

def NamedBody162_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody162_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody162_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 162 3

def NamedBody162_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody162_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody162_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody162_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody162_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody162_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody162_30 : StackLang.HolProg 64 :=
.seq NamedBody162_28 NamedBody162_29

def NamedBody162_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody162_32 : StackLang.HolProg 64 :=
.seq NamedBody162_30 NamedBody162_31

def NamedBody162_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody162_34 : StackLang.HolProg 64 :=
.seq NamedBody162_32 NamedBody162_33

def NamedBody162_35 : StackLang.HolProg 64 :=
.seq NamedBody162_27 NamedBody162_34

def NamedBody162_36 : StackLang.HolProg 64 :=
.seq NamedBody162_26 NamedBody162_35

def NamedBody162_37 : StackLang.HolProg 64 :=
.seq NamedBody162_25 NamedBody162_36

def NamedBody162_38 : StackLang.HolProg 64 :=
.seq NamedBody162_24 NamedBody162_37

def NamedBody162_39 : StackLang.HolProg 64 :=
.seq NamedBody162_23 NamedBody162_38

def NamedBody162_40 : StackLang.HolProg 64 :=
.seq NamedBody162_22 NamedBody162_39

def NamedBody162_41 : StackLang.HolProg 64 :=
.seq NamedBody162_21 NamedBody162_40

def NamedBody162_42 : StackLang.HolProg 64 :=
.seq NamedBody162_20 NamedBody162_41

def NamedBody162_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody162_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody162_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody162_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody162_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody162_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody162_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody162_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody162_51 : StackLang.HolProg 64 :=
.seq NamedBody162_49 NamedBody162_50

def NamedBody162_52 : StackLang.HolProg 64 :=
.seq NamedBody162_48 NamedBody162_51

def NamedBody162_53 : StackLang.HolProg 64 :=
.seq NamedBody162_47 NamedBody162_52

def NamedBody162_54 : StackLang.HolProg 64 :=
.seq NamedBody162_46 NamedBody162_53

def NamedBody162_55 : StackLang.HolProg 64 :=
.seq NamedBody162_45 NamedBody162_54

def NamedBody162_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody162_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody162_58 : StackLang.HolProg 64 :=
.seq NamedBody162_56 NamedBody162_57

def NamedBody162_59 : StackLang.HolProg 64 :=
.call (some (NamedBody162_55, 1, 162, 2)) (Sum.inl 161) (some (NamedBody162_58, 162, 3))

def NamedBody162_60 : StackLang.HolProg 64 :=
.seq NamedBody162_44 NamedBody162_59

def NamedBody162_61 : StackLang.HolProg 64 :=
.seq NamedBody162_43 NamedBody162_60

def NamedBody162_62 : StackLang.HolProg 64 :=
.seq NamedBody162_42 NamedBody162_61

def NamedBody162_63 : StackLang.HolProg 64 :=
.seq NamedBody162_13 NamedBody162_62

def NamedBody162_64 : StackLang.HolProg 64 :=
.seq NamedBody162_10 NamedBody162_63

def NamedBody162_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody162_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody162_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody162_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 6#64)

def NamedBody162_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody162_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody162_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody162_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody162_73 : StackLang.HolProg 64 :=
.seq NamedBody162_71 NamedBody162_72

def NamedBody162_74 : StackLang.HolProg 64 :=
.seq NamedBody162_70 NamedBody162_73

def NamedBody162_75 : StackLang.HolProg 64 :=
.seq NamedBody162_69 NamedBody162_74

def NamedBody162_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody162_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 163#64)

def NamedBody162_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody162_79 : StackLang.HolProg 64 :=
.seq NamedBody162_77 NamedBody162_78

def NamedBody162_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody162_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody162_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody162_83 : StackLang.HolProg 64 :=
.seq NamedBody162_81 NamedBody162_82

def NamedBody162_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody162_85 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody162_83 NamedBody162_84

def NamedBody162_86 : StackLang.HolProg 64 :=
.seq NamedBody162_80 NamedBody162_85

def NamedBody162_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody162_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody162_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 162 5

def NamedBody162_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody162_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody162_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody162_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody162_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody162_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody162_96 : StackLang.HolProg 64 :=
.seq NamedBody162_94 NamedBody162_95

def NamedBody162_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody162_98 : StackLang.HolProg 64 :=
.seq NamedBody162_96 NamedBody162_97

def NamedBody162_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody162_100 : StackLang.HolProg 64 :=
.seq NamedBody162_98 NamedBody162_99

def NamedBody162_101 : StackLang.HolProg 64 :=
.seq NamedBody162_93 NamedBody162_100

def NamedBody162_102 : StackLang.HolProg 64 :=
.seq NamedBody162_92 NamedBody162_101

def NamedBody162_103 : StackLang.HolProg 64 :=
.seq NamedBody162_91 NamedBody162_102

def NamedBody162_104 : StackLang.HolProg 64 :=
.seq NamedBody162_90 NamedBody162_103

def NamedBody162_105 : StackLang.HolProg 64 :=
.seq NamedBody162_89 NamedBody162_104

def NamedBody162_106 : StackLang.HolProg 64 :=
.seq NamedBody162_88 NamedBody162_105

def NamedBody162_107 : StackLang.HolProg 64 :=
.seq NamedBody162_87 NamedBody162_106

def NamedBody162_108 : StackLang.HolProg 64 :=
.seq NamedBody162_86 NamedBody162_107

def NamedBody162_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody162_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody162_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody162_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody162_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody162_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody162_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody162_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody162_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody162_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody162_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody162_120 : StackLang.HolProg 64 :=
.seq NamedBody162_118 NamedBody162_119

def NamedBody162_121 : StackLang.HolProg 64 :=
.seq NamedBody162_117 NamedBody162_120

def NamedBody162_122 : StackLang.HolProg 64 :=
.seq NamedBody162_116 NamedBody162_121

def NamedBody162_123 : StackLang.HolProg 64 :=
.seq NamedBody162_115 NamedBody162_122

def NamedBody162_124 : StackLang.HolProg 64 :=
.seq NamedBody162_114 NamedBody162_123

def NamedBody162_125 : StackLang.HolProg 64 :=
.seq NamedBody162_113 NamedBody162_124

def NamedBody162_126 : StackLang.HolProg 64 :=
.seq NamedBody162_112 NamedBody162_125

def NamedBody162_127 : StackLang.HolProg 64 :=
.seq NamedBody162_111 NamedBody162_126

def NamedBody162_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody162_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody162_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody162_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody162_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody162_133 : StackLang.HolProg 64 :=
.seq NamedBody162_131 NamedBody162_132

def NamedBody162_134 : StackLang.HolProg 64 :=
.seq NamedBody162_130 NamedBody162_133

def NamedBody162_135 : StackLang.HolProg 64 :=
.seq NamedBody162_129 NamedBody162_134

def NamedBody162_136 : StackLang.HolProg 64 :=
.seq NamedBody162_128 NamedBody162_135

def NamedBody162_137 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody162_138 : StackLang.HolProg 64 :=
.seq NamedBody162_136 NamedBody162_137

def NamedBody162_139 : StackLang.HolProg 64 :=
.call (some (NamedBody162_127, 1, 162, 4)) (Sum.inl 159) (some (NamedBody162_138, 162, 5))

def NamedBody162_140 : StackLang.HolProg 64 :=
.seq NamedBody162_110 NamedBody162_139

def NamedBody162_141 : StackLang.HolProg 64 :=
.seq NamedBody162_109 NamedBody162_140

def NamedBody162_142 : StackLang.HolProg 64 :=
.seq NamedBody162_108 NamedBody162_141

def NamedBody162_143 : StackLang.HolProg 64 :=
.seq NamedBody162_79 NamedBody162_142

def NamedBody162_144 : StackLang.HolProg 64 :=
.seq NamedBody162_76 NamedBody162_143

def NamedBody162_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody162_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody162_147 : StackLang.HolProg 64 :=
.seq NamedBody162_145 NamedBody162_146

def NamedBody162_148 : StackLang.HolProg 64 :=
.seq NamedBody162_144 NamedBody162_147

def NamedBody162_149 : StackLang.HolProg 64 :=
.seq NamedBody162_75 NamedBody162_148

def NamedBody162_150 : StackLang.HolProg 64 :=
.seq NamedBody162_68 NamedBody162_149

def NamedBody162_151 : StackLang.HolProg 64 :=
.seq NamedBody162_67 NamedBody162_150

def NamedBody162_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody162_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody162_154 : StackLang.HolProg 64 :=
.seq NamedBody162_152 NamedBody162_153

def NamedBody162_155 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 13 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody162_151 NamedBody162_154

def NamedBody162_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody162_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody162_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody162_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody162_160 : StackLang.HolProg 64 :=
.seq NamedBody162_158 NamedBody162_159

def NamedBody162_161 : StackLang.HolProg 64 :=
.seq NamedBody162_157 NamedBody162_160

def NamedBody162_162 : StackLang.HolProg 64 :=
.seq NamedBody162_156 NamedBody162_161

def NamedBody162_163 : StackLang.HolProg 64 :=
.seq NamedBody162_155 NamedBody162_162

def NamedBody162_164 : StackLang.HolProg 64 :=
.seq NamedBody162_66 NamedBody162_163

def NamedBody162_165 : StackLang.HolProg 64 :=
.seq NamedBody162_65 NamedBody162_164

def NamedBody162_166 : StackLang.HolProg 64 :=
.seq NamedBody162_64 NamedBody162_165

def NamedBody162_167 : StackLang.HolProg 64 :=
.seq NamedBody162_9 NamedBody162_166

def NamedBody162_168 : StackLang.HolProg 64 :=
.seq NamedBody162_6 NamedBody162_167

def Named162 : Nat × StackLang.HolProg 64 := (162, NamedBody162_168)
theorem Named162_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed162 = Named162 := by
  kernel_rfl
#print axioms Named162_eq
end InitECandidate.Proofs.BackendStages
