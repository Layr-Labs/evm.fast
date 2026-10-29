import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed692
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody692_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def NamedBody692_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody692_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody692_3 : StackLang.HolProg 64 :=
.seq NamedBody692_1 NamedBody692_2

def NamedBody692_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody692_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody692_3 NamedBody692_4

def NamedBody692_6 : StackLang.HolProg 64 :=
.seq NamedBody692_0 NamedBody692_5

def NamedBody692_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody692_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody692_9 : StackLang.HolProg 64 :=
.seq NamedBody692_7 NamedBody692_8

def NamedBody692_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 12#64)

def NamedBody692_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody692_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody692_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody692_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody692_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody692_16 : StackLang.HolProg 64 :=
.seq NamedBody692_14 NamedBody692_15

def NamedBody692_17 : StackLang.HolProg 64 :=
.seq NamedBody692_13 NamedBody692_16

def NamedBody692_18 : StackLang.HolProg 64 :=
.seq NamedBody692_12 NamedBody692_17

def NamedBody692_19 : StackLang.HolProg 64 :=
.seq NamedBody692_11 NamedBody692_18

def NamedBody692_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody692_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2969#64)

def NamedBody692_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody692_23 : StackLang.HolProg 64 :=
.seq NamedBody692_21 NamedBody692_22

def NamedBody692_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody692_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody692_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody692_27 : StackLang.HolProg 64 :=
.seq NamedBody692_25 NamedBody692_26

def NamedBody692_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody692_29 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody692_27 NamedBody692_28

def NamedBody692_30 : StackLang.HolProg 64 :=
.seq NamedBody692_24 NamedBody692_29

def NamedBody692_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody692_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody692_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 692 3

def NamedBody692_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody692_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody692_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody692_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody692_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody692_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody692_40 : StackLang.HolProg 64 :=
.seq NamedBody692_38 NamedBody692_39

def NamedBody692_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody692_42 : StackLang.HolProg 64 :=
.seq NamedBody692_40 NamedBody692_41

def NamedBody692_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody692_44 : StackLang.HolProg 64 :=
.seq NamedBody692_42 NamedBody692_43

def NamedBody692_45 : StackLang.HolProg 64 :=
.seq NamedBody692_37 NamedBody692_44

def NamedBody692_46 : StackLang.HolProg 64 :=
.seq NamedBody692_36 NamedBody692_45

def NamedBody692_47 : StackLang.HolProg 64 :=
.seq NamedBody692_35 NamedBody692_46

def NamedBody692_48 : StackLang.HolProg 64 :=
.seq NamedBody692_34 NamedBody692_47

def NamedBody692_49 : StackLang.HolProg 64 :=
.seq NamedBody692_33 NamedBody692_48

def NamedBody692_50 : StackLang.HolProg 64 :=
.seq NamedBody692_32 NamedBody692_49

def NamedBody692_51 : StackLang.HolProg 64 :=
.seq NamedBody692_31 NamedBody692_50

def NamedBody692_52 : StackLang.HolProg 64 :=
.seq NamedBody692_30 NamedBody692_51

def NamedBody692_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody692_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody692_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody692_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody692_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody692_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody692_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody692_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody692_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody692_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody692_63 : StackLang.HolProg 64 :=
.seq NamedBody692_61 NamedBody692_62

def NamedBody692_64 : StackLang.HolProg 64 :=
.seq NamedBody692_60 NamedBody692_63

def NamedBody692_65 : StackLang.HolProg 64 :=
.seq NamedBody692_59 NamedBody692_64

def NamedBody692_66 : StackLang.HolProg 64 :=
.seq NamedBody692_58 NamedBody692_65

def NamedBody692_67 : StackLang.HolProg 64 :=
.seq NamedBody692_57 NamedBody692_66

def NamedBody692_68 : StackLang.HolProg 64 :=
.seq NamedBody692_56 NamedBody692_67

def NamedBody692_69 : StackLang.HolProg 64 :=
.seq NamedBody692_55 NamedBody692_68

