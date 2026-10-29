import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed686
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody686_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 104#64)))

def NamedBody686_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody686_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody686_3 : StackLang.HolProg 64 :=
.seq NamedBody686_1 NamedBody686_2

def NamedBody686_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody686_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody686_3 NamedBody686_4

def NamedBody686_6 : StackLang.HolProg 64 :=
.seq NamedBody686_0 NamedBody686_5

def NamedBody686_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody686_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 1152#64)

def NamedBody686_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody686_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody686_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody686_12 : StackLang.HolProg 64 :=
.seq NamedBody686_10 NamedBody686_11

def NamedBody686_13 : StackLang.HolProg 64 :=
.seq NamedBody686_9 NamedBody686_12

def NamedBody686_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody686_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2923#64)

def NamedBody686_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody686_17 : StackLang.HolProg 64 :=
.seq NamedBody686_15 NamedBody686_16

def NamedBody686_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody686_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody686_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody686_21 : StackLang.HolProg 64 :=
.seq NamedBody686_19 NamedBody686_20

def NamedBody686_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody686_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody686_21 NamedBody686_22

def NamedBody686_24 : StackLang.HolProg 64 :=
.seq NamedBody686_18 NamedBody686_23

def NamedBody686_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody686_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody686_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 686 3

def NamedBody686_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody686_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody686_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody686_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody686_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody686_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody686_34 : StackLang.HolProg 64 :=
.seq NamedBody686_32 NamedBody686_33

def NamedBody686_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody686_36 : StackLang.HolProg 64 :=
.seq NamedBody686_34 NamedBody686_35

def NamedBody686_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody686_38 : StackLang.HolProg 64 :=
.seq NamedBody686_36 NamedBody686_37

def NamedBody686_39 : StackLang.HolProg 64 :=
.seq NamedBody686_31 NamedBody686_38

def NamedBody686_40 : StackLang.HolProg 64 :=
.seq NamedBody686_30 NamedBody686_39

def NamedBody686_41 : StackLang.HolProg 64 :=
.seq NamedBody686_29 NamedBody686_40

def NamedBody686_42 : StackLang.HolProg 64 :=
.seq NamedBody686_28 NamedBody686_41

def NamedBody686_43 : StackLang.HolProg 64 :=
.seq NamedBody686_27 NamedBody686_42

def NamedBody686_44 : StackLang.HolProg 64 :=
.seq NamedBody686_26 NamedBody686_43

def NamedBody686_45 : StackLang.HolProg 64 :=
.seq NamedBody686_25 NamedBody686_44

def NamedBody686_46 : StackLang.HolProg 64 :=
.seq NamedBody686_24 NamedBody686_45

def NamedBody686_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody686_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody686_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody686_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody686_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody686_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody686_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody686_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody686_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody686_56 : StackLang.HolProg 64 :=
.seq NamedBody686_54 NamedBody686_55

def NamedBody686_57 : StackLang.HolProg 64 :=
.seq NamedBody686_53 NamedBody686_56

def NamedBody686_58 : StackLang.HolProg 64 :=
.seq NamedBody686_52 NamedBody686_57

def NamedBody686_59 : StackLang.HolProg 64 :=
.seq NamedBody686_51 NamedBody686_58

def NamedBody686_60 : StackLang.HolProg 64 :=
.seq NamedBody686_50 NamedBody686_59

def NamedBody686_61 : StackLang.HolProg 64 :=
.seq NamedBody686_49 NamedBody686_60

def NamedBody686_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody686_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody686_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody686_65 : StackLang.HolProg 64 :=
.seq NamedBody686_63 NamedBody686_64

def NamedBody686_66 : StackLang.HolProg 64 :=
.seq NamedBody686_62 NamedBody686_65

def NamedBody686_67 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody686_68 : StackLang.HolProg 64 :=
.seq NamedBody686_66 NamedBody686_67

def NamedBody686_69 : StackLang.HolProg 64 :=
.call (some (NamedBody686_61, 1, 686, 2)) (Sum.inl 78) (some (NamedBody686_68, 686, 3))

