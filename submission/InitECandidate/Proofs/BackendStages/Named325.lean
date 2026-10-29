import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed325
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody325_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody325_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody325_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody325_3 : StackLang.HolProg 64 :=
.seq NamedBody325_1 NamedBody325_2

def NamedBody325_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody325_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody325_3 NamedBody325_4

def NamedBody325_6 : StackLang.HolProg 64 :=
.seq NamedBody325_0 NamedBody325_5

def NamedBody325_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody325_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 8#64))

def NamedBody325_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody325_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody325_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody325_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody325_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 16#64))

def NamedBody325_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody325_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody325_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody325_17 : StackLang.HolProg 64 :=
.seq NamedBody325_15 NamedBody325_16

def NamedBody325_18 : StackLang.HolProg 64 :=
.seq NamedBody325_14 NamedBody325_17

def NamedBody325_19 : StackLang.HolProg 64 :=
.seq NamedBody325_13 NamedBody325_18

def NamedBody325_20 : StackLang.HolProg 64 :=
.seq NamedBody325_12 NamedBody325_19

def NamedBody325_21 : StackLang.HolProg 64 :=
.seq NamedBody325_11 NamedBody325_20

def NamedBody325_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody325_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 13 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedBody325_21 NamedBody325_22

def NamedBody325_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody325_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody325_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody325_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 0#64))

def NamedBody325_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody325_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody325_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody325_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody325_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody325_33 : StackLang.HolProg 64 :=
.seq NamedBody325_31 NamedBody325_32

def NamedBody325_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody325_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 923#64)

def NamedBody325_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody325_37 : StackLang.HolProg 64 :=
.seq NamedBody325_35 NamedBody325_36

def NamedBody325_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody325_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody325_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody325_41 : StackLang.HolProg 64 :=
.seq NamedBody325_39 NamedBody325_40

def NamedBody325_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody325_43 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody325_41 NamedBody325_42

def NamedBody325_44 : StackLang.HolProg 64 :=
.seq NamedBody325_38 NamedBody325_43

def NamedBody325_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody325_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody325_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 325 3

def NamedBody325_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody325_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody325_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody325_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody325_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody325_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody325_54 : StackLang.HolProg 64 :=
.seq NamedBody325_52 NamedBody325_53

def NamedBody325_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody325_56 : StackLang.HolProg 64 :=
.seq NamedBody325_54 NamedBody325_55

def NamedBody325_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody325_58 : StackLang.HolProg 64 :=
.seq NamedBody325_56 NamedBody325_57

def NamedBody325_59 : StackLang.HolProg 64 :=
.seq NamedBody325_51 NamedBody325_58

def NamedBody325_60 : StackLang.HolProg 64 :=
.seq NamedBody325_50 NamedBody325_59

def NamedBody325_61 : StackLang.HolProg 64 :=
.seq NamedBody325_49 NamedBody325_60

def NamedBody325_62 : StackLang.HolProg 64 :=
.seq NamedBody325_48 NamedBody325_61

def NamedBody325_63 : StackLang.HolProg 64 :=
.seq NamedBody325_47 NamedBody325_62

def NamedBody325_64 : StackLang.HolProg 64 :=
.seq NamedBody325_46 NamedBody325_63

def NamedBody325_65 : StackLang.HolProg 64 :=
.seq NamedBody325_45 NamedBody325_64

def NamedBody325_66 : StackLang.HolProg 64 :=
.seq NamedBody325_44 NamedBody325_65

def NamedBody325_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody325_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody325_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody325_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody325_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody325_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody325_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody325_74 : StackLang.HolProg 64 :=
.seq NamedBody325_72 NamedBody325_73

def NamedBody325_75 : StackLang.HolProg 64 :=
.seq NamedBody325_71 NamedBody325_74

def NamedBody325_76 : StackLang.HolProg 64 :=
.seq NamedBody325_70 NamedBody325_75

def NamedBody325_77 : StackLang.HolProg 64 :=
.seq NamedBody325_69 NamedBody325_76

def NamedBody325_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody325_79 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody325_80 : StackLang.HolProg 64 :=
.seq NamedBody325_78 NamedBody325_79

