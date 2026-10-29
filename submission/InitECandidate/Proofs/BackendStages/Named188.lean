import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed188
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody188_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody188_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody188_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody188_3 : StackLang.HolProg 64 :=
.seq NamedBody188_1 NamedBody188_2

def NamedBody188_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody188_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody188_3 NamedBody188_4

def NamedBody188_6 : StackLang.HolProg 64 :=
.seq NamedBody188_0 NamedBody188_5

def NamedBody188_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody188_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 72#64))

def NamedBody188_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody188_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody188_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody188_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody188_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 40#64))

def NamedBody188_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody188_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 5 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def NamedBody188_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody188_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody188_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 0#64))

def NamedBody188_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody188_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 72#64)))

def NamedBody188_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody188_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody188_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody188_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody188_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody188_26 : StackLang.HolProg 64 :=
.seq NamedBody188_24 NamedBody188_25

def NamedBody188_27 : StackLang.HolProg 64 :=
.seq NamedBody188_23 NamedBody188_26

def NamedBody188_28 : StackLang.HolProg 64 :=
.seq NamedBody188_22 NamedBody188_27

def NamedBody188_29 : StackLang.HolProg 64 :=
.seq NamedBody188_21 NamedBody188_28

def NamedBody188_30 : StackLang.HolProg 64 :=
.seq NamedBody188_20 NamedBody188_29

def NamedBody188_31 : StackLang.HolProg 64 :=
.seq NamedBody188_19 NamedBody188_30

def NamedBody188_32 : StackLang.HolProg 64 :=
.seq NamedBody188_18 NamedBody188_31

def NamedBody188_33 : StackLang.HolProg 64 :=
.seq NamedBody188_17 NamedBody188_32

def NamedBody188_34 : StackLang.HolProg 64 :=
.seq NamedBody188_16 NamedBody188_33

def NamedBody188_35 : StackLang.HolProg 64 :=
.seq NamedBody188_15 NamedBody188_34

def NamedBody188_36 : StackLang.HolProg 64 :=
.seq NamedBody188_14 NamedBody188_35

def NamedBody188_37 : StackLang.HolProg 64 :=
.seq NamedBody188_13 NamedBody188_36

def NamedBody188_38 : StackLang.HolProg 64 :=
.seq NamedBody188_12 NamedBody188_37

def NamedBody188_39 : StackLang.HolProg 64 :=
.seq NamedBody188_11 NamedBody188_38

def NamedBody188_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody188_41 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12) NamedBody188_39 NamedBody188_40

def NamedBody188_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody188_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody188_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody188_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 64#64))

def NamedBody188_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody188_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 80#64))

def NamedBody188_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody188_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody188_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody188_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody188_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody188_53 : StackLang.HolProg 64 :=
.seq NamedBody188_51 NamedBody188_52

def NamedBody188_54 : StackLang.HolProg 64 :=
.seq NamedBody188_50 NamedBody188_53

def NamedBody188_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody188_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 215#64)

def NamedBody188_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody188_58 : StackLang.HolProg 64 :=
.seq NamedBody188_56 NamedBody188_57

def NamedBody188_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody188_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody188_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody188_62 : StackLang.HolProg 64 :=
.seq NamedBody188_60 NamedBody188_61

def NamedBody188_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody188_64 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody188_62 NamedBody188_63

def NamedBody188_65 : StackLang.HolProg 64 :=
.seq NamedBody188_59 NamedBody188_64

def NamedBody188_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody188_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody188_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 188 3

def NamedBody188_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody188_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody188_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody188_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody188_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody188_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody188_75 : StackLang.HolProg 64 :=
.seq NamedBody188_73 NamedBody188_74

def NamedBody188_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody188_77 : StackLang.HolProg 64 :=
.seq NamedBody188_75 NamedBody188_76

def NamedBody188_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody188_79 : StackLang.HolProg 64 :=
.seq NamedBody188_77 NamedBody188_78

def NamedBody188_80 : StackLang.HolProg 64 :=
.seq NamedBody188_72 NamedBody188_79

def NamedBody188_81 : StackLang.HolProg 64 :=
.seq NamedBody188_71 NamedBody188_80

def NamedBody188_82 : StackLang.HolProg 64 :=
.seq NamedBody188_70 NamedBody188_81

def NamedBody188_83 : StackLang.HolProg 64 :=
.seq NamedBody188_69 NamedBody188_82

def NamedBody188_84 : StackLang.HolProg 64 :=
.seq NamedBody188_68 NamedBody188_83

def NamedBody188_85 : StackLang.HolProg 64 :=
.seq NamedBody188_67 NamedBody188_84

def NamedBody188_86 : StackLang.HolProg 64 :=
.seq NamedBody188_66 NamedBody188_85

def NamedBody188_87 : StackLang.HolProg 64 :=
.seq NamedBody188_65 NamedBody188_86

def NamedBody188_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody188_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody188_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody188_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody188_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody188_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody188_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody188_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody188_96 : StackLang.HolProg 64 :=
.seq NamedBody188_94 NamedBody188_95

def NamedBody188_97 : StackLang.HolProg 64 :=
.seq NamedBody188_93 NamedBody188_96

def NamedBody188_98 : StackLang.HolProg 64 :=
.seq NamedBody188_92 NamedBody188_97