def NamedBody686_70 : StackLang.HolProg 64 :=
.seq NamedBody686_48 NamedBody686_69

def NamedBody686_71 : StackLang.HolProg 64 :=
.seq NamedBody686_47 NamedBody686_70

def NamedBody686_72 : StackLang.HolProg 64 :=
.seq NamedBody686_46 NamedBody686_71

def NamedBody686_73 : StackLang.HolProg 64 :=
.seq NamedBody686_17 NamedBody686_72

def NamedBody686_74 : StackLang.HolProg 64 :=
.seq NamedBody686_14 NamedBody686_73

def NamedBody686_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody686_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def NamedBody686_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody686_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody686_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody686_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 3#64)

def NamedBody686_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody686_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody686_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def NamedBody686_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody686_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def NamedBody686_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody686_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody686_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody686_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def NamedBody686_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody686_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def NamedBody686_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody686_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def NamedBody686_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody686_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 32#64))

def NamedBody686_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody686_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 40#64))

def NamedBody686_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody686_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 48#64))

def NamedBody686_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody686_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 56#64))

def NamedBody686_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody686_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 9#64)

def NamedBody686_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody686_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody686_106 : StackLang.HolProg 64 :=
.seq NamedBody686_104 NamedBody686_105

def NamedBody686_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody686_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody686_109 : StackLang.HolProg 64 :=
.seq NamedBody686_107 NamedBody686_108

def NamedBody686_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody686_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody686_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody686_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody686_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody686_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody686_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody686_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody686_118 : StackLang.HolProg 64 :=
.seq NamedBody686_116 NamedBody686_117

def NamedBody686_119 : StackLang.HolProg 64 :=
.seq NamedBody686_115 NamedBody686_118

def NamedBody686_120 : StackLang.HolProg 64 :=
.seq NamedBody686_114 NamedBody686_119

def NamedBody686_121 : StackLang.HolProg 64 :=
.seq NamedBody686_113 NamedBody686_120

def NamedBody686_122 : StackLang.HolProg 64 :=
.seq NamedBody686_112 NamedBody686_121

def NamedBody686_123 : StackLang.HolProg 64 :=
.seq NamedBody686_111 NamedBody686_122

def NamedBody686_124 : StackLang.HolProg 64 :=
.seq NamedBody686_110 NamedBody686_123

def NamedBody686_125 : StackLang.HolProg 64 :=
.seq NamedBody686_109 NamedBody686_124

def NamedBody686_126 : StackLang.HolProg 64 :=
.seq NamedBody686_106 NamedBody686_125

def NamedBody686_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody686_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2924#64)

def NamedBody686_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody686_130 : StackLang.HolProg 64 :=
.seq NamedBody686_128 NamedBody686_129

def NamedBody686_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody686_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody686_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody686_134 : StackLang.HolProg 64 :=
.seq NamedBody686_132 NamedBody686_133

def NamedBody686_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody686_136 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody686_134 NamedBody686_135

def NamedBody686_137 : StackLang.HolProg 64 :=
.seq NamedBody686_131 NamedBody686_136

def NamedBody686_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody686_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody686_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 686 5

def NamedBody686_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody686_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody686_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody686_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody686_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody686_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody686_147 : StackLang.HolProg 64 :=
.seq NamedBody686_145 NamedBody686_146

def NamedBody686_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody686_149 : StackLang.HolProg 64 :=
.seq NamedBody686_147 NamedBody686_148

def NamedBody686_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody686_151 : StackLang.HolProg 64 :=
.seq NamedBody686_149 NamedBody686_150

def NamedBody686_152 : StackLang.HolProg 64 :=
.seq NamedBody686_144 NamedBody686_151

def NamedBody686_153 : StackLang.HolProg 64 :=
.seq NamedBody686_143 NamedBody686_152

def NamedBody686_154 : StackLang.HolProg 64 :=
.seq NamedBody686_142 NamedBody686_153

def NamedBody686_155 : StackLang.HolProg 64 :=
.seq NamedBody686_141 NamedBody686_154

def NamedBody686_156 : StackLang.HolProg 64 :=
.seq NamedBody686_140 NamedBody686_155

