import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed452
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody452_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody452_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody452_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody452_3 : StackLang.HolProg 64 :=
.seq NamedBody452_1 NamedBody452_2

def NamedBody452_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody452_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody452_3 NamedBody452_4

def NamedBody452_6 : StackLang.HolProg 64 :=
.seq NamedBody452_0 NamedBody452_5

def NamedBody452_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody452_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody452_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody452_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody452_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551400#64))

def NamedBody452_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody452_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody452_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody452_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody452_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody452_17 : StackLang.HolProg 64 :=
.seq NamedBody452_15 NamedBody452_16

def NamedBody452_18 : StackLang.HolProg 64 :=
.seq NamedBody452_14 NamedBody452_17

def NamedBody452_19 : StackLang.HolProg 64 :=
.seq NamedBody452_13 NamedBody452_18

def NamedBody452_20 : StackLang.HolProg 64 :=
.seq NamedBody452_12 NamedBody452_19

def NamedBody452_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody452_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1374#64)

def NamedBody452_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody452_24 : StackLang.HolProg 64 :=
.seq NamedBody452_22 NamedBody452_23

def NamedBody452_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody452_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody452_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody452_28 : StackLang.HolProg 64 :=
.seq NamedBody452_26 NamedBody452_27

def NamedBody452_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody452_30 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody452_28 NamedBody452_29

def NamedBody452_31 : StackLang.HolProg 64 :=
.seq NamedBody452_25 NamedBody452_30

def NamedBody452_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody452_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody452_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 452 3

def NamedBody452_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody452_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody452_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody452_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody452_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody452_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody452_41 : StackLang.HolProg 64 :=
.seq NamedBody452_39 NamedBody452_40

def NamedBody452_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody452_43 : StackLang.HolProg 64 :=
.seq NamedBody452_41 NamedBody452_42

def NamedBody452_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody452_45 : StackLang.HolProg 64 :=
.seq NamedBody452_43 NamedBody452_44

def NamedBody452_46 : StackLang.HolProg 64 :=
.seq NamedBody452_38 NamedBody452_45

def NamedBody452_47 : StackLang.HolProg 64 :=
.seq NamedBody452_37 NamedBody452_46

def NamedBody452_48 : StackLang.HolProg 64 :=
.seq NamedBody452_36 NamedBody452_47

def NamedBody452_49 : StackLang.HolProg 64 :=
.seq NamedBody452_35 NamedBody452_48

def NamedBody452_50 : StackLang.HolProg 64 :=
.seq NamedBody452_34 NamedBody452_49

def NamedBody452_51 : StackLang.HolProg 64 :=
.seq NamedBody452_33 NamedBody452_50

def NamedBody452_52 : StackLang.HolProg 64 :=
.seq NamedBody452_32 NamedBody452_51

def NamedBody452_53 : StackLang.HolProg 64 :=
.seq NamedBody452_31 NamedBody452_52

def NamedBody452_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody452_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody452_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody452_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody452_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody452_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody452_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody452_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody452_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody452_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody452_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody452_65 : StackLang.HolProg 64 :=
.seq NamedBody452_63 NamedBody452_64

def NamedBody452_66 : StackLang.HolProg 64 :=
.seq NamedBody452_62 NamedBody452_65

def NamedBody452_67 : StackLang.HolProg 64 :=
.seq NamedBody452_61 NamedBody452_66

def NamedBody452_68 : StackLang.HolProg 64 :=
.seq NamedBody452_60 NamedBody452_67

def NamedBody452_69 : StackLang.HolProg 64 :=
.seq NamedBody452_59 NamedBody452_68

def NamedBody452_70 : StackLang.HolProg 64 :=
.seq NamedBody452_58 NamedBody452_69

def NamedBody452_71 : StackLang.HolProg 64 :=
.seq NamedBody452_57 NamedBody452_70

def NamedBody452_72 : StackLang.HolProg 64 :=
.seq NamedBody452_56 NamedBody452_71

def NamedBody452_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody452_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody452_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody452_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody452_77 : StackLang.HolProg 64 :=
.seq NamedBody452_75 NamedBody452_76

