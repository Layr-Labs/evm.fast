import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed198
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody198_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 72#64)))

def NamedBody198_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody198_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody198_3 : StackLang.HolProg 64 :=
.seq NamedBody198_1 NamedBody198_2

def NamedBody198_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody198_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody198_3 NamedBody198_4

def NamedBody198_6 : StackLang.HolProg 64 :=
.seq NamedBody198_0 NamedBody198_5

def NamedBody198_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody198_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 8#64))

def NamedBody198_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody198_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 24#64))

def NamedBody198_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody198_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody198_13 : StackLang.HolProg 64 :=
.seq NamedBody198_11 NamedBody198_12

def NamedBody198_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 12 1 1 11))

def NamedBody198_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody198_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody198_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody198_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody198_19 : StackLang.HolProg 64 :=
.seq NamedBody198_17 NamedBody198_18

def NamedBody198_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody198_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 234#64)

def NamedBody198_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody198_23 : StackLang.HolProg 64 :=
.seq NamedBody198_21 NamedBody198_22

def NamedBody198_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody198_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody198_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody198_27 : StackLang.HolProg 64 :=
.seq NamedBody198_25 NamedBody198_26

def NamedBody198_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody198_29 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody198_27 NamedBody198_28

def NamedBody198_30 : StackLang.HolProg 64 :=
.seq NamedBody198_24 NamedBody198_29

def NamedBody198_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody198_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody198_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 198 3

def NamedBody198_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody198_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody198_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody198_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody198_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody198_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody198_40 : StackLang.HolProg 64 :=
.seq NamedBody198_38 NamedBody198_39

def NamedBody198_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody198_42 : StackLang.HolProg 64 :=
.seq NamedBody198_40 NamedBody198_41

def NamedBody198_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody198_44 : StackLang.HolProg 64 :=
.seq NamedBody198_42 NamedBody198_43

def NamedBody198_45 : StackLang.HolProg 64 :=
.seq NamedBody198_37 NamedBody198_44

def NamedBody198_46 : StackLang.HolProg 64 :=
.seq NamedBody198_36 NamedBody198_45

def NamedBody198_47 : StackLang.HolProg 64 :=
.seq NamedBody198_35 NamedBody198_46

def NamedBody198_48 : StackLang.HolProg 64 :=
.seq NamedBody198_34 NamedBody198_47

def NamedBody198_49 : StackLang.HolProg 64 :=
.seq NamedBody198_33 NamedBody198_48

def NamedBody198_50 : StackLang.HolProg 64 :=
.seq NamedBody198_32 NamedBody198_49

def NamedBody198_51 : StackLang.HolProg 64 :=
.seq NamedBody198_31 NamedBody198_50

def NamedBody198_52 : StackLang.HolProg 64 :=
.seq NamedBody198_30 NamedBody198_51

def NamedBody198_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody198_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody198_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody198_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody198_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody198_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody198_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody198_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody198_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody198_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody198_63 : StackLang.HolProg 64 :=
.seq NamedBody198_61 NamedBody198_62

def NamedBody198_64 : StackLang.HolProg 64 :=
.seq NamedBody198_60 NamedBody198_63

def NamedBody198_65 : StackLang.HolProg 64 :=
.seq NamedBody198_59 NamedBody198_64

def NamedBody198_66 : StackLang.HolProg 64 :=
.seq NamedBody198_58 NamedBody198_65

def NamedBody198_67 : StackLang.HolProg 64 :=
.seq NamedBody198_57 NamedBody198_66

def NamedBody198_68 : StackLang.HolProg 64 :=
.seq NamedBody198_56 NamedBody198_67

def NamedBody198_69 : StackLang.HolProg 64 :=
.seq NamedBody198_55 NamedBody198_68

def NamedBody198_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody198_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody198_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody198_73 : StackLang.HolProg 64 :=
.seq NamedBody198_71 NamedBody198_72

def NamedBody198_74 : StackLang.HolProg 64 :=
.seq NamedBody198_70 NamedBody198_73

def NamedBody198_75 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody198_76 : StackLang.HolProg 64 :=
.seq NamedBody198_74 NamedBody198_75

def NamedBody198_77 : StackLang.HolProg 64 :=
.call (some (NamedBody198_69, 1, 198, 2)) (Sum.inl 68) (some (NamedBody198_76, 198, 3))

def NamedBody198_78 : StackLang.HolProg 64 :=
.seq NamedBody198_54 NamedBody198_77

def NamedBody198_79 : StackLang.HolProg 64 :=
.seq NamedBody198_53 NamedBody198_78

def NamedBody198_80 : StackLang.HolProg 64 :=
.seq NamedBody198_52 NamedBody198_79

