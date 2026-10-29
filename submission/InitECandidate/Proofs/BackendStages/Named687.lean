import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed687
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody687_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody687_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody687_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody687_3 : StackLang.HolProg 64 :=
.seq NamedBody687_1 NamedBody687_2

def NamedBody687_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody687_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody687_3 NamedBody687_4

def NamedBody687_6 : StackLang.HolProg 64 :=
.seq NamedBody687_0 NamedBody687_5

def NamedBody687_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody687_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 1152#64)

def NamedBody687_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody687_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody687_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody687_12 : StackLang.HolProg 64 :=
.seq NamedBody687_10 NamedBody687_11

def NamedBody687_13 : StackLang.HolProg 64 :=
.seq NamedBody687_9 NamedBody687_12

def NamedBody687_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody687_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2926#64)

def NamedBody687_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody687_17 : StackLang.HolProg 64 :=
.seq NamedBody687_15 NamedBody687_16

def NamedBody687_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody687_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody687_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody687_21 : StackLang.HolProg 64 :=
.seq NamedBody687_19 NamedBody687_20

def NamedBody687_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody687_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody687_21 NamedBody687_22

def NamedBody687_24 : StackLang.HolProg 64 :=
.seq NamedBody687_18 NamedBody687_23

def NamedBody687_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody687_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody687_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 687 3

def NamedBody687_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody687_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody687_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody687_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody687_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody687_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody687_34 : StackLang.HolProg 64 :=
.seq NamedBody687_32 NamedBody687_33

def NamedBody687_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody687_36 : StackLang.HolProg 64 :=
.seq NamedBody687_34 NamedBody687_35

def NamedBody687_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody687_38 : StackLang.HolProg 64 :=
.seq NamedBody687_36 NamedBody687_37

def NamedBody687_39 : StackLang.HolProg 64 :=
.seq NamedBody687_31 NamedBody687_38

def NamedBody687_40 : StackLang.HolProg 64 :=
.seq NamedBody687_30 NamedBody687_39

def NamedBody687_41 : StackLang.HolProg 64 :=
.seq NamedBody687_29 NamedBody687_40

def NamedBody687_42 : StackLang.HolProg 64 :=
.seq NamedBody687_28 NamedBody687_41

def NamedBody687_43 : StackLang.HolProg 64 :=
.seq NamedBody687_27 NamedBody687_42

def NamedBody687_44 : StackLang.HolProg 64 :=
.seq NamedBody687_26 NamedBody687_43

def NamedBody687_45 : StackLang.HolProg 64 :=
.seq NamedBody687_25 NamedBody687_44

def NamedBody687_46 : StackLang.HolProg 64 :=
.seq NamedBody687_24 NamedBody687_45

def NamedBody687_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody687_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody687_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody687_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody687_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody687_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody687_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody687_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody687_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody687_56 : StackLang.HolProg 64 :=
.seq NamedBody687_54 NamedBody687_55

def NamedBody687_57 : StackLang.HolProg 64 :=
.seq NamedBody687_53 NamedBody687_56

def NamedBody687_58 : StackLang.HolProg 64 :=
.seq NamedBody687_52 NamedBody687_57

def NamedBody687_59 : StackLang.HolProg 64 :=
.seq NamedBody687_51 NamedBody687_58

def NamedBody687_60 : StackLang.HolProg 64 :=
.seq NamedBody687_50 NamedBody687_59

def NamedBody687_61 : StackLang.HolProg 64 :=
.seq NamedBody687_49 NamedBody687_60

def NamedBody687_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody687_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody687_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody687_65 : StackLang.HolProg 64 :=
.seq NamedBody687_63 NamedBody687_64

def NamedBody687_66 : StackLang.HolProg 64 :=
.seq NamedBody687_62 NamedBody687_65

def NamedBody687_67 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody687_68 : StackLang.HolProg 64 :=
.seq NamedBody687_66 NamedBody687_67

def NamedBody687_69 : StackLang.HolProg 64 :=
.call (some (NamedBody687_61, 1, 687, 2)) (Sum.inl 78) (some (NamedBody687_68, 687, 3))

def NamedBody687_70 : StackLang.HolProg 64 :=
.seq NamedBody687_48 NamedBody687_69

def NamedBody687_71 : StackLang.HolProg 64 :=
.seq NamedBody687_47 NamedBody687_70

def NamedBody687_72 : StackLang.HolProg 64 :=
.seq NamedBody687_46 NamedBody687_71

