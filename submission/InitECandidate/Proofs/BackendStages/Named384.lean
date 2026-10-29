import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed384
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody384_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def NamedBody384_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody384_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody384_3 : StackLang.HolProg 64 :=
.seq NamedBody384_1 NamedBody384_2

def NamedBody384_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody384_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody384_3 NamedBody384_4

def NamedBody384_6 : StackLang.HolProg 64 :=
.seq NamedBody384_0 NamedBody384_5

def NamedBody384_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody384_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody384_9 : StackLang.HolProg 64 :=
.seq NamedBody384_7 NamedBody384_8

def NamedBody384_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 192#64))

def NamedBody384_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody384_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 200#64))

def NamedBody384_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody384_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody384_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody384_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody384_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody384_18 : StackLang.HolProg 64 :=
.seq NamedBody384_16 NamedBody384_17

def NamedBody384_19 : StackLang.HolProg 64 :=
.seq NamedBody384_15 NamedBody384_18

def NamedBody384_20 : StackLang.HolProg 64 :=
.seq NamedBody384_14 NamedBody384_19

def NamedBody384_21 : StackLang.HolProg 64 :=
.seq NamedBody384_13 NamedBody384_20

def NamedBody384_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody384_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1130#64)

def NamedBody384_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody384_25 : StackLang.HolProg 64 :=
.seq NamedBody384_23 NamedBody384_24

def NamedBody384_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody384_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody384_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody384_29 : StackLang.HolProg 64 :=
.seq NamedBody384_27 NamedBody384_28

def NamedBody384_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody384_31 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody384_29 NamedBody384_30

def NamedBody384_32 : StackLang.HolProg 64 :=
.seq NamedBody384_26 NamedBody384_31

def NamedBody384_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody384_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody384_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 384 3

def NamedBody384_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody384_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody384_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody384_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody384_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody384_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody384_42 : StackLang.HolProg 64 :=
.seq NamedBody384_40 NamedBody384_41

def NamedBody384_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody384_44 : StackLang.HolProg 64 :=
.seq NamedBody384_42 NamedBody384_43

def NamedBody384_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody384_46 : StackLang.HolProg 64 :=
.seq NamedBody384_44 NamedBody384_45

def NamedBody384_47 : StackLang.HolProg 64 :=
.seq NamedBody384_39 NamedBody384_46

def NamedBody384_48 : StackLang.HolProg 64 :=
.seq NamedBody384_38 NamedBody384_47

def NamedBody384_49 : StackLang.HolProg 64 :=
.seq NamedBody384_37 NamedBody384_48

def NamedBody384_50 : StackLang.HolProg 64 :=
.seq NamedBody384_36 NamedBody384_49

def NamedBody384_51 : StackLang.HolProg 64 :=
.seq NamedBody384_35 NamedBody384_50

def NamedBody384_52 : StackLang.HolProg 64 :=
.seq NamedBody384_34 NamedBody384_51

def NamedBody384_53 : StackLang.HolProg 64 :=
.seq NamedBody384_33 NamedBody384_52

def NamedBody384_54 : StackLang.HolProg 64 :=
.seq NamedBody384_32 NamedBody384_53

def NamedBody384_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody384_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody384_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody384_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody384_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody384_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody384_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody384_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody384_63 : StackLang.HolProg 64 :=
.seq NamedBody384_61 NamedBody384_62

def NamedBody384_64 : StackLang.HolProg 64 :=
.seq NamedBody384_60 NamedBody384_63

def NamedBody384_65 : StackLang.HolProg 64 :=
.seq NamedBody384_59 NamedBody384_64

def NamedBody384_66 : StackLang.HolProg 64 :=
.seq NamedBody384_58 NamedBody384_65

def NamedBody384_67 : StackLang.HolProg 64 :=
.seq NamedBody384_57 NamedBody384_66

def NamedBody384_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody384_69 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody384_70 : StackLang.HolProg 64 :=
.seq NamedBody384_68 NamedBody384_69

def NamedBody384_71 : StackLang.HolProg 64 :=
.call (some (NamedBody384_67, 1, 384, 2)) (Sum.inl 383) (some (NamedBody384_70, 384, 3))

def NamedBody384_72 : StackLang.HolProg 64 :=
.seq NamedBody384_56 NamedBody384_71

def NamedBody384_73 : StackLang.HolProg 64 :=
.seq NamedBody384_55 NamedBody384_72

def NamedBody384_74 : StackLang.HolProg 64 :=
.seq NamedBody384_54 NamedBody384_73

def NamedBody384_75 : StackLang.HolProg 64 :=
.seq NamedBody384_25 NamedBody384_74

def NamedBody384_76 : StackLang.HolProg 64 :=
.seq NamedBody384_22 NamedBody384_75

def NamedBody384_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody384_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody384_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 6 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def NamedBody384_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody384_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 152#64))

def NamedBody384_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody384_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 160#64))

def NamedBody384_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody384_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 168#64))

def NamedBody384_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody384_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 176#64))