def NamedBody692_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody692_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody692_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody692_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody692_74 : StackLang.HolProg 64 :=
.seq NamedBody692_72 NamedBody692_73

def NamedBody692_75 : StackLang.HolProg 64 :=
.seq NamedBody692_71 NamedBody692_74

def NamedBody692_76 : StackLang.HolProg 64 :=
.seq NamedBody692_70 NamedBody692_75

def NamedBody692_77 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody692_78 : StackLang.HolProg 64 :=
.seq NamedBody692_76 NamedBody692_77

def NamedBody692_79 : StackLang.HolProg 64 :=
.call (some (NamedBody692_69, 1, 692, 2)) (Sum.inl 679) (some (NamedBody692_78, 692, 3))

def NamedBody692_80 : StackLang.HolProg 64 :=
.seq NamedBody692_54 NamedBody692_79

def NamedBody692_81 : StackLang.HolProg 64 :=
.seq NamedBody692_53 NamedBody692_80

def NamedBody692_82 : StackLang.HolProg 64 :=
.seq NamedBody692_52 NamedBody692_81

def NamedBody692_83 : StackLang.HolProg 64 :=
.seq NamedBody692_23 NamedBody692_82

def NamedBody692_84 : StackLang.HolProg 64 :=
.seq NamedBody692_20 NamedBody692_83

def NamedBody692_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody692_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def NamedBody692_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody692_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def NamedBody692_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody692_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody692_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody692_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody692_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody692_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody692_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def NamedBody692_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody692_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def NamedBody692_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody692_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody692_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody692_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody692_102 : StackLang.HolProg 64 :=
.seq NamedBody692_100 NamedBody692_101

def NamedBody692_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody692_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody692_105 : StackLang.HolProg 64 :=
.seq NamedBody692_103 NamedBody692_104

def NamedBody692_106 : StackLang.HolProg 64 :=
.seq NamedBody692_102 NamedBody692_105

def NamedBody692_107 : StackLang.HolProg 64 :=
.seq NamedBody692_99 NamedBody692_106

def NamedBody692_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody692_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2970#64)

def NamedBody692_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody692_111 : StackLang.HolProg 64 :=
.seq NamedBody692_109 NamedBody692_110

def NamedBody692_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody692_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody692_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody692_115 : StackLang.HolProg 64 :=
.seq NamedBody692_113 NamedBody692_114

def NamedBody692_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody692_117 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody692_115 NamedBody692_116

def NamedBody692_118 : StackLang.HolProg 64 :=
.seq NamedBody692_112 NamedBody692_117

def NamedBody692_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody692_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody692_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 692 5

def NamedBody692_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody692_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody692_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody692_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody692_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody692_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody692_128 : StackLang.HolProg 64 :=
.seq NamedBody692_126 NamedBody692_127

def NamedBody692_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody692_130 : StackLang.HolProg 64 :=
.seq NamedBody692_128 NamedBody692_129

def NamedBody692_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody692_132 : StackLang.HolProg 64 :=
.seq NamedBody692_130 NamedBody692_131

def NamedBody692_133 : StackLang.HolProg 64 :=
.seq NamedBody692_125 NamedBody692_132

def NamedBody692_134 : StackLang.HolProg 64 :=
.seq NamedBody692_124 NamedBody692_133

def NamedBody692_135 : StackLang.HolProg 64 :=
.seq NamedBody692_123 NamedBody692_134

def NamedBody692_136 : StackLang.HolProg 64 :=
.seq NamedBody692_122 NamedBody692_135

def NamedBody692_137 : StackLang.HolProg 64 :=
.seq NamedBody692_121 NamedBody692_136

def NamedBody692_138 : StackLang.HolProg 64 :=
.seq NamedBody692_120 NamedBody692_137

def NamedBody692_139 : StackLang.HolProg 64 :=
.seq NamedBody692_119 NamedBody692_138

def NamedBody692_140 : StackLang.HolProg 64 :=
.seq NamedBody692_118 NamedBody692_139

def NamedBody692_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody692_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody692_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody692_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody692_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody692_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody692_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody692_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody692_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody692_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody692_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody692_152 : StackLang.HolProg 64 :=
.seq NamedBody692_150 NamedBody692_151