def NamedBody686_157 : StackLang.HolProg 64 :=
.seq NamedBody686_139 NamedBody686_156

def NamedBody686_158 : StackLang.HolProg 64 :=
.seq NamedBody686_138 NamedBody686_157

def NamedBody686_159 : StackLang.HolProg 64 :=
.seq NamedBody686_137 NamedBody686_158

def NamedBody686_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody686_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody686_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody686_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody686_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody686_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody686_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody686_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody686_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody686_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody686_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody686_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody686_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody686_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody686_174 : StackLang.HolProg 64 :=
.seq NamedBody686_172 NamedBody686_173

def NamedBody686_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody686_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody686_177 : StackLang.HolProg 64 :=
.seq NamedBody686_175 NamedBody686_176

def NamedBody686_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody686_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody686_180 : StackLang.HolProg 64 :=
.seq NamedBody686_178 NamedBody686_179

def NamedBody686_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody686_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody686_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody686_184 : StackLang.HolProg 64 :=
.seq NamedBody686_182 NamedBody686_183

def NamedBody686_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody686_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody686_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody686_188 : StackLang.HolProg 64 :=
.seq NamedBody686_186 NamedBody686_187

def NamedBody686_189 : StackLang.HolProg 64 :=
.seq NamedBody686_185 NamedBody686_188

def NamedBody686_190 : StackLang.HolProg 64 :=
.seq NamedBody686_184 NamedBody686_189

def NamedBody686_191 : StackLang.HolProg 64 :=
.seq NamedBody686_181 NamedBody686_190

def NamedBody686_192 : StackLang.HolProg 64 :=
.seq NamedBody686_180 NamedBody686_191

def NamedBody686_193 : StackLang.HolProg 64 :=
.seq NamedBody686_177 NamedBody686_192

def NamedBody686_194 : StackLang.HolProg 64 :=
.seq NamedBody686_174 NamedBody686_193

def NamedBody686_195 : StackLang.HolProg 64 :=
.seq NamedBody686_171 NamedBody686_194

def NamedBody686_196 : StackLang.HolProg 64 :=
.seq NamedBody686_170 NamedBody686_195

def NamedBody686_197 : StackLang.HolProg 64 :=
.seq NamedBody686_169 NamedBody686_196

def NamedBody686_198 : StackLang.HolProg 64 :=
.seq NamedBody686_168 NamedBody686_197

def NamedBody686_199 : StackLang.HolProg 64 :=
.seq NamedBody686_167 NamedBody686_198

def NamedBody686_200 : StackLang.HolProg 64 :=
.seq NamedBody686_166 NamedBody686_199

def NamedBody686_201 : StackLang.HolProg 64 :=
.seq NamedBody686_165 NamedBody686_200

def NamedBody686_202 : StackLang.HolProg 64 :=
.seq NamedBody686_164 NamedBody686_201

def NamedBody686_203 : StackLang.HolProg 64 :=
.seq NamedBody686_163 NamedBody686_202

def NamedBody686_204 : StackLang.HolProg 64 :=
.seq NamedBody686_162 NamedBody686_203

def NamedBody686_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody686_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody686_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody686_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody686_209 : StackLang.HolProg 64 :=
.seq NamedBody686_207 NamedBody686_208

def NamedBody686_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody686_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody686_212 : StackLang.HolProg 64 :=
.seq NamedBody686_210 NamedBody686_211

def NamedBody686_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody686_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody686_215 : StackLang.HolProg 64 :=
.seq NamedBody686_213 NamedBody686_214

def NamedBody686_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody686_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody686_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody686_219 : StackLang.HolProg 64 :=
.seq NamedBody686_217 NamedBody686_218

def NamedBody686_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody686_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody686_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody686_223 : StackLang.HolProg 64 :=
.seq NamedBody686_221 NamedBody686_222

def NamedBody686_224 : StackLang.HolProg 64 :=
.seq NamedBody686_220 NamedBody686_223

def NamedBody686_225 : StackLang.HolProg 64 :=
.seq NamedBody686_219 NamedBody686_224