def NamedBody384_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody384_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 184#64))

def NamedBody384_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody384_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody384_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody384_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody384_94 : StackLang.HolProg 64 :=
.seq NamedBody384_92 NamedBody384_93

def NamedBody384_95 : StackLang.HolProg 64 :=
.seq NamedBody384_91 NamedBody384_94

def NamedBody384_96 : StackLang.HolProg 64 :=
.seq NamedBody384_90 NamedBody384_95

def NamedBody384_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody384_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1131#64)

def NamedBody384_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody384_100 : StackLang.HolProg 64 :=
.seq NamedBody384_98 NamedBody384_99

def NamedBody384_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody384_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody384_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody384_104 : StackLang.HolProg 64 :=
.seq NamedBody384_102 NamedBody384_103

def NamedBody384_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody384_106 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody384_104 NamedBody384_105

def NamedBody384_107 : StackLang.HolProg 64 :=
.seq NamedBody384_101 NamedBody384_106

def NamedBody384_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody384_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody384_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 384 5

def NamedBody384_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody384_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody384_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody384_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody384_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody384_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody384_117 : StackLang.HolProg 64 :=
.seq NamedBody384_115 NamedBody384_116

def NamedBody384_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody384_119 : StackLang.HolProg 64 :=
.seq NamedBody384_117 NamedBody384_118

def NamedBody384_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody384_121 : StackLang.HolProg 64 :=
.seq NamedBody384_119 NamedBody384_120

def NamedBody384_122 : StackLang.HolProg 64 :=
.seq NamedBody384_114 NamedBody384_121

def NamedBody384_123 : StackLang.HolProg 64 :=
.seq NamedBody384_113 NamedBody384_122

def NamedBody384_124 : StackLang.HolProg 64 :=
.seq NamedBody384_112 NamedBody384_123

def NamedBody384_125 : StackLang.HolProg 64 :=
.seq NamedBody384_111 NamedBody384_124

def NamedBody384_126 : StackLang.HolProg 64 :=
.seq NamedBody384_110 NamedBody384_125

def NamedBody384_127 : StackLang.HolProg 64 :=
.seq NamedBody384_109 NamedBody384_126

def NamedBody384_128 : StackLang.HolProg 64 :=
.seq NamedBody384_108 NamedBody384_127

def NamedBody384_129 : StackLang.HolProg 64 :=
.seq NamedBody384_107 NamedBody384_128

def NamedBody384_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody384_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody384_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody384_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody384_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody384_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody384_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 30 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody384_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 16
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody384_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody384_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody384_140 : StackLang.HolProg 64 :=
.seq NamedBody384_138 NamedBody384_139

def NamedBody384_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody384_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody384_143 : StackLang.HolProg 64 :=
.seq NamedBody384_141 NamedBody384_142

def NamedBody384_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody384_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody384_146 : StackLang.HolProg 64 :=
.seq NamedBody384_144 NamedBody384_145

def NamedBody384_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 19
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody384_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody384_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody384_150 : StackLang.HolProg 64 :=
.seq NamedBody384_148 NamedBody384_149

def NamedBody384_151 : StackLang.HolProg 64 :=
.seq NamedBody384_147 NamedBody384_150

def NamedBody384_152 : StackLang.HolProg 64 :=
.seq NamedBody384_146 NamedBody384_151

def NamedBody384_153 : StackLang.HolProg 64 :=
.seq NamedBody384_143 NamedBody384_152

def NamedBody384_154 : StackLang.HolProg 64 :=
.seq NamedBody384_140 NamedBody384_153

def NamedBody384_155 : StackLang.HolProg 64 :=
.seq NamedBody384_137 NamedBody384_154

def NamedBody384_156 : StackLang.HolProg 64 :=
.seq NamedBody384_136 NamedBody384_155

def NamedBody384_157 : StackLang.HolProg 64 :=
.seq NamedBody384_135 NamedBody384_156

def NamedBody384_158 : StackLang.HolProg 64 :=
.seq NamedBody384_134 NamedBody384_157

def NamedBody384_159 : StackLang.HolProg 64 :=
.seq NamedBody384_133 NamedBody384_158

def NamedBody384_160 : StackLang.HolProg 64 :=
.seq NamedBody384_132 NamedBody384_159

def NamedBody384_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 16
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody384_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody384_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody384_164 : StackLang.HolProg 64 :=
.seq NamedBody384_162 NamedBody384_163

def NamedBody384_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody384_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody384_167 : StackLang.HolProg 64 :=
.seq NamedBody384_165 NamedBody384_166

def NamedBody384_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody384_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody384_170 : StackLang.HolProg 64 :=
.seq NamedBody384_168 NamedBody384_169

def NamedBody384_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 19
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody384_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody384_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody384_174 : StackLang.HolProg 64 :=
.seq NamedBody384_172 NamedBody384_173

def NamedBody384_175 : StackLang.HolProg 64 :=
.seq NamedBody384_171 NamedBody384_174