def NamedBody198_81 : StackLang.HolProg 64 :=
.seq NamedBody198_23 NamedBody198_80

def NamedBody198_82 : StackLang.HolProg 64 :=
.seq NamedBody198_20 NamedBody198_81

def NamedBody198_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody198_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody198_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 32#64))

def NamedBody198_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody198_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 48#64))

def NamedBody198_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def NamedBody198_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody198_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody198_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody198_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody198_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody198_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody198_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody198_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody198_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody198_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody198_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody198_100 : StackLang.HolProg 64 :=
.seq NamedBody198_98 NamedBody198_99

def NamedBody198_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 12 1 1 11))

def NamedBody198_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 23 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody198_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody198_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 23
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 23)))

def NamedBody198_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody198_106 : StackLang.HolProg 64 :=
.seq NamedBody198_104 NamedBody198_105

def NamedBody198_107 : StackLang.HolProg 64 :=
.seq NamedBody198_103 NamedBody198_106

def NamedBody198_108 : StackLang.HolProg 64 :=
.seq NamedBody198_102 NamedBody198_107

def NamedBody198_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 12 1 1 11))

def NamedBody198_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody198_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody198_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody198_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def NamedBody198_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody198_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody198_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody198_117 : StackLang.HolProg 64 :=
.seq NamedBody198_115 NamedBody198_116

def NamedBody198_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody198_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody198_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody198_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody198_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody198_123 : StackLang.HolProg 64 :=
.seq NamedBody198_121 NamedBody198_122

def NamedBody198_124 : StackLang.HolProg 64 :=
.seq NamedBody198_120 NamedBody198_123

def NamedBody198_125 : StackLang.HolProg 64 :=
.seq NamedBody198_119 NamedBody198_124

def NamedBody198_126 : StackLang.HolProg 64 :=
.seq NamedBody198_118 NamedBody198_125

def NamedBody198_127 : StackLang.HolProg 64 :=
.seq NamedBody198_117 NamedBody198_126

def NamedBody198_128 : StackLang.HolProg 64 :=
.seq NamedBody198_114 NamedBody198_127

def NamedBody198_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody198_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 235#64)

def NamedBody198_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody198_132 : StackLang.HolProg 64 :=
.seq NamedBody198_130 NamedBody198_131

def NamedBody198_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody198_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody198_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody198_136 : StackLang.HolProg 64 :=
.seq NamedBody198_134 NamedBody198_135

def NamedBody198_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody198_138 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody198_136 NamedBody198_137

def NamedBody198_139 : StackLang.HolProg 64 :=
.seq NamedBody198_133 NamedBody198_138

def NamedBody198_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody198_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody198_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 198 5

def NamedBody198_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody198_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody198_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody198_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody198_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody198_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody198_149 : StackLang.HolProg 64 :=
.seq NamedBody198_147 NamedBody198_148

def NamedBody198_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody198_151 : StackLang.HolProg 64 :=
.seq NamedBody198_149 NamedBody198_150

def NamedBody198_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody198_153 : StackLang.HolProg 64 :=
.seq NamedBody198_151 NamedBody198_152

def NamedBody198_154 : StackLang.HolProg 64 :=
.seq NamedBody198_146 NamedBody198_153

def NamedBody198_155 : StackLang.HolProg 64 :=
.seq NamedBody198_145 NamedBody198_154

def NamedBody198_156 : StackLang.HolProg 64 :=
.seq NamedBody198_144 NamedBody198_155

def NamedBody198_157 : StackLang.HolProg 64 :=
.seq NamedBody198_143 NamedBody198_156

def NamedBody198_158 : StackLang.HolProg 64 :=
.seq NamedBody198_142 NamedBody198_157

def NamedBody198_159 : StackLang.HolProg 64 :=
.seq NamedBody198_141 NamedBody198_158

def NamedBody198_160 : StackLang.HolProg 64 :=
.seq NamedBody198_140 NamedBody198_159

def NamedBody198_161 : StackLang.HolProg 64 :=
.seq NamedBody198_139 NamedBody198_160

def NamedBody198_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody198_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody198_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody198_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody198_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody198_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody198_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody198_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody198_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody198_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody198_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody198_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody198_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody198_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody198_176 : StackLang.HolProg 64 :=
.seq NamedBody198_174 NamedBody198_175

def NamedBody198_177 : StackLang.HolProg 64 :=
.seq NamedBody198_173 NamedBody198_176

def NamedBody198_178 : StackLang.HolProg 64 :=
.seq NamedBody198_172 NamedBody198_177

def NamedBody198_179 : StackLang.HolProg 64 :=
.seq NamedBody198_171 NamedBody198_178