def NamedBody692_153 : StackLang.HolProg 64 :=
.seq NamedBody692_149 NamedBody692_152

def NamedBody692_154 : StackLang.HolProg 64 :=
.seq NamedBody692_148 NamedBody692_153

def NamedBody692_155 : StackLang.HolProg 64 :=
.seq NamedBody692_147 NamedBody692_154

def NamedBody692_156 : StackLang.HolProg 64 :=
.seq NamedBody692_146 NamedBody692_155

def NamedBody692_157 : StackLang.HolProg 64 :=
.seq NamedBody692_145 NamedBody692_156

def NamedBody692_158 : StackLang.HolProg 64 :=
.seq NamedBody692_144 NamedBody692_157

def NamedBody692_159 : StackLang.HolProg 64 :=
.seq NamedBody692_143 NamedBody692_158

def NamedBody692_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody692_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody692_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody692_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody692_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody692_165 : StackLang.HolProg 64 :=
.seq NamedBody692_163 NamedBody692_164

def NamedBody692_166 : StackLang.HolProg 64 :=
.seq NamedBody692_162 NamedBody692_165

def NamedBody692_167 : StackLang.HolProg 64 :=
.seq NamedBody692_161 NamedBody692_166

def NamedBody692_168 : StackLang.HolProg 64 :=
.seq NamedBody692_160 NamedBody692_167

def NamedBody692_169 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody692_170 : StackLang.HolProg 64 :=
.seq NamedBody692_168 NamedBody692_169

def NamedBody692_171 : StackLang.HolProg 64 :=
.call (some (NamedBody692_159, 1, 692, 4)) (Sum.inl 669) (some (NamedBody692_170, 692, 5))

def NamedBody692_172 : StackLang.HolProg 64 :=
.seq NamedBody692_142 NamedBody692_171

def NamedBody692_173 : StackLang.HolProg 64 :=
.seq NamedBody692_141 NamedBody692_172

def NamedBody692_174 : StackLang.HolProg 64 :=
.seq NamedBody692_140 NamedBody692_173

def NamedBody692_175 : StackLang.HolProg 64 :=
.seq NamedBody692_111 NamedBody692_174

def NamedBody692_176 : StackLang.HolProg 64 :=
.seq NamedBody692_108 NamedBody692_175

def NamedBody692_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody692_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody692_179 : StackLang.HolProg 64 :=
.seq NamedBody692_177 NamedBody692_178

def NamedBody692_180 : StackLang.HolProg 64 :=
.seq NamedBody692_176 NamedBody692_179

def NamedBody692_181 : StackLang.HolProg 64 :=
.seq NamedBody692_107 NamedBody692_180

def NamedBody692_182 : StackLang.HolProg 64 :=
.seq NamedBody692_98 NamedBody692_181

def NamedBody692_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody692_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody692_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody692_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody692_187 : StackLang.HolProg 64 :=
.seq NamedBody692_185 NamedBody692_186

def NamedBody692_188 : StackLang.HolProg 64 :=
.seq NamedBody692_184 NamedBody692_187

def NamedBody692_189 : StackLang.HolProg 64 :=
.seq NamedBody692_183 NamedBody692_188

def NamedBody692_190 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody692_182 NamedBody692_189

def NamedBody692_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody692_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody692_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def NamedBody692_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody692_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody692_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody692_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody692_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody692_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 13 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def NamedBody692_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody692_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody692_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody692_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody692_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 1#64)

def NamedBody692_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody692_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody692_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody692_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody692_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody692_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody692_211 : StackLang.HolProg 64 :=
.seq NamedBody692_209 NamedBody692_210

def NamedBody692_212 : StackLang.HolProg 64 :=
.seq NamedBody692_208 NamedBody692_211

def NamedBody692_213 : StackLang.HolProg 64 :=
.seq NamedBody692_207 NamedBody692_212

def NamedBody692_214 : StackLang.HolProg 64 :=
.seq NamedBody692_206 NamedBody692_213