def NamedBody452_78 : StackLang.HolProg 64 :=
.seq NamedBody452_74 NamedBody452_77

def NamedBody452_79 : StackLang.HolProg 64 :=
.seq NamedBody452_73 NamedBody452_78

def NamedBody452_80 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody452_81 : StackLang.HolProg 64 :=
.seq NamedBody452_79 NamedBody452_80

def NamedBody452_82 : StackLang.HolProg 64 :=
.call (some (NamedBody452_72, 1, 452, 2)) (Sum.inl 186) (some (NamedBody452_81, 452, 3))

def NamedBody452_83 : StackLang.HolProg 64 :=
.seq NamedBody452_55 NamedBody452_82

def NamedBody452_84 : StackLang.HolProg 64 :=
.seq NamedBody452_54 NamedBody452_83

def NamedBody452_85 : StackLang.HolProg 64 :=
.seq NamedBody452_53 NamedBody452_84

def NamedBody452_86 : StackLang.HolProg 64 :=
.seq NamedBody452_24 NamedBody452_85

def NamedBody452_87 : StackLang.HolProg 64 :=
.seq NamedBody452_21 NamedBody452_86

def NamedBody452_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody452_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody452_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody452_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody452_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody452_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody452_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody452_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 6

def NamedBody452_96 : StackLang.HolProg 64 :=
.seq NamedBody452_94 NamedBody452_95

def NamedBody452_97 : StackLang.HolProg 64 :=
.seq NamedBody452_93 NamedBody452_96

def NamedBody452_98 : StackLang.HolProg 64 :=
.seq NamedBody452_92 NamedBody452_97

def NamedBody452_99 : StackLang.HolProg 64 :=
.seq NamedBody452_91 NamedBody452_98

def NamedBody452_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody452_101 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody452_99 NamedBody452_100

def NamedBody452_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody452_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody452_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody452_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody452_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody452_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody452_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody452_109 : StackLang.HolProg 64 :=
.seq NamedBody452_107 NamedBody452_108

def NamedBody452_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody452_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1375#64)

def NamedBody452_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody452_113 : StackLang.HolProg 64 :=
.seq NamedBody452_111 NamedBody452_112

def NamedBody452_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody452_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody452_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody452_117 : StackLang.HolProg 64 :=
.seq NamedBody452_115 NamedBody452_116

def NamedBody452_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody452_119 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody452_117 NamedBody452_118

def NamedBody452_120 : StackLang.HolProg 64 :=
.seq NamedBody452_114 NamedBody452_119

def NamedBody452_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody452_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody452_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 452 5

def NamedBody452_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody452_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody452_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody452_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody452_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody452_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody452_130 : StackLang.HolProg 64 :=
.seq NamedBody452_128 NamedBody452_129

def NamedBody452_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody452_132 : StackLang.HolProg 64 :=
.seq NamedBody452_130 NamedBody452_131

def NamedBody452_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody452_134 : StackLang.HolProg 64 :=
.seq NamedBody452_132 NamedBody452_133

def NamedBody452_135 : StackLang.HolProg 64 :=
.seq NamedBody452_127 NamedBody452_134

def NamedBody452_136 : StackLang.HolProg 64 :=
.seq NamedBody452_126 NamedBody452_135

def NamedBody452_137 : StackLang.HolProg 64 :=
.seq NamedBody452_125 NamedBody452_136

def NamedBody452_138 : StackLang.HolProg 64 :=
.seq NamedBody452_124 NamedBody452_137

def NamedBody452_139 : StackLang.HolProg 64 :=
.seq NamedBody452_123 NamedBody452_138

def NamedBody452_140 : StackLang.HolProg 64 :=
.seq NamedBody452_122 NamedBody452_139

def NamedBody452_141 : StackLang.HolProg 64 :=
.seq NamedBody452_121 NamedBody452_140

def NamedBody452_142 : StackLang.HolProg 64 :=
.seq NamedBody452_120 NamedBody452_141

def NamedBody452_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody452_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody452_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody452_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody452_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody452_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody452_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody452_150 : StackLang.HolProg 64 :=
.seq NamedBody452_148 NamedBody452_149