def NamedBody686_226 : StackLang.HolProg 64 :=
.seq NamedBody686_216 NamedBody686_225

def NamedBody686_227 : StackLang.HolProg 64 :=
.seq NamedBody686_215 NamedBody686_226

def NamedBody686_228 : StackLang.HolProg 64 :=
.seq NamedBody686_212 NamedBody686_227

def NamedBody686_229 : StackLang.HolProg 64 :=
.seq NamedBody686_209 NamedBody686_228

def NamedBody686_230 : StackLang.HolProg 64 :=
.seq NamedBody686_206 NamedBody686_229

def NamedBody686_231 : StackLang.HolProg 64 :=
.seq NamedBody686_205 NamedBody686_230

def NamedBody686_232 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody686_233 : StackLang.HolProg 64 :=
.seq NamedBody686_231 NamedBody686_232

def NamedBody686_234 : StackLang.HolProg 64 :=
.call (some (NamedBody686_204, 1, 686, 4)) (Sum.inl 665) (some (NamedBody686_233, 686, 5))

def NamedBody686_235 : StackLang.HolProg 64 :=
.seq NamedBody686_161 NamedBody686_234

def NamedBody686_236 : StackLang.HolProg 64 :=
.seq NamedBody686_160 NamedBody686_235

def NamedBody686_237 : StackLang.HolProg 64 :=
.seq NamedBody686_159 NamedBody686_236

def NamedBody686_238 : StackLang.HolProg 64 :=
.seq NamedBody686_130 NamedBody686_237

def NamedBody686_239 : StackLang.HolProg 64 :=
.seq NamedBody686_127 NamedBody686_238

def NamedBody686_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody686_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody686_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody686_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2925#64)

def NamedBody686_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody686_245 : StackLang.HolProg 64 :=
.seq NamedBody686_243 NamedBody686_244

def NamedBody686_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody686_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody686_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody686_249 : StackLang.HolProg 64 :=
.seq NamedBody686_247 NamedBody686_248

def NamedBody686_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody686_251 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody686_249 NamedBody686_250

def NamedBody686_252 : StackLang.HolProg 64 :=
.seq NamedBody686_246 NamedBody686_251

def NamedBody686_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody686_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody686_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 686 7

def NamedBody686_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody686_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody686_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody686_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody686_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody686_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody686_262 : StackLang.HolProg 64 :=
.seq NamedBody686_260 NamedBody686_261

def NamedBody686_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody686_264 : StackLang.HolProg 64 :=
.seq NamedBody686_262 NamedBody686_263

def NamedBody686_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody686_266 : StackLang.HolProg 64 :=
.seq NamedBody686_264 NamedBody686_265

def NamedBody686_267 : StackLang.HolProg 64 :=
.seq NamedBody686_259 NamedBody686_266

def NamedBody686_268 : StackLang.HolProg 64 :=
.seq NamedBody686_258 NamedBody686_267

def NamedBody686_269 : StackLang.HolProg 64 :=
.seq NamedBody686_257 NamedBody686_268

def NamedBody686_270 : StackLang.HolProg 64 :=
.seq NamedBody686_256 NamedBody686_269

def NamedBody686_271 : StackLang.HolProg 64 :=
.seq NamedBody686_255 NamedBody686_270

def NamedBody686_272 : StackLang.HolProg 64 :=
.seq NamedBody686_254 NamedBody686_271

def NamedBody686_273 : StackLang.HolProg 64 :=
.seq NamedBody686_253 NamedBody686_272

def NamedBody686_274 : StackLang.HolProg 64 :=
.seq NamedBody686_252 NamedBody686_273

def NamedBody686_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody686_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody686_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody686_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody686_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody686_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody686_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody686_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody686_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 27 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody686_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 15
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody686_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody686_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 14
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody686_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody686_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 28
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody686_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 29
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody686_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 30
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody686_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody686_292 : StackLang.HolProg 64 :=
.seq NamedBody686_290 NamedBody686_291

def NamedBody686_293 : StackLang.HolProg 64 :=
.seq NamedBody686_289 NamedBody686_292

def NamedBody686_294 : StackLang.HolProg 64 :=
.seq NamedBody686_288 NamedBody686_293