def NamedBody692_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody692_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2971#64)

def NamedBody692_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody692_218 : StackLang.HolProg 64 :=
.seq NamedBody692_216 NamedBody692_217

def NamedBody692_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody692_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody692_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody692_222 : StackLang.HolProg 64 :=
.seq NamedBody692_220 NamedBody692_221

def NamedBody692_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody692_224 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody692_222 NamedBody692_223

def NamedBody692_225 : StackLang.HolProg 64 :=
.seq NamedBody692_219 NamedBody692_224

def NamedBody692_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody692_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody692_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 692 7

def NamedBody692_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody692_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody692_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody692_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody692_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody692_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody692_235 : StackLang.HolProg 64 :=
.seq NamedBody692_233 NamedBody692_234

def NamedBody692_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody692_237 : StackLang.HolProg 64 :=
.seq NamedBody692_235 NamedBody692_236

def NamedBody692_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody692_239 : StackLang.HolProg 64 :=
.seq NamedBody692_237 NamedBody692_238

def NamedBody692_240 : StackLang.HolProg 64 :=
.seq NamedBody692_232 NamedBody692_239

def NamedBody692_241 : StackLang.HolProg 64 :=
.seq NamedBody692_231 NamedBody692_240

def NamedBody692_242 : StackLang.HolProg 64 :=
.seq NamedBody692_230 NamedBody692_241

def NamedBody692_243 : StackLang.HolProg 64 :=
.seq NamedBody692_229 NamedBody692_242

def NamedBody692_244 : StackLang.HolProg 64 :=
.seq NamedBody692_228 NamedBody692_243

def NamedBody692_245 : StackLang.HolProg 64 :=
.seq NamedBody692_227 NamedBody692_244

def NamedBody692_246 : StackLang.HolProg 64 :=
.seq NamedBody692_226 NamedBody692_245

def NamedBody692_247 : StackLang.HolProg 64 :=
.seq NamedBody692_225 NamedBody692_246

def NamedBody692_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody692_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody692_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody692_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody692_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody692_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody692_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody692_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody692_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody692_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody692_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody692_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody692_260 : StackLang.HolProg 64 :=
.seq NamedBody692_258 NamedBody692_259

def NamedBody692_261 : StackLang.HolProg 64 :=
.seq NamedBody692_257 NamedBody692_260

def NamedBody692_262 : StackLang.HolProg 64 :=
.seq NamedBody692_256 NamedBody692_261

def NamedBody692_263 : StackLang.HolProg 64 :=
.seq NamedBody692_255 NamedBody692_262

def NamedBody692_264 : StackLang.HolProg 64 :=
.seq NamedBody692_254 NamedBody692_263

def NamedBody692_265 : StackLang.HolProg 64 :=
.seq NamedBody692_253 NamedBody692_264

def NamedBody692_266 : StackLang.HolProg 64 :=
.seq NamedBody692_252 NamedBody692_265

def NamedBody692_267 : StackLang.HolProg 64 :=
.seq NamedBody692_251 NamedBody692_266

def NamedBody692_268 : StackLang.HolProg 64 :=
.seq NamedBody692_250 NamedBody692_267

def NamedBody692_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody692_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody692_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody692_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody692_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody692_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody692_275 : StackLang.HolProg 64 :=
.seq NamedBody692_273 NamedBody692_274

def NamedBody692_276 : StackLang.HolProg 64 :=
.seq NamedBody692_272 NamedBody692_275

def NamedBody692_277 : StackLang.HolProg 64 :=
.seq NamedBody692_271 NamedBody692_276

def NamedBody692_278 : StackLang.HolProg 64 :=
.seq NamedBody692_270 NamedBody692_277

def NamedBody692_279 : StackLang.HolProg 64 :=
.seq NamedBody692_269 NamedBody692_278

def NamedBody692_280 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody692_281 : StackLang.HolProg 64 :=
.seq NamedBody692_279 NamedBody692_280

def NamedBody692_282 : StackLang.HolProg 64 :=
.call (some (NamedBody692_268, 1, 692, 6)) (Sum.inl 668) (some (NamedBody692_281, 692, 7))