def NamedBody384_176 : StackLang.HolProg 64 :=
.seq NamedBody384_170 NamedBody384_175

def NamedBody384_177 : StackLang.HolProg 64 :=
.seq NamedBody384_167 NamedBody384_176

def NamedBody384_178 : StackLang.HolProg 64 :=
.seq NamedBody384_164 NamedBody384_177

def NamedBody384_179 : StackLang.HolProg 64 :=
.seq NamedBody384_161 NamedBody384_178

def NamedBody384_180 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody384_181 : StackLang.HolProg 64 :=
.seq NamedBody384_179 NamedBody384_180

def NamedBody384_182 : StackLang.HolProg 64 :=
.call (some (NamedBody384_160, 1, 384, 4)) (Sum.inl 102) (some (NamedBody384_181, 384, 5))

def NamedBody384_183 : StackLang.HolProg 64 :=
.seq NamedBody384_131 NamedBody384_182

def NamedBody384_184 : StackLang.HolProg 64 :=
.seq NamedBody384_130 NamedBody384_183

def NamedBody384_185 : StackLang.HolProg 64 :=
.seq NamedBody384_129 NamedBody384_184

def NamedBody384_186 : StackLang.HolProg 64 :=
.seq NamedBody384_100 NamedBody384_185

def NamedBody384_187 : StackLang.HolProg 64 :=
.seq NamedBody384_97 NamedBody384_186

def NamedBody384_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody384_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def NamedBody384_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody384_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody384_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody384_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody384_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 27 12000#64)

def NamedBody384_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody384_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 31#64)))

def NamedBody384_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def NamedBody384_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 29 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody384_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody384_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 17
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody384_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody384_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody384_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 18
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody384_204 : StackLang.HolProg 64 :=
.seq NamedBody384_202 NamedBody384_203

def NamedBody384_205 : StackLang.HolProg 64 :=
.seq NamedBody384_201 NamedBody384_204

def NamedBody384_206 : StackLang.HolProg 64 :=
.seq NamedBody384_200 NamedBody384_205

def NamedBody384_207 : StackLang.HolProg 64 :=
.seq NamedBody384_199 NamedBody384_206

def NamedBody384_208 : StackLang.HolProg 64 :=
.seq NamedBody384_198 NamedBody384_207

def NamedBody384_209 : StackLang.HolProg 64 :=
.seq NamedBody384_197 NamedBody384_208

def NamedBody384_210 : StackLang.HolProg 64 :=
.seq NamedBody384_196 NamedBody384_209

def NamedBody384_211 : StackLang.HolProg 64 :=
.seq NamedBody384_195 NamedBody384_210

def NamedBody384_212 : StackLang.HolProg 64 :=
.seq NamedBody384_194 NamedBody384_211

def NamedBody384_213 : StackLang.HolProg 64 :=
.seq NamedBody384_193 NamedBody384_212

def NamedBody384_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody384_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 16
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 16)))

def NamedBody384_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 19
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 19)))

def NamedBody384_217 : StackLang.HolProg 64 :=
.seq NamedBody384_215 NamedBody384_216

def NamedBody384_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 20#64)

def NamedBody384_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody384_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody384_221 : StackLang.HolProg 64 :=
.seq NamedBody384_219 NamedBody384_220

def NamedBody384_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody384_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody384_224 : StackLang.HolProg 64 :=
.seq NamedBody384_222 NamedBody384_223

def NamedBody384_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 30
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody384_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody384_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody384_228 : StackLang.HolProg 64 :=
.seq NamedBody384_226 NamedBody384_227

def NamedBody384_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody384_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody384_231 : StackLang.HolProg 64 :=
.seq NamedBody384_229 NamedBody384_230

def NamedBody384_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody384_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody384_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody384_235 : StackLang.HolProg 64 :=
.seq NamedBody384_233 NamedBody384_234

def NamedBody384_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody384_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody384_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody384_239 : StackLang.HolProg 64 :=
.seq NamedBody384_237 NamedBody384_238

def NamedBody384_240 : StackLang.HolProg 64 :=
.seq NamedBody384_236 NamedBody384_239

def NamedBody384_241 : StackLang.HolProg 64 :=
.seq NamedBody384_235 NamedBody384_240

def NamedBody384_242 : StackLang.HolProg 64 :=
.seq NamedBody384_232 NamedBody384_241

def NamedBody384_243 : StackLang.HolProg 64 :=
.seq NamedBody384_231 NamedBody384_242

def NamedBody384_244 : StackLang.HolProg 64 :=
.seq NamedBody384_228 NamedBody384_243

def NamedBody384_245 : StackLang.HolProg 64 :=
.seq NamedBody384_225 NamedBody384_244

def NamedBody384_246 : StackLang.HolProg 64 :=
.seq NamedBody384_224 NamedBody384_245

def NamedBody384_247 : StackLang.HolProg 64 :=
.seq NamedBody384_221 NamedBody384_246

def NamedBody384_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody384_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1132#64)