def NamedBody452_151 : StackLang.HolProg 64 :=
.seq NamedBody452_147 NamedBody452_150

def NamedBody452_152 : StackLang.HolProg 64 :=
.seq NamedBody452_146 NamedBody452_151

def NamedBody452_153 : StackLang.HolProg 64 :=
.seq NamedBody452_145 NamedBody452_152

def NamedBody452_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody452_155 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody452_156 : StackLang.HolProg 64 :=
.seq NamedBody452_154 NamedBody452_155

def NamedBody452_157 : StackLang.HolProg 64 :=
.call (some (NamedBody452_153, 1, 452, 4)) (Sum.inl 451) (some (NamedBody452_156, 452, 5))

def NamedBody452_158 : StackLang.HolProg 64 :=
.seq NamedBody452_144 NamedBody452_157

def NamedBody452_159 : StackLang.HolProg 64 :=
.seq NamedBody452_143 NamedBody452_158

def NamedBody452_160 : StackLang.HolProg 64 :=
.seq NamedBody452_142 NamedBody452_159

def NamedBody452_161 : StackLang.HolProg 64 :=
.seq NamedBody452_113 NamedBody452_160

def NamedBody452_162 : StackLang.HolProg 64 :=
.seq NamedBody452_110 NamedBody452_161

def NamedBody452_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody452_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody452_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody452_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody452_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody452_168 : StackLang.HolProg 64 :=
.seq NamedBody452_166 NamedBody452_167

def NamedBody452_169 : StackLang.HolProg 64 :=
.seq NamedBody452_165 NamedBody452_168

def NamedBody452_170 : StackLang.HolProg 64 :=
.seq NamedBody452_164 NamedBody452_169

def NamedBody452_171 : StackLang.HolProg 64 :=
.seq NamedBody452_163 NamedBody452_170

def NamedBody452_172 : StackLang.HolProg 64 :=
.seq NamedBody452_162 NamedBody452_171

def NamedBody452_173 : StackLang.HolProg 64 :=
.seq NamedBody452_109 NamedBody452_172

def NamedBody452_174 : StackLang.HolProg 64 :=
.seq NamedBody452_106 NamedBody452_173

def NamedBody452_175 : StackLang.HolProg 64 :=
.seq NamedBody452_105 NamedBody452_174

def NamedBody452_176 : StackLang.HolProg 64 :=
.seq NamedBody452_104 NamedBody452_175

def NamedBody452_177 : StackLang.HolProg 64 :=
.seq NamedBody452_103 NamedBody452_176

def NamedBody452_178 : StackLang.HolProg 64 :=
.seq NamedBody452_102 NamedBody452_177

def NamedBody452_179 : StackLang.HolProg 64 :=
.seq NamedBody452_101 NamedBody452_178

def NamedBody452_180 : StackLang.HolProg 64 :=
.seq NamedBody452_90 NamedBody452_179

def NamedBody452_181 : StackLang.HolProg 64 :=
.seq NamedBody452_89 NamedBody452_180

def NamedBody452_182 : StackLang.HolProg 64 :=
.seq NamedBody452_88 NamedBody452_181

def NamedBody452_183 : StackLang.HolProg 64 :=
.seq NamedBody452_87 NamedBody452_182

def NamedBody452_184 : StackLang.HolProg 64 :=
.seq NamedBody452_20 NamedBody452_183

def NamedBody452_185 : StackLang.HolProg 64 :=
.seq NamedBody452_11 NamedBody452_184

def NamedBody452_186 : StackLang.HolProg 64 :=
.seq NamedBody452_10 NamedBody452_185

def NamedBody452_187 : StackLang.HolProg 64 :=
.seq NamedBody452_9 NamedBody452_186

def NamedBody452_188 : StackLang.HolProg 64 :=
.seq NamedBody452_8 NamedBody452_187

def NamedBody452_189 : StackLang.HolProg 64 :=
.seq NamedBody452_7 NamedBody452_188

def NamedBody452_190 : StackLang.HolProg 64 :=
.seq NamedBody452_6 NamedBody452_189

def Named452 : Nat × StackLang.HolProg 64 := (452, NamedBody452_190)
theorem Named452_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed452 = Named452 := by
  kernel_rfl
#print axioms Named452_eq
end InitECandidate.Proofs.BackendStages