def NamedBody325_81 : StackLang.HolProg 64 :=
.call (some (NamedBody325_77, 1, 325, 2)) (Sum.inl 286) (some (NamedBody325_80, 325, 3))

def NamedBody325_82 : StackLang.HolProg 64 :=
.seq NamedBody325_68 NamedBody325_81

def NamedBody325_83 : StackLang.HolProg 64 :=
.seq NamedBody325_67 NamedBody325_82

def NamedBody325_84 : StackLang.HolProg 64 :=
.seq NamedBody325_66 NamedBody325_83

def NamedBody325_85 : StackLang.HolProg 64 :=
.seq NamedBody325_37 NamedBody325_84

def NamedBody325_86 : StackLang.HolProg 64 :=
.seq NamedBody325_34 NamedBody325_85

def NamedBody325_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody325_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody325_89 : StackLang.HolProg 64 :=
.seq NamedBody325_87 NamedBody325_88

def NamedBody325_90 : StackLang.HolProg 64 :=
.seq NamedBody325_86 NamedBody325_89

def NamedBody325_91 : StackLang.HolProg 64 :=
.seq NamedBody325_33 NamedBody325_90

def NamedBody325_92 : StackLang.HolProg 64 :=
.seq NamedBody325_30 NamedBody325_91

def NamedBody325_93 : StackLang.HolProg 64 :=
.seq NamedBody325_29 NamedBody325_92

def NamedBody325_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody325_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody325_96 : StackLang.HolProg 64 :=
.seq NamedBody325_94 NamedBody325_95

def NamedBody325_97 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedBody325_93 NamedBody325_96

def NamedBody325_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody325_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody325_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody325_101 : StackLang.HolProg 64 :=
.seq NamedBody325_99 NamedBody325_100

def NamedBody325_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody325_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 924#64)

def NamedBody325_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody325_105 : StackLang.HolProg 64 :=
.seq NamedBody325_103 NamedBody325_104

def NamedBody325_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody325_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody325_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody325_109 : StackLang.HolProg 64 :=
.seq NamedBody325_107 NamedBody325_108

def NamedBody325_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody325_111 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody325_109 NamedBody325_110

def NamedBody325_112 : StackLang.HolProg 64 :=
.seq NamedBody325_106 NamedBody325_111

def NamedBody325_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody325_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody325_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 325 5

def NamedBody325_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody325_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody325_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody325_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody325_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody325_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody325_122 : StackLang.HolProg 64 :=
.seq NamedBody325_120 NamedBody325_121

def NamedBody325_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody325_124 : StackLang.HolProg 64 :=
.seq NamedBody325_122 NamedBody325_123

def NamedBody325_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody325_126 : StackLang.HolProg 64 :=
.seq NamedBody325_124 NamedBody325_125

def NamedBody325_127 : StackLang.HolProg 64 :=
.seq NamedBody325_119 NamedBody325_126

def NamedBody325_128 : StackLang.HolProg 64 :=
.seq NamedBody325_118 NamedBody325_127

def NamedBody325_129 : StackLang.HolProg 64 :=
.seq NamedBody325_117 NamedBody325_128

def NamedBody325_130 : StackLang.HolProg 64 :=
.seq NamedBody325_116 NamedBody325_129

def NamedBody325_131 : StackLang.HolProg 64 :=
.seq NamedBody325_115 NamedBody325_130

def NamedBody325_132 : StackLang.HolProg 64 :=
.seq NamedBody325_114 NamedBody325_131

def NamedBody325_133 : StackLang.HolProg 64 :=
.seq NamedBody325_113 NamedBody325_132

def NamedBody325_134 : StackLang.HolProg 64 :=
.seq NamedBody325_112 NamedBody325_133

def NamedBody325_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody325_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody325_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody325_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody325_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody325_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody325_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody325_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody325_143 : StackLang.HolProg 64 :=
.seq NamedBody325_141 NamedBody325_142

def NamedBody325_144 : StackLang.HolProg 64 :=
.seq NamedBody325_140 NamedBody325_143

def NamedBody325_145 : StackLang.HolProg 64 :=
.seq NamedBody325_139 NamedBody325_144