def NamedBody384_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody384_251 : StackLang.HolProg 64 :=
.seq NamedBody384_249 NamedBody384_250

def NamedBody384_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody384_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody384_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody384_255 : StackLang.HolProg 64 :=
.seq NamedBody384_253 NamedBody384_254

def NamedBody384_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody384_257 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody384_255 NamedBody384_256

def NamedBody384_258 : StackLang.HolProg 64 :=
.seq NamedBody384_252 NamedBody384_257

def NamedBody384_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody384_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody384_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 384 7

def NamedBody384_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody384_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody384_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody384_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody384_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody384_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody384_268 : StackLang.HolProg 64 :=
.seq NamedBody384_266 NamedBody384_267

def NamedBody384_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody384_270 : StackLang.HolProg 64 :=
.seq NamedBody384_268 NamedBody384_269

def NamedBody384_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody384_272 : StackLang.HolProg 64 :=
.seq NamedBody384_270 NamedBody384_271

def NamedBody384_273 : StackLang.HolProg 64 :=
.seq NamedBody384_265 NamedBody384_272

def NamedBody384_274 : StackLang.HolProg 64 :=
.seq NamedBody384_264 NamedBody384_273

def NamedBody384_275 : StackLang.HolProg 64 :=
.seq NamedBody384_263 NamedBody384_274

def NamedBody384_276 : StackLang.HolProg 64 :=
.seq NamedBody384_262 NamedBody384_275

def NamedBody384_277 : StackLang.HolProg 64 :=
.seq NamedBody384_261 NamedBody384_276

def NamedBody384_278 : StackLang.HolProg 64 :=
.seq NamedBody384_260 NamedBody384_277

def NamedBody384_279 : StackLang.HolProg 64 :=
.seq NamedBody384_259 NamedBody384_278

def NamedBody384_280 : StackLang.HolProg 64 :=
.seq NamedBody384_258 NamedBody384_279

def NamedBody384_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody384_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody384_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody384_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody384_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody384_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody384_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody384_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody384_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 30
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody384_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 16
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody384_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 17
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody384_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody384_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody384_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody384_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 29
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody384_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody384_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 19
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody384_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 18
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody384_299 : StackLang.HolProg 64 :=
.seq NamedBody384_297 NamedBody384_298

def NamedBody384_300 : StackLang.HolProg 64 :=
.seq NamedBody384_296 NamedBody384_299

def NamedBody384_301 : StackLang.HolProg 64 :=
.seq NamedBody384_295 NamedBody384_300

def NamedBody384_302 : StackLang.HolProg 64 :=
.seq NamedBody384_294 NamedBody384_301

def NamedBody384_303 : StackLang.HolProg 64 :=
.seq NamedBody384_293 NamedBody384_302

def NamedBody384_304 : StackLang.HolProg 64 :=
.seq NamedBody384_292 NamedBody384_303

def NamedBody384_305 : StackLang.HolProg 64 :=
.seq NamedBody384_291 NamedBody384_304

def NamedBody384_306 : StackLang.HolProg 64 :=
.seq NamedBody384_290 NamedBody384_305

def NamedBody384_307 : StackLang.HolProg 64 :=
.seq NamedBody384_289 NamedBody384_306

def NamedBody384_308 : StackLang.HolProg 64 :=
.seq NamedBody384_288 NamedBody384_307

def NamedBody384_309 : StackLang.HolProg 64 :=
.seq NamedBody384_287 NamedBody384_308

def NamedBody384_310 : StackLang.HolProg 64 :=
.seq NamedBody384_286 NamedBody384_309

def NamedBody384_311 : StackLang.HolProg 64 :=
.seq NamedBody384_285 NamedBody384_310

def NamedBody384_312 : StackLang.HolProg 64 :=
.seq NamedBody384_284 NamedBody384_311

def NamedBody384_313 : StackLang.HolProg 64 :=
.seq NamedBody384_283 NamedBody384_312

def NamedBody384_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody384_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 30
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody384_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 16
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody384_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 17
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody384_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody384_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody384_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody384_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 29
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody384_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody384_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 19
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody384_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 18
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody384_325 : StackLang.HolProg 64 :=
.seq NamedBody384_323 NamedBody384_324

def NamedBody384_326 : StackLang.HolProg 64 :=
.seq NamedBody384_322 NamedBody384_325

def NamedBody384_327 : StackLang.HolProg 64 :=
.seq NamedBody384_321 NamedBody384_326

def NamedBody384_328 : StackLang.HolProg 64 :=
.seq NamedBody384_320 NamedBody384_327

def NamedBody384_329 : StackLang.HolProg 64 :=
.seq NamedBody384_319 NamedBody384_328

def NamedBody384_330 : StackLang.HolProg 64 :=
.seq NamedBody384_318 NamedBody384_329

def NamedBody384_331 : StackLang.HolProg 64 :=
.seq NamedBody384_317 NamedBody384_330

def NamedBody384_332 : StackLang.HolProg 64 :=
.seq NamedBody384_316 NamedBody384_331