def NamedBody687_73 : StackLang.HolProg 64 :=
.seq NamedBody687_17 NamedBody687_72

def NamedBody687_74 : StackLang.HolProg 64 :=
.seq NamedBody687_14 NamedBody687_73

def NamedBody687_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody687_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody687_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def NamedBody687_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody687_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def NamedBody687_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody687_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def NamedBody687_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody687_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def NamedBody687_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody687_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def NamedBody687_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody687_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 8#64))

def NamedBody687_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody687_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 16#64))

def NamedBody687_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody687_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 24#64))

def NamedBody687_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody687_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 384#64)))

def NamedBody687_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody687_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 32#64))

def NamedBody687_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody687_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 40#64))

def NamedBody687_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody687_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 48#64))

def NamedBody687_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody687_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 56#64))

def NamedBody687_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody687_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 0#64))

def NamedBody687_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody687_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 8#64))

def NamedBody687_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody687_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 16#64))

def NamedBody687_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody687_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 24#64))

def NamedBody687_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody687_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 768#64)))

def NamedBody687_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody687_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 64#64))

def NamedBody687_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody687_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 72#64))

def NamedBody687_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody687_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 80#64))

def NamedBody687_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody687_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 88#64))

def NamedBody687_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody687_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody687_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody687_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 8#64))

def NamedBody687_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody687_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 16#64))

def NamedBody687_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody687_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 24#64))

def NamedBody687_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody687_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody687_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody687_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 7

def NamedBody687_132 : StackLang.HolProg 64 :=
.seq NamedBody687_130 NamedBody687_131

def NamedBody687_133 : StackLang.HolProg 64 :=
.seq NamedBody687_129 NamedBody687_132

def NamedBody687_134 : StackLang.HolProg 64 :=
.seq NamedBody687_128 NamedBody687_133

def NamedBody687_135 : StackLang.HolProg 64 :=
.seq NamedBody687_127 NamedBody687_134

def NamedBody687_136 : StackLang.HolProg 64 :=
.seq NamedBody687_126 NamedBody687_135

def NamedBody687_137 : StackLang.HolProg 64 :=
.seq NamedBody687_125 NamedBody687_136

def NamedBody687_138 : StackLang.HolProg 64 :=
.seq NamedBody687_124 NamedBody687_137

def NamedBody687_139 : StackLang.HolProg 64 :=
.seq NamedBody687_123 NamedBody687_138

def NamedBody687_140 : StackLang.HolProg 64 :=
.seq NamedBody687_122 NamedBody687_139

def NamedBody687_141 : StackLang.HolProg 64 :=
.seq NamedBody687_121 NamedBody687_140

def NamedBody687_142 : StackLang.HolProg 64 :=
.seq NamedBody687_120 NamedBody687_141

def NamedBody687_143 : StackLang.HolProg 64 :=
.seq NamedBody687_119 NamedBody687_142

def NamedBody687_144 : StackLang.HolProg 64 :=
.seq NamedBody687_118 NamedBody687_143

def NamedBody687_145 : StackLang.HolProg 64 :=
.seq NamedBody687_117 NamedBody687_144

def NamedBody687_146 : StackLang.HolProg 64 :=
.seq NamedBody687_116 NamedBody687_145

def NamedBody687_147 : StackLang.HolProg 64 :=
.seq NamedBody687_115 NamedBody687_146

def NamedBody687_148 : StackLang.HolProg 64 :=
.seq NamedBody687_114 NamedBody687_147

def NamedBody687_149 : StackLang.HolProg 64 :=
.seq NamedBody687_113 NamedBody687_148

def NamedBody687_150 : StackLang.HolProg 64 :=
.seq NamedBody687_112 NamedBody687_149

def NamedBody687_151 : StackLang.HolProg 64 :=
.seq NamedBody687_111 NamedBody687_150

def NamedBody687_152 : StackLang.HolProg 64 :=
.seq NamedBody687_110 NamedBody687_151

def NamedBody687_153 : StackLang.HolProg 64 :=
.seq NamedBody687_109 NamedBody687_152

def NamedBody687_154 : StackLang.HolProg 64 :=
.seq NamedBody687_108 NamedBody687_153

def NamedBody687_155 : StackLang.HolProg 64 :=
.seq NamedBody687_107 NamedBody687_154

def NamedBody687_156 : StackLang.HolProg 64 :=
.seq NamedBody687_106 NamedBody687_155