def NamedBody686_295 : StackLang.HolProg 64 :=
.seq NamedBody686_287 NamedBody686_294

def NamedBody686_296 : StackLang.HolProg 64 :=
.seq NamedBody686_286 NamedBody686_295

def NamedBody686_297 : StackLang.HolProg 64 :=
.seq NamedBody686_285 NamedBody686_296

def NamedBody686_298 : StackLang.HolProg 64 :=
.seq NamedBody686_284 NamedBody686_297

def NamedBody686_299 : StackLang.HolProg 64 :=
.seq NamedBody686_283 NamedBody686_298

def NamedBody686_300 : StackLang.HolProg 64 :=
.seq NamedBody686_282 NamedBody686_299

def NamedBody686_301 : StackLang.HolProg 64 :=
.seq NamedBody686_281 NamedBody686_300

def NamedBody686_302 : StackLang.HolProg 64 :=
.seq NamedBody686_280 NamedBody686_301

def NamedBody686_303 : StackLang.HolProg 64 :=
.seq NamedBody686_279 NamedBody686_302

def NamedBody686_304 : StackLang.HolProg 64 :=
.seq NamedBody686_278 NamedBody686_303

def NamedBody686_305 : StackLang.HolProg 64 :=
.seq NamedBody686_277 NamedBody686_304

def NamedBody686_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 15
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody686_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody686_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 14
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody686_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody686_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 28
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody686_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 29
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody686_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 30
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody686_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody686_314 : StackLang.HolProg 64 :=
.seq NamedBody686_312 NamedBody686_313

def NamedBody686_315 : StackLang.HolProg 64 :=
.seq NamedBody686_311 NamedBody686_314

def NamedBody686_316 : StackLang.HolProg 64 :=
.seq NamedBody686_310 NamedBody686_315

def NamedBody686_317 : StackLang.HolProg 64 :=
.seq NamedBody686_309 NamedBody686_316

def NamedBody686_318 : StackLang.HolProg 64 :=
.seq NamedBody686_308 NamedBody686_317

def NamedBody686_319 : StackLang.HolProg 64 :=
.seq NamedBody686_307 NamedBody686_318

def NamedBody686_320 : StackLang.HolProg 64 :=
.seq NamedBody686_306 NamedBody686_319

def NamedBody686_321 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody686_322 : StackLang.HolProg 64 :=
.seq NamedBody686_320 NamedBody686_321

def NamedBody686_323 : StackLang.HolProg 64 :=
.call (some (NamedBody686_305, 1, 686, 6)) (Sum.inl 659) (some (NamedBody686_322, 686, 7))

def NamedBody686_324 : StackLang.HolProg 64 :=
.seq NamedBody686_276 NamedBody686_323

def NamedBody686_325 : StackLang.HolProg 64 :=
.seq NamedBody686_275 NamedBody686_324

def NamedBody686_326 : StackLang.HolProg 64 :=
.seq NamedBody686_274 NamedBody686_325

def NamedBody686_327 : StackLang.HolProg 64 :=
.seq NamedBody686_245 NamedBody686_326

def NamedBody686_328 : StackLang.HolProg 64 :=
.seq NamedBody686_242 NamedBody686_327

def NamedBody686_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody686_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody686_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody686_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def NamedBody686_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody686_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody686_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody686_336 : StackLang.HolProg 64 :=
.seq NamedBody686_334 NamedBody686_335

def NamedBody686_337 : StackLang.HolProg 64 :=
.seq NamedBody686_333 NamedBody686_336

def NamedBody686_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody686_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody686_340 : StackLang.HolProg 64 :=
.seq NamedBody686_338 NamedBody686_339

def NamedBody686_341 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody686_337 NamedBody686_340

def NamedBody686_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody686_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody686_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def NamedBody686_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody686_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 3#64)

def NamedBody686_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody686_348 : StackLang.HolProg 64 :=
.seq NamedBody686_346 NamedBody686_347

def NamedBody686_349 : StackLang.HolProg 64 :=
.seq NamedBody686_345 NamedBody686_348

def NamedBody686_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody686_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody686_352 : StackLang.HolProg 64 :=
.seq NamedBody686_350 NamedBody686_351