def NamedBody384_333 : StackLang.HolProg 64 :=
.seq NamedBody384_315 NamedBody384_332

def NamedBody384_334 : StackLang.HolProg 64 :=
.seq NamedBody384_314 NamedBody384_333

def NamedBody384_335 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody384_336 : StackLang.HolProg 64 :=
.seq NamedBody384_334 NamedBody384_335

def NamedBody384_337 : StackLang.HolProg 64 :=
.call (some (NamedBody384_313, 1, 384, 6)) (Sum.inl 79) (some (NamedBody384_336, 384, 7))

def NamedBody384_338 : StackLang.HolProg 64 :=
.seq NamedBody384_282 NamedBody384_337

def NamedBody384_339 : StackLang.HolProg 64 :=
.seq NamedBody384_281 NamedBody384_338

def NamedBody384_340 : StackLang.HolProg 64 :=
.seq NamedBody384_280 NamedBody384_339

def NamedBody384_341 : StackLang.HolProg 64 :=
.seq NamedBody384_251 NamedBody384_340

def NamedBody384_342 : StackLang.HolProg 64 :=
.seq NamedBody384_248 NamedBody384_341

def NamedBody384_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody384_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody384_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody384_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody384_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 27 3000#64)

def NamedBody384_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody384_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def NamedBody384_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody384_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 27 9000#64)

def NamedBody384_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody384_353 : StackLang.HolProg 64 :=
.seq NamedBody384_351 NamedBody384_352

def NamedBody384_354 : StackLang.HolProg 64 :=
.seq NamedBody384_350 NamedBody384_353

def NamedBody384_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody384_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody384_357 : StackLang.HolProg 64 :=
.seq NamedBody384_355 NamedBody384_356

def NamedBody384_358 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 30 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody384_354 NamedBody384_357

def NamedBody384_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody384_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody384_361 : StackLang.HolProg 64 :=
.seq NamedBody384_359 NamedBody384_360

def NamedBody384_362 : StackLang.HolProg 64 :=
.seq NamedBody384_358 NamedBody384_361

def NamedBody384_363 : StackLang.HolProg 64 :=
.seq NamedBody384_349 NamedBody384_362

def NamedBody384_364 : StackLang.HolProg 64 :=
.seq NamedBody384_348 NamedBody384_363

def NamedBody384_365 : StackLang.HolProg 64 :=
.seq NamedBody384_347 NamedBody384_364

def NamedBody384_366 : StackLang.HolProg 64 :=
.seq NamedBody384_346 NamedBody384_365

def NamedBody384_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody384_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody384_369 : StackLang.HolProg 64 :=
.seq NamedBody384_367 NamedBody384_368

def NamedBody384_370 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody384_366 NamedBody384_369

def NamedBody384_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody384_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody384_373 : StackLang.HolProg 64 :=
.seq NamedBody384_371 NamedBody384_372

def NamedBody384_374 : StackLang.HolProg 64 :=
.seq NamedBody384_370 NamedBody384_373

def NamedBody384_375 : StackLang.HolProg 64 :=
.seq NamedBody384_345 NamedBody384_374

def NamedBody384_376 : StackLang.HolProg 64 :=
.seq NamedBody384_344 NamedBody384_375

def NamedBody384_377 : StackLang.HolProg 64 :=
.seq NamedBody384_343 NamedBody384_376

def NamedBody384_378 : StackLang.HolProg 64 :=
.seq NamedBody384_342 NamedBody384_377

def NamedBody384_379 : StackLang.HolProg 64 :=
.seq NamedBody384_247 NamedBody384_378

def NamedBody384_380 : StackLang.HolProg 64 :=
.seq NamedBody384_218 NamedBody384_379

def NamedBody384_381 : StackLang.HolProg 64 :=
.seq NamedBody384_217 NamedBody384_380

def NamedBody384_382 : StackLang.HolProg 64 :=
.seq NamedBody384_214 NamedBody384_381

def NamedBody384_383 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 19 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody384_213 NamedBody384_382

def NamedBody384_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody384_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 0#64)

def NamedBody384_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 14 0#64)

def NamedBody384_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody384_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 0#64))

def NamedBody384_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody384_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody384_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody384_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 208#64))

def NamedBody384_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody384_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 216#64))

def NamedBody384_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 28 0#64)

def NamedBody384_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody384_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody384_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody384_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody384_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody384_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 24#64)

def NamedBody384_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 28
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 28)))

def NamedBody384_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 12 1 1 11))

def NamedBody384_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody384_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody384_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 15
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def NamedBody384_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody384_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 2000#64)

def NamedBody384_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 15
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 15)))

def NamedBody384_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 12 1 1 11))

def NamedBody384_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody384_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def NamedBody384_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 2900#64)

def NamedBody384_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 8 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody384_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody384_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 15
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def NamedBody384_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody384_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 14)))

def NamedBody384_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 14 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def NamedBody384_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody384_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 28 28
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody384_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody384_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def NamedBody384_424 : StackLang.HolProg 64 :=
.seq NamedBody384_422 NamedBody384_423