def NamedBody692_283 : StackLang.HolProg 64 :=
.seq NamedBody692_249 NamedBody692_282

def NamedBody692_284 : StackLang.HolProg 64 :=
.seq NamedBody692_248 NamedBody692_283

def NamedBody692_285 : StackLang.HolProg 64 :=
.seq NamedBody692_247 NamedBody692_284

def NamedBody692_286 : StackLang.HolProg 64 :=
.seq NamedBody692_218 NamedBody692_285

def NamedBody692_287 : StackLang.HolProg 64 :=
.seq NamedBody692_215 NamedBody692_286

def NamedBody692_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody692_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 1#64)

def NamedBody692_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody692_291 : StackLang.HolProg 64 :=
.seq NamedBody692_289 NamedBody692_290

def NamedBody692_292 : StackLang.HolProg 64 :=
.seq NamedBody692_288 NamedBody692_291

def NamedBody692_293 : StackLang.HolProg 64 :=
.seq NamedBody692_287 NamedBody692_292

def NamedBody692_294 : StackLang.HolProg 64 :=
.seq NamedBody692_214 NamedBody692_293

def NamedBody692_295 : StackLang.HolProg 64 :=
.seq NamedBody692_205 NamedBody692_294

def NamedBody692_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody692_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody692_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody692_299 : StackLang.HolProg 64 :=
.seq NamedBody692_297 NamedBody692_298

def NamedBody692_300 : StackLang.HolProg 64 :=
.seq NamedBody692_296 NamedBody692_299

def NamedBody692_301 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13) NamedBody692_295 NamedBody692_300

def NamedBody692_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody692_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody692_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody692_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody692_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody692_307 : StackLang.HolProg 64 :=
.seq NamedBody692_305 NamedBody692_306

def NamedBody692_308 : StackLang.HolProg 64 :=
.seq NamedBody692_304 NamedBody692_307

def NamedBody692_309 : StackLang.HolProg 64 :=
.seq NamedBody692_303 NamedBody692_308

def NamedBody692_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def NamedBody692_311 : StackLang.HolProg 64 :=
.seq NamedBody692_309 NamedBody692_310

def NamedBody692_312 : StackLang.HolProg 64 :=
.seq NamedBody692_302 NamedBody692_311

def NamedBody692_313 : StackLang.HolProg 64 :=
.seq NamedBody692_301 NamedBody692_312

def NamedBody692_314 : StackLang.HolProg 64 :=
.seq NamedBody692_204 NamedBody692_313

def NamedBody692_315 : StackLang.HolProg 64 :=
.seq NamedBody692_203 NamedBody692_314

def NamedBody692_316 : StackLang.HolProg 64 :=
.seq NamedBody692_202 NamedBody692_315

def NamedBody692_317 : StackLang.HolProg 64 :=
.seq NamedBody692_201 NamedBody692_316

def NamedBody692_318 : StackLang.HolProg 64 :=
.seq NamedBody692_200 NamedBody692_317

def NamedBody692_319 : StackLang.HolProg 64 :=
.seq NamedBody692_199 NamedBody692_318

def NamedBody692_320 : StackLang.HolProg 64 :=
.seq NamedBody692_198 NamedBody692_319

def NamedBody692_321 : StackLang.HolProg 64 :=
.seq NamedBody692_197 NamedBody692_320

def NamedBody692_322 : StackLang.HolProg 64 :=
.seq NamedBody692_196 NamedBody692_321

def NamedBody692_323 : StackLang.HolProg 64 :=
.seq NamedBody692_195 NamedBody692_322

def NamedBody692_324 : StackLang.HolProg 64 :=
.seq NamedBody692_194 NamedBody692_323

def NamedBody692_325 : StackLang.HolProg 64 :=
.seq NamedBody692_193 NamedBody692_324

def NamedBody692_326 : StackLang.HolProg 64 :=
.seq NamedBody692_192 NamedBody692_325

def NamedBody692_327 : StackLang.HolProg 64 :=
.seq NamedBody692_191 NamedBody692_326

def NamedBody692_328 : StackLang.HolProg 64 :=
.seq NamedBody692_190 NamedBody692_327