def NamedBody686_353 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody686_349 NamedBody686_352

def NamedBody686_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody686_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody686_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 384#64)

def NamedBody686_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody686_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 12 1 1 11))

def NamedBody686_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody686_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 30)))

def NamedBody686_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody686_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def NamedBody686_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody686_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody686_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody686_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def NamedBody686_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody686_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 8#64))

def NamedBody686_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody686_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 16#64))

def NamedBody686_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody686_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 24#64))

def NamedBody686_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody686_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def NamedBody686_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def NamedBody686_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody686_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody686_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody686_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 14
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def NamedBody686_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody686_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 28
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def NamedBody686_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody686_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def NamedBody686_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody686_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 29
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def NamedBody686_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody686_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody686_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 15
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody686_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 30
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody686_390 : StackLang.HolProg 64 :=
.seq NamedBody686_388 NamedBody686_389

def NamedBody686_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def NamedBody686_392 : StackLang.HolProg 64 :=
.seq NamedBody686_390 NamedBody686_391

def NamedBody686_393 : StackLang.HolProg 64 :=
.seq NamedBody686_387 NamedBody686_392

def NamedBody686_394 : StackLang.HolProg 64 :=
.seq NamedBody686_386 NamedBody686_393

def NamedBody686_395 : StackLang.HolProg 64 :=
.seq NamedBody686_385 NamedBody686_394

def NamedBody686_396 : StackLang.HolProg 64 :=
.seq NamedBody686_384 NamedBody686_395

def NamedBody686_397 : StackLang.HolProg 64 :=
.seq NamedBody686_383 NamedBody686_396

def NamedBody686_398 : StackLang.HolProg 64 :=
.seq NamedBody686_382 NamedBody686_397

def NamedBody686_399 : StackLang.HolProg 64 :=
.seq NamedBody686_381 NamedBody686_398

def NamedBody686_400 : StackLang.HolProg 64 :=
.seq NamedBody686_380 NamedBody686_399

def NamedBody686_401 : StackLang.HolProg 64 :=
.seq NamedBody686_379 NamedBody686_400

def NamedBody686_402 : StackLang.HolProg 64 :=
.seq NamedBody686_378 NamedBody686_401

def NamedBody686_403 : StackLang.HolProg 64 :=
.seq NamedBody686_377 NamedBody686_402

def NamedBody686_404 : StackLang.HolProg 64 :=
.seq NamedBody686_376 NamedBody686_403

def NamedBody686_405 : StackLang.HolProg 64 :=
.seq NamedBody686_375 NamedBody686_404

def NamedBody686_406 : StackLang.HolProg 64 :=
.seq NamedBody686_374 NamedBody686_405

def NamedBody686_407 : StackLang.HolProg 64 :=
.seq NamedBody686_373 NamedBody686_406

def NamedBody686_408 : StackLang.HolProg 64 :=
.seq NamedBody686_372 NamedBody686_407

def NamedBody686_409 : StackLang.HolProg 64 :=
.seq NamedBody686_371 NamedBody686_408

def NamedBody686_410 : StackLang.HolProg 64 :=
.seq NamedBody686_370 NamedBody686_409

def NamedBody686_411 : StackLang.HolProg 64 :=
.seq NamedBody686_369 NamedBody686_410

def NamedBody686_412 : StackLang.HolProg 64 :=
.seq NamedBody686_368 NamedBody686_411

def NamedBody686_413 : StackLang.HolProg 64 :=
.seq NamedBody686_367 NamedBody686_412

def NamedBody686_414 : StackLang.HolProg 64 :=
.seq NamedBody686_366 NamedBody686_413

def NamedBody686_415 : StackLang.HolProg 64 :=
.seq NamedBody686_365 NamedBody686_414

def NamedBody686_416 : StackLang.HolProg 64 :=
.seq NamedBody686_364 NamedBody686_415

def NamedBody686_417 : StackLang.HolProg 64 :=
.seq NamedBody686_363 NamedBody686_416

def NamedBody686_418 : StackLang.HolProg 64 :=
.seq NamedBody686_362 NamedBody686_417