def NamedBody384_425 : StackLang.HolProg 64 :=
.seq NamedBody384_421 NamedBody384_424

def NamedBody384_426 : StackLang.HolProg 64 :=
.seq NamedBody384_420 NamedBody384_425

def NamedBody384_427 : StackLang.HolProg 64 :=
.seq NamedBody384_419 NamedBody384_426

def NamedBody384_428 : StackLang.HolProg 64 :=
.seq NamedBody384_418 NamedBody384_427

def NamedBody384_429 : StackLang.HolProg 64 :=
.seq NamedBody384_417 NamedBody384_428

def NamedBody384_430 : StackLang.HolProg 64 :=
.seq NamedBody384_416 NamedBody384_429

def NamedBody384_431 : StackLang.HolProg 64 :=
.seq NamedBody384_415 NamedBody384_430

def NamedBody384_432 : StackLang.HolProg 64 :=
.seq NamedBody384_414 NamedBody384_431

def NamedBody384_433 : StackLang.HolProg 64 :=
.seq NamedBody384_413 NamedBody384_432

def NamedBody384_434 : StackLang.HolProg 64 :=
.seq NamedBody384_412 NamedBody384_433

def NamedBody384_435 : StackLang.HolProg 64 :=
.seq NamedBody384_411 NamedBody384_434

def NamedBody384_436 : StackLang.HolProg 64 :=
.seq NamedBody384_410 NamedBody384_435

def NamedBody384_437 : StackLang.HolProg 64 :=
.seq NamedBody384_409 NamedBody384_436

def NamedBody384_438 : StackLang.HolProg 64 :=
.seq NamedBody384_408 NamedBody384_437

def NamedBody384_439 : StackLang.HolProg 64 :=
.seq NamedBody384_407 NamedBody384_438

def NamedBody384_440 : StackLang.HolProg 64 :=
.seq NamedBody384_406 NamedBody384_439

def NamedBody384_441 : StackLang.HolProg 64 :=
.seq NamedBody384_405 NamedBody384_440

def NamedBody384_442 : StackLang.HolProg 64 :=
.seq NamedBody384_404 NamedBody384_441

def NamedBody384_443 : StackLang.HolProg 64 :=
.seq NamedBody384_403 NamedBody384_442

def NamedBody384_444 : StackLang.HolProg 64 :=
.seq NamedBody384_402 NamedBody384_443

def NamedBody384_445 : StackLang.HolProg 64 :=
.seq NamedBody384_401 NamedBody384_444

def NamedBody384_446 : StackLang.HolProg 64 :=
.seq NamedBody384_400 NamedBody384_445

def NamedBody384_447 : StackLang.HolProg 64 :=
.seq NamedBody384_399 NamedBody384_446

def NamedBody384_448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody384_449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody384_450 : StackLang.HolProg 64 :=
.seq NamedBody384_448 NamedBody384_449

def NamedBody384_451 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 28 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody384_447 NamedBody384_450

def NamedBody384_452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody384_453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody384_454 : StackLang.HolProg 64 :=
.seq NamedBody384_452 NamedBody384_453

def NamedBody384_455 : StackLang.HolProg 64 :=
.seq NamedBody384_451 NamedBody384_454

def NamedBody384_456 : StackLang.HolProg 64 :=
.seq NamedBody384_398 NamedBody384_455

def NamedBody384_457 : StackLang.HolProg 64 :=
.loop NamedBody384_456

def NamedBody384_458 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody384_459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody384_460 : StackLang.HolProg 64 :=
.seq NamedBody384_458 NamedBody384_459

def NamedBody384_461 : StackLang.HolProg 64 :=
.seq NamedBody384_457 NamedBody384_460

def NamedBody384_462 : StackLang.HolProg 64 :=
.seq NamedBody384_397 NamedBody384_461

def NamedBody384_463 : StackLang.HolProg 64 :=
.seq NamedBody384_396 NamedBody384_462

def NamedBody384_464 : StackLang.HolProg 64 :=
.seq NamedBody384_395 NamedBody384_463

def NamedBody384_465 : StackLang.HolProg 64 :=
.seq NamedBody384_394 NamedBody384_464

def NamedBody384_466 : StackLang.HolProg 64 :=
.seq NamedBody384_393 NamedBody384_465

def NamedBody384_467 : StackLang.HolProg 64 :=
.seq NamedBody384_392 NamedBody384_466

def NamedBody384_468 : StackLang.HolProg 64 :=
.seq NamedBody384_391 NamedBody384_467

def NamedBody384_469 : StackLang.HolProg 64 :=
.seq NamedBody384_390 NamedBody384_468

def NamedBody384_470 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody384_471 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody384_472 : StackLang.HolProg 64 :=
.seq NamedBody384_470 NamedBody384_471

def NamedBody384_473 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody384_469 NamedBody384_472

def NamedBody384_474 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody384_475 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody384_476 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 14
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def NamedBody384_477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody384_478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def NamedBody384_479 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody384_480 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def NamedBody384_481 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody384_482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 0#64))