def NamedBody198_180 : StackLang.HolProg 64 :=
.seq NamedBody198_170 NamedBody198_179

def NamedBody198_181 : StackLang.HolProg 64 :=
.seq NamedBody198_169 NamedBody198_180

def NamedBody198_182 : StackLang.HolProg 64 :=
.seq NamedBody198_168 NamedBody198_181

def NamedBody198_183 : StackLang.HolProg 64 :=
.seq NamedBody198_167 NamedBody198_182

def NamedBody198_184 : StackLang.HolProg 64 :=
.seq NamedBody198_166 NamedBody198_183

def NamedBody198_185 : StackLang.HolProg 64 :=
.seq NamedBody198_165 NamedBody198_184

def NamedBody198_186 : StackLang.HolProg 64 :=
.seq NamedBody198_164 NamedBody198_185

def NamedBody198_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody198_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody198_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody198_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody198_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody198_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody198_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody198_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody198_195 : StackLang.HolProg 64 :=
.seq NamedBody198_193 NamedBody198_194

def NamedBody198_196 : StackLang.HolProg 64 :=
.seq NamedBody198_192 NamedBody198_195

def NamedBody198_197 : StackLang.HolProg 64 :=
.seq NamedBody198_191 NamedBody198_196

def NamedBody198_198 : StackLang.HolProg 64 :=
.seq NamedBody198_190 NamedBody198_197

def NamedBody198_199 : StackLang.HolProg 64 :=
.seq NamedBody198_189 NamedBody198_198

def NamedBody198_200 : StackLang.HolProg 64 :=
.seq NamedBody198_188 NamedBody198_199

def NamedBody198_201 : StackLang.HolProg 64 :=
.seq NamedBody198_187 NamedBody198_200

def NamedBody198_202 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody198_203 : StackLang.HolProg 64 :=
.seq NamedBody198_201 NamedBody198_202

def NamedBody198_204 : StackLang.HolProg 64 :=
.call (some (NamedBody198_186, 1, 198, 4)) (Sum.inl 77) (some (NamedBody198_203, 198, 5))

def NamedBody198_205 : StackLang.HolProg 64 :=
.seq NamedBody198_163 NamedBody198_204

def NamedBody198_206 : StackLang.HolProg 64 :=
.seq NamedBody198_162 NamedBody198_205

def NamedBody198_207 : StackLang.HolProg 64 :=
.seq NamedBody198_161 NamedBody198_206

def NamedBody198_208 : StackLang.HolProg 64 :=
.seq NamedBody198_132 NamedBody198_207

def NamedBody198_209 : StackLang.HolProg 64 :=
.seq NamedBody198_129 NamedBody198_208

def NamedBody198_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody198_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody198_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody198_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody198_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody198_215 : StackLang.HolProg 64 :=
.seq NamedBody198_213 NamedBody198_214

def NamedBody198_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def NamedBody198_217 : StackLang.HolProg 64 :=
.seq NamedBody198_215 NamedBody198_216

def NamedBody198_218 : StackLang.HolProg 64 :=
.seq NamedBody198_212 NamedBody198_217

def NamedBody198_219 : StackLang.HolProg 64 :=
.seq NamedBody198_211 NamedBody198_218

def NamedBody198_220 : StackLang.HolProg 64 :=
.seq NamedBody198_210 NamedBody198_219

def NamedBody198_221 : StackLang.HolProg 64 :=
.seq NamedBody198_209 NamedBody198_220

def NamedBody198_222 : StackLang.HolProg 64 :=
.seq NamedBody198_128 NamedBody198_221

def NamedBody198_223 : StackLang.HolProg 64 :=
.seq NamedBody198_113 NamedBody198_222

def NamedBody198_224 : StackLang.HolProg 64 :=
.seq NamedBody198_112 NamedBody198_223

def NamedBody198_225 : StackLang.HolProg 64 :=
.seq NamedBody198_111 NamedBody198_224

def NamedBody198_226 : StackLang.HolProg 64 :=
.seq NamedBody198_110 NamedBody198_225

def NamedBody198_227 : StackLang.HolProg 64 :=
.seq NamedBody198_109 NamedBody198_226

def NamedBody198_228 : StackLang.HolProg 64 :=
.seq NamedBody198_108 NamedBody198_227

def NamedBody198_229 : StackLang.HolProg 64 :=
.seq NamedBody198_101 NamedBody198_228

def NamedBody198_230 : StackLang.HolProg 64 :=
.seq NamedBody198_100 NamedBody198_229

def NamedBody198_231 : StackLang.HolProg 64 :=
.seq NamedBody198_97 NamedBody198_230

def NamedBody198_232 : StackLang.HolProg 64 :=
.seq NamedBody198_96 NamedBody198_231