def NamedBody692_329 : StackLang.HolProg 64 :=
.seq NamedBody692_97 NamedBody692_328

def NamedBody692_330 : StackLang.HolProg 64 :=
.seq NamedBody692_96 NamedBody692_329

def NamedBody692_331 : StackLang.HolProg 64 :=
.seq NamedBody692_95 NamedBody692_330

def NamedBody692_332 : StackLang.HolProg 64 :=
.seq NamedBody692_94 NamedBody692_331

def NamedBody692_333 : StackLang.HolProg 64 :=
.seq NamedBody692_93 NamedBody692_332

def NamedBody692_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody692_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody692_336 : StackLang.HolProg 64 :=
.seq NamedBody692_334 NamedBody692_335

def NamedBody692_337 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody692_333 NamedBody692_336

def NamedBody692_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody692_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody692_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody692_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody692_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody692_343 : StackLang.HolProg 64 :=
.seq NamedBody692_341 NamedBody692_342

def NamedBody692_344 : StackLang.HolProg 64 :=
.seq NamedBody692_340 NamedBody692_343

def NamedBody692_345 : StackLang.HolProg 64 :=
.seq NamedBody692_339 NamedBody692_344

def NamedBody692_346 : StackLang.HolProg 64 :=
.seq NamedBody692_338 NamedBody692_345

def NamedBody692_347 : StackLang.HolProg 64 :=
.seq NamedBody692_337 NamedBody692_346

def NamedBody692_348 : StackLang.HolProg 64 :=
.seq NamedBody692_92 NamedBody692_347

def NamedBody692_349 : StackLang.HolProg 64 :=
.seq NamedBody692_91 NamedBody692_348

def NamedBody692_350 : StackLang.HolProg 64 :=
.loop NamedBody692_349

def NamedBody692_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody692_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody692_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody692_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody692_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def NamedBody692_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def NamedBody692_357 : StackLang.HolProg 64 :=
.seq NamedBody692_355 NamedBody692_356

def NamedBody692_358 : StackLang.HolProg 64 :=
.seq NamedBody692_354 NamedBody692_357

def NamedBody692_359 : StackLang.HolProg 64 :=
.seq NamedBody692_353 NamedBody692_358

def NamedBody692_360 : StackLang.HolProg 64 :=
.seq NamedBody692_352 NamedBody692_359

def NamedBody692_361 : StackLang.HolProg 64 :=
.seq NamedBody692_351 NamedBody692_360

def NamedBody692_362 : StackLang.HolProg 64 :=
.seq NamedBody692_350 NamedBody692_361

def NamedBody692_363 : StackLang.HolProg 64 :=
.seq NamedBody692_90 NamedBody692_362

def NamedBody692_364 : StackLang.HolProg 64 :=
.seq NamedBody692_89 NamedBody692_363

def NamedBody692_365 : StackLang.HolProg 64 :=
.seq NamedBody692_88 NamedBody692_364

def NamedBody692_366 : StackLang.HolProg 64 :=
.seq NamedBody692_87 NamedBody692_365

def NamedBody692_367 : StackLang.HolProg 64 :=
.seq NamedBody692_86 NamedBody692_366

def NamedBody692_368 : StackLang.HolProg 64 :=
.seq NamedBody692_85 NamedBody692_367

def NamedBody692_369 : StackLang.HolProg 64 :=
.seq NamedBody692_84 NamedBody692_368

def NamedBody692_370 : StackLang.HolProg 64 :=
.seq NamedBody692_19 NamedBody692_369

def NamedBody692_371 : StackLang.HolProg 64 :=
.seq NamedBody692_10 NamedBody692_370

def NamedBody692_372 : StackLang.HolProg 64 :=
.seq NamedBody692_9 NamedBody692_371

def NamedBody692_373 : StackLang.HolProg 64 :=
.seq NamedBody692_6 NamedBody692_372

def Named692 : Nat × StackLang.HolProg 64 := (692, NamedBody692_373)
theorem Named692_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed692 = Named692 := by
  kernel_rfl
#print axioms Named692_eq
end InitECandidate.Proofs.BackendStages