def NamedBody686_419 : StackLang.HolProg 64 :=
.seq NamedBody686_361 NamedBody686_418

def NamedBody686_420 : StackLang.HolProg 64 :=
.seq NamedBody686_360 NamedBody686_419

def NamedBody686_421 : StackLang.HolProg 64 :=
.seq NamedBody686_359 NamedBody686_420

def NamedBody686_422 : StackLang.HolProg 64 :=
.seq NamedBody686_358 NamedBody686_421

def NamedBody686_423 : StackLang.HolProg 64 :=
.seq NamedBody686_357 NamedBody686_422

def NamedBody686_424 : StackLang.HolProg 64 :=
.seq NamedBody686_356 NamedBody686_423

def NamedBody686_425 : StackLang.HolProg 64 :=
.seq NamedBody686_355 NamedBody686_424

def NamedBody686_426 : StackLang.HolProg 64 :=
.seq NamedBody686_354 NamedBody686_425

def NamedBody686_427 : StackLang.HolProg 64 :=
.seq NamedBody686_353 NamedBody686_426

def NamedBody686_428 : StackLang.HolProg 64 :=
.seq NamedBody686_344 NamedBody686_427

def NamedBody686_429 : StackLang.HolProg 64 :=
.seq NamedBody686_343 NamedBody686_428

def NamedBody686_430 : StackLang.HolProg 64 :=
.seq NamedBody686_342 NamedBody686_429

def NamedBody686_431 : StackLang.HolProg 64 :=
.seq NamedBody686_341 NamedBody686_430

def NamedBody686_432 : StackLang.HolProg 64 :=
.seq NamedBody686_332 NamedBody686_431

def NamedBody686_433 : StackLang.HolProg 64 :=
.seq NamedBody686_331 NamedBody686_432

def NamedBody686_434 : StackLang.HolProg 64 :=
.seq NamedBody686_330 NamedBody686_433

def NamedBody686_435 : StackLang.HolProg 64 :=
.seq NamedBody686_329 NamedBody686_434

def NamedBody686_436 : StackLang.HolProg 64 :=
.seq NamedBody686_328 NamedBody686_435

def NamedBody686_437 : StackLang.HolProg 64 :=
.seq NamedBody686_241 NamedBody686_436

def NamedBody686_438 : StackLang.HolProg 64 :=
.seq NamedBody686_240 NamedBody686_437

def NamedBody686_439 : StackLang.HolProg 64 :=
.seq NamedBody686_239 NamedBody686_438

def NamedBody686_440 : StackLang.HolProg 64 :=
.seq NamedBody686_126 NamedBody686_439

def NamedBody686_441 : StackLang.HolProg 64 :=
.seq NamedBody686_103 NamedBody686_440

def NamedBody686_442 : StackLang.HolProg 64 :=
.seq NamedBody686_102 NamedBody686_441

def NamedBody686_443 : StackLang.HolProg 64 :=
.seq NamedBody686_101 NamedBody686_442

def NamedBody686_444 : StackLang.HolProg 64 :=
.seq NamedBody686_100 NamedBody686_443

def NamedBody686_445 : StackLang.HolProg 64 :=
.seq NamedBody686_99 NamedBody686_444

def NamedBody686_446 : StackLang.HolProg 64 :=
.seq NamedBody686_98 NamedBody686_445

def NamedBody686_447 : StackLang.HolProg 64 :=
.seq NamedBody686_97 NamedBody686_446

def NamedBody686_448 : StackLang.HolProg 64 :=
.seq NamedBody686_96 NamedBody686_447

def NamedBody686_449 : StackLang.HolProg 64 :=
.seq NamedBody686_95 NamedBody686_448

def NamedBody686_450 : StackLang.HolProg 64 :=
.seq NamedBody686_94 NamedBody686_449

def NamedBody686_451 : StackLang.HolProg 64 :=
.seq NamedBody686_93 NamedBody686_450

def NamedBody686_452 : StackLang.HolProg 64 :=
.seq NamedBody686_92 NamedBody686_451

def NamedBody686_453 : StackLang.HolProg 64 :=
.seq NamedBody686_91 NamedBody686_452

def NamedBody686_454 : StackLang.HolProg 64 :=
.seq NamedBody686_90 NamedBody686_453