def NamedBody198_233 : StackLang.HolProg 64 :=
.seq NamedBody198_95 NamedBody198_232

def NamedBody198_234 : StackLang.HolProg 64 :=
.seq NamedBody198_94 NamedBody198_233

def NamedBody198_235 : StackLang.HolProg 64 :=
.seq NamedBody198_93 NamedBody198_234

def NamedBody198_236 : StackLang.HolProg 64 :=
.seq NamedBody198_92 NamedBody198_235

def NamedBody198_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody198_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody198_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody198_240 : StackLang.HolProg 64 :=
.seq NamedBody198_238 NamedBody198_239

def NamedBody198_241 : StackLang.HolProg 64 :=
.seq NamedBody198_237 NamedBody198_240

def NamedBody198_242 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7) NamedBody198_236 NamedBody198_241

def NamedBody198_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody198_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody198_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody198_246 : StackLang.HolProg 64 :=
.seq NamedBody198_244 NamedBody198_245

def NamedBody198_247 : StackLang.HolProg 64 :=
.seq NamedBody198_243 NamedBody198_246

def NamedBody198_248 : StackLang.HolProg 64 :=
.seq NamedBody198_242 NamedBody198_247

def NamedBody198_249 : StackLang.HolProg 64 :=
.seq NamedBody198_91 NamedBody198_248

def NamedBody198_250 : StackLang.HolProg 64 :=
.loop NamedBody198_249

def NamedBody198_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody198_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody198_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def NamedBody198_254 : StackLang.HolProg 64 :=
.seq NamedBody198_252 NamedBody198_253

def NamedBody198_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody198_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 72#64)))

def NamedBody198_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def NamedBody198_258 : StackLang.HolProg 64 :=
.seq NamedBody198_256 NamedBody198_257

def NamedBody198_259 : StackLang.HolProg 64 :=
.seq NamedBody198_255 NamedBody198_258

def NamedBody198_260 : StackLang.HolProg 64 :=
.seq NamedBody198_254 NamedBody198_259

def NamedBody198_261 : StackLang.HolProg 64 :=
.seq NamedBody198_251 NamedBody198_260

def NamedBody198_262 : StackLang.HolProg 64 :=
.seq NamedBody198_250 NamedBody198_261

def NamedBody198_263 : StackLang.HolProg 64 :=
.seq NamedBody198_90 NamedBody198_262

def NamedBody198_264 : StackLang.HolProg 64 :=
.seq NamedBody198_89 NamedBody198_263

def NamedBody198_265 : StackLang.HolProg 64 :=
.seq NamedBody198_88 NamedBody198_264

def NamedBody198_266 : StackLang.HolProg 64 :=
.seq NamedBody198_87 NamedBody198_265

def NamedBody198_267 : StackLang.HolProg 64 :=
.seq NamedBody198_86 NamedBody198_266

def NamedBody198_268 : StackLang.HolProg 64 :=
.seq NamedBody198_85 NamedBody198_267

def NamedBody198_269 : StackLang.HolProg 64 :=
.seq NamedBody198_84 NamedBody198_268

def NamedBody198_270 : StackLang.HolProg 64 :=
.seq NamedBody198_83 NamedBody198_269

def NamedBody198_271 : StackLang.HolProg 64 :=
.seq NamedBody198_82 NamedBody198_270

def NamedBody198_272 : StackLang.HolProg 64 :=
.seq NamedBody198_19 NamedBody198_271

def NamedBody198_273 : StackLang.HolProg 64 :=
.seq NamedBody198_16 NamedBody198_272

def NamedBody198_274 : StackLang.HolProg 64 :=
.seq NamedBody198_15 NamedBody198_273

def NamedBody198_275 : StackLang.HolProg 64 :=
.seq NamedBody198_14 NamedBody198_274

def NamedBody198_276 : StackLang.HolProg 64 :=
.seq NamedBody198_13 NamedBody198_275

def NamedBody198_277 : StackLang.HolProg 64 :=
.seq NamedBody198_10 NamedBody198_276

def NamedBody198_278 : StackLang.HolProg 64 :=
.seq NamedBody198_9 NamedBody198_277

def NamedBody198_279 : StackLang.HolProg 64 :=
.seq NamedBody198_8 NamedBody198_278

def NamedBody198_280 : StackLang.HolProg 64 :=
.seq NamedBody198_7 NamedBody198_279

def NamedBody198_281 : StackLang.HolProg 64 :=
.seq NamedBody198_6 NamedBody198_280

def Named198 : Nat × StackLang.HolProg 64 := (198, NamedBody198_281)
theorem Named198_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed198 = Named198 := by
  kernel_rfl
#print axioms Named198_eq
end InitECandidate.Proofs.BackendStages