def NamedBody384_483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 4#64)

def NamedBody384_484 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody384_485 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody384_486 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 280#64))

def NamedBody384_487 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 7816#64)

def NamedBody384_488 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody384_489 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 12 1 1 11))

def NamedBody384_490 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody384_491 : StackLang.HolProg 64 :=
.seq NamedBody384_489 NamedBody384_490

def NamedBody384_492 : StackLang.HolProg 64 :=
.seq NamedBody384_488 NamedBody384_491

def NamedBody384_493 : StackLang.HolProg 64 :=
.seq NamedBody384_487 NamedBody384_492

def NamedBody384_494 : StackLang.HolProg 64 :=
.seq NamedBody384_486 NamedBody384_493

def NamedBody384_495 : StackLang.HolProg 64 :=
.seq NamedBody384_485 NamedBody384_494

def NamedBody384_496 : StackLang.HolProg 64 :=
.seq NamedBody384_484 NamedBody384_495

def NamedBody384_497 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody384_498 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody384_499 : StackLang.HolProg 64 :=
.seq NamedBody384_497 NamedBody384_498

def NamedBody384_500 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12) NamedBody384_496 NamedBody384_499

def NamedBody384_501 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody384_502 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody384_503 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 11 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def NamedBody384_504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody384_505 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 14
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody384_506 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody384_507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 12000#64)

def NamedBody384_508 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 27
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody384_509 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody384_510 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody384_511 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody384_512 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody384_513 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody384_514 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 29)))

def NamedBody384_515 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody384_516 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody384_517 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody384_518 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def NamedBody384_519 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody384_520 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody384_521 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody384_522 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody384_523 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def NamedBody384_524 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 13

def NamedBody384_525 : StackLang.HolProg 64 :=
.seq NamedBody384_523 NamedBody384_524

def NamedBody384_526 : StackLang.HolProg 64 :=
.seq NamedBody384_522 NamedBody384_525

def NamedBody384_527 : StackLang.HolProg 64 :=
.seq NamedBody384_521 NamedBody384_526

def NamedBody384_528 : StackLang.HolProg 64 :=
.seq NamedBody384_520 NamedBody384_527

def NamedBody384_529 : StackLang.HolProg 64 :=
.seq NamedBody384_519 NamedBody384_528

def NamedBody384_530 : StackLang.HolProg 64 :=
.seq NamedBody384_518 NamedBody384_529

def NamedBody384_531 : StackLang.HolProg 64 :=
.seq NamedBody384_517 NamedBody384_530

def NamedBody384_532 : StackLang.HolProg 64 :=
.seq NamedBody384_516 NamedBody384_531

def NamedBody384_533 : StackLang.HolProg 64 :=
.seq NamedBody384_515 NamedBody384_532

def NamedBody384_534 : StackLang.HolProg 64 :=
.seq NamedBody384_514 NamedBody384_533

def NamedBody384_535 : StackLang.HolProg 64 :=
.seq NamedBody384_513 NamedBody384_534

def NamedBody384_536 : StackLang.HolProg 64 :=
.seq NamedBody384_512 NamedBody384_535

def NamedBody384_537 : StackLang.HolProg 64 :=
.seq NamedBody384_511 NamedBody384_536

def NamedBody384_538 : StackLang.HolProg 64 :=
.seq NamedBody384_510 NamedBody384_537

def NamedBody384_539 : StackLang.HolProg 64 :=
.seq NamedBody384_509 NamedBody384_538

def NamedBody384_540 : StackLang.HolProg 64 :=
.seq NamedBody384_508 NamedBody384_539

def NamedBody384_541 : StackLang.HolProg 64 :=
.seq NamedBody384_507 NamedBody384_540

def NamedBody384_542 : StackLang.HolProg 64 :=
.seq NamedBody384_506 NamedBody384_541

def NamedBody384_543 : StackLang.HolProg 64 :=
.seq NamedBody384_505 NamedBody384_542

def NamedBody384_544 : StackLang.HolProg 64 :=
.seq NamedBody384_504 NamedBody384_543

def NamedBody384_545 : StackLang.HolProg 64 :=
.seq NamedBody384_503 NamedBody384_544

def NamedBody384_546 : StackLang.HolProg 64 :=
.seq NamedBody384_502 NamedBody384_545

def NamedBody384_547 : StackLang.HolProg 64 :=
.seq NamedBody384_501 NamedBody384_546

def NamedBody384_548 : StackLang.HolProg 64 :=
.seq NamedBody384_500 NamedBody384_547

def NamedBody384_549 : StackLang.HolProg 64 :=
.seq NamedBody384_483 NamedBody384_548

def NamedBody384_550 : StackLang.HolProg 64 :=
.seq NamedBody384_482 NamedBody384_549

def NamedBody384_551 : StackLang.HolProg 64 :=
.seq NamedBody384_481 NamedBody384_550

def NamedBody384_552 : StackLang.HolProg 64 :=
.seq NamedBody384_480 NamedBody384_551