def NamedBody325_146 : StackLang.HolProg 64 :=
.seq NamedBody325_138 NamedBody325_145

def NamedBody325_147 : StackLang.HolProg 64 :=
.seq NamedBody325_137 NamedBody325_146

def NamedBody325_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody325_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody325_150 : StackLang.HolProg 64 :=
.seq NamedBody325_148 NamedBody325_149

def NamedBody325_151 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody325_152 : StackLang.HolProg 64 :=
.seq NamedBody325_150 NamedBody325_151

def NamedBody325_153 : StackLang.HolProg 64 :=
.call (some (NamedBody325_147, 1, 325, 4)) (Sum.inl 324) (some (NamedBody325_152, 325, 5))

def NamedBody325_154 : StackLang.HolProg 64 :=
.seq NamedBody325_136 NamedBody325_153

def NamedBody325_155 : StackLang.HolProg 64 :=
.seq NamedBody325_135 NamedBody325_154

def NamedBody325_156 : StackLang.HolProg 64 :=
.seq NamedBody325_134 NamedBody325_155

def NamedBody325_157 : StackLang.HolProg 64 :=
.seq NamedBody325_105 NamedBody325_156

def NamedBody325_158 : StackLang.HolProg 64 :=
.seq NamedBody325_102 NamedBody325_157

def NamedBody325_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody325_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody325_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def NamedBody325_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody325_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def NamedBody325_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody325_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody325_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 12

def NamedBody325_167 : StackLang.HolProg 64 :=
.seq NamedBody325_165 NamedBody325_166

def NamedBody325_168 : StackLang.HolProg 64 :=
.seq NamedBody325_164 NamedBody325_167

def NamedBody325_169 : StackLang.HolProg 64 :=
.seq NamedBody325_163 NamedBody325_168

def NamedBody325_170 : StackLang.HolProg 64 :=
.seq NamedBody325_162 NamedBody325_169

def NamedBody325_171 : StackLang.HolProg 64 :=
.seq NamedBody325_161 NamedBody325_170

def NamedBody325_172 : StackLang.HolProg 64 :=
.seq NamedBody325_160 NamedBody325_171

def NamedBody325_173 : StackLang.HolProg 64 :=
.seq NamedBody325_159 NamedBody325_172

def NamedBody325_174 : StackLang.HolProg 64 :=
.seq NamedBody325_158 NamedBody325_173

def NamedBody325_175 : StackLang.HolProg 64 :=
.seq NamedBody325_101 NamedBody325_174

def NamedBody325_176 : StackLang.HolProg 64 :=
.seq NamedBody325_98 NamedBody325_175

def NamedBody325_177 : StackLang.HolProg 64 :=
.seq NamedBody325_97 NamedBody325_176

def NamedBody325_178 : StackLang.HolProg 64 :=
.seq NamedBody325_28 NamedBody325_177

def NamedBody325_179 : StackLang.HolProg 64 :=
.seq NamedBody325_27 NamedBody325_178

def NamedBody325_180 : StackLang.HolProg 64 :=
.seq NamedBody325_26 NamedBody325_179

def NamedBody325_181 : StackLang.HolProg 64 :=
.seq NamedBody325_25 NamedBody325_180

def NamedBody325_182 : StackLang.HolProg 64 :=
.seq NamedBody325_24 NamedBody325_181

def NamedBody325_183 : StackLang.HolProg 64 :=
.seq NamedBody325_23 NamedBody325_182

def NamedBody325_184 : StackLang.HolProg 64 :=
.seq NamedBody325_10 NamedBody325_183

def NamedBody325_185 : StackLang.HolProg 64 :=
.seq NamedBody325_9 NamedBody325_184

def NamedBody325_186 : StackLang.HolProg 64 :=
.seq NamedBody325_8 NamedBody325_185

def NamedBody325_187 : StackLang.HolProg 64 :=
.seq NamedBody325_7 NamedBody325_186

def NamedBody325_188 : StackLang.HolProg 64 :=
.seq NamedBody325_6 NamedBody325_187

def Named325 : Nat × StackLang.HolProg 64 := (325, NamedBody325_188)
theorem Named325_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed325 = Named325 := by
  kernel_rfl
#print axioms Named325_eq
end InitECandidate.Proofs.BackendStages