def NamedBody188_99 : StackLang.HolProg 64 :=
.seq NamedBody188_91 NamedBody188_98

def NamedBody188_100 : StackLang.HolProg 64 :=
.seq NamedBody188_90 NamedBody188_99

def NamedBody188_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody188_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody188_103 : StackLang.HolProg 64 :=
.seq NamedBody188_101 NamedBody188_102

def NamedBody188_104 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody188_105 : StackLang.HolProg 64 :=
.seq NamedBody188_103 NamedBody188_104

def NamedBody188_106 : StackLang.HolProg 64 :=
.call (some (NamedBody188_100, 1, 188, 2)) (Sum.inl 191) (some (NamedBody188_105, 188, 3))

def NamedBody188_107 : StackLang.HolProg 64 :=
.seq NamedBody188_89 NamedBody188_106

def NamedBody188_108 : StackLang.HolProg 64 :=
.seq NamedBody188_88 NamedBody188_107

def NamedBody188_109 : StackLang.HolProg 64 :=
.seq NamedBody188_87 NamedBody188_108

def NamedBody188_110 : StackLang.HolProg 64 :=
.seq NamedBody188_58 NamedBody188_109

def NamedBody188_111 : StackLang.HolProg 64 :=
.seq NamedBody188_55 NamedBody188_110

def NamedBody188_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody188_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody188_114 : StackLang.HolProg 64 :=
.seq NamedBody188_112 NamedBody188_113

def NamedBody188_115 : StackLang.HolProg 64 :=
.seq NamedBody188_111 NamedBody188_114

def NamedBody188_116 : StackLang.HolProg 64 :=
.seq NamedBody188_54 NamedBody188_115

def NamedBody188_117 : StackLang.HolProg 64 :=
.seq NamedBody188_49 NamedBody188_116

def NamedBody188_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody188_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody188_120 : StackLang.HolProg 64 :=
.seq NamedBody188_118 NamedBody188_119

def NamedBody188_121 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody188_117 NamedBody188_120

def NamedBody188_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody188_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody188_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 64#64))

def NamedBody188_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody188_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def NamedBody188_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody188_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody188_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody188_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 0#64))

def NamedBody188_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody188_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody188_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody188_134 : StackLang.HolProg 64 :=
.seq NamedBody188_132 NamedBody188_133

def NamedBody188_135 : StackLang.HolProg 64 :=
.seq NamedBody188_131 NamedBody188_134

def NamedBody188_136 : StackLang.HolProg 64 :=
.seq NamedBody188_130 NamedBody188_135

def NamedBody188_137 : StackLang.HolProg 64 :=
.seq NamedBody188_129 NamedBody188_136

def NamedBody188_138 : StackLang.HolProg 64 :=
.seq NamedBody188_128 NamedBody188_137

def NamedBody188_139 : StackLang.HolProg 64 :=
.seq NamedBody188_127 NamedBody188_138

def NamedBody188_140 : StackLang.HolProg 64 :=
.seq NamedBody188_126 NamedBody188_139

def NamedBody188_141 : StackLang.HolProg 64 :=
.seq NamedBody188_125 NamedBody188_140

def NamedBody188_142 : StackLang.HolProg 64 :=
.seq NamedBody188_124 NamedBody188_141

def NamedBody188_143 : StackLang.HolProg 64 :=
.seq NamedBody188_123 NamedBody188_142

def NamedBody188_144 : StackLang.HolProg 64 :=
.seq NamedBody188_122 NamedBody188_143

def NamedBody188_145 : StackLang.HolProg 64 :=
.seq NamedBody188_121 NamedBody188_144

def NamedBody188_146 : StackLang.HolProg 64 :=
.seq NamedBody188_48 NamedBody188_145

def NamedBody188_147 : StackLang.HolProg 64 :=
.seq NamedBody188_47 NamedBody188_146

def NamedBody188_148 : StackLang.HolProg 64 :=
.seq NamedBody188_46 NamedBody188_147

def NamedBody188_149 : StackLang.HolProg 64 :=
.seq NamedBody188_45 NamedBody188_148

def NamedBody188_150 : StackLang.HolProg 64 :=
.seq NamedBody188_44 NamedBody188_149

def NamedBody188_151 : StackLang.HolProg 64 :=
.seq NamedBody188_43 NamedBody188_150

def NamedBody188_152 : StackLang.HolProg 64 :=
.seq NamedBody188_42 NamedBody188_151

def NamedBody188_153 : StackLang.HolProg 64 :=
.seq NamedBody188_41 NamedBody188_152

def NamedBody188_154 : StackLang.HolProg 64 :=
.seq NamedBody188_10 NamedBody188_153

def NamedBody188_155 : StackLang.HolProg 64 :=
.seq NamedBody188_9 NamedBody188_154

def NamedBody188_156 : StackLang.HolProg 64 :=
.seq NamedBody188_8 NamedBody188_155

def NamedBody188_157 : StackLang.HolProg 64 :=
.seq NamedBody188_7 NamedBody188_156

def NamedBody188_158 : StackLang.HolProg 64 :=
.seq NamedBody188_6 NamedBody188_157

def Named188 : Nat × StackLang.HolProg 64 := (188, NamedBody188_158)
theorem Named188_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed188 = Named188 := by
  kernel_rfl
#print axioms Named188_eq
end InitECandidate.Proofs.BackendStages