def NamedBody384_553 : StackLang.HolProg 64 :=
.seq NamedBody384_479 NamedBody384_552

def NamedBody384_554 : StackLang.HolProg 64 :=
.seq NamedBody384_478 NamedBody384_553

def NamedBody384_555 : StackLang.HolProg 64 :=
.seq NamedBody384_477 NamedBody384_554

def NamedBody384_556 : StackLang.HolProg 64 :=
.seq NamedBody384_476 NamedBody384_555

def NamedBody384_557 : StackLang.HolProg 64 :=
.seq NamedBody384_475 NamedBody384_556

def NamedBody384_558 : StackLang.HolProg 64 :=
.seq NamedBody384_474 NamedBody384_557

def NamedBody384_559 : StackLang.HolProg 64 :=
.seq NamedBody384_473 NamedBody384_558

def NamedBody384_560 : StackLang.HolProg 64 :=
.seq NamedBody384_389 NamedBody384_559

def NamedBody384_561 : StackLang.HolProg 64 :=
.seq NamedBody384_388 NamedBody384_560

def NamedBody384_562 : StackLang.HolProg 64 :=
.seq NamedBody384_387 NamedBody384_561

def NamedBody384_563 : StackLang.HolProg 64 :=
.seq NamedBody384_386 NamedBody384_562

def NamedBody384_564 : StackLang.HolProg 64 :=
.seq NamedBody384_385 NamedBody384_563

def NamedBody384_565 : StackLang.HolProg 64 :=
.seq NamedBody384_384 NamedBody384_564

def NamedBody384_566 : StackLang.HolProg 64 :=
.seq NamedBody384_383 NamedBody384_565

def NamedBody384_567 : StackLang.HolProg 64 :=
.seq NamedBody384_192 NamedBody384_566

def NamedBody384_568 : StackLang.HolProg 64 :=
.seq NamedBody384_191 NamedBody384_567

def NamedBody384_569 : StackLang.HolProg 64 :=
.seq NamedBody384_190 NamedBody384_568

def NamedBody384_570 : StackLang.HolProg 64 :=
.seq NamedBody384_189 NamedBody384_569

def NamedBody384_571 : StackLang.HolProg 64 :=
.seq NamedBody384_188 NamedBody384_570

def NamedBody384_572 : StackLang.HolProg 64 :=
.seq NamedBody384_187 NamedBody384_571

def NamedBody384_573 : StackLang.HolProg 64 :=
.seq NamedBody384_96 NamedBody384_572

def NamedBody384_574 : StackLang.HolProg 64 :=
.seq NamedBody384_89 NamedBody384_573

def NamedBody384_575 : StackLang.HolProg 64 :=
.seq NamedBody384_88 NamedBody384_574

def NamedBody384_576 : StackLang.HolProg 64 :=
.seq NamedBody384_87 NamedBody384_575

def NamedBody384_577 : StackLang.HolProg 64 :=
.seq NamedBody384_86 NamedBody384_576

def NamedBody384_578 : StackLang.HolProg 64 :=
.seq NamedBody384_85 NamedBody384_577

def NamedBody384_579 : StackLang.HolProg 64 :=
.seq NamedBody384_84 NamedBody384_578

def NamedBody384_580 : StackLang.HolProg 64 :=
.seq NamedBody384_83 NamedBody384_579

def NamedBody384_581 : StackLang.HolProg 64 :=
.seq NamedBody384_82 NamedBody384_580

def NamedBody384_582 : StackLang.HolProg 64 :=
.seq NamedBody384_81 NamedBody384_581

def NamedBody384_583 : StackLang.HolProg 64 :=
.seq NamedBody384_80 NamedBody384_582

def NamedBody384_584 : StackLang.HolProg 64 :=
.seq NamedBody384_79 NamedBody384_583

def NamedBody384_585 : StackLang.HolProg 64 :=
.seq NamedBody384_78 NamedBody384_584

def NamedBody384_586 : StackLang.HolProg 64 :=
.seq NamedBody384_77 NamedBody384_585

def NamedBody384_587 : StackLang.HolProg 64 :=
.seq NamedBody384_76 NamedBody384_586

def NamedBody384_588 : StackLang.HolProg 64 :=
.seq NamedBody384_21 NamedBody384_587

def NamedBody384_589 : StackLang.HolProg 64 :=
.seq NamedBody384_12 NamedBody384_588

def NamedBody384_590 : StackLang.HolProg 64 :=
.seq NamedBody384_11 NamedBody384_589

def NamedBody384_591 : StackLang.HolProg 64 :=
.seq NamedBody384_10 NamedBody384_590

def NamedBody384_592 : StackLang.HolProg 64 :=
.seq NamedBody384_9 NamedBody384_591

def NamedBody384_593 : StackLang.HolProg 64 :=
.seq NamedBody384_6 NamedBody384_592

def Named384 : Nat × StackLang.HolProg 64 := (384, NamedBody384_593)
theorem Named384_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed384 = Named384 := by
  kernel_rfl
#print axioms Named384_eq
end InitECandidate.Proofs.BackendStages