def NamedBody687_157 : StackLang.HolProg 64 :=
.seq NamedBody687_105 NamedBody687_156

def NamedBody687_158 : StackLang.HolProg 64 :=
.seq NamedBody687_104 NamedBody687_157

def NamedBody687_159 : StackLang.HolProg 64 :=
.seq NamedBody687_103 NamedBody687_158

def NamedBody687_160 : StackLang.HolProg 64 :=
.seq NamedBody687_102 NamedBody687_159

def NamedBody687_161 : StackLang.HolProg 64 :=
.seq NamedBody687_101 NamedBody687_160

def NamedBody687_162 : StackLang.HolProg 64 :=
.seq NamedBody687_100 NamedBody687_161

def NamedBody687_163 : StackLang.HolProg 64 :=
.seq NamedBody687_99 NamedBody687_162

def NamedBody687_164 : StackLang.HolProg 64 :=
.seq NamedBody687_98 NamedBody687_163

def NamedBody687_165 : StackLang.HolProg 64 :=
.seq NamedBody687_97 NamedBody687_164

def NamedBody687_166 : StackLang.HolProg 64 :=
.seq NamedBody687_96 NamedBody687_165

def NamedBody687_167 : StackLang.HolProg 64 :=
.seq NamedBody687_95 NamedBody687_166

def NamedBody687_168 : StackLang.HolProg 64 :=
.seq NamedBody687_94 NamedBody687_167

def NamedBody687_169 : StackLang.HolProg 64 :=
.seq NamedBody687_93 NamedBody687_168

def NamedBody687_170 : StackLang.HolProg 64 :=
.seq NamedBody687_92 NamedBody687_169

def NamedBody687_171 : StackLang.HolProg 64 :=
.seq NamedBody687_91 NamedBody687_170

def NamedBody687_172 : StackLang.HolProg 64 :=
.seq NamedBody687_90 NamedBody687_171

def NamedBody687_173 : StackLang.HolProg 64 :=
.seq NamedBody687_89 NamedBody687_172

def NamedBody687_174 : StackLang.HolProg 64 :=
.seq NamedBody687_88 NamedBody687_173

def NamedBody687_175 : StackLang.HolProg 64 :=
.seq NamedBody687_87 NamedBody687_174

def NamedBody687_176 : StackLang.HolProg 64 :=
.seq NamedBody687_86 NamedBody687_175

def NamedBody687_177 : StackLang.HolProg 64 :=
.seq NamedBody687_85 NamedBody687_176

def NamedBody687_178 : StackLang.HolProg 64 :=
.seq NamedBody687_84 NamedBody687_177

def NamedBody687_179 : StackLang.HolProg 64 :=
.seq NamedBody687_83 NamedBody687_178

def NamedBody687_180 : StackLang.HolProg 64 :=
.seq NamedBody687_82 NamedBody687_179

def NamedBody687_181 : StackLang.HolProg 64 :=
.seq NamedBody687_81 NamedBody687_180

def NamedBody687_182 : StackLang.HolProg 64 :=
.seq NamedBody687_80 NamedBody687_181

def NamedBody687_183 : StackLang.HolProg 64 :=
.seq NamedBody687_79 NamedBody687_182

def NamedBody687_184 : StackLang.HolProg 64 :=
.seq NamedBody687_78 NamedBody687_183

def NamedBody687_185 : StackLang.HolProg 64 :=
.seq NamedBody687_77 NamedBody687_184

def NamedBody687_186 : StackLang.HolProg 64 :=
.seq NamedBody687_76 NamedBody687_185

def NamedBody687_187 : StackLang.HolProg 64 :=
.seq NamedBody687_75 NamedBody687_186

def NamedBody687_188 : StackLang.HolProg 64 :=
.seq NamedBody687_74 NamedBody687_187

def NamedBody687_189 : StackLang.HolProg 64 :=
.seq NamedBody687_13 NamedBody687_188

def NamedBody687_190 : StackLang.HolProg 64 :=
.seq NamedBody687_8 NamedBody687_189

def NamedBody687_191 : StackLang.HolProg 64 :=
.seq NamedBody687_7 NamedBody687_190

def NamedBody687_192 : StackLang.HolProg 64 :=
.seq NamedBody687_6 NamedBody687_191

def Named687 : Nat × StackLang.HolProg 64 := (687, NamedBody687_192)
theorem Named687_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed687 = Named687 := by
  kernel_rfl
#print axioms Named687_eq
end InitECandidate.Proofs.BackendStages