def NamedBody686_455 : StackLang.HolProg 64 :=
.seq NamedBody686_89 NamedBody686_454

def NamedBody686_456 : StackLang.HolProg 64 :=
.seq NamedBody686_88 NamedBody686_455

def NamedBody686_457 : StackLang.HolProg 64 :=
.seq NamedBody686_87 NamedBody686_456

def NamedBody686_458 : StackLang.HolProg 64 :=
.seq NamedBody686_86 NamedBody686_457

def NamedBody686_459 : StackLang.HolProg 64 :=
.seq NamedBody686_85 NamedBody686_458

def NamedBody686_460 : StackLang.HolProg 64 :=
.seq NamedBody686_84 NamedBody686_459

def NamedBody686_461 : StackLang.HolProg 64 :=
.seq NamedBody686_83 NamedBody686_460

def NamedBody686_462 : StackLang.HolProg 64 :=
.seq NamedBody686_82 NamedBody686_461

def NamedBody686_463 : StackLang.HolProg 64 :=
.seq NamedBody686_81 NamedBody686_462

def NamedBody686_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody686_465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody686_466 : StackLang.HolProg 64 :=
.seq NamedBody686_464 NamedBody686_465

def NamedBody686_467 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody686_463 NamedBody686_466

def NamedBody686_468 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody686_469 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody686_470 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody686_471 : StackLang.HolProg 64 :=
.seq NamedBody686_469 NamedBody686_470

def NamedBody686_472 : StackLang.HolProg 64 :=
.seq NamedBody686_468 NamedBody686_471

def NamedBody686_473 : StackLang.HolProg 64 :=
.seq NamedBody686_467 NamedBody686_472

def NamedBody686_474 : StackLang.HolProg 64 :=
.seq NamedBody686_80 NamedBody686_473

def NamedBody686_475 : StackLang.HolProg 64 :=
.seq NamedBody686_79 NamedBody686_474

def NamedBody686_476 : StackLang.HolProg 64 :=
.loop NamedBody686_475

def NamedBody686_477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody686_478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody686_479 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody686_480 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody686_481 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 104#64)))

def NamedBody686_482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def NamedBody686_483 : StackLang.HolProg 64 :=
.seq NamedBody686_481 NamedBody686_482

def NamedBody686_484 : StackLang.HolProg 64 :=
.seq NamedBody686_480 NamedBody686_483

def NamedBody686_485 : StackLang.HolProg 64 :=
.seq NamedBody686_479 NamedBody686_484

def NamedBody686_486 : StackLang.HolProg 64 :=
.seq NamedBody686_478 NamedBody686_485

def NamedBody686_487 : StackLang.HolProg 64 :=
.seq NamedBody686_477 NamedBody686_486

def NamedBody686_488 : StackLang.HolProg 64 :=
.seq NamedBody686_476 NamedBody686_487

def NamedBody686_489 : StackLang.HolProg 64 :=
.seq NamedBody686_78 NamedBody686_488

def NamedBody686_490 : StackLang.HolProg 64 :=
.seq NamedBody686_77 NamedBody686_489

def NamedBody686_491 : StackLang.HolProg 64 :=
.seq NamedBody686_76 NamedBody686_490

def NamedBody686_492 : StackLang.HolProg 64 :=
.seq NamedBody686_75 NamedBody686_491

def NamedBody686_493 : StackLang.HolProg 64 :=
.seq NamedBody686_74 NamedBody686_492

def NamedBody686_494 : StackLang.HolProg 64 :=
.seq NamedBody686_13 NamedBody686_493

def NamedBody686_495 : StackLang.HolProg 64 :=
.seq NamedBody686_8 NamedBody686_494

def NamedBody686_496 : StackLang.HolProg 64 :=
.seq NamedBody686_7 NamedBody686_495

def NamedBody686_497 : StackLang.HolProg 64 :=
.seq NamedBody686_6 NamedBody686_496

def Named686 : Nat × StackLang.HolProg 64 := (686, NamedBody686_497)
theorem Named686_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed686 = Named686 := by
  kernel_rfl
#print axioms Named686_eq
end InitECandidate.Proofs.BackendStages
