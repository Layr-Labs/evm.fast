import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed783
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody783_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 144#64)))

def NamedBody783_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody783_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody783_3 : StackLang.HolProg 64 :=
.seq NamedBody783_1 NamedBody783_2

def NamedBody783_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody783_3 NamedBody783_4

def NamedBody783_6 : StackLang.HolProg 64 :=
.seq NamedBody783_0 NamedBody783_5

def NamedBody783_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody783_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody783_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody783_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody783_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody783_12 : StackLang.HolProg 64 :=
.seq NamedBody783_10 NamedBody783_11

def NamedBody783_13 : StackLang.HolProg 64 :=
.seq NamedBody783_9 NamedBody783_12

def NamedBody783_14 : StackLang.HolProg 64 :=
.seq NamedBody783_8 NamedBody783_13

def NamedBody783_15 : StackLang.HolProg 64 :=
.seq NamedBody783_7 NamedBody783_14

def NamedBody783_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3582#64)

def NamedBody783_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody783_19 : StackLang.HolProg 64 :=
.seq NamedBody783_17 NamedBody783_18

def NamedBody783_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody783_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody783_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody783_23 : StackLang.HolProg 64 :=
.seq NamedBody783_21 NamedBody783_22

def NamedBody783_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_25 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody783_23 NamedBody783_24

def NamedBody783_26 : StackLang.HolProg 64 :=
.seq NamedBody783_20 NamedBody783_25

def NamedBody783_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody783_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody783_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 783 3

def NamedBody783_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody783_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody783_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody783_36 : StackLang.HolProg 64 :=
.seq NamedBody783_34 NamedBody783_35

def NamedBody783_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody783_38 : StackLang.HolProg 64 :=
.seq NamedBody783_36 NamedBody783_37

def NamedBody783_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_40 : StackLang.HolProg 64 :=
.seq NamedBody783_38 NamedBody783_39

def NamedBody783_41 : StackLang.HolProg 64 :=
.seq NamedBody783_33 NamedBody783_40

def NamedBody783_42 : StackLang.HolProg 64 :=
.seq NamedBody783_32 NamedBody783_41

def NamedBody783_43 : StackLang.HolProg 64 :=
.seq NamedBody783_31 NamedBody783_42

def NamedBody783_44 : StackLang.HolProg 64 :=
.seq NamedBody783_30 NamedBody783_43

def NamedBody783_45 : StackLang.HolProg 64 :=
.seq NamedBody783_29 NamedBody783_44

def NamedBody783_46 : StackLang.HolProg 64 :=
.seq NamedBody783_28 NamedBody783_45

def NamedBody783_47 : StackLang.HolProg 64 :=
.seq NamedBody783_27 NamedBody783_46

def NamedBody783_48 : StackLang.HolProg 64 :=
.seq NamedBody783_26 NamedBody783_47

def NamedBody783_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody783_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody783_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody783_57 : StackLang.HolProg 64 :=
.seq NamedBody783_55 NamedBody783_56

def NamedBody783_58 : StackLang.HolProg 64 :=
.seq NamedBody783_54 NamedBody783_57

def NamedBody783_59 : StackLang.HolProg 64 :=
.seq NamedBody783_53 NamedBody783_58

def NamedBody783_60 : StackLang.HolProg 64 :=
.seq NamedBody783_52 NamedBody783_59

def NamedBody783_61 : StackLang.HolProg 64 :=
.seq NamedBody783_51 NamedBody783_60

def NamedBody783_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody783_63 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody783_64 : StackLang.HolProg 64 :=
.seq NamedBody783_62 NamedBody783_63

def NamedBody783_65 : StackLang.HolProg 64 :=
.call (some (NamedBody783_61, 1, 783, 2)) (Sum.inl 779) (some (NamedBody783_64, 783, 3))

def NamedBody783_66 : StackLang.HolProg 64 :=
.seq NamedBody783_50 NamedBody783_65

def NamedBody783_67 : StackLang.HolProg 64 :=
.seq NamedBody783_49 NamedBody783_66

def NamedBody783_68 : StackLang.HolProg 64 :=
.seq NamedBody783_48 NamedBody783_67

def NamedBody783_69 : StackLang.HolProg 64 :=
.seq NamedBody783_19 NamedBody783_68

def NamedBody783_70 : StackLang.HolProg 64 :=
.seq NamedBody783_16 NamedBody783_69

def NamedBody783_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody783_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody783_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody783_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody783_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody783_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody783_78 : StackLang.HolProg 64 :=
.seq NamedBody783_76 NamedBody783_77

def NamedBody783_79 : StackLang.HolProg 64 :=
.seq NamedBody783_75 NamedBody783_78

def NamedBody783_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3583#64)

def NamedBody783_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody783_83 : StackLang.HolProg 64 :=
.seq NamedBody783_81 NamedBody783_82

def NamedBody783_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody783_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody783_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody783_87 : StackLang.HolProg 64 :=
.seq NamedBody783_85 NamedBody783_86

def NamedBody783_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_89 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody783_87 NamedBody783_88

def NamedBody783_90 : StackLang.HolProg 64 :=
.seq NamedBody783_84 NamedBody783_89

def NamedBody783_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody783_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody783_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 783 5

def NamedBody783_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody783_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody783_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody783_100 : StackLang.HolProg 64 :=
.seq NamedBody783_98 NamedBody783_99

def NamedBody783_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody783_102 : StackLang.HolProg 64 :=
.seq NamedBody783_100 NamedBody783_101

def NamedBody783_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_104 : StackLang.HolProg 64 :=
.seq NamedBody783_102 NamedBody783_103

def NamedBody783_105 : StackLang.HolProg 64 :=
.seq NamedBody783_97 NamedBody783_104

def NamedBody783_106 : StackLang.HolProg 64 :=
.seq NamedBody783_96 NamedBody783_105

def NamedBody783_107 : StackLang.HolProg 64 :=
.seq NamedBody783_95 NamedBody783_106

def NamedBody783_108 : StackLang.HolProg 64 :=
.seq NamedBody783_94 NamedBody783_107

def NamedBody783_109 : StackLang.HolProg 64 :=
.seq NamedBody783_93 NamedBody783_108

def NamedBody783_110 : StackLang.HolProg 64 :=
.seq NamedBody783_92 NamedBody783_109

def NamedBody783_111 : StackLang.HolProg 64 :=
.seq NamedBody783_91 NamedBody783_110

def NamedBody783_112 : StackLang.HolProg 64 :=
.seq NamedBody783_90 NamedBody783_111

def NamedBody783_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody783_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody783_120 : StackLang.HolProg 64 :=
.seq NamedBody783_118 NamedBody783_119

def NamedBody783_121 : StackLang.HolProg 64 :=
.seq NamedBody783_117 NamedBody783_120

def NamedBody783_122 : StackLang.HolProg 64 :=
.seq NamedBody783_116 NamedBody783_121

def NamedBody783_123 : StackLang.HolProg 64 :=
.seq NamedBody783_115 NamedBody783_122

def NamedBody783_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody783_125 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody783_126 : StackLang.HolProg 64 :=
.seq NamedBody783_124 NamedBody783_125

def NamedBody783_127 : StackLang.HolProg 64 :=
.call (some (NamedBody783_123, 1, 783, 4)) (Sum.inl 780) (some (NamedBody783_126, 783, 5))

def NamedBody783_128 : StackLang.HolProg 64 :=
.seq NamedBody783_114 NamedBody783_127

def NamedBody783_129 : StackLang.HolProg 64 :=
.seq NamedBody783_113 NamedBody783_128

def NamedBody783_130 : StackLang.HolProg 64 :=
.seq NamedBody783_112 NamedBody783_129

def NamedBody783_131 : StackLang.HolProg 64 :=
.seq NamedBody783_83 NamedBody783_130

def NamedBody783_132 : StackLang.HolProg 64 :=
.seq NamedBody783_80 NamedBody783_131

def NamedBody783_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody783_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody783_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 144#64)))

def NamedBody783_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody783_138 : StackLang.HolProg 64 :=
.seq NamedBody783_136 NamedBody783_137

def NamedBody783_139 : StackLang.HolProg 64 :=
.seq NamedBody783_135 NamedBody783_138

def NamedBody783_140 : StackLang.HolProg 64 :=
.seq NamedBody783_134 NamedBody783_139

def NamedBody783_141 : StackLang.HolProg 64 :=
.seq NamedBody783_133 NamedBody783_140

def NamedBody783_142 : StackLang.HolProg 64 :=
.seq NamedBody783_132 NamedBody783_141

def NamedBody783_143 : StackLang.HolProg 64 :=
.seq NamedBody783_79 NamedBody783_142

def NamedBody783_144 : StackLang.HolProg 64 :=
.seq NamedBody783_74 NamedBody783_143

def NamedBody783_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_146 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody783_144 NamedBody783_145

def NamedBody783_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody783_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody783_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody783_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody783_151 : StackLang.HolProg 64 :=
.seq NamedBody783_149 NamedBody783_150

def NamedBody783_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3584#64)

def NamedBody783_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody783_155 : StackLang.HolProg 64 :=
.seq NamedBody783_153 NamedBody783_154

def NamedBody783_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody783_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody783_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody783_159 : StackLang.HolProg 64 :=
.seq NamedBody783_157 NamedBody783_158

def NamedBody783_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_161 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody783_159 NamedBody783_160

def NamedBody783_162 : StackLang.HolProg 64 :=
.seq NamedBody783_156 NamedBody783_161

def NamedBody783_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody783_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody783_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 783 7

def NamedBody783_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody783_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody783_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody783_172 : StackLang.HolProg 64 :=
.seq NamedBody783_170 NamedBody783_171

def NamedBody783_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody783_174 : StackLang.HolProg 64 :=
.seq NamedBody783_172 NamedBody783_173

def NamedBody783_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_176 : StackLang.HolProg 64 :=
.seq NamedBody783_174 NamedBody783_175

def NamedBody783_177 : StackLang.HolProg 64 :=
.seq NamedBody783_169 NamedBody783_176

def NamedBody783_178 : StackLang.HolProg 64 :=
.seq NamedBody783_168 NamedBody783_177

def NamedBody783_179 : StackLang.HolProg 64 :=
.seq NamedBody783_167 NamedBody783_178

def NamedBody783_180 : StackLang.HolProg 64 :=
.seq NamedBody783_166 NamedBody783_179

def NamedBody783_181 : StackLang.HolProg 64 :=
.seq NamedBody783_165 NamedBody783_180

def NamedBody783_182 : StackLang.HolProg 64 :=
.seq NamedBody783_164 NamedBody783_181

def NamedBody783_183 : StackLang.HolProg 64 :=
.seq NamedBody783_163 NamedBody783_182

def NamedBody783_184 : StackLang.HolProg 64 :=
.seq NamedBody783_162 NamedBody783_183

def NamedBody783_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody783_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody783_192 : StackLang.HolProg 64 :=
.seq NamedBody783_190 NamedBody783_191

def NamedBody783_193 : StackLang.HolProg 64 :=
.seq NamedBody783_189 NamedBody783_192

def NamedBody783_194 : StackLang.HolProg 64 :=
.seq NamedBody783_188 NamedBody783_193

def NamedBody783_195 : StackLang.HolProg 64 :=
.seq NamedBody783_187 NamedBody783_194

def NamedBody783_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_197 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody783_198 : StackLang.HolProg 64 :=
.seq NamedBody783_196 NamedBody783_197

def NamedBody783_199 : StackLang.HolProg 64 :=
.call (some (NamedBody783_195, 1, 783, 6)) (Sum.inl 779) (some (NamedBody783_198, 783, 7))

def NamedBody783_200 : StackLang.HolProg 64 :=
.seq NamedBody783_186 NamedBody783_199

def NamedBody783_201 : StackLang.HolProg 64 :=
.seq NamedBody783_185 NamedBody783_200

def NamedBody783_202 : StackLang.HolProg 64 :=
.seq NamedBody783_184 NamedBody783_201

def NamedBody783_203 : StackLang.HolProg 64 :=
.seq NamedBody783_155 NamedBody783_202

def NamedBody783_204 : StackLang.HolProg 64 :=
.seq NamedBody783_152 NamedBody783_203

def NamedBody783_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody783_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody783_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody783_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody783_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody783_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody783_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody783_213 : StackLang.HolProg 64 :=
.seq NamedBody783_211 NamedBody783_212

def NamedBody783_214 : StackLang.HolProg 64 :=
.seq NamedBody783_210 NamedBody783_213

def NamedBody783_215 : StackLang.HolProg 64 :=
.seq NamedBody783_209 NamedBody783_214

def NamedBody783_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3585#64)

def NamedBody783_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody783_219 : StackLang.HolProg 64 :=
.seq NamedBody783_217 NamedBody783_218

def NamedBody783_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody783_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody783_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody783_223 : StackLang.HolProg 64 :=
.seq NamedBody783_221 NamedBody783_222

def NamedBody783_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_225 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody783_223 NamedBody783_224

def NamedBody783_226 : StackLang.HolProg 64 :=
.seq NamedBody783_220 NamedBody783_225

def NamedBody783_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody783_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody783_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 783 9

def NamedBody783_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody783_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody783_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody783_236 : StackLang.HolProg 64 :=
.seq NamedBody783_234 NamedBody783_235

def NamedBody783_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody783_238 : StackLang.HolProg 64 :=
.seq NamedBody783_236 NamedBody783_237

def NamedBody783_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_240 : StackLang.HolProg 64 :=
.seq NamedBody783_238 NamedBody783_239

def NamedBody783_241 : StackLang.HolProg 64 :=
.seq NamedBody783_233 NamedBody783_240

def NamedBody783_242 : StackLang.HolProg 64 :=
.seq NamedBody783_232 NamedBody783_241

def NamedBody783_243 : StackLang.HolProg 64 :=
.seq NamedBody783_231 NamedBody783_242

def NamedBody783_244 : StackLang.HolProg 64 :=
.seq NamedBody783_230 NamedBody783_243

def NamedBody783_245 : StackLang.HolProg 64 :=
.seq NamedBody783_229 NamedBody783_244

def NamedBody783_246 : StackLang.HolProg 64 :=
.seq NamedBody783_228 NamedBody783_245

def NamedBody783_247 : StackLang.HolProg 64 :=
.seq NamedBody783_227 NamedBody783_246

def NamedBody783_248 : StackLang.HolProg 64 :=
.seq NamedBody783_226 NamedBody783_247

def NamedBody783_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody783_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody783_256 : StackLang.HolProg 64 :=
.seq NamedBody783_254 NamedBody783_255

def NamedBody783_257 : StackLang.HolProg 64 :=
.seq NamedBody783_253 NamedBody783_256

def NamedBody783_258 : StackLang.HolProg 64 :=
.seq NamedBody783_252 NamedBody783_257

def NamedBody783_259 : StackLang.HolProg 64 :=
.seq NamedBody783_251 NamedBody783_258

def NamedBody783_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody783_261 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody783_262 : StackLang.HolProg 64 :=
.seq NamedBody783_260 NamedBody783_261

def NamedBody783_263 : StackLang.HolProg 64 :=
.call (some (NamedBody783_259, 1, 783, 8)) (Sum.inl 780) (some (NamedBody783_262, 783, 9))

def NamedBody783_264 : StackLang.HolProg 64 :=
.seq NamedBody783_250 NamedBody783_263

def NamedBody783_265 : StackLang.HolProg 64 :=
.seq NamedBody783_249 NamedBody783_264

def NamedBody783_266 : StackLang.HolProg 64 :=
.seq NamedBody783_248 NamedBody783_265

def NamedBody783_267 : StackLang.HolProg 64 :=
.seq NamedBody783_219 NamedBody783_266

def NamedBody783_268 : StackLang.HolProg 64 :=
.seq NamedBody783_216 NamedBody783_267

def NamedBody783_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody783_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody783_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 144#64)))

def NamedBody783_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody783_274 : StackLang.HolProg 64 :=
.seq NamedBody783_272 NamedBody783_273

def NamedBody783_275 : StackLang.HolProg 64 :=
.seq NamedBody783_271 NamedBody783_274

def NamedBody783_276 : StackLang.HolProg 64 :=
.seq NamedBody783_270 NamedBody783_275

def NamedBody783_277 : StackLang.HolProg 64 :=
.seq NamedBody783_269 NamedBody783_276

def NamedBody783_278 : StackLang.HolProg 64 :=
.seq NamedBody783_268 NamedBody783_277

def NamedBody783_279 : StackLang.HolProg 64 :=
.seq NamedBody783_215 NamedBody783_278

def NamedBody783_280 : StackLang.HolProg 64 :=
.seq NamedBody783_208 NamedBody783_279

def NamedBody783_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_282 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody783_280 NamedBody783_281

def NamedBody783_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody783_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody783_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3586#64)

def NamedBody783_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody783_289 : StackLang.HolProg 64 :=
.seq NamedBody783_287 NamedBody783_288

def NamedBody783_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody783_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody783_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody783_293 : StackLang.HolProg 64 :=
.seq NamedBody783_291 NamedBody783_292

def NamedBody783_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_295 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody783_293 NamedBody783_294

def NamedBody783_296 : StackLang.HolProg 64 :=
.seq NamedBody783_290 NamedBody783_295

def NamedBody783_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody783_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody783_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 783 11

def NamedBody783_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody783_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody783_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody783_306 : StackLang.HolProg 64 :=
.seq NamedBody783_304 NamedBody783_305

def NamedBody783_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody783_308 : StackLang.HolProg 64 :=
.seq NamedBody783_306 NamedBody783_307

def NamedBody783_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_310 : StackLang.HolProg 64 :=
.seq NamedBody783_308 NamedBody783_309

def NamedBody783_311 : StackLang.HolProg 64 :=
.seq NamedBody783_303 NamedBody783_310

def NamedBody783_312 : StackLang.HolProg 64 :=
.seq NamedBody783_302 NamedBody783_311

def NamedBody783_313 : StackLang.HolProg 64 :=
.seq NamedBody783_301 NamedBody783_312

def NamedBody783_314 : StackLang.HolProg 64 :=
.seq NamedBody783_300 NamedBody783_313

def NamedBody783_315 : StackLang.HolProg 64 :=
.seq NamedBody783_299 NamedBody783_314

def NamedBody783_316 : StackLang.HolProg 64 :=
.seq NamedBody783_298 NamedBody783_315

def NamedBody783_317 : StackLang.HolProg 64 :=
.seq NamedBody783_297 NamedBody783_316

def NamedBody783_318 : StackLang.HolProg 64 :=
.seq NamedBody783_296 NamedBody783_317

def NamedBody783_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody783_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody783_326 : StackLang.HolProg 64 :=
.seq NamedBody783_324 NamedBody783_325

def NamedBody783_327 : StackLang.HolProg 64 :=
.seq NamedBody783_323 NamedBody783_326

def NamedBody783_328 : StackLang.HolProg 64 :=
.seq NamedBody783_322 NamedBody783_327

def NamedBody783_329 : StackLang.HolProg 64 :=
.seq NamedBody783_321 NamedBody783_328

def NamedBody783_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_331 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody783_332 : StackLang.HolProg 64 :=
.seq NamedBody783_330 NamedBody783_331

def NamedBody783_333 : StackLang.HolProg 64 :=
.call (some (NamedBody783_329, 1, 783, 10)) (Sum.inl 69) (some (NamedBody783_332, 783, 11))

def NamedBody783_334 : StackLang.HolProg 64 :=
.seq NamedBody783_320 NamedBody783_333

def NamedBody783_335 : StackLang.HolProg 64 :=
.seq NamedBody783_319 NamedBody783_334

def NamedBody783_336 : StackLang.HolProg 64 :=
.seq NamedBody783_318 NamedBody783_335

def NamedBody783_337 : StackLang.HolProg 64 :=
.seq NamedBody783_289 NamedBody783_336

def NamedBody783_338 : StackLang.HolProg 64 :=
.seq NamedBody783_286 NamedBody783_337

def NamedBody783_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody783_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1152#64)

def NamedBody783_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody783_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3587#64)

def NamedBody783_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody783_345 : StackLang.HolProg 64 :=
.seq NamedBody783_343 NamedBody783_344

def NamedBody783_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody783_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody783_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody783_349 : StackLang.HolProg 64 :=
.seq NamedBody783_347 NamedBody783_348

def NamedBody783_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_351 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody783_349 NamedBody783_350

def NamedBody783_352 : StackLang.HolProg 64 :=
.seq NamedBody783_346 NamedBody783_351

def NamedBody783_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody783_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody783_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 783 13

def NamedBody783_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody783_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody783_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody783_362 : StackLang.HolProg 64 :=
.seq NamedBody783_360 NamedBody783_361

def NamedBody783_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody783_364 : StackLang.HolProg 64 :=
.seq NamedBody783_362 NamedBody783_363

def NamedBody783_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_366 : StackLang.HolProg 64 :=
.seq NamedBody783_364 NamedBody783_365

def NamedBody783_367 : StackLang.HolProg 64 :=
.seq NamedBody783_359 NamedBody783_366

def NamedBody783_368 : StackLang.HolProg 64 :=
.seq NamedBody783_358 NamedBody783_367

def NamedBody783_369 : StackLang.HolProg 64 :=
.seq NamedBody783_357 NamedBody783_368

def NamedBody783_370 : StackLang.HolProg 64 :=
.seq NamedBody783_356 NamedBody783_369

def NamedBody783_371 : StackLang.HolProg 64 :=
.seq NamedBody783_355 NamedBody783_370

def NamedBody783_372 : StackLang.HolProg 64 :=
.seq NamedBody783_354 NamedBody783_371

def NamedBody783_373 : StackLang.HolProg 64 :=
.seq NamedBody783_353 NamedBody783_372

def NamedBody783_374 : StackLang.HolProg 64 :=
.seq NamedBody783_352 NamedBody783_373

def NamedBody783_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody783_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody783_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody783_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody783_384 : StackLang.HolProg 64 :=
.seq NamedBody783_382 NamedBody783_383

def NamedBody783_385 : StackLang.HolProg 64 :=
.seq NamedBody783_381 NamedBody783_384

def NamedBody783_386 : StackLang.HolProg 64 :=
.seq NamedBody783_380 NamedBody783_385

def NamedBody783_387 : StackLang.HolProg 64 :=
.seq NamedBody783_379 NamedBody783_386

def NamedBody783_388 : StackLang.HolProg 64 :=
.seq NamedBody783_378 NamedBody783_387

def NamedBody783_389 : StackLang.HolProg 64 :=
.seq NamedBody783_377 NamedBody783_388

def NamedBody783_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody783_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody783_392 : StackLang.HolProg 64 :=
.seq NamedBody783_390 NamedBody783_391

def NamedBody783_393 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody783_394 : StackLang.HolProg 64 :=
.seq NamedBody783_392 NamedBody783_393

def NamedBody783_395 : StackLang.HolProg 64 :=
.call (some (NamedBody783_389, 1, 783, 12)) (Sum.inl 68) (some (NamedBody783_394, 783, 13))

def NamedBody783_396 : StackLang.HolProg 64 :=
.seq NamedBody783_376 NamedBody783_395

def NamedBody783_397 : StackLang.HolProg 64 :=
.seq NamedBody783_375 NamedBody783_396

def NamedBody783_398 : StackLang.HolProg 64 :=
.seq NamedBody783_374 NamedBody783_397

def NamedBody783_399 : StackLang.HolProg 64 :=
.seq NamedBody783_345 NamedBody783_398

def NamedBody783_400 : StackLang.HolProg 64 :=
.seq NamedBody783_342 NamedBody783_399

def NamedBody783_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody783_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody783_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def NamedBody783_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def NamedBody783_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 288#64)))

def NamedBody783_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 9 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 384#64)))

def NamedBody783_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 28 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 480#64)))

def NamedBody783_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 27 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 576#64)))

def NamedBody783_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 8 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 672#64)))

def NamedBody783_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 29 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 768#64)))

def NamedBody783_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 15 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 864#64)))

def NamedBody783_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 30 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 960#64)))

def NamedBody783_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 14 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1056#64)))

def NamedBody783_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def NamedBody783_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def NamedBody783_428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody783_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 29
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody783_430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 28
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody783_431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody783_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 30
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody783_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody783_434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody783_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody783_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody783_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody783_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 14
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody783_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody783_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 15
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody783_442 : StackLang.HolProg 64 :=
.seq NamedBody783_440 NamedBody783_441

def NamedBody783_443 : StackLang.HolProg 64 :=
.seq NamedBody783_439 NamedBody783_442

def NamedBody783_444 : StackLang.HolProg 64 :=
.seq NamedBody783_438 NamedBody783_443

def NamedBody783_445 : StackLang.HolProg 64 :=
.seq NamedBody783_437 NamedBody783_444

def NamedBody783_446 : StackLang.HolProg 64 :=
.seq NamedBody783_436 NamedBody783_445

def NamedBody783_447 : StackLang.HolProg 64 :=
.seq NamedBody783_435 NamedBody783_446

def NamedBody783_448 : StackLang.HolProg 64 :=
.seq NamedBody783_434 NamedBody783_447

def NamedBody783_449 : StackLang.HolProg 64 :=
.seq NamedBody783_433 NamedBody783_448

def NamedBody783_450 : StackLang.HolProg 64 :=
.seq NamedBody783_432 NamedBody783_449

def NamedBody783_451 : StackLang.HolProg 64 :=
.seq NamedBody783_431 NamedBody783_450

def NamedBody783_452 : StackLang.HolProg 64 :=
.seq NamedBody783_430 NamedBody783_451

def NamedBody783_453 : StackLang.HolProg 64 :=
.seq NamedBody783_429 NamedBody783_452

def NamedBody783_454 : StackLang.HolProg 64 :=
.seq NamedBody783_428 NamedBody783_453

def NamedBody783_455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3588#64)

def NamedBody783_457 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody783_458 : StackLang.HolProg 64 :=
.seq NamedBody783_456 NamedBody783_457

def NamedBody783_459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody783_460 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody783_461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody783_462 : StackLang.HolProg 64 :=
.seq NamedBody783_460 NamedBody783_461

def NamedBody783_463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_464 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody783_462 NamedBody783_463

def NamedBody783_465 : StackLang.HolProg 64 :=
.seq NamedBody783_459 NamedBody783_464

def NamedBody783_466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody783_467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody783_468 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 783 15

def NamedBody783_469 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody783_470 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_471 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_472 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_473 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody783_474 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody783_475 : StackLang.HolProg 64 :=
.seq NamedBody783_473 NamedBody783_474

def NamedBody783_476 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody783_477 : StackLang.HolProg 64 :=
.seq NamedBody783_475 NamedBody783_476

def NamedBody783_478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_479 : StackLang.HolProg 64 :=
.seq NamedBody783_477 NamedBody783_478

def NamedBody783_480 : StackLang.HolProg 64 :=
.seq NamedBody783_472 NamedBody783_479

def NamedBody783_481 : StackLang.HolProg 64 :=
.seq NamedBody783_471 NamedBody783_480

def NamedBody783_482 : StackLang.HolProg 64 :=
.seq NamedBody783_470 NamedBody783_481

def NamedBody783_483 : StackLang.HolProg 64 :=
.seq NamedBody783_469 NamedBody783_482

def NamedBody783_484 : StackLang.HolProg 64 :=
.seq NamedBody783_468 NamedBody783_483

def NamedBody783_485 : StackLang.HolProg 64 :=
.seq NamedBody783_467 NamedBody783_484

def NamedBody783_486 : StackLang.HolProg 64 :=
.seq NamedBody783_466 NamedBody783_485

def NamedBody783_487 : StackLang.HolProg 64 :=
.seq NamedBody783_465 NamedBody783_486

def NamedBody783_488 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_489 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_490 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_491 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_492 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_493 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody783_494 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody783_495 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody783_496 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody783_497 : StackLang.HolProg 64 :=
.seq NamedBody783_495 NamedBody783_496

def NamedBody783_498 : StackLang.HolProg 64 :=
.seq NamedBody783_494 NamedBody783_497

def NamedBody783_499 : StackLang.HolProg 64 :=
.seq NamedBody783_493 NamedBody783_498

def NamedBody783_500 : StackLang.HolProg 64 :=
.seq NamedBody783_492 NamedBody783_499

def NamedBody783_501 : StackLang.HolProg 64 :=
.seq NamedBody783_491 NamedBody783_500

def NamedBody783_502 : StackLang.HolProg 64 :=
.seq NamedBody783_490 NamedBody783_501

def NamedBody783_503 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody783_504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody783_505 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody783_506 : StackLang.HolProg 64 :=
.seq NamedBody783_504 NamedBody783_505

def NamedBody783_507 : StackLang.HolProg 64 :=
.seq NamedBody783_503 NamedBody783_506

def NamedBody783_508 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody783_509 : StackLang.HolProg 64 :=
.seq NamedBody783_507 NamedBody783_508

def NamedBody783_510 : StackLang.HolProg 64 :=
.call (some (NamedBody783_502, 1, 783, 14)) (Sum.inl 739) (some (NamedBody783_509, 783, 15))

def NamedBody783_511 : StackLang.HolProg 64 :=
.seq NamedBody783_489 NamedBody783_510

def NamedBody783_512 : StackLang.HolProg 64 :=
.seq NamedBody783_488 NamedBody783_511

def NamedBody783_513 : StackLang.HolProg 64 :=
.seq NamedBody783_487 NamedBody783_512

def NamedBody783_514 : StackLang.HolProg 64 :=
.seq NamedBody783_458 NamedBody783_513

def NamedBody783_515 : StackLang.HolProg 64 :=
.seq NamedBody783_455 NamedBody783_514

def NamedBody783_516 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody783_517 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody783_518 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def NamedBody783_519 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_520 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def NamedBody783_521 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody783_522 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody783_523 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody783_524 : StackLang.HolProg 64 :=
.seq NamedBody783_522 NamedBody783_523

def NamedBody783_525 : StackLang.HolProg 64 :=
.seq NamedBody783_521 NamedBody783_524

def NamedBody783_526 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_527 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3589#64)

def NamedBody783_528 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody783_529 : StackLang.HolProg 64 :=
.seq NamedBody783_527 NamedBody783_528

def NamedBody783_530 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody783_531 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody783_532 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody783_533 : StackLang.HolProg 64 :=
.seq NamedBody783_531 NamedBody783_532

def NamedBody783_534 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_535 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody783_533 NamedBody783_534

def NamedBody783_536 : StackLang.HolProg 64 :=
.seq NamedBody783_530 NamedBody783_535

def NamedBody783_537 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody783_538 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody783_539 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 783 17

def NamedBody783_540 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody783_541 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_542 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_543 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_544 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody783_545 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody783_546 : StackLang.HolProg 64 :=
.seq NamedBody783_544 NamedBody783_545

def NamedBody783_547 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody783_548 : StackLang.HolProg 64 :=
.seq NamedBody783_546 NamedBody783_547

def NamedBody783_549 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_550 : StackLang.HolProg 64 :=
.seq NamedBody783_548 NamedBody783_549

def NamedBody783_551 : StackLang.HolProg 64 :=
.seq NamedBody783_543 NamedBody783_550

def NamedBody783_552 : StackLang.HolProg 64 :=
.seq NamedBody783_542 NamedBody783_551

def NamedBody783_553 : StackLang.HolProg 64 :=
.seq NamedBody783_541 NamedBody783_552

def NamedBody783_554 : StackLang.HolProg 64 :=
.seq NamedBody783_540 NamedBody783_553

def NamedBody783_555 : StackLang.HolProg 64 :=
.seq NamedBody783_539 NamedBody783_554

def NamedBody783_556 : StackLang.HolProg 64 :=
.seq NamedBody783_538 NamedBody783_555

def NamedBody783_557 : StackLang.HolProg 64 :=
.seq NamedBody783_537 NamedBody783_556

def NamedBody783_558 : StackLang.HolProg 64 :=
.seq NamedBody783_536 NamedBody783_557

def NamedBody783_559 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_560 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_561 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_562 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_563 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_564 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody783_565 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody783_566 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody783_567 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_568 : StackLang.HolProg 64 :=
.seq NamedBody783_566 NamedBody783_567

def NamedBody783_569 : StackLang.HolProg 64 :=
.seq NamedBody783_565 NamedBody783_568

def NamedBody783_570 : StackLang.HolProg 64 :=
.seq NamedBody783_564 NamedBody783_569

def NamedBody783_571 : StackLang.HolProg 64 :=
.seq NamedBody783_563 NamedBody783_570

def NamedBody783_572 : StackLang.HolProg 64 :=
.seq NamedBody783_562 NamedBody783_571

def NamedBody783_573 : StackLang.HolProg 64 :=
.seq NamedBody783_561 NamedBody783_572

def NamedBody783_574 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody783_575 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody783_576 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_577 : StackLang.HolProg 64 :=
.seq NamedBody783_575 NamedBody783_576

def NamedBody783_578 : StackLang.HolProg 64 :=
.seq NamedBody783_574 NamedBody783_577

def NamedBody783_579 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody783_580 : StackLang.HolProg 64 :=
.seq NamedBody783_578 NamedBody783_579

def NamedBody783_581 : StackLang.HolProg 64 :=
.call (some (NamedBody783_573, 1, 783, 16)) (Sum.inl 739) (some (NamedBody783_580, 783, 17))

def NamedBody783_582 : StackLang.HolProg 64 :=
.seq NamedBody783_560 NamedBody783_581

def NamedBody783_583 : StackLang.HolProg 64 :=
.seq NamedBody783_559 NamedBody783_582

def NamedBody783_584 : StackLang.HolProg 64 :=
.seq NamedBody783_558 NamedBody783_583

def NamedBody783_585 : StackLang.HolProg 64 :=
.seq NamedBody783_529 NamedBody783_584

def NamedBody783_586 : StackLang.HolProg 64 :=
.seq NamedBody783_526 NamedBody783_585

def NamedBody783_587 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody783_588 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody783_589 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def NamedBody783_590 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody783_591 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody783_592 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_593 : StackLang.HolProg 64 :=
.seq NamedBody783_591 NamedBody783_592

def NamedBody783_594 : StackLang.HolProg 64 :=
.seq NamedBody783_590 NamedBody783_593

def NamedBody783_595 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_596 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3590#64)

def NamedBody783_597 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody783_598 : StackLang.HolProg 64 :=
.seq NamedBody783_596 NamedBody783_597

def NamedBody783_599 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody783_600 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody783_601 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody783_602 : StackLang.HolProg 64 :=
.seq NamedBody783_600 NamedBody783_601

def NamedBody783_603 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_604 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody783_602 NamedBody783_603

def NamedBody783_605 : StackLang.HolProg 64 :=
.seq NamedBody783_599 NamedBody783_604

def NamedBody783_606 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody783_607 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody783_608 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 783 19

def NamedBody783_609 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody783_610 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_611 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_612 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_613 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody783_614 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody783_615 : StackLang.HolProg 64 :=
.seq NamedBody783_613 NamedBody783_614

def NamedBody783_616 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody783_617 : StackLang.HolProg 64 :=
.seq NamedBody783_615 NamedBody783_616

def NamedBody783_618 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_619 : StackLang.HolProg 64 :=
.seq NamedBody783_617 NamedBody783_618

def NamedBody783_620 : StackLang.HolProg 64 :=
.seq NamedBody783_612 NamedBody783_619

def NamedBody783_621 : StackLang.HolProg 64 :=
.seq NamedBody783_611 NamedBody783_620

def NamedBody783_622 : StackLang.HolProg 64 :=
.seq NamedBody783_610 NamedBody783_621

def NamedBody783_623 : StackLang.HolProg 64 :=
.seq NamedBody783_609 NamedBody783_622

def NamedBody783_624 : StackLang.HolProg 64 :=
.seq NamedBody783_608 NamedBody783_623

def NamedBody783_625 : StackLang.HolProg 64 :=
.seq NamedBody783_607 NamedBody783_624

def NamedBody783_626 : StackLang.HolProg 64 :=
.seq NamedBody783_606 NamedBody783_625

def NamedBody783_627 : StackLang.HolProg 64 :=
.seq NamedBody783_605 NamedBody783_626

def NamedBody783_628 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_629 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_630 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_631 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_632 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_633 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody783_634 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody783_635 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody783_636 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody783_637 : StackLang.HolProg 64 :=
.seq NamedBody783_635 NamedBody783_636

def NamedBody783_638 : StackLang.HolProg 64 :=
.seq NamedBody783_634 NamedBody783_637

def NamedBody783_639 : StackLang.HolProg 64 :=
.seq NamedBody783_633 NamedBody783_638

def NamedBody783_640 : StackLang.HolProg 64 :=
.seq NamedBody783_632 NamedBody783_639

def NamedBody783_641 : StackLang.HolProg 64 :=
.seq NamedBody783_631 NamedBody783_640

def NamedBody783_642 : StackLang.HolProg 64 :=
.seq NamedBody783_630 NamedBody783_641

def NamedBody783_643 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody783_644 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody783_645 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody783_646 : StackLang.HolProg 64 :=
.seq NamedBody783_644 NamedBody783_645

def NamedBody783_647 : StackLang.HolProg 64 :=
.seq NamedBody783_643 NamedBody783_646

def NamedBody783_648 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody783_649 : StackLang.HolProg 64 :=
.seq NamedBody783_647 NamedBody783_648

def NamedBody783_650 : StackLang.HolProg 64 :=
.call (some (NamedBody783_642, 1, 783, 18)) (Sum.inl 739) (some (NamedBody783_649, 783, 19))

def NamedBody783_651 : StackLang.HolProg 64 :=
.seq NamedBody783_629 NamedBody783_650

def NamedBody783_652 : StackLang.HolProg 64 :=
.seq NamedBody783_628 NamedBody783_651

def NamedBody783_653 : StackLang.HolProg 64 :=
.seq NamedBody783_627 NamedBody783_652

def NamedBody783_654 : StackLang.HolProg 64 :=
.seq NamedBody783_598 NamedBody783_653

def NamedBody783_655 : StackLang.HolProg 64 :=
.seq NamedBody783_595 NamedBody783_654

def NamedBody783_656 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody783_657 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody783_658 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def NamedBody783_659 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody783_660 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody783_661 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody783_662 : StackLang.HolProg 64 :=
.seq NamedBody783_660 NamedBody783_661

def NamedBody783_663 : StackLang.HolProg 64 :=
.seq NamedBody783_659 NamedBody783_662

def NamedBody783_664 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_665 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3591#64)

def NamedBody783_666 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody783_667 : StackLang.HolProg 64 :=
.seq NamedBody783_665 NamedBody783_666

def NamedBody783_668 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody783_669 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody783_670 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody783_671 : StackLang.HolProg 64 :=
.seq NamedBody783_669 NamedBody783_670

def NamedBody783_672 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_673 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody783_671 NamedBody783_672

def NamedBody783_674 : StackLang.HolProg 64 :=
.seq NamedBody783_668 NamedBody783_673

def NamedBody783_675 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody783_676 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody783_677 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 783 21

def NamedBody783_678 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody783_679 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_680 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_681 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_682 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody783_683 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody783_684 : StackLang.HolProg 64 :=
.seq NamedBody783_682 NamedBody783_683

def NamedBody783_685 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody783_686 : StackLang.HolProg 64 :=
.seq NamedBody783_684 NamedBody783_685

def NamedBody783_687 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_688 : StackLang.HolProg 64 :=
.seq NamedBody783_686 NamedBody783_687

def NamedBody783_689 : StackLang.HolProg 64 :=
.seq NamedBody783_681 NamedBody783_688

def NamedBody783_690 : StackLang.HolProg 64 :=
.seq NamedBody783_680 NamedBody783_689

def NamedBody783_691 : StackLang.HolProg 64 :=
.seq NamedBody783_679 NamedBody783_690

def NamedBody783_692 : StackLang.HolProg 64 :=
.seq NamedBody783_678 NamedBody783_691

def NamedBody783_693 : StackLang.HolProg 64 :=
.seq NamedBody783_677 NamedBody783_692

def NamedBody783_694 : StackLang.HolProg 64 :=
.seq NamedBody783_676 NamedBody783_693

def NamedBody783_695 : StackLang.HolProg 64 :=
.seq NamedBody783_675 NamedBody783_694

def NamedBody783_696 : StackLang.HolProg 64 :=
.seq NamedBody783_674 NamedBody783_695

def NamedBody783_697 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_698 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_699 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_700 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_701 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_702 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody783_703 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody783_704 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_705 : StackLang.HolProg 64 :=
.seq NamedBody783_703 NamedBody783_704

def NamedBody783_706 : StackLang.HolProg 64 :=
.seq NamedBody783_702 NamedBody783_705

def NamedBody783_707 : StackLang.HolProg 64 :=
.seq NamedBody783_701 NamedBody783_706

def NamedBody783_708 : StackLang.HolProg 64 :=
.seq NamedBody783_700 NamedBody783_707

def NamedBody783_709 : StackLang.HolProg 64 :=
.seq NamedBody783_699 NamedBody783_708

def NamedBody783_710 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody783_711 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_712 : StackLang.HolProg 64 :=
.seq NamedBody783_710 NamedBody783_711

def NamedBody783_713 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody783_714 : StackLang.HolProg 64 :=
.seq NamedBody783_712 NamedBody783_713

def NamedBody783_715 : StackLang.HolProg 64 :=
.call (some (NamedBody783_709, 1, 783, 20)) (Sum.inl 739) (some (NamedBody783_714, 783, 21))

def NamedBody783_716 : StackLang.HolProg 64 :=
.seq NamedBody783_698 NamedBody783_715

def NamedBody783_717 : StackLang.HolProg 64 :=
.seq NamedBody783_697 NamedBody783_716

def NamedBody783_718 : StackLang.HolProg 64 :=
.seq NamedBody783_696 NamedBody783_717

def NamedBody783_719 : StackLang.HolProg 64 :=
.seq NamedBody783_667 NamedBody783_718

def NamedBody783_720 : StackLang.HolProg 64 :=
.seq NamedBody783_664 NamedBody783_719

def NamedBody783_721 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody783_722 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody783_723 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody783_724 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_725 : StackLang.HolProg 64 :=
.seq NamedBody783_723 NamedBody783_724

def NamedBody783_726 : StackLang.HolProg 64 :=
.seq NamedBody783_722 NamedBody783_725

def NamedBody783_727 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_728 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3592#64)

def NamedBody783_729 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody783_730 : StackLang.HolProg 64 :=
.seq NamedBody783_728 NamedBody783_729

def NamedBody783_731 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody783_732 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody783_733 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody783_734 : StackLang.HolProg 64 :=
.seq NamedBody783_732 NamedBody783_733

def NamedBody783_735 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_736 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody783_734 NamedBody783_735

def NamedBody783_737 : StackLang.HolProg 64 :=
.seq NamedBody783_731 NamedBody783_736

def NamedBody783_738 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody783_739 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody783_740 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 783 23

def NamedBody783_741 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody783_742 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_743 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_744 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_745 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody783_746 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody783_747 : StackLang.HolProg 64 :=
.seq NamedBody783_745 NamedBody783_746

def NamedBody783_748 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody783_749 : StackLang.HolProg 64 :=
.seq NamedBody783_747 NamedBody783_748

def NamedBody783_750 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_751 : StackLang.HolProg 64 :=
.seq NamedBody783_749 NamedBody783_750

def NamedBody783_752 : StackLang.HolProg 64 :=
.seq NamedBody783_744 NamedBody783_751

def NamedBody783_753 : StackLang.HolProg 64 :=
.seq NamedBody783_743 NamedBody783_752

def NamedBody783_754 : StackLang.HolProg 64 :=
.seq NamedBody783_742 NamedBody783_753

def NamedBody783_755 : StackLang.HolProg 64 :=
.seq NamedBody783_741 NamedBody783_754

def NamedBody783_756 : StackLang.HolProg 64 :=
.seq NamedBody783_740 NamedBody783_755

def NamedBody783_757 : StackLang.HolProg 64 :=
.seq NamedBody783_739 NamedBody783_756

def NamedBody783_758 : StackLang.HolProg 64 :=
.seq NamedBody783_738 NamedBody783_757

def NamedBody783_759 : StackLang.HolProg 64 :=
.seq NamedBody783_737 NamedBody783_758

def NamedBody783_760 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_761 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_762 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_763 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_764 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_765 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody783_766 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody783_767 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody783_768 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody783_769 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody783_770 : StackLang.HolProg 64 :=
.seq NamedBody783_768 NamedBody783_769

def NamedBody783_771 : StackLang.HolProg 64 :=
.seq NamedBody783_767 NamedBody783_770

def NamedBody783_772 : StackLang.HolProg 64 :=
.seq NamedBody783_766 NamedBody783_771

def NamedBody783_773 : StackLang.HolProg 64 :=
.seq NamedBody783_765 NamedBody783_772

def NamedBody783_774 : StackLang.HolProg 64 :=
.seq NamedBody783_764 NamedBody783_773

def NamedBody783_775 : StackLang.HolProg 64 :=
.seq NamedBody783_763 NamedBody783_774

def NamedBody783_776 : StackLang.HolProg 64 :=
.seq NamedBody783_762 NamedBody783_775

def NamedBody783_777 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody783_778 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody783_779 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody783_780 : StackLang.HolProg 64 :=
.seq NamedBody783_778 NamedBody783_779

def NamedBody783_781 : StackLang.HolProg 64 :=
.seq NamedBody783_777 NamedBody783_780

def NamedBody783_782 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody783_783 : StackLang.HolProg 64 :=
.seq NamedBody783_781 NamedBody783_782

def NamedBody783_784 : StackLang.HolProg 64 :=
.call (some (NamedBody783_776, 1, 783, 22)) (Sum.inl 733) (some (NamedBody783_783, 783, 23))

def NamedBody783_785 : StackLang.HolProg 64 :=
.seq NamedBody783_761 NamedBody783_784

def NamedBody783_786 : StackLang.HolProg 64 :=
.seq NamedBody783_760 NamedBody783_785

def NamedBody783_787 : StackLang.HolProg 64 :=
.seq NamedBody783_759 NamedBody783_786

def NamedBody783_788 : StackLang.HolProg 64 :=
.seq NamedBody783_730 NamedBody783_787

def NamedBody783_789 : StackLang.HolProg 64 :=
.seq NamedBody783_727 NamedBody783_788

def NamedBody783_790 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody783_791 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_792 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody783_793 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody783_794 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody783_795 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody783_796 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody783_797 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody783_798 : StackLang.HolProg 64 :=
.seq NamedBody783_796 NamedBody783_797

def NamedBody783_799 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody783_800 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody783_801 : StackLang.HolProg 64 :=
.seq NamedBody783_799 NamedBody783_800

def NamedBody783_802 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody783_803 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody783_804 : StackLang.HolProg 64 :=
.seq NamedBody783_802 NamedBody783_803

def NamedBody783_805 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody783_806 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody783_807 : StackLang.HolProg 64 :=
.seq NamedBody783_805 NamedBody783_806

def NamedBody783_808 : StackLang.HolProg 64 :=
.seq NamedBody783_804 NamedBody783_807

def NamedBody783_809 : StackLang.HolProg 64 :=
.seq NamedBody783_801 NamedBody783_808

def NamedBody783_810 : StackLang.HolProg 64 :=
.seq NamedBody783_798 NamedBody783_809

def NamedBody783_811 : StackLang.HolProg 64 :=
.seq NamedBody783_795 NamedBody783_810

def NamedBody783_812 : StackLang.HolProg 64 :=
.seq NamedBody783_794 NamedBody783_811

def NamedBody783_813 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_814 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3593#64)

def NamedBody783_815 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody783_816 : StackLang.HolProg 64 :=
.seq NamedBody783_814 NamedBody783_815

def NamedBody783_817 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody783_818 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody783_819 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody783_820 : StackLang.HolProg 64 :=
.seq NamedBody783_818 NamedBody783_819

def NamedBody783_821 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_822 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody783_820 NamedBody783_821

def NamedBody783_823 : StackLang.HolProg 64 :=
.seq NamedBody783_817 NamedBody783_822

def NamedBody783_824 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody783_825 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody783_826 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 783 25

def NamedBody783_827 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody783_828 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_829 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_830 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_831 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody783_832 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody783_833 : StackLang.HolProg 64 :=
.seq NamedBody783_831 NamedBody783_832

def NamedBody783_834 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody783_835 : StackLang.HolProg 64 :=
.seq NamedBody783_833 NamedBody783_834

def NamedBody783_836 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_837 : StackLang.HolProg 64 :=
.seq NamedBody783_835 NamedBody783_836

def NamedBody783_838 : StackLang.HolProg 64 :=
.seq NamedBody783_830 NamedBody783_837

def NamedBody783_839 : StackLang.HolProg 64 :=
.seq NamedBody783_829 NamedBody783_838

def NamedBody783_840 : StackLang.HolProg 64 :=
.seq NamedBody783_828 NamedBody783_839

def NamedBody783_841 : StackLang.HolProg 64 :=
.seq NamedBody783_827 NamedBody783_840

def NamedBody783_842 : StackLang.HolProg 64 :=
.seq NamedBody783_826 NamedBody783_841

def NamedBody783_843 : StackLang.HolProg 64 :=
.seq NamedBody783_825 NamedBody783_842

def NamedBody783_844 : StackLang.HolProg 64 :=
.seq NamedBody783_824 NamedBody783_843

def NamedBody783_845 : StackLang.HolProg 64 :=
.seq NamedBody783_823 NamedBody783_844

def NamedBody783_846 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_847 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_848 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_849 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_850 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_851 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody783_852 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody783_853 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody783_854 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody783_855 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody783_856 : StackLang.HolProg 64 :=
.seq NamedBody783_854 NamedBody783_855

def NamedBody783_857 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody783_858 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody783_859 : StackLang.HolProg 64 :=
.seq NamedBody783_857 NamedBody783_858

def NamedBody783_860 : StackLang.HolProg 64 :=
.seq NamedBody783_856 NamedBody783_859

def NamedBody783_861 : StackLang.HolProg 64 :=
.seq NamedBody783_853 NamedBody783_860

def NamedBody783_862 : StackLang.HolProg 64 :=
.seq NamedBody783_852 NamedBody783_861

def NamedBody783_863 : StackLang.HolProg 64 :=
.seq NamedBody783_851 NamedBody783_862

def NamedBody783_864 : StackLang.HolProg 64 :=
.seq NamedBody783_850 NamedBody783_863

def NamedBody783_865 : StackLang.HolProg 64 :=
.seq NamedBody783_849 NamedBody783_864

def NamedBody783_866 : StackLang.HolProg 64 :=
.seq NamedBody783_848 NamedBody783_865

def NamedBody783_867 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody783_868 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody783_869 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody783_870 : StackLang.HolProg 64 :=
.seq NamedBody783_868 NamedBody783_869

def NamedBody783_871 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody783_872 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody783_873 : StackLang.HolProg 64 :=
.seq NamedBody783_871 NamedBody783_872

def NamedBody783_874 : StackLang.HolProg 64 :=
.seq NamedBody783_870 NamedBody783_873

def NamedBody783_875 : StackLang.HolProg 64 :=
.seq NamedBody783_867 NamedBody783_874

def NamedBody783_876 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody783_877 : StackLang.HolProg 64 :=
.seq NamedBody783_875 NamedBody783_876

def NamedBody783_878 : StackLang.HolProg 64 :=
.call (some (NamedBody783_866, 1, 783, 24)) (Sum.inl 733) (some (NamedBody783_877, 783, 25))

def NamedBody783_879 : StackLang.HolProg 64 :=
.seq NamedBody783_847 NamedBody783_878

def NamedBody783_880 : StackLang.HolProg 64 :=
.seq NamedBody783_846 NamedBody783_879

def NamedBody783_881 : StackLang.HolProg 64 :=
.seq NamedBody783_845 NamedBody783_880

def NamedBody783_882 : StackLang.HolProg 64 :=
.seq NamedBody783_816 NamedBody783_881

def NamedBody783_883 : StackLang.HolProg 64 :=
.seq NamedBody783_813 NamedBody783_882

def NamedBody783_884 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody783_885 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody783_886 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody783_887 : StackLang.HolProg 64 :=
.seq NamedBody783_885 NamedBody783_886

def NamedBody783_888 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_889 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3594#64)

def NamedBody783_890 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody783_891 : StackLang.HolProg 64 :=
.seq NamedBody783_889 NamedBody783_890

def NamedBody783_892 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody783_893 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody783_894 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody783_895 : StackLang.HolProg 64 :=
.seq NamedBody783_893 NamedBody783_894

def NamedBody783_896 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_897 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody783_895 NamedBody783_896

def NamedBody783_898 : StackLang.HolProg 64 :=
.seq NamedBody783_892 NamedBody783_897

def NamedBody783_899 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody783_900 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody783_901 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 783 27

def NamedBody783_902 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody783_903 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_904 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_905 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_906 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody783_907 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody783_908 : StackLang.HolProg 64 :=
.seq NamedBody783_906 NamedBody783_907

def NamedBody783_909 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody783_910 : StackLang.HolProg 64 :=
.seq NamedBody783_908 NamedBody783_909

def NamedBody783_911 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_912 : StackLang.HolProg 64 :=
.seq NamedBody783_910 NamedBody783_911

def NamedBody783_913 : StackLang.HolProg 64 :=
.seq NamedBody783_905 NamedBody783_912

def NamedBody783_914 : StackLang.HolProg 64 :=
.seq NamedBody783_904 NamedBody783_913

def NamedBody783_915 : StackLang.HolProg 64 :=
.seq NamedBody783_903 NamedBody783_914

def NamedBody783_916 : StackLang.HolProg 64 :=
.seq NamedBody783_902 NamedBody783_915

def NamedBody783_917 : StackLang.HolProg 64 :=
.seq NamedBody783_901 NamedBody783_916

def NamedBody783_918 : StackLang.HolProg 64 :=
.seq NamedBody783_900 NamedBody783_917

def NamedBody783_919 : StackLang.HolProg 64 :=
.seq NamedBody783_899 NamedBody783_918

def NamedBody783_920 : StackLang.HolProg 64 :=
.seq NamedBody783_898 NamedBody783_919

def NamedBody783_921 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_922 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_923 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_924 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_925 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_926 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody783_927 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody783_928 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody783_929 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody783_930 : StackLang.HolProg 64 :=
.seq NamedBody783_928 NamedBody783_929

def NamedBody783_931 : StackLang.HolProg 64 :=
.seq NamedBody783_927 NamedBody783_930

def NamedBody783_932 : StackLang.HolProg 64 :=
.seq NamedBody783_926 NamedBody783_931

def NamedBody783_933 : StackLang.HolProg 64 :=
.seq NamedBody783_925 NamedBody783_932

def NamedBody783_934 : StackLang.HolProg 64 :=
.seq NamedBody783_924 NamedBody783_933

def NamedBody783_935 : StackLang.HolProg 64 :=
.seq NamedBody783_923 NamedBody783_934

def NamedBody783_936 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody783_937 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody783_938 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody783_939 : StackLang.HolProg 64 :=
.seq NamedBody783_937 NamedBody783_938

def NamedBody783_940 : StackLang.HolProg 64 :=
.seq NamedBody783_936 NamedBody783_939

def NamedBody783_941 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody783_942 : StackLang.HolProg 64 :=
.seq NamedBody783_940 NamedBody783_941

def NamedBody783_943 : StackLang.HolProg 64 :=
.call (some (NamedBody783_935, 1, 783, 26)) (Sum.inl 70) (some (NamedBody783_942, 783, 27))

def NamedBody783_944 : StackLang.HolProg 64 :=
.seq NamedBody783_922 NamedBody783_943

def NamedBody783_945 : StackLang.HolProg 64 :=
.seq NamedBody783_921 NamedBody783_944

def NamedBody783_946 : StackLang.HolProg 64 :=
.seq NamedBody783_920 NamedBody783_945

def NamedBody783_947 : StackLang.HolProg 64 :=
.seq NamedBody783_891 NamedBody783_946

def NamedBody783_948 : StackLang.HolProg 64 :=
.seq NamedBody783_888 NamedBody783_947

def NamedBody783_949 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody783_950 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_951 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody783_952 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody783_953 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody783_954 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody783_955 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody783_956 : StackLang.HolProg 64 :=
.seq NamedBody783_954 NamedBody783_955

def NamedBody783_957 : StackLang.HolProg 64 :=
.seq NamedBody783_953 NamedBody783_956

def NamedBody783_958 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_959 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3595#64)

def NamedBody783_960 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody783_961 : StackLang.HolProg 64 :=
.seq NamedBody783_959 NamedBody783_960

def NamedBody783_962 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody783_963 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody783_964 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody783_965 : StackLang.HolProg 64 :=
.seq NamedBody783_963 NamedBody783_964

def NamedBody783_966 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_967 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody783_965 NamedBody783_966

def NamedBody783_968 : StackLang.HolProg 64 :=
.seq NamedBody783_962 NamedBody783_967

def NamedBody783_969 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody783_970 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody783_971 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 783 29

def NamedBody783_972 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody783_973 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_974 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_975 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_976 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody783_977 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody783_978 : StackLang.HolProg 64 :=
.seq NamedBody783_976 NamedBody783_977

def NamedBody783_979 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody783_980 : StackLang.HolProg 64 :=
.seq NamedBody783_978 NamedBody783_979

def NamedBody783_981 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_982 : StackLang.HolProg 64 :=
.seq NamedBody783_980 NamedBody783_981

def NamedBody783_983 : StackLang.HolProg 64 :=
.seq NamedBody783_975 NamedBody783_982

def NamedBody783_984 : StackLang.HolProg 64 :=
.seq NamedBody783_974 NamedBody783_983

def NamedBody783_985 : StackLang.HolProg 64 :=
.seq NamedBody783_973 NamedBody783_984

def NamedBody783_986 : StackLang.HolProg 64 :=
.seq NamedBody783_972 NamedBody783_985

def NamedBody783_987 : StackLang.HolProg 64 :=
.seq NamedBody783_971 NamedBody783_986

def NamedBody783_988 : StackLang.HolProg 64 :=
.seq NamedBody783_970 NamedBody783_987

def NamedBody783_989 : StackLang.HolProg 64 :=
.seq NamedBody783_969 NamedBody783_988

def NamedBody783_990 : StackLang.HolProg 64 :=
.seq NamedBody783_968 NamedBody783_989

def NamedBody783_991 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_992 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_993 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_994 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_995 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_996 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody783_997 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody783_998 : StackLang.HolProg 64 :=
.seq NamedBody783_996 NamedBody783_997

def NamedBody783_999 : StackLang.HolProg 64 :=
.seq NamedBody783_995 NamedBody783_998

def NamedBody783_1000 : StackLang.HolProg 64 :=
.seq NamedBody783_994 NamedBody783_999

def NamedBody783_1001 : StackLang.HolProg 64 :=
.seq NamedBody783_993 NamedBody783_1000

def NamedBody783_1002 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody783_1003 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody783_1004 : StackLang.HolProg 64 :=
.seq NamedBody783_1002 NamedBody783_1003

def NamedBody783_1005 : StackLang.HolProg 64 :=
.call (some (NamedBody783_1001, 1, 783, 28)) (Sum.inl 782) (some (NamedBody783_1004, 783, 29))

def NamedBody783_1006 : StackLang.HolProg 64 :=
.seq NamedBody783_992 NamedBody783_1005

def NamedBody783_1007 : StackLang.HolProg 64 :=
.seq NamedBody783_991 NamedBody783_1006

def NamedBody783_1008 : StackLang.HolProg 64 :=
.seq NamedBody783_990 NamedBody783_1007

def NamedBody783_1009 : StackLang.HolProg 64 :=
.seq NamedBody783_961 NamedBody783_1008

def NamedBody783_1010 : StackLang.HolProg 64 :=
.seq NamedBody783_958 NamedBody783_1009

def NamedBody783_1011 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody783_1012 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody783_1013 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_1014 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 144#64)))

def NamedBody783_1015 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 11

def NamedBody783_1016 : StackLang.HolProg 64 :=
.seq NamedBody783_1014 NamedBody783_1015

def NamedBody783_1017 : StackLang.HolProg 64 :=
.seq NamedBody783_1013 NamedBody783_1016

def NamedBody783_1018 : StackLang.HolProg 64 :=
.seq NamedBody783_1012 NamedBody783_1017

def NamedBody783_1019 : StackLang.HolProg 64 :=
.seq NamedBody783_1011 NamedBody783_1018

def NamedBody783_1020 : StackLang.HolProg 64 :=
.seq NamedBody783_1010 NamedBody783_1019

def NamedBody783_1021 : StackLang.HolProg 64 :=
.seq NamedBody783_957 NamedBody783_1020

def NamedBody783_1022 : StackLang.HolProg 64 :=
.seq NamedBody783_952 NamedBody783_1021

def NamedBody783_1023 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_1024 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 12 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody783_1022 NamedBody783_1023

def NamedBody783_1025 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody783_1026 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody783_1027 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody783_1028 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_1029 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3596#64)

def NamedBody783_1030 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody783_1031 : StackLang.HolProg 64 :=
.seq NamedBody783_1029 NamedBody783_1030

def NamedBody783_1032 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody783_1033 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody783_1034 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody783_1035 : StackLang.HolProg 64 :=
.seq NamedBody783_1033 NamedBody783_1034

def NamedBody783_1036 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_1037 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody783_1035 NamedBody783_1036

def NamedBody783_1038 : StackLang.HolProg 64 :=
.seq NamedBody783_1032 NamedBody783_1037

def NamedBody783_1039 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody783_1040 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody783_1041 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 783 31

def NamedBody783_1042 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody783_1043 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_1044 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_1045 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_1046 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody783_1047 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody783_1048 : StackLang.HolProg 64 :=
.seq NamedBody783_1046 NamedBody783_1047

def NamedBody783_1049 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody783_1050 : StackLang.HolProg 64 :=
.seq NamedBody783_1048 NamedBody783_1049

def NamedBody783_1051 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_1052 : StackLang.HolProg 64 :=
.seq NamedBody783_1050 NamedBody783_1051

def NamedBody783_1053 : StackLang.HolProg 64 :=
.seq NamedBody783_1045 NamedBody783_1052

def NamedBody783_1054 : StackLang.HolProg 64 :=
.seq NamedBody783_1044 NamedBody783_1053

def NamedBody783_1055 : StackLang.HolProg 64 :=
.seq NamedBody783_1043 NamedBody783_1054

def NamedBody783_1056 : StackLang.HolProg 64 :=
.seq NamedBody783_1042 NamedBody783_1055

def NamedBody783_1057 : StackLang.HolProg 64 :=
.seq NamedBody783_1041 NamedBody783_1056

def NamedBody783_1058 : StackLang.HolProg 64 :=
.seq NamedBody783_1040 NamedBody783_1057

def NamedBody783_1059 : StackLang.HolProg 64 :=
.seq NamedBody783_1039 NamedBody783_1058

def NamedBody783_1060 : StackLang.HolProg 64 :=
.seq NamedBody783_1038 NamedBody783_1059

def NamedBody783_1061 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_1062 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_1063 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_1064 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_1065 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_1066 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody783_1067 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody783_1068 : StackLang.HolProg 64 :=
.seq NamedBody783_1066 NamedBody783_1067

def NamedBody783_1069 : StackLang.HolProg 64 :=
.seq NamedBody783_1065 NamedBody783_1068

def NamedBody783_1070 : StackLang.HolProg 64 :=
.seq NamedBody783_1064 NamedBody783_1069

def NamedBody783_1071 : StackLang.HolProg 64 :=
.seq NamedBody783_1063 NamedBody783_1070

def NamedBody783_1072 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody783_1073 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody783_1074 : StackLang.HolProg 64 :=
.seq NamedBody783_1072 NamedBody783_1073

def NamedBody783_1075 : StackLang.HolProg 64 :=
.call (some (NamedBody783_1071, 1, 783, 30)) (Sum.inl 778) (some (NamedBody783_1074, 783, 31))

def NamedBody783_1076 : StackLang.HolProg 64 :=
.seq NamedBody783_1062 NamedBody783_1075

def NamedBody783_1077 : StackLang.HolProg 64 :=
.seq NamedBody783_1061 NamedBody783_1076

def NamedBody783_1078 : StackLang.HolProg 64 :=
.seq NamedBody783_1060 NamedBody783_1077

def NamedBody783_1079 : StackLang.HolProg 64 :=
.seq NamedBody783_1031 NamedBody783_1078

def NamedBody783_1080 : StackLang.HolProg 64 :=
.seq NamedBody783_1028 NamedBody783_1079

def NamedBody783_1081 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody783_1082 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody783_1083 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_1084 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 144#64)))

def NamedBody783_1085 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 13

def NamedBody783_1086 : StackLang.HolProg 64 :=
.seq NamedBody783_1084 NamedBody783_1085

def NamedBody783_1087 : StackLang.HolProg 64 :=
.seq NamedBody783_1083 NamedBody783_1086

def NamedBody783_1088 : StackLang.HolProg 64 :=
.seq NamedBody783_1082 NamedBody783_1087

def NamedBody783_1089 : StackLang.HolProg 64 :=
.seq NamedBody783_1081 NamedBody783_1088

def NamedBody783_1090 : StackLang.HolProg 64 :=
.seq NamedBody783_1080 NamedBody783_1089

def NamedBody783_1091 : StackLang.HolProg 64 :=
.seq NamedBody783_1027 NamedBody783_1090

def NamedBody783_1092 : StackLang.HolProg 64 :=
.seq NamedBody783_1026 NamedBody783_1091

def NamedBody783_1093 : StackLang.HolProg 64 :=
.seq NamedBody783_1025 NamedBody783_1092

def NamedBody783_1094 : StackLang.HolProg 64 :=
.seq NamedBody783_1024 NamedBody783_1093

def NamedBody783_1095 : StackLang.HolProg 64 :=
.seq NamedBody783_951 NamedBody783_1094

def NamedBody783_1096 : StackLang.HolProg 64 :=
.seq NamedBody783_950 NamedBody783_1095

def NamedBody783_1097 : StackLang.HolProg 64 :=
.seq NamedBody783_949 NamedBody783_1096

def NamedBody783_1098 : StackLang.HolProg 64 :=
.seq NamedBody783_948 NamedBody783_1097

def NamedBody783_1099 : StackLang.HolProg 64 :=
.seq NamedBody783_887 NamedBody783_1098

def NamedBody783_1100 : StackLang.HolProg 64 :=
.seq NamedBody783_884 NamedBody783_1099

def NamedBody783_1101 : StackLang.HolProg 64 :=
.seq NamedBody783_883 NamedBody783_1100

def NamedBody783_1102 : StackLang.HolProg 64 :=
.seq NamedBody783_812 NamedBody783_1101

def NamedBody783_1103 : StackLang.HolProg 64 :=
.seq NamedBody783_793 NamedBody783_1102

def NamedBody783_1104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_1105 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 13 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody783_1103 NamedBody783_1104

def NamedBody783_1106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody783_1107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody783_1108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody783_1109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody783_1110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody783_1111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody783_1112 : StackLang.HolProg 64 :=
.seq NamedBody783_1110 NamedBody783_1111

def NamedBody783_1113 : StackLang.HolProg 64 :=
.seq NamedBody783_1109 NamedBody783_1112

def NamedBody783_1114 : StackLang.HolProg 64 :=
.seq NamedBody783_1108 NamedBody783_1113

def NamedBody783_1115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_1116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3597#64)

def NamedBody783_1117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody783_1118 : StackLang.HolProg 64 :=
.seq NamedBody783_1116 NamedBody783_1117

def NamedBody783_1119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody783_1120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody783_1121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody783_1122 : StackLang.HolProg 64 :=
.seq NamedBody783_1120 NamedBody783_1121

def NamedBody783_1123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_1124 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody783_1122 NamedBody783_1123

def NamedBody783_1125 : StackLang.HolProg 64 :=
.seq NamedBody783_1119 NamedBody783_1124

def NamedBody783_1126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody783_1127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody783_1128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 783 33

def NamedBody783_1129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody783_1130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_1131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_1132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_1133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody783_1134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody783_1135 : StackLang.HolProg 64 :=
.seq NamedBody783_1133 NamedBody783_1134

def NamedBody783_1136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody783_1137 : StackLang.HolProg 64 :=
.seq NamedBody783_1135 NamedBody783_1136

def NamedBody783_1138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_1139 : StackLang.HolProg 64 :=
.seq NamedBody783_1137 NamedBody783_1138

def NamedBody783_1140 : StackLang.HolProg 64 :=
.seq NamedBody783_1132 NamedBody783_1139

def NamedBody783_1141 : StackLang.HolProg 64 :=
.seq NamedBody783_1131 NamedBody783_1140

def NamedBody783_1142 : StackLang.HolProg 64 :=
.seq NamedBody783_1130 NamedBody783_1141

def NamedBody783_1143 : StackLang.HolProg 64 :=
.seq NamedBody783_1129 NamedBody783_1142

def NamedBody783_1144 : StackLang.HolProg 64 :=
.seq NamedBody783_1128 NamedBody783_1143

def NamedBody783_1145 : StackLang.HolProg 64 :=
.seq NamedBody783_1127 NamedBody783_1144

def NamedBody783_1146 : StackLang.HolProg 64 :=
.seq NamedBody783_1126 NamedBody783_1145

def NamedBody783_1147 : StackLang.HolProg 64 :=
.seq NamedBody783_1125 NamedBody783_1146

def NamedBody783_1148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_1149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_1150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_1151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_1152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_1153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody783_1154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody783_1155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody783_1156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_1157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody783_1158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_1159 : StackLang.HolProg 64 :=
.seq NamedBody783_1157 NamedBody783_1158

def NamedBody783_1160 : StackLang.HolProg 64 :=
.seq NamedBody783_1156 NamedBody783_1159

def NamedBody783_1161 : StackLang.HolProg 64 :=
.seq NamedBody783_1155 NamedBody783_1160

def NamedBody783_1162 : StackLang.HolProg 64 :=
.seq NamedBody783_1154 NamedBody783_1161

def NamedBody783_1163 : StackLang.HolProg 64 :=
.seq NamedBody783_1153 NamedBody783_1162

def NamedBody783_1164 : StackLang.HolProg 64 :=
.seq NamedBody783_1152 NamedBody783_1163

def NamedBody783_1165 : StackLang.HolProg 64 :=
.seq NamedBody783_1151 NamedBody783_1164

def NamedBody783_1166 : StackLang.HolProg 64 :=
.seq NamedBody783_1150 NamedBody783_1165

def NamedBody783_1167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody783_1168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody783_1169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_1170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody783_1171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_1172 : StackLang.HolProg 64 :=
.seq NamedBody783_1170 NamedBody783_1171

def NamedBody783_1173 : StackLang.HolProg 64 :=
.seq NamedBody783_1169 NamedBody783_1172

def NamedBody783_1174 : StackLang.HolProg 64 :=
.seq NamedBody783_1168 NamedBody783_1173

def NamedBody783_1175 : StackLang.HolProg 64 :=
.seq NamedBody783_1167 NamedBody783_1174

def NamedBody783_1176 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody783_1177 : StackLang.HolProg 64 :=
.seq NamedBody783_1175 NamedBody783_1176

def NamedBody783_1178 : StackLang.HolProg 64 :=
.call (some (NamedBody783_1166, 1, 783, 32)) (Sum.inl 735) (some (NamedBody783_1177, 783, 33))

def NamedBody783_1179 : StackLang.HolProg 64 :=
.seq NamedBody783_1149 NamedBody783_1178

def NamedBody783_1180 : StackLang.HolProg 64 :=
.seq NamedBody783_1148 NamedBody783_1179

def NamedBody783_1181 : StackLang.HolProg 64 :=
.seq NamedBody783_1147 NamedBody783_1180

def NamedBody783_1182 : StackLang.HolProg 64 :=
.seq NamedBody783_1118 NamedBody783_1181

def NamedBody783_1183 : StackLang.HolProg 64 :=
.seq NamedBody783_1115 NamedBody783_1182

def NamedBody783_1184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody783_1185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody783_1186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody783_1187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody783_1188 : StackLang.HolProg 64 :=
.seq NamedBody783_1186 NamedBody783_1187

def NamedBody783_1189 : StackLang.HolProg 64 :=
.seq NamedBody783_1185 NamedBody783_1188

def NamedBody783_1190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_1191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3598#64)

def NamedBody783_1192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody783_1193 : StackLang.HolProg 64 :=
.seq NamedBody783_1191 NamedBody783_1192

def NamedBody783_1194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody783_1195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody783_1196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody783_1197 : StackLang.HolProg 64 :=
.seq NamedBody783_1195 NamedBody783_1196

def NamedBody783_1198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_1199 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody783_1197 NamedBody783_1198

def NamedBody783_1200 : StackLang.HolProg 64 :=
.seq NamedBody783_1194 NamedBody783_1199

def NamedBody783_1201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody783_1202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody783_1203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 783 35

def NamedBody783_1204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody783_1205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_1206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_1207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_1208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody783_1209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody783_1210 : StackLang.HolProg 64 :=
.seq NamedBody783_1208 NamedBody783_1209

def NamedBody783_1211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody783_1212 : StackLang.HolProg 64 :=
.seq NamedBody783_1210 NamedBody783_1211

def NamedBody783_1213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_1214 : StackLang.HolProg 64 :=
.seq NamedBody783_1212 NamedBody783_1213

def NamedBody783_1215 : StackLang.HolProg 64 :=
.seq NamedBody783_1207 NamedBody783_1214

def NamedBody783_1216 : StackLang.HolProg 64 :=
.seq NamedBody783_1206 NamedBody783_1215

def NamedBody783_1217 : StackLang.HolProg 64 :=
.seq NamedBody783_1205 NamedBody783_1216

def NamedBody783_1218 : StackLang.HolProg 64 :=
.seq NamedBody783_1204 NamedBody783_1217

def NamedBody783_1219 : StackLang.HolProg 64 :=
.seq NamedBody783_1203 NamedBody783_1218

def NamedBody783_1220 : StackLang.HolProg 64 :=
.seq NamedBody783_1202 NamedBody783_1219

def NamedBody783_1221 : StackLang.HolProg 64 :=
.seq NamedBody783_1201 NamedBody783_1220

def NamedBody783_1222 : StackLang.HolProg 64 :=
.seq NamedBody783_1200 NamedBody783_1221

def NamedBody783_1223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_1224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_1225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_1226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_1227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_1228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody783_1229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody783_1230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody783_1231 : StackLang.HolProg 64 :=
.seq NamedBody783_1229 NamedBody783_1230

def NamedBody783_1232 : StackLang.HolProg 64 :=
.seq NamedBody783_1228 NamedBody783_1231

def NamedBody783_1233 : StackLang.HolProg 64 :=
.seq NamedBody783_1227 NamedBody783_1232

def NamedBody783_1234 : StackLang.HolProg 64 :=
.seq NamedBody783_1226 NamedBody783_1233

def NamedBody783_1235 : StackLang.HolProg 64 :=
.seq NamedBody783_1225 NamedBody783_1234

def NamedBody783_1236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody783_1237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody783_1238 : StackLang.HolProg 64 :=
.seq NamedBody783_1236 NamedBody783_1237

def NamedBody783_1239 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody783_1240 : StackLang.HolProg 64 :=
.seq NamedBody783_1238 NamedBody783_1239

def NamedBody783_1241 : StackLang.HolProg 64 :=
.call (some (NamedBody783_1235, 1, 783, 34)) (Sum.inl 735) (some (NamedBody783_1240, 783, 35))

def NamedBody783_1242 : StackLang.HolProg 64 :=
.seq NamedBody783_1224 NamedBody783_1241

def NamedBody783_1243 : StackLang.HolProg 64 :=
.seq NamedBody783_1223 NamedBody783_1242

def NamedBody783_1244 : StackLang.HolProg 64 :=
.seq NamedBody783_1222 NamedBody783_1243

def NamedBody783_1245 : StackLang.HolProg 64 :=
.seq NamedBody783_1193 NamedBody783_1244

def NamedBody783_1246 : StackLang.HolProg 64 :=
.seq NamedBody783_1190 NamedBody783_1245

def NamedBody783_1247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody783_1248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody783_1249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody783_1250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody783_1251 : StackLang.HolProg 64 :=
.seq NamedBody783_1249 NamedBody783_1250

def NamedBody783_1252 : StackLang.HolProg 64 :=
.seq NamedBody783_1248 NamedBody783_1251

def NamedBody783_1253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_1254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3599#64)

def NamedBody783_1255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody783_1256 : StackLang.HolProg 64 :=
.seq NamedBody783_1254 NamedBody783_1255

def NamedBody783_1257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody783_1258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody783_1259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody783_1260 : StackLang.HolProg 64 :=
.seq NamedBody783_1258 NamedBody783_1259

def NamedBody783_1261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_1262 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody783_1260 NamedBody783_1261

def NamedBody783_1263 : StackLang.HolProg 64 :=
.seq NamedBody783_1257 NamedBody783_1262

def NamedBody783_1264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody783_1265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody783_1266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 783 37

def NamedBody783_1267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody783_1268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_1269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_1270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_1271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody783_1272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody783_1273 : StackLang.HolProg 64 :=
.seq NamedBody783_1271 NamedBody783_1272

def NamedBody783_1274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody783_1275 : StackLang.HolProg 64 :=
.seq NamedBody783_1273 NamedBody783_1274

def NamedBody783_1276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_1277 : StackLang.HolProg 64 :=
.seq NamedBody783_1275 NamedBody783_1276

def NamedBody783_1278 : StackLang.HolProg 64 :=
.seq NamedBody783_1270 NamedBody783_1277

def NamedBody783_1279 : StackLang.HolProg 64 :=
.seq NamedBody783_1269 NamedBody783_1278

def NamedBody783_1280 : StackLang.HolProg 64 :=
.seq NamedBody783_1268 NamedBody783_1279

def NamedBody783_1281 : StackLang.HolProg 64 :=
.seq NamedBody783_1267 NamedBody783_1280

def NamedBody783_1282 : StackLang.HolProg 64 :=
.seq NamedBody783_1266 NamedBody783_1281

def NamedBody783_1283 : StackLang.HolProg 64 :=
.seq NamedBody783_1265 NamedBody783_1282

def NamedBody783_1284 : StackLang.HolProg 64 :=
.seq NamedBody783_1264 NamedBody783_1283

def NamedBody783_1285 : StackLang.HolProg 64 :=
.seq NamedBody783_1263 NamedBody783_1284

def NamedBody783_1286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_1287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_1288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_1289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_1290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_1291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody783_1292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody783_1293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody783_1294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody783_1295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody783_1296 : StackLang.HolProg 64 :=
.seq NamedBody783_1294 NamedBody783_1295

def NamedBody783_1297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody783_1298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody783_1299 : StackLang.HolProg 64 :=
.seq NamedBody783_1297 NamedBody783_1298

def NamedBody783_1300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody783_1301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody783_1302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody783_1303 : StackLang.HolProg 64 :=
.seq NamedBody783_1301 NamedBody783_1302

def NamedBody783_1304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody783_1305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody783_1306 : StackLang.HolProg 64 :=
.seq NamedBody783_1304 NamedBody783_1305

def NamedBody783_1307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody783_1308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody783_1309 : StackLang.HolProg 64 :=
.seq NamedBody783_1307 NamedBody783_1308

def NamedBody783_1310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_1311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody783_1312 : StackLang.HolProg 64 :=
.seq NamedBody783_1310 NamedBody783_1311

def NamedBody783_1313 : StackLang.HolProg 64 :=
.seq NamedBody783_1309 NamedBody783_1312

def NamedBody783_1314 : StackLang.HolProg 64 :=
.seq NamedBody783_1306 NamedBody783_1313

def NamedBody783_1315 : StackLang.HolProg 64 :=
.seq NamedBody783_1303 NamedBody783_1314

def NamedBody783_1316 : StackLang.HolProg 64 :=
.seq NamedBody783_1300 NamedBody783_1315

def NamedBody783_1317 : StackLang.HolProg 64 :=
.seq NamedBody783_1299 NamedBody783_1316

def NamedBody783_1318 : StackLang.HolProg 64 :=
.seq NamedBody783_1296 NamedBody783_1317

def NamedBody783_1319 : StackLang.HolProg 64 :=
.seq NamedBody783_1293 NamedBody783_1318

def NamedBody783_1320 : StackLang.HolProg 64 :=
.seq NamedBody783_1292 NamedBody783_1319

def NamedBody783_1321 : StackLang.HolProg 64 :=
.seq NamedBody783_1291 NamedBody783_1320

def NamedBody783_1322 : StackLang.HolProg 64 :=
.seq NamedBody783_1290 NamedBody783_1321

def NamedBody783_1323 : StackLang.HolProg 64 :=
.seq NamedBody783_1289 NamedBody783_1322

def NamedBody783_1324 : StackLang.HolProg 64 :=
.seq NamedBody783_1288 NamedBody783_1323

def NamedBody783_1325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody783_1326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody783_1327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody783_1328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody783_1329 : StackLang.HolProg 64 :=
.seq NamedBody783_1327 NamedBody783_1328

def NamedBody783_1330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody783_1331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody783_1332 : StackLang.HolProg 64 :=
.seq NamedBody783_1330 NamedBody783_1331

def NamedBody783_1333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody783_1334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody783_1335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody783_1336 : StackLang.HolProg 64 :=
.seq NamedBody783_1334 NamedBody783_1335

def NamedBody783_1337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody783_1338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody783_1339 : StackLang.HolProg 64 :=
.seq NamedBody783_1337 NamedBody783_1338

def NamedBody783_1340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody783_1341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody783_1342 : StackLang.HolProg 64 :=
.seq NamedBody783_1340 NamedBody783_1341

def NamedBody783_1343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_1344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody783_1345 : StackLang.HolProg 64 :=
.seq NamedBody783_1343 NamedBody783_1344

def NamedBody783_1346 : StackLang.HolProg 64 :=
.seq NamedBody783_1342 NamedBody783_1345

def NamedBody783_1347 : StackLang.HolProg 64 :=
.seq NamedBody783_1339 NamedBody783_1346

def NamedBody783_1348 : StackLang.HolProg 64 :=
.seq NamedBody783_1336 NamedBody783_1347

def NamedBody783_1349 : StackLang.HolProg 64 :=
.seq NamedBody783_1333 NamedBody783_1348

def NamedBody783_1350 : StackLang.HolProg 64 :=
.seq NamedBody783_1332 NamedBody783_1349

def NamedBody783_1351 : StackLang.HolProg 64 :=
.seq NamedBody783_1329 NamedBody783_1350

def NamedBody783_1352 : StackLang.HolProg 64 :=
.seq NamedBody783_1326 NamedBody783_1351

def NamedBody783_1353 : StackLang.HolProg 64 :=
.seq NamedBody783_1325 NamedBody783_1352

def NamedBody783_1354 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody783_1355 : StackLang.HolProg 64 :=
.seq NamedBody783_1353 NamedBody783_1354

def NamedBody783_1356 : StackLang.HolProg 64 :=
.call (some (NamedBody783_1324, 1, 783, 36)) (Sum.inl 740) (some (NamedBody783_1355, 783, 37))

def NamedBody783_1357 : StackLang.HolProg 64 :=
.seq NamedBody783_1287 NamedBody783_1356

def NamedBody783_1358 : StackLang.HolProg 64 :=
.seq NamedBody783_1286 NamedBody783_1357

def NamedBody783_1359 : StackLang.HolProg 64 :=
.seq NamedBody783_1285 NamedBody783_1358

def NamedBody783_1360 : StackLang.HolProg 64 :=
.seq NamedBody783_1256 NamedBody783_1359

def NamedBody783_1361 : StackLang.HolProg 64 :=
.seq NamedBody783_1253 NamedBody783_1360

def NamedBody783_1362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody783_1363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody783_1364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody783_1365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody783_1366 : StackLang.HolProg 64 :=
.seq NamedBody783_1364 NamedBody783_1365

def NamedBody783_1367 : StackLang.HolProg 64 :=
.seq NamedBody783_1363 NamedBody783_1366

def NamedBody783_1368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_1369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3600#64)

def NamedBody783_1370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody783_1371 : StackLang.HolProg 64 :=
.seq NamedBody783_1369 NamedBody783_1370

def NamedBody783_1372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody783_1373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody783_1374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody783_1375 : StackLang.HolProg 64 :=
.seq NamedBody783_1373 NamedBody783_1374

def NamedBody783_1376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_1377 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody783_1375 NamedBody783_1376

def NamedBody783_1378 : StackLang.HolProg 64 :=
.seq NamedBody783_1372 NamedBody783_1377

def NamedBody783_1379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody783_1380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody783_1381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 783 39

def NamedBody783_1382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody783_1383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_1384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_1385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_1386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody783_1387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody783_1388 : StackLang.HolProg 64 :=
.seq NamedBody783_1386 NamedBody783_1387

def NamedBody783_1389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody783_1390 : StackLang.HolProg 64 :=
.seq NamedBody783_1388 NamedBody783_1389

def NamedBody783_1391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_1392 : StackLang.HolProg 64 :=
.seq NamedBody783_1390 NamedBody783_1391

def NamedBody783_1393 : StackLang.HolProg 64 :=
.seq NamedBody783_1385 NamedBody783_1392

def NamedBody783_1394 : StackLang.HolProg 64 :=
.seq NamedBody783_1384 NamedBody783_1393

def NamedBody783_1395 : StackLang.HolProg 64 :=
.seq NamedBody783_1383 NamedBody783_1394

def NamedBody783_1396 : StackLang.HolProg 64 :=
.seq NamedBody783_1382 NamedBody783_1395

def NamedBody783_1397 : StackLang.HolProg 64 :=
.seq NamedBody783_1381 NamedBody783_1396

def NamedBody783_1398 : StackLang.HolProg 64 :=
.seq NamedBody783_1380 NamedBody783_1397

def NamedBody783_1399 : StackLang.HolProg 64 :=
.seq NamedBody783_1379 NamedBody783_1398

def NamedBody783_1400 : StackLang.HolProg 64 :=
.seq NamedBody783_1378 NamedBody783_1399

def NamedBody783_1401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_1402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_1403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_1404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_1405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_1406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody783_1407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody783_1408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody783_1409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody783_1410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody783_1411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody783_1412 : StackLang.HolProg 64 :=
.seq NamedBody783_1410 NamedBody783_1411

def NamedBody783_1413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody783_1414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody783_1415 : StackLang.HolProg 64 :=
.seq NamedBody783_1413 NamedBody783_1414

def NamedBody783_1416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody783_1417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody783_1418 : StackLang.HolProg 64 :=
.seq NamedBody783_1416 NamedBody783_1417

def NamedBody783_1419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody783_1420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody783_1421 : StackLang.HolProg 64 :=
.seq NamedBody783_1419 NamedBody783_1420

def NamedBody783_1422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody783_1423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody783_1424 : StackLang.HolProg 64 :=
.seq NamedBody783_1422 NamedBody783_1423

def NamedBody783_1425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody783_1426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody783_1427 : StackLang.HolProg 64 :=
.seq NamedBody783_1425 NamedBody783_1426

def NamedBody783_1428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody783_1429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody783_1430 : StackLang.HolProg 64 :=
.seq NamedBody783_1428 NamedBody783_1429

def NamedBody783_1431 : StackLang.HolProg 64 :=
.seq NamedBody783_1427 NamedBody783_1430

def NamedBody783_1432 : StackLang.HolProg 64 :=
.seq NamedBody783_1424 NamedBody783_1431

def NamedBody783_1433 : StackLang.HolProg 64 :=
.seq NamedBody783_1421 NamedBody783_1432

def NamedBody783_1434 : StackLang.HolProg 64 :=
.seq NamedBody783_1418 NamedBody783_1433

def NamedBody783_1435 : StackLang.HolProg 64 :=
.seq NamedBody783_1415 NamedBody783_1434

def NamedBody783_1436 : StackLang.HolProg 64 :=
.seq NamedBody783_1412 NamedBody783_1435

def NamedBody783_1437 : StackLang.HolProg 64 :=
.seq NamedBody783_1409 NamedBody783_1436

def NamedBody783_1438 : StackLang.HolProg 64 :=
.seq NamedBody783_1408 NamedBody783_1437

def NamedBody783_1439 : StackLang.HolProg 64 :=
.seq NamedBody783_1407 NamedBody783_1438

def NamedBody783_1440 : StackLang.HolProg 64 :=
.seq NamedBody783_1406 NamedBody783_1439

def NamedBody783_1441 : StackLang.HolProg 64 :=
.seq NamedBody783_1405 NamedBody783_1440

def NamedBody783_1442 : StackLang.HolProg 64 :=
.seq NamedBody783_1404 NamedBody783_1441

def NamedBody783_1443 : StackLang.HolProg 64 :=
.seq NamedBody783_1403 NamedBody783_1442

def NamedBody783_1444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody783_1445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody783_1446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody783_1447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody783_1448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody783_1449 : StackLang.HolProg 64 :=
.seq NamedBody783_1447 NamedBody783_1448

def NamedBody783_1450 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody783_1451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody783_1452 : StackLang.HolProg 64 :=
.seq NamedBody783_1450 NamedBody783_1451

def NamedBody783_1453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody783_1454 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody783_1455 : StackLang.HolProg 64 :=
.seq NamedBody783_1453 NamedBody783_1454

def NamedBody783_1456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody783_1457 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody783_1458 : StackLang.HolProg 64 :=
.seq NamedBody783_1456 NamedBody783_1457

def NamedBody783_1459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody783_1460 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody783_1461 : StackLang.HolProg 64 :=
.seq NamedBody783_1459 NamedBody783_1460

def NamedBody783_1462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody783_1463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody783_1464 : StackLang.HolProg 64 :=
.seq NamedBody783_1462 NamedBody783_1463

def NamedBody783_1465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody783_1466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody783_1467 : StackLang.HolProg 64 :=
.seq NamedBody783_1465 NamedBody783_1466

def NamedBody783_1468 : StackLang.HolProg 64 :=
.seq NamedBody783_1464 NamedBody783_1467

def NamedBody783_1469 : StackLang.HolProg 64 :=
.seq NamedBody783_1461 NamedBody783_1468

def NamedBody783_1470 : StackLang.HolProg 64 :=
.seq NamedBody783_1458 NamedBody783_1469

def NamedBody783_1471 : StackLang.HolProg 64 :=
.seq NamedBody783_1455 NamedBody783_1470

def NamedBody783_1472 : StackLang.HolProg 64 :=
.seq NamedBody783_1452 NamedBody783_1471

def NamedBody783_1473 : StackLang.HolProg 64 :=
.seq NamedBody783_1449 NamedBody783_1472

def NamedBody783_1474 : StackLang.HolProg 64 :=
.seq NamedBody783_1446 NamedBody783_1473

def NamedBody783_1475 : StackLang.HolProg 64 :=
.seq NamedBody783_1445 NamedBody783_1474

def NamedBody783_1476 : StackLang.HolProg 64 :=
.seq NamedBody783_1444 NamedBody783_1475

def NamedBody783_1477 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody783_1478 : StackLang.HolProg 64 :=
.seq NamedBody783_1476 NamedBody783_1477

def NamedBody783_1479 : StackLang.HolProg 64 :=
.call (some (NamedBody783_1443, 1, 783, 38)) (Sum.inl 739) (some (NamedBody783_1478, 783, 39))

def NamedBody783_1480 : StackLang.HolProg 64 :=
.seq NamedBody783_1402 NamedBody783_1479

def NamedBody783_1481 : StackLang.HolProg 64 :=
.seq NamedBody783_1401 NamedBody783_1480

def NamedBody783_1482 : StackLang.HolProg 64 :=
.seq NamedBody783_1400 NamedBody783_1481

def NamedBody783_1483 : StackLang.HolProg 64 :=
.seq NamedBody783_1371 NamedBody783_1482

def NamedBody783_1484 : StackLang.HolProg 64 :=
.seq NamedBody783_1368 NamedBody783_1483

def NamedBody783_1485 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody783_1486 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody783_1487 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody783_1488 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody783_1489 : StackLang.HolProg 64 :=
.seq NamedBody783_1487 NamedBody783_1488

def NamedBody783_1490 : StackLang.HolProg 64 :=
.seq NamedBody783_1486 NamedBody783_1489

def NamedBody783_1491 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_1492 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3601#64)

def NamedBody783_1493 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody783_1494 : StackLang.HolProg 64 :=
.seq NamedBody783_1492 NamedBody783_1493

def NamedBody783_1495 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody783_1496 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody783_1497 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody783_1498 : StackLang.HolProg 64 :=
.seq NamedBody783_1496 NamedBody783_1497

def NamedBody783_1499 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_1500 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody783_1498 NamedBody783_1499

def NamedBody783_1501 : StackLang.HolProg 64 :=
.seq NamedBody783_1495 NamedBody783_1500

def NamedBody783_1502 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody783_1503 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody783_1504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 783 41

def NamedBody783_1505 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody783_1506 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_1507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_1508 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_1509 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody783_1510 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody783_1511 : StackLang.HolProg 64 :=
.seq NamedBody783_1509 NamedBody783_1510

def NamedBody783_1512 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody783_1513 : StackLang.HolProg 64 :=
.seq NamedBody783_1511 NamedBody783_1512

def NamedBody783_1514 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_1515 : StackLang.HolProg 64 :=
.seq NamedBody783_1513 NamedBody783_1514

def NamedBody783_1516 : StackLang.HolProg 64 :=
.seq NamedBody783_1508 NamedBody783_1515

def NamedBody783_1517 : StackLang.HolProg 64 :=
.seq NamedBody783_1507 NamedBody783_1516

def NamedBody783_1518 : StackLang.HolProg 64 :=
.seq NamedBody783_1506 NamedBody783_1517

def NamedBody783_1519 : StackLang.HolProg 64 :=
.seq NamedBody783_1505 NamedBody783_1518

def NamedBody783_1520 : StackLang.HolProg 64 :=
.seq NamedBody783_1504 NamedBody783_1519

def NamedBody783_1521 : StackLang.HolProg 64 :=
.seq NamedBody783_1503 NamedBody783_1520

def NamedBody783_1522 : StackLang.HolProg 64 :=
.seq NamedBody783_1502 NamedBody783_1521

def NamedBody783_1523 : StackLang.HolProg 64 :=
.seq NamedBody783_1501 NamedBody783_1522

def NamedBody783_1524 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_1525 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_1526 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_1527 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_1528 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_1529 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody783_1530 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody783_1531 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody783_1532 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody783_1533 : StackLang.HolProg 64 :=
.seq NamedBody783_1531 NamedBody783_1532

def NamedBody783_1534 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody783_1535 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody783_1536 : StackLang.HolProg 64 :=
.seq NamedBody783_1534 NamedBody783_1535

def NamedBody783_1537 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody783_1538 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody783_1539 : StackLang.HolProg 64 :=
.seq NamedBody783_1537 NamedBody783_1538

def NamedBody783_1540 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody783_1541 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody783_1542 : StackLang.HolProg 64 :=
.seq NamedBody783_1540 NamedBody783_1541

def NamedBody783_1543 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody783_1544 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody783_1545 : StackLang.HolProg 64 :=
.seq NamedBody783_1543 NamedBody783_1544

def NamedBody783_1546 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody783_1547 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody783_1548 : StackLang.HolProg 64 :=
.seq NamedBody783_1546 NamedBody783_1547

def NamedBody783_1549 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody783_1550 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody783_1551 : StackLang.HolProg 64 :=
.seq NamedBody783_1549 NamedBody783_1550

def NamedBody783_1552 : StackLang.HolProg 64 :=
.seq NamedBody783_1548 NamedBody783_1551

def NamedBody783_1553 : StackLang.HolProg 64 :=
.seq NamedBody783_1545 NamedBody783_1552

def NamedBody783_1554 : StackLang.HolProg 64 :=
.seq NamedBody783_1542 NamedBody783_1553

def NamedBody783_1555 : StackLang.HolProg 64 :=
.seq NamedBody783_1539 NamedBody783_1554

def NamedBody783_1556 : StackLang.HolProg 64 :=
.seq NamedBody783_1536 NamedBody783_1555

def NamedBody783_1557 : StackLang.HolProg 64 :=
.seq NamedBody783_1533 NamedBody783_1556

def NamedBody783_1558 : StackLang.HolProg 64 :=
.seq NamedBody783_1530 NamedBody783_1557

def NamedBody783_1559 : StackLang.HolProg 64 :=
.seq NamedBody783_1529 NamedBody783_1558

def NamedBody783_1560 : StackLang.HolProg 64 :=
.seq NamedBody783_1528 NamedBody783_1559

def NamedBody783_1561 : StackLang.HolProg 64 :=
.seq NamedBody783_1527 NamedBody783_1560

def NamedBody783_1562 : StackLang.HolProg 64 :=
.seq NamedBody783_1526 NamedBody783_1561

def NamedBody783_1563 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody783_1564 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody783_1565 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody783_1566 : StackLang.HolProg 64 :=
.seq NamedBody783_1564 NamedBody783_1565

def NamedBody783_1567 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody783_1568 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody783_1569 : StackLang.HolProg 64 :=
.seq NamedBody783_1567 NamedBody783_1568

def NamedBody783_1570 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody783_1571 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody783_1572 : StackLang.HolProg 64 :=
.seq NamedBody783_1570 NamedBody783_1571

def NamedBody783_1573 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody783_1574 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody783_1575 : StackLang.HolProg 64 :=
.seq NamedBody783_1573 NamedBody783_1574

def NamedBody783_1576 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody783_1577 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody783_1578 : StackLang.HolProg 64 :=
.seq NamedBody783_1576 NamedBody783_1577

def NamedBody783_1579 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody783_1580 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody783_1581 : StackLang.HolProg 64 :=
.seq NamedBody783_1579 NamedBody783_1580

def NamedBody783_1582 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody783_1583 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody783_1584 : StackLang.HolProg 64 :=
.seq NamedBody783_1582 NamedBody783_1583

def NamedBody783_1585 : StackLang.HolProg 64 :=
.seq NamedBody783_1581 NamedBody783_1584

def NamedBody783_1586 : StackLang.HolProg 64 :=
.seq NamedBody783_1578 NamedBody783_1585

def NamedBody783_1587 : StackLang.HolProg 64 :=
.seq NamedBody783_1575 NamedBody783_1586

def NamedBody783_1588 : StackLang.HolProg 64 :=
.seq NamedBody783_1572 NamedBody783_1587

def NamedBody783_1589 : StackLang.HolProg 64 :=
.seq NamedBody783_1569 NamedBody783_1588

def NamedBody783_1590 : StackLang.HolProg 64 :=
.seq NamedBody783_1566 NamedBody783_1589

def NamedBody783_1591 : StackLang.HolProg 64 :=
.seq NamedBody783_1563 NamedBody783_1590

def NamedBody783_1592 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody783_1593 : StackLang.HolProg 64 :=
.seq NamedBody783_1591 NamedBody783_1592

def NamedBody783_1594 : StackLang.HolProg 64 :=
.call (some (NamedBody783_1562, 1, 783, 40)) (Sum.inl 739) (some (NamedBody783_1593, 783, 41))

def NamedBody783_1595 : StackLang.HolProg 64 :=
.seq NamedBody783_1525 NamedBody783_1594

def NamedBody783_1596 : StackLang.HolProg 64 :=
.seq NamedBody783_1524 NamedBody783_1595

def NamedBody783_1597 : StackLang.HolProg 64 :=
.seq NamedBody783_1523 NamedBody783_1596

def NamedBody783_1598 : StackLang.HolProg 64 :=
.seq NamedBody783_1494 NamedBody783_1597

def NamedBody783_1599 : StackLang.HolProg 64 :=
.seq NamedBody783_1491 NamedBody783_1598

def NamedBody783_1600 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody783_1601 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody783_1602 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def NamedBody783_1603 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_1604 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def NamedBody783_1605 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody783_1606 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_1607 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3602#64)

def NamedBody783_1608 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody783_1609 : StackLang.HolProg 64 :=
.seq NamedBody783_1607 NamedBody783_1608

def NamedBody783_1610 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody783_1611 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody783_1612 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody783_1613 : StackLang.HolProg 64 :=
.seq NamedBody783_1611 NamedBody783_1612

def NamedBody783_1614 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_1615 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody783_1613 NamedBody783_1614

def NamedBody783_1616 : StackLang.HolProg 64 :=
.seq NamedBody783_1610 NamedBody783_1615

def NamedBody783_1617 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody783_1618 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody783_1619 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 783 43

def NamedBody783_1620 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody783_1621 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_1622 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_1623 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_1624 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody783_1625 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody783_1626 : StackLang.HolProg 64 :=
.seq NamedBody783_1624 NamedBody783_1625

def NamedBody783_1627 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody783_1628 : StackLang.HolProg 64 :=
.seq NamedBody783_1626 NamedBody783_1627

def NamedBody783_1629 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_1630 : StackLang.HolProg 64 :=
.seq NamedBody783_1628 NamedBody783_1629

def NamedBody783_1631 : StackLang.HolProg 64 :=
.seq NamedBody783_1623 NamedBody783_1630

def NamedBody783_1632 : StackLang.HolProg 64 :=
.seq NamedBody783_1622 NamedBody783_1631

def NamedBody783_1633 : StackLang.HolProg 64 :=
.seq NamedBody783_1621 NamedBody783_1632

def NamedBody783_1634 : StackLang.HolProg 64 :=
.seq NamedBody783_1620 NamedBody783_1633

def NamedBody783_1635 : StackLang.HolProg 64 :=
.seq NamedBody783_1619 NamedBody783_1634

def NamedBody783_1636 : StackLang.HolProg 64 :=
.seq NamedBody783_1618 NamedBody783_1635

def NamedBody783_1637 : StackLang.HolProg 64 :=
.seq NamedBody783_1617 NamedBody783_1636

def NamedBody783_1638 : StackLang.HolProg 64 :=
.seq NamedBody783_1616 NamedBody783_1637

def NamedBody783_1639 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_1640 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_1641 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_1642 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_1643 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_1644 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody783_1645 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody783_1646 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody783_1647 : StackLang.HolProg 64 :=
.seq NamedBody783_1645 NamedBody783_1646

def NamedBody783_1648 : StackLang.HolProg 64 :=
.seq NamedBody783_1644 NamedBody783_1647

def NamedBody783_1649 : StackLang.HolProg 64 :=
.seq NamedBody783_1643 NamedBody783_1648

def NamedBody783_1650 : StackLang.HolProg 64 :=
.seq NamedBody783_1642 NamedBody783_1649

def NamedBody783_1651 : StackLang.HolProg 64 :=
.seq NamedBody783_1641 NamedBody783_1650

def NamedBody783_1652 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody783_1653 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody783_1654 : StackLang.HolProg 64 :=
.seq NamedBody783_1652 NamedBody783_1653

def NamedBody783_1655 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody783_1656 : StackLang.HolProg 64 :=
.seq NamedBody783_1654 NamedBody783_1655

def NamedBody783_1657 : StackLang.HolProg 64 :=
.call (some (NamedBody783_1651, 1, 783, 42)) (Sum.inl 739) (some (NamedBody783_1656, 783, 43))

def NamedBody783_1658 : StackLang.HolProg 64 :=
.seq NamedBody783_1640 NamedBody783_1657

def NamedBody783_1659 : StackLang.HolProg 64 :=
.seq NamedBody783_1639 NamedBody783_1658

def NamedBody783_1660 : StackLang.HolProg 64 :=
.seq NamedBody783_1638 NamedBody783_1659

def NamedBody783_1661 : StackLang.HolProg 64 :=
.seq NamedBody783_1609 NamedBody783_1660

def NamedBody783_1662 : StackLang.HolProg 64 :=
.seq NamedBody783_1606 NamedBody783_1661

def NamedBody783_1663 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody783_1664 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody783_1665 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody783_1666 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody783_1667 : StackLang.HolProg 64 :=
.seq NamedBody783_1665 NamedBody783_1666

def NamedBody783_1668 : StackLang.HolProg 64 :=
.seq NamedBody783_1664 NamedBody783_1667

def NamedBody783_1669 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_1670 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3603#64)

def NamedBody783_1671 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody783_1672 : StackLang.HolProg 64 :=
.seq NamedBody783_1670 NamedBody783_1671

def NamedBody783_1673 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody783_1674 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody783_1675 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody783_1676 : StackLang.HolProg 64 :=
.seq NamedBody783_1674 NamedBody783_1675

def NamedBody783_1677 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_1678 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody783_1676 NamedBody783_1677

def NamedBody783_1679 : StackLang.HolProg 64 :=
.seq NamedBody783_1673 NamedBody783_1678

def NamedBody783_1680 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody783_1681 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody783_1682 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 783 45

def NamedBody783_1683 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody783_1684 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_1685 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_1686 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_1687 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody783_1688 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody783_1689 : StackLang.HolProg 64 :=
.seq NamedBody783_1687 NamedBody783_1688

def NamedBody783_1690 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody783_1691 : StackLang.HolProg 64 :=
.seq NamedBody783_1689 NamedBody783_1690

def NamedBody783_1692 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_1693 : StackLang.HolProg 64 :=
.seq NamedBody783_1691 NamedBody783_1692

def NamedBody783_1694 : StackLang.HolProg 64 :=
.seq NamedBody783_1686 NamedBody783_1693

def NamedBody783_1695 : StackLang.HolProg 64 :=
.seq NamedBody783_1685 NamedBody783_1694

def NamedBody783_1696 : StackLang.HolProg 64 :=
.seq NamedBody783_1684 NamedBody783_1695

def NamedBody783_1697 : StackLang.HolProg 64 :=
.seq NamedBody783_1683 NamedBody783_1696

def NamedBody783_1698 : StackLang.HolProg 64 :=
.seq NamedBody783_1682 NamedBody783_1697

def NamedBody783_1699 : StackLang.HolProg 64 :=
.seq NamedBody783_1681 NamedBody783_1698

def NamedBody783_1700 : StackLang.HolProg 64 :=
.seq NamedBody783_1680 NamedBody783_1699

def NamedBody783_1701 : StackLang.HolProg 64 :=
.seq NamedBody783_1679 NamedBody783_1700

def NamedBody783_1702 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_1703 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_1704 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_1705 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_1706 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_1707 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody783_1708 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody783_1709 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody783_1710 : StackLang.HolProg 64 :=
.seq NamedBody783_1708 NamedBody783_1709

def NamedBody783_1711 : StackLang.HolProg 64 :=
.seq NamedBody783_1707 NamedBody783_1710

def NamedBody783_1712 : StackLang.HolProg 64 :=
.seq NamedBody783_1706 NamedBody783_1711

def NamedBody783_1713 : StackLang.HolProg 64 :=
.seq NamedBody783_1705 NamedBody783_1712

def NamedBody783_1714 : StackLang.HolProg 64 :=
.seq NamedBody783_1704 NamedBody783_1713

def NamedBody783_1715 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody783_1716 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody783_1717 : StackLang.HolProg 64 :=
.seq NamedBody783_1715 NamedBody783_1716

def NamedBody783_1718 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody783_1719 : StackLang.HolProg 64 :=
.seq NamedBody783_1717 NamedBody783_1718

def NamedBody783_1720 : StackLang.HolProg 64 :=
.call (some (NamedBody783_1714, 1, 783, 44)) (Sum.inl 740) (some (NamedBody783_1719, 783, 45))

def NamedBody783_1721 : StackLang.HolProg 64 :=
.seq NamedBody783_1703 NamedBody783_1720

def NamedBody783_1722 : StackLang.HolProg 64 :=
.seq NamedBody783_1702 NamedBody783_1721

def NamedBody783_1723 : StackLang.HolProg 64 :=
.seq NamedBody783_1701 NamedBody783_1722

def NamedBody783_1724 : StackLang.HolProg 64 :=
.seq NamedBody783_1672 NamedBody783_1723

def NamedBody783_1725 : StackLang.HolProg 64 :=
.seq NamedBody783_1669 NamedBody783_1724

def NamedBody783_1726 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody783_1727 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody783_1728 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody783_1729 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody783_1730 : StackLang.HolProg 64 :=
.seq NamedBody783_1728 NamedBody783_1729

def NamedBody783_1731 : StackLang.HolProg 64 :=
.seq NamedBody783_1727 NamedBody783_1730

def NamedBody783_1732 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_1733 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3604#64)

def NamedBody783_1734 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody783_1735 : StackLang.HolProg 64 :=
.seq NamedBody783_1733 NamedBody783_1734

def NamedBody783_1736 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody783_1737 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody783_1738 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody783_1739 : StackLang.HolProg 64 :=
.seq NamedBody783_1737 NamedBody783_1738

def NamedBody783_1740 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_1741 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody783_1739 NamedBody783_1740

def NamedBody783_1742 : StackLang.HolProg 64 :=
.seq NamedBody783_1736 NamedBody783_1741

def NamedBody783_1743 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody783_1744 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody783_1745 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 783 47

def NamedBody783_1746 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody783_1747 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_1748 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_1749 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_1750 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody783_1751 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody783_1752 : StackLang.HolProg 64 :=
.seq NamedBody783_1750 NamedBody783_1751

def NamedBody783_1753 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody783_1754 : StackLang.HolProg 64 :=
.seq NamedBody783_1752 NamedBody783_1753

def NamedBody783_1755 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_1756 : StackLang.HolProg 64 :=
.seq NamedBody783_1754 NamedBody783_1755

def NamedBody783_1757 : StackLang.HolProg 64 :=
.seq NamedBody783_1749 NamedBody783_1756

def NamedBody783_1758 : StackLang.HolProg 64 :=
.seq NamedBody783_1748 NamedBody783_1757

def NamedBody783_1759 : StackLang.HolProg 64 :=
.seq NamedBody783_1747 NamedBody783_1758

def NamedBody783_1760 : StackLang.HolProg 64 :=
.seq NamedBody783_1746 NamedBody783_1759

def NamedBody783_1761 : StackLang.HolProg 64 :=
.seq NamedBody783_1745 NamedBody783_1760

def NamedBody783_1762 : StackLang.HolProg 64 :=
.seq NamedBody783_1744 NamedBody783_1761

def NamedBody783_1763 : StackLang.HolProg 64 :=
.seq NamedBody783_1743 NamedBody783_1762

def NamedBody783_1764 : StackLang.HolProg 64 :=
.seq NamedBody783_1742 NamedBody783_1763

def NamedBody783_1765 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_1766 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_1767 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_1768 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_1769 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_1770 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody783_1771 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody783_1772 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody783_1773 : StackLang.HolProg 64 :=
.seq NamedBody783_1771 NamedBody783_1772

def NamedBody783_1774 : StackLang.HolProg 64 :=
.seq NamedBody783_1770 NamedBody783_1773

def NamedBody783_1775 : StackLang.HolProg 64 :=
.seq NamedBody783_1769 NamedBody783_1774

def NamedBody783_1776 : StackLang.HolProg 64 :=
.seq NamedBody783_1768 NamedBody783_1775

def NamedBody783_1777 : StackLang.HolProg 64 :=
.seq NamedBody783_1767 NamedBody783_1776

def NamedBody783_1778 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody783_1779 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody783_1780 : StackLang.HolProg 64 :=
.seq NamedBody783_1778 NamedBody783_1779

def NamedBody783_1781 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody783_1782 : StackLang.HolProg 64 :=
.seq NamedBody783_1780 NamedBody783_1781

def NamedBody783_1783 : StackLang.HolProg 64 :=
.call (some (NamedBody783_1777, 1, 783, 46)) (Sum.inl 739) (some (NamedBody783_1782, 783, 47))

def NamedBody783_1784 : StackLang.HolProg 64 :=
.seq NamedBody783_1766 NamedBody783_1783

def NamedBody783_1785 : StackLang.HolProg 64 :=
.seq NamedBody783_1765 NamedBody783_1784

def NamedBody783_1786 : StackLang.HolProg 64 :=
.seq NamedBody783_1764 NamedBody783_1785

def NamedBody783_1787 : StackLang.HolProg 64 :=
.seq NamedBody783_1735 NamedBody783_1786

def NamedBody783_1788 : StackLang.HolProg 64 :=
.seq NamedBody783_1732 NamedBody783_1787

def NamedBody783_1789 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody783_1790 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody783_1791 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody783_1792 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody783_1793 : StackLang.HolProg 64 :=
.seq NamedBody783_1791 NamedBody783_1792

def NamedBody783_1794 : StackLang.HolProg 64 :=
.seq NamedBody783_1790 NamedBody783_1793

def NamedBody783_1795 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_1796 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3605#64)

def NamedBody783_1797 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody783_1798 : StackLang.HolProg 64 :=
.seq NamedBody783_1796 NamedBody783_1797

def NamedBody783_1799 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody783_1800 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody783_1801 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody783_1802 : StackLang.HolProg 64 :=
.seq NamedBody783_1800 NamedBody783_1801

def NamedBody783_1803 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_1804 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody783_1802 NamedBody783_1803

def NamedBody783_1805 : StackLang.HolProg 64 :=
.seq NamedBody783_1799 NamedBody783_1804

def NamedBody783_1806 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody783_1807 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody783_1808 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 783 49

def NamedBody783_1809 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody783_1810 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_1811 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_1812 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_1813 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody783_1814 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody783_1815 : StackLang.HolProg 64 :=
.seq NamedBody783_1813 NamedBody783_1814

def NamedBody783_1816 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody783_1817 : StackLang.HolProg 64 :=
.seq NamedBody783_1815 NamedBody783_1816

def NamedBody783_1818 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_1819 : StackLang.HolProg 64 :=
.seq NamedBody783_1817 NamedBody783_1818

def NamedBody783_1820 : StackLang.HolProg 64 :=
.seq NamedBody783_1812 NamedBody783_1819

def NamedBody783_1821 : StackLang.HolProg 64 :=
.seq NamedBody783_1811 NamedBody783_1820

def NamedBody783_1822 : StackLang.HolProg 64 :=
.seq NamedBody783_1810 NamedBody783_1821

def NamedBody783_1823 : StackLang.HolProg 64 :=
.seq NamedBody783_1809 NamedBody783_1822

def NamedBody783_1824 : StackLang.HolProg 64 :=
.seq NamedBody783_1808 NamedBody783_1823

def NamedBody783_1825 : StackLang.HolProg 64 :=
.seq NamedBody783_1807 NamedBody783_1824

def NamedBody783_1826 : StackLang.HolProg 64 :=
.seq NamedBody783_1806 NamedBody783_1825

def NamedBody783_1827 : StackLang.HolProg 64 :=
.seq NamedBody783_1805 NamedBody783_1826

def NamedBody783_1828 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_1829 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_1830 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_1831 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_1832 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_1833 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody783_1834 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody783_1835 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody783_1836 : StackLang.HolProg 64 :=
.seq NamedBody783_1834 NamedBody783_1835

def NamedBody783_1837 : StackLang.HolProg 64 :=
.seq NamedBody783_1833 NamedBody783_1836

def NamedBody783_1838 : StackLang.HolProg 64 :=
.seq NamedBody783_1832 NamedBody783_1837

def NamedBody783_1839 : StackLang.HolProg 64 :=
.seq NamedBody783_1831 NamedBody783_1838

def NamedBody783_1840 : StackLang.HolProg 64 :=
.seq NamedBody783_1830 NamedBody783_1839

def NamedBody783_1841 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody783_1842 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody783_1843 : StackLang.HolProg 64 :=
.seq NamedBody783_1841 NamedBody783_1842

def NamedBody783_1844 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody783_1845 : StackLang.HolProg 64 :=
.seq NamedBody783_1843 NamedBody783_1844

def NamedBody783_1846 : StackLang.HolProg 64 :=
.call (some (NamedBody783_1840, 1, 783, 48)) (Sum.inl 735) (some (NamedBody783_1845, 783, 49))

def NamedBody783_1847 : StackLang.HolProg 64 :=
.seq NamedBody783_1829 NamedBody783_1846

def NamedBody783_1848 : StackLang.HolProg 64 :=
.seq NamedBody783_1828 NamedBody783_1847

def NamedBody783_1849 : StackLang.HolProg 64 :=
.seq NamedBody783_1827 NamedBody783_1848

def NamedBody783_1850 : StackLang.HolProg 64 :=
.seq NamedBody783_1798 NamedBody783_1849

def NamedBody783_1851 : StackLang.HolProg 64 :=
.seq NamedBody783_1795 NamedBody783_1850

def NamedBody783_1852 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody783_1853 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody783_1854 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody783_1855 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody783_1856 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody783_1857 : StackLang.HolProg 64 :=
.seq NamedBody783_1855 NamedBody783_1856

def NamedBody783_1858 : StackLang.HolProg 64 :=
.seq NamedBody783_1854 NamedBody783_1857

def NamedBody783_1859 : StackLang.HolProg 64 :=
.seq NamedBody783_1853 NamedBody783_1858

def NamedBody783_1860 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_1861 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3606#64)

def NamedBody783_1862 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody783_1863 : StackLang.HolProg 64 :=
.seq NamedBody783_1861 NamedBody783_1862

def NamedBody783_1864 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody783_1865 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody783_1866 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody783_1867 : StackLang.HolProg 64 :=
.seq NamedBody783_1865 NamedBody783_1866

def NamedBody783_1868 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_1869 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody783_1867 NamedBody783_1868

def NamedBody783_1870 : StackLang.HolProg 64 :=
.seq NamedBody783_1864 NamedBody783_1869

def NamedBody783_1871 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody783_1872 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody783_1873 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 783 51

def NamedBody783_1874 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody783_1875 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_1876 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_1877 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_1878 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody783_1879 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody783_1880 : StackLang.HolProg 64 :=
.seq NamedBody783_1878 NamedBody783_1879

def NamedBody783_1881 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody783_1882 : StackLang.HolProg 64 :=
.seq NamedBody783_1880 NamedBody783_1881

def NamedBody783_1883 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_1884 : StackLang.HolProg 64 :=
.seq NamedBody783_1882 NamedBody783_1883

def NamedBody783_1885 : StackLang.HolProg 64 :=
.seq NamedBody783_1877 NamedBody783_1884

def NamedBody783_1886 : StackLang.HolProg 64 :=
.seq NamedBody783_1876 NamedBody783_1885

def NamedBody783_1887 : StackLang.HolProg 64 :=
.seq NamedBody783_1875 NamedBody783_1886

def NamedBody783_1888 : StackLang.HolProg 64 :=
.seq NamedBody783_1874 NamedBody783_1887

def NamedBody783_1889 : StackLang.HolProg 64 :=
.seq NamedBody783_1873 NamedBody783_1888

def NamedBody783_1890 : StackLang.HolProg 64 :=
.seq NamedBody783_1872 NamedBody783_1889

def NamedBody783_1891 : StackLang.HolProg 64 :=
.seq NamedBody783_1871 NamedBody783_1890

def NamedBody783_1892 : StackLang.HolProg 64 :=
.seq NamedBody783_1870 NamedBody783_1891

def NamedBody783_1893 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_1894 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_1895 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_1896 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_1897 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_1898 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody783_1899 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody783_1900 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody783_1901 : StackLang.HolProg 64 :=
.seq NamedBody783_1899 NamedBody783_1900

def NamedBody783_1902 : StackLang.HolProg 64 :=
.seq NamedBody783_1898 NamedBody783_1901

def NamedBody783_1903 : StackLang.HolProg 64 :=
.seq NamedBody783_1897 NamedBody783_1902

def NamedBody783_1904 : StackLang.HolProg 64 :=
.seq NamedBody783_1896 NamedBody783_1903

def NamedBody783_1905 : StackLang.HolProg 64 :=
.seq NamedBody783_1895 NamedBody783_1904

def NamedBody783_1906 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody783_1907 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody783_1908 : StackLang.HolProg 64 :=
.seq NamedBody783_1906 NamedBody783_1907

def NamedBody783_1909 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody783_1910 : StackLang.HolProg 64 :=
.seq NamedBody783_1908 NamedBody783_1909

def NamedBody783_1911 : StackLang.HolProg 64 :=
.call (some (NamedBody783_1905, 1, 783, 50)) (Sum.inl 734) (some (NamedBody783_1910, 783, 51))

def NamedBody783_1912 : StackLang.HolProg 64 :=
.seq NamedBody783_1894 NamedBody783_1911

def NamedBody783_1913 : StackLang.HolProg 64 :=
.seq NamedBody783_1893 NamedBody783_1912

def NamedBody783_1914 : StackLang.HolProg 64 :=
.seq NamedBody783_1892 NamedBody783_1913

def NamedBody783_1915 : StackLang.HolProg 64 :=
.seq NamedBody783_1863 NamedBody783_1914

def NamedBody783_1916 : StackLang.HolProg 64 :=
.seq NamedBody783_1860 NamedBody783_1915

def NamedBody783_1917 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody783_1918 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody783_1919 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody783_1920 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody783_1921 : StackLang.HolProg 64 :=
.seq NamedBody783_1919 NamedBody783_1920

def NamedBody783_1922 : StackLang.HolProg 64 :=
.seq NamedBody783_1918 NamedBody783_1921

def NamedBody783_1923 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_1924 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3607#64)

def NamedBody783_1925 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody783_1926 : StackLang.HolProg 64 :=
.seq NamedBody783_1924 NamedBody783_1925

def NamedBody783_1927 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody783_1928 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody783_1929 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody783_1930 : StackLang.HolProg 64 :=
.seq NamedBody783_1928 NamedBody783_1929

def NamedBody783_1931 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_1932 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody783_1930 NamedBody783_1931

def NamedBody783_1933 : StackLang.HolProg 64 :=
.seq NamedBody783_1927 NamedBody783_1932

def NamedBody783_1934 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody783_1935 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody783_1936 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 783 53

def NamedBody783_1937 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody783_1938 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_1939 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_1940 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_1941 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody783_1942 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody783_1943 : StackLang.HolProg 64 :=
.seq NamedBody783_1941 NamedBody783_1942

def NamedBody783_1944 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody783_1945 : StackLang.HolProg 64 :=
.seq NamedBody783_1943 NamedBody783_1944

def NamedBody783_1946 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_1947 : StackLang.HolProg 64 :=
.seq NamedBody783_1945 NamedBody783_1946

def NamedBody783_1948 : StackLang.HolProg 64 :=
.seq NamedBody783_1940 NamedBody783_1947

def NamedBody783_1949 : StackLang.HolProg 64 :=
.seq NamedBody783_1939 NamedBody783_1948

def NamedBody783_1950 : StackLang.HolProg 64 :=
.seq NamedBody783_1938 NamedBody783_1949

def NamedBody783_1951 : StackLang.HolProg 64 :=
.seq NamedBody783_1937 NamedBody783_1950

def NamedBody783_1952 : StackLang.HolProg 64 :=
.seq NamedBody783_1936 NamedBody783_1951

def NamedBody783_1953 : StackLang.HolProg 64 :=
.seq NamedBody783_1935 NamedBody783_1952

def NamedBody783_1954 : StackLang.HolProg 64 :=
.seq NamedBody783_1934 NamedBody783_1953

def NamedBody783_1955 : StackLang.HolProg 64 :=
.seq NamedBody783_1933 NamedBody783_1954

def NamedBody783_1956 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_1957 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_1958 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_1959 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_1960 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_1961 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody783_1962 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody783_1963 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody783_1964 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody783_1965 : StackLang.HolProg 64 :=
.seq NamedBody783_1963 NamedBody783_1964

def NamedBody783_1966 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody783_1967 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody783_1968 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody783_1969 : StackLang.HolProg 64 :=
.seq NamedBody783_1967 NamedBody783_1968

def NamedBody783_1970 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody783_1971 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody783_1972 : StackLang.HolProg 64 :=
.seq NamedBody783_1970 NamedBody783_1971

def NamedBody783_1973 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody783_1974 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody783_1975 : StackLang.HolProg 64 :=
.seq NamedBody783_1973 NamedBody783_1974

def NamedBody783_1976 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody783_1977 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody783_1978 : StackLang.HolProg 64 :=
.seq NamedBody783_1976 NamedBody783_1977

def NamedBody783_1979 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody783_1980 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody783_1981 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody783_1982 : StackLang.HolProg 64 :=
.seq NamedBody783_1980 NamedBody783_1981

def NamedBody783_1983 : StackLang.HolProg 64 :=
.seq NamedBody783_1979 NamedBody783_1982

def NamedBody783_1984 : StackLang.HolProg 64 :=
.seq NamedBody783_1978 NamedBody783_1983

def NamedBody783_1985 : StackLang.HolProg 64 :=
.seq NamedBody783_1975 NamedBody783_1984

def NamedBody783_1986 : StackLang.HolProg 64 :=
.seq NamedBody783_1972 NamedBody783_1985

def NamedBody783_1987 : StackLang.HolProg 64 :=
.seq NamedBody783_1969 NamedBody783_1986

def NamedBody783_1988 : StackLang.HolProg 64 :=
.seq NamedBody783_1966 NamedBody783_1987

def NamedBody783_1989 : StackLang.HolProg 64 :=
.seq NamedBody783_1965 NamedBody783_1988

def NamedBody783_1990 : StackLang.HolProg 64 :=
.seq NamedBody783_1962 NamedBody783_1989

def NamedBody783_1991 : StackLang.HolProg 64 :=
.seq NamedBody783_1961 NamedBody783_1990

def NamedBody783_1992 : StackLang.HolProg 64 :=
.seq NamedBody783_1960 NamedBody783_1991

def NamedBody783_1993 : StackLang.HolProg 64 :=
.seq NamedBody783_1959 NamedBody783_1992

def NamedBody783_1994 : StackLang.HolProg 64 :=
.seq NamedBody783_1958 NamedBody783_1993

def NamedBody783_1995 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody783_1996 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody783_1997 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody783_1998 : StackLang.HolProg 64 :=
.seq NamedBody783_1996 NamedBody783_1997

def NamedBody783_1999 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody783_2000 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody783_2001 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody783_2002 : StackLang.HolProg 64 :=
.seq NamedBody783_2000 NamedBody783_2001

def NamedBody783_2003 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody783_2004 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody783_2005 : StackLang.HolProg 64 :=
.seq NamedBody783_2003 NamedBody783_2004

def NamedBody783_2006 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody783_2007 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody783_2008 : StackLang.HolProg 64 :=
.seq NamedBody783_2006 NamedBody783_2007

def NamedBody783_2009 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody783_2010 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody783_2011 : StackLang.HolProg 64 :=
.seq NamedBody783_2009 NamedBody783_2010

def NamedBody783_2012 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody783_2013 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody783_2014 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody783_2015 : StackLang.HolProg 64 :=
.seq NamedBody783_2013 NamedBody783_2014

def NamedBody783_2016 : StackLang.HolProg 64 :=
.seq NamedBody783_2012 NamedBody783_2015

def NamedBody783_2017 : StackLang.HolProg 64 :=
.seq NamedBody783_2011 NamedBody783_2016

def NamedBody783_2018 : StackLang.HolProg 64 :=
.seq NamedBody783_2008 NamedBody783_2017

def NamedBody783_2019 : StackLang.HolProg 64 :=
.seq NamedBody783_2005 NamedBody783_2018

def NamedBody783_2020 : StackLang.HolProg 64 :=
.seq NamedBody783_2002 NamedBody783_2019

def NamedBody783_2021 : StackLang.HolProg 64 :=
.seq NamedBody783_1999 NamedBody783_2020

def NamedBody783_2022 : StackLang.HolProg 64 :=
.seq NamedBody783_1998 NamedBody783_2021

def NamedBody783_2023 : StackLang.HolProg 64 :=
.seq NamedBody783_1995 NamedBody783_2022

def NamedBody783_2024 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody783_2025 : StackLang.HolProg 64 :=
.seq NamedBody783_2023 NamedBody783_2024

def NamedBody783_2026 : StackLang.HolProg 64 :=
.call (some (NamedBody783_1994, 1, 783, 52)) (Sum.inl 735) (some (NamedBody783_2025, 783, 53))

def NamedBody783_2027 : StackLang.HolProg 64 :=
.seq NamedBody783_1957 NamedBody783_2026

def NamedBody783_2028 : StackLang.HolProg 64 :=
.seq NamedBody783_1956 NamedBody783_2027

def NamedBody783_2029 : StackLang.HolProg 64 :=
.seq NamedBody783_1955 NamedBody783_2028

def NamedBody783_2030 : StackLang.HolProg 64 :=
.seq NamedBody783_1926 NamedBody783_2029

def NamedBody783_2031 : StackLang.HolProg 64 :=
.seq NamedBody783_1923 NamedBody783_2030

def NamedBody783_2032 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody783_2033 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody783_2034 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody783_2035 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody783_2036 : StackLang.HolProg 64 :=
.seq NamedBody783_2034 NamedBody783_2035

def NamedBody783_2037 : StackLang.HolProg 64 :=
.seq NamedBody783_2033 NamedBody783_2036

def NamedBody783_2038 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_2039 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3608#64)

def NamedBody783_2040 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody783_2041 : StackLang.HolProg 64 :=
.seq NamedBody783_2039 NamedBody783_2040

def NamedBody783_2042 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody783_2043 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody783_2044 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody783_2045 : StackLang.HolProg 64 :=
.seq NamedBody783_2043 NamedBody783_2044

def NamedBody783_2046 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_2047 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody783_2045 NamedBody783_2046

def NamedBody783_2048 : StackLang.HolProg 64 :=
.seq NamedBody783_2042 NamedBody783_2047

def NamedBody783_2049 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody783_2050 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody783_2051 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 783 55

def NamedBody783_2052 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody783_2053 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_2054 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_2055 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_2056 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody783_2057 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody783_2058 : StackLang.HolProg 64 :=
.seq NamedBody783_2056 NamedBody783_2057

def NamedBody783_2059 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody783_2060 : StackLang.HolProg 64 :=
.seq NamedBody783_2058 NamedBody783_2059

def NamedBody783_2061 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_2062 : StackLang.HolProg 64 :=
.seq NamedBody783_2060 NamedBody783_2061

def NamedBody783_2063 : StackLang.HolProg 64 :=
.seq NamedBody783_2055 NamedBody783_2062

def NamedBody783_2064 : StackLang.HolProg 64 :=
.seq NamedBody783_2054 NamedBody783_2063

def NamedBody783_2065 : StackLang.HolProg 64 :=
.seq NamedBody783_2053 NamedBody783_2064

def NamedBody783_2066 : StackLang.HolProg 64 :=
.seq NamedBody783_2052 NamedBody783_2065

def NamedBody783_2067 : StackLang.HolProg 64 :=
.seq NamedBody783_2051 NamedBody783_2066

def NamedBody783_2068 : StackLang.HolProg 64 :=
.seq NamedBody783_2050 NamedBody783_2067

def NamedBody783_2069 : StackLang.HolProg 64 :=
.seq NamedBody783_2049 NamedBody783_2068

def NamedBody783_2070 : StackLang.HolProg 64 :=
.seq NamedBody783_2048 NamedBody783_2069

def NamedBody783_2071 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_2072 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_2073 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_2074 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_2075 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_2076 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody783_2077 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody783_2078 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody783_2079 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody783_2080 : StackLang.HolProg 64 :=
.seq NamedBody783_2078 NamedBody783_2079

def NamedBody783_2081 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody783_2082 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody783_2083 : StackLang.HolProg 64 :=
.seq NamedBody783_2081 NamedBody783_2082

def NamedBody783_2084 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody783_2085 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody783_2086 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody783_2087 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody783_2088 : StackLang.HolProg 64 :=
.seq NamedBody783_2086 NamedBody783_2087

def NamedBody783_2089 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody783_2090 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody783_2091 : StackLang.HolProg 64 :=
.seq NamedBody783_2089 NamedBody783_2090

def NamedBody783_2092 : StackLang.HolProg 64 :=
.seq NamedBody783_2088 NamedBody783_2091

def NamedBody783_2093 : StackLang.HolProg 64 :=
.seq NamedBody783_2085 NamedBody783_2092

def NamedBody783_2094 : StackLang.HolProg 64 :=
.seq NamedBody783_2084 NamedBody783_2093

def NamedBody783_2095 : StackLang.HolProg 64 :=
.seq NamedBody783_2083 NamedBody783_2094

def NamedBody783_2096 : StackLang.HolProg 64 :=
.seq NamedBody783_2080 NamedBody783_2095

def NamedBody783_2097 : StackLang.HolProg 64 :=
.seq NamedBody783_2077 NamedBody783_2096

def NamedBody783_2098 : StackLang.HolProg 64 :=
.seq NamedBody783_2076 NamedBody783_2097

def NamedBody783_2099 : StackLang.HolProg 64 :=
.seq NamedBody783_2075 NamedBody783_2098

def NamedBody783_2100 : StackLang.HolProg 64 :=
.seq NamedBody783_2074 NamedBody783_2099

def NamedBody783_2101 : StackLang.HolProg 64 :=
.seq NamedBody783_2073 NamedBody783_2100

def NamedBody783_2102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody783_2103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody783_2104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody783_2105 : StackLang.HolProg 64 :=
.seq NamedBody783_2103 NamedBody783_2104

def NamedBody783_2106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody783_2107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody783_2108 : StackLang.HolProg 64 :=
.seq NamedBody783_2106 NamedBody783_2107

def NamedBody783_2109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody783_2110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody783_2111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody783_2112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody783_2113 : StackLang.HolProg 64 :=
.seq NamedBody783_2111 NamedBody783_2112

def NamedBody783_2114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody783_2115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody783_2116 : StackLang.HolProg 64 :=
.seq NamedBody783_2114 NamedBody783_2115

def NamedBody783_2117 : StackLang.HolProg 64 :=
.seq NamedBody783_2113 NamedBody783_2116

def NamedBody783_2118 : StackLang.HolProg 64 :=
.seq NamedBody783_2110 NamedBody783_2117

def NamedBody783_2119 : StackLang.HolProg 64 :=
.seq NamedBody783_2109 NamedBody783_2118

def NamedBody783_2120 : StackLang.HolProg 64 :=
.seq NamedBody783_2108 NamedBody783_2119

def NamedBody783_2121 : StackLang.HolProg 64 :=
.seq NamedBody783_2105 NamedBody783_2120

def NamedBody783_2122 : StackLang.HolProg 64 :=
.seq NamedBody783_2102 NamedBody783_2121

def NamedBody783_2123 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody783_2124 : StackLang.HolProg 64 :=
.seq NamedBody783_2122 NamedBody783_2123

def NamedBody783_2125 : StackLang.HolProg 64 :=
.call (some (NamedBody783_2101, 1, 783, 54)) (Sum.inl 739) (some (NamedBody783_2124, 783, 55))

def NamedBody783_2126 : StackLang.HolProg 64 :=
.seq NamedBody783_2072 NamedBody783_2125

def NamedBody783_2127 : StackLang.HolProg 64 :=
.seq NamedBody783_2071 NamedBody783_2126

def NamedBody783_2128 : StackLang.HolProg 64 :=
.seq NamedBody783_2070 NamedBody783_2127

def NamedBody783_2129 : StackLang.HolProg 64 :=
.seq NamedBody783_2041 NamedBody783_2128

def NamedBody783_2130 : StackLang.HolProg 64 :=
.seq NamedBody783_2038 NamedBody783_2129

def NamedBody783_2131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody783_2132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody783_2133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody783_2134 : StackLang.HolProg 64 :=
.seq NamedBody783_2132 NamedBody783_2133

def NamedBody783_2135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_2136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3609#64)

def NamedBody783_2137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody783_2138 : StackLang.HolProg 64 :=
.seq NamedBody783_2136 NamedBody783_2137

def NamedBody783_2139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody783_2140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody783_2141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody783_2142 : StackLang.HolProg 64 :=
.seq NamedBody783_2140 NamedBody783_2141

def NamedBody783_2143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_2144 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody783_2142 NamedBody783_2143

def NamedBody783_2145 : StackLang.HolProg 64 :=
.seq NamedBody783_2139 NamedBody783_2144

def NamedBody783_2146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody783_2147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody783_2148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 783 57

def NamedBody783_2149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody783_2150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_2151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_2152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_2153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody783_2154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody783_2155 : StackLang.HolProg 64 :=
.seq NamedBody783_2153 NamedBody783_2154

def NamedBody783_2156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody783_2157 : StackLang.HolProg 64 :=
.seq NamedBody783_2155 NamedBody783_2156

def NamedBody783_2158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_2159 : StackLang.HolProg 64 :=
.seq NamedBody783_2157 NamedBody783_2158

def NamedBody783_2160 : StackLang.HolProg 64 :=
.seq NamedBody783_2152 NamedBody783_2159

def NamedBody783_2161 : StackLang.HolProg 64 :=
.seq NamedBody783_2151 NamedBody783_2160

def NamedBody783_2162 : StackLang.HolProg 64 :=
.seq NamedBody783_2150 NamedBody783_2161

def NamedBody783_2163 : StackLang.HolProg 64 :=
.seq NamedBody783_2149 NamedBody783_2162

def NamedBody783_2164 : StackLang.HolProg 64 :=
.seq NamedBody783_2148 NamedBody783_2163

def NamedBody783_2165 : StackLang.HolProg 64 :=
.seq NamedBody783_2147 NamedBody783_2164

def NamedBody783_2166 : StackLang.HolProg 64 :=
.seq NamedBody783_2146 NamedBody783_2165

def NamedBody783_2167 : StackLang.HolProg 64 :=
.seq NamedBody783_2145 NamedBody783_2166

def NamedBody783_2168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_2169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_2170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_2171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_2172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_2173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody783_2174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody783_2175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody783_2176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody783_2177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody783_2178 : StackLang.HolProg 64 :=
.seq NamedBody783_2176 NamedBody783_2177

def NamedBody783_2179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody783_2180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody783_2181 : StackLang.HolProg 64 :=
.seq NamedBody783_2179 NamedBody783_2180

def NamedBody783_2182 : StackLang.HolProg 64 :=
.seq NamedBody783_2178 NamedBody783_2181

def NamedBody783_2183 : StackLang.HolProg 64 :=
.seq NamedBody783_2175 NamedBody783_2182

def NamedBody783_2184 : StackLang.HolProg 64 :=
.seq NamedBody783_2174 NamedBody783_2183

def NamedBody783_2185 : StackLang.HolProg 64 :=
.seq NamedBody783_2173 NamedBody783_2184

def NamedBody783_2186 : StackLang.HolProg 64 :=
.seq NamedBody783_2172 NamedBody783_2185

def NamedBody783_2187 : StackLang.HolProg 64 :=
.seq NamedBody783_2171 NamedBody783_2186

def NamedBody783_2188 : StackLang.HolProg 64 :=
.seq NamedBody783_2170 NamedBody783_2187

def NamedBody783_2189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody783_2190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody783_2191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody783_2192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody783_2193 : StackLang.HolProg 64 :=
.seq NamedBody783_2191 NamedBody783_2192

def NamedBody783_2194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody783_2195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody783_2196 : StackLang.HolProg 64 :=
.seq NamedBody783_2194 NamedBody783_2195

def NamedBody783_2197 : StackLang.HolProg 64 :=
.seq NamedBody783_2193 NamedBody783_2196

def NamedBody783_2198 : StackLang.HolProg 64 :=
.seq NamedBody783_2190 NamedBody783_2197

def NamedBody783_2199 : StackLang.HolProg 64 :=
.seq NamedBody783_2189 NamedBody783_2198

def NamedBody783_2200 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody783_2201 : StackLang.HolProg 64 :=
.seq NamedBody783_2199 NamedBody783_2200

def NamedBody783_2202 : StackLang.HolProg 64 :=
.call (some (NamedBody783_2188, 1, 783, 56)) (Sum.inl 735) (some (NamedBody783_2201, 783, 57))

def NamedBody783_2203 : StackLang.HolProg 64 :=
.seq NamedBody783_2169 NamedBody783_2202

def NamedBody783_2204 : StackLang.HolProg 64 :=
.seq NamedBody783_2168 NamedBody783_2203

def NamedBody783_2205 : StackLang.HolProg 64 :=
.seq NamedBody783_2167 NamedBody783_2204

def NamedBody783_2206 : StackLang.HolProg 64 :=
.seq NamedBody783_2138 NamedBody783_2205

def NamedBody783_2207 : StackLang.HolProg 64 :=
.seq NamedBody783_2135 NamedBody783_2206

def NamedBody783_2208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody783_2209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody783_2210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody783_2211 : StackLang.HolProg 64 :=
.seq NamedBody783_2209 NamedBody783_2210

def NamedBody783_2212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_2213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3610#64)

def NamedBody783_2214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody783_2215 : StackLang.HolProg 64 :=
.seq NamedBody783_2213 NamedBody783_2214

def NamedBody783_2216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody783_2217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody783_2218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody783_2219 : StackLang.HolProg 64 :=
.seq NamedBody783_2217 NamedBody783_2218

def NamedBody783_2220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_2221 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody783_2219 NamedBody783_2220

def NamedBody783_2222 : StackLang.HolProg 64 :=
.seq NamedBody783_2216 NamedBody783_2221

def NamedBody783_2223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody783_2224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody783_2225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 783 59

def NamedBody783_2226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody783_2227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_2228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_2229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_2230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody783_2231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody783_2232 : StackLang.HolProg 64 :=
.seq NamedBody783_2230 NamedBody783_2231

def NamedBody783_2233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody783_2234 : StackLang.HolProg 64 :=
.seq NamedBody783_2232 NamedBody783_2233

def NamedBody783_2235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_2236 : StackLang.HolProg 64 :=
.seq NamedBody783_2234 NamedBody783_2235

def NamedBody783_2237 : StackLang.HolProg 64 :=
.seq NamedBody783_2229 NamedBody783_2236

def NamedBody783_2238 : StackLang.HolProg 64 :=
.seq NamedBody783_2228 NamedBody783_2237

def NamedBody783_2239 : StackLang.HolProg 64 :=
.seq NamedBody783_2227 NamedBody783_2238

def NamedBody783_2240 : StackLang.HolProg 64 :=
.seq NamedBody783_2226 NamedBody783_2239

def NamedBody783_2241 : StackLang.HolProg 64 :=
.seq NamedBody783_2225 NamedBody783_2240

def NamedBody783_2242 : StackLang.HolProg 64 :=
.seq NamedBody783_2224 NamedBody783_2241

def NamedBody783_2243 : StackLang.HolProg 64 :=
.seq NamedBody783_2223 NamedBody783_2242

def NamedBody783_2244 : StackLang.HolProg 64 :=
.seq NamedBody783_2222 NamedBody783_2243

def NamedBody783_2245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_2246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_2247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_2248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_2249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_2250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody783_2251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody783_2252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody783_2253 : StackLang.HolProg 64 :=
.seq NamedBody783_2251 NamedBody783_2252

def NamedBody783_2254 : StackLang.HolProg 64 :=
.seq NamedBody783_2250 NamedBody783_2253

def NamedBody783_2255 : StackLang.HolProg 64 :=
.seq NamedBody783_2249 NamedBody783_2254

def NamedBody783_2256 : StackLang.HolProg 64 :=
.seq NamedBody783_2248 NamedBody783_2255

def NamedBody783_2257 : StackLang.HolProg 64 :=
.seq NamedBody783_2247 NamedBody783_2256

def NamedBody783_2258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody783_2259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody783_2260 : StackLang.HolProg 64 :=
.seq NamedBody783_2258 NamedBody783_2259

def NamedBody783_2261 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody783_2262 : StackLang.HolProg 64 :=
.seq NamedBody783_2260 NamedBody783_2261

def NamedBody783_2263 : StackLang.HolProg 64 :=
.call (some (NamedBody783_2257, 1, 783, 58)) (Sum.inl 739) (some (NamedBody783_2262, 783, 59))

def NamedBody783_2264 : StackLang.HolProg 64 :=
.seq NamedBody783_2246 NamedBody783_2263

def NamedBody783_2265 : StackLang.HolProg 64 :=
.seq NamedBody783_2245 NamedBody783_2264

def NamedBody783_2266 : StackLang.HolProg 64 :=
.seq NamedBody783_2244 NamedBody783_2265

def NamedBody783_2267 : StackLang.HolProg 64 :=
.seq NamedBody783_2215 NamedBody783_2266

def NamedBody783_2268 : StackLang.HolProg 64 :=
.seq NamedBody783_2212 NamedBody783_2267

def NamedBody783_2269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody783_2270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody783_2271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody783_2272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody783_2273 : StackLang.HolProg 64 :=
.seq NamedBody783_2271 NamedBody783_2272

def NamedBody783_2274 : StackLang.HolProg 64 :=
.seq NamedBody783_2270 NamedBody783_2273

def NamedBody783_2275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_2276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3611#64)

def NamedBody783_2277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody783_2278 : StackLang.HolProg 64 :=
.seq NamedBody783_2276 NamedBody783_2277

def NamedBody783_2279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody783_2280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody783_2281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody783_2282 : StackLang.HolProg 64 :=
.seq NamedBody783_2280 NamedBody783_2281

def NamedBody783_2283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_2284 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody783_2282 NamedBody783_2283

def NamedBody783_2285 : StackLang.HolProg 64 :=
.seq NamedBody783_2279 NamedBody783_2284

def NamedBody783_2286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody783_2287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody783_2288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 783 61

def NamedBody783_2289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody783_2290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_2291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_2292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_2293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody783_2294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody783_2295 : StackLang.HolProg 64 :=
.seq NamedBody783_2293 NamedBody783_2294

def NamedBody783_2296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody783_2297 : StackLang.HolProg 64 :=
.seq NamedBody783_2295 NamedBody783_2296

def NamedBody783_2298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_2299 : StackLang.HolProg 64 :=
.seq NamedBody783_2297 NamedBody783_2298

def NamedBody783_2300 : StackLang.HolProg 64 :=
.seq NamedBody783_2292 NamedBody783_2299

def NamedBody783_2301 : StackLang.HolProg 64 :=
.seq NamedBody783_2291 NamedBody783_2300

def NamedBody783_2302 : StackLang.HolProg 64 :=
.seq NamedBody783_2290 NamedBody783_2301

def NamedBody783_2303 : StackLang.HolProg 64 :=
.seq NamedBody783_2289 NamedBody783_2302

def NamedBody783_2304 : StackLang.HolProg 64 :=
.seq NamedBody783_2288 NamedBody783_2303

def NamedBody783_2305 : StackLang.HolProg 64 :=
.seq NamedBody783_2287 NamedBody783_2304

def NamedBody783_2306 : StackLang.HolProg 64 :=
.seq NamedBody783_2286 NamedBody783_2305

def NamedBody783_2307 : StackLang.HolProg 64 :=
.seq NamedBody783_2285 NamedBody783_2306

def NamedBody783_2308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_2309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_2310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_2311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_2312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_2313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody783_2314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody783_2315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody783_2316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody783_2317 : StackLang.HolProg 64 :=
.seq NamedBody783_2315 NamedBody783_2316

def NamedBody783_2318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody783_2319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody783_2320 : StackLang.HolProg 64 :=
.seq NamedBody783_2318 NamedBody783_2319

def NamedBody783_2321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody783_2322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody783_2323 : StackLang.HolProg 64 :=
.seq NamedBody783_2321 NamedBody783_2322

def NamedBody783_2324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody783_2325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody783_2326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody783_2327 : StackLang.HolProg 64 :=
.seq NamedBody783_2325 NamedBody783_2326

def NamedBody783_2328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody783_2329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody783_2330 : StackLang.HolProg 64 :=
.seq NamedBody783_2328 NamedBody783_2329

def NamedBody783_2331 : StackLang.HolProg 64 :=
.seq NamedBody783_2327 NamedBody783_2330

def NamedBody783_2332 : StackLang.HolProg 64 :=
.seq NamedBody783_2324 NamedBody783_2331

def NamedBody783_2333 : StackLang.HolProg 64 :=
.seq NamedBody783_2323 NamedBody783_2332

def NamedBody783_2334 : StackLang.HolProg 64 :=
.seq NamedBody783_2320 NamedBody783_2333

def NamedBody783_2335 : StackLang.HolProg 64 :=
.seq NamedBody783_2317 NamedBody783_2334

def NamedBody783_2336 : StackLang.HolProg 64 :=
.seq NamedBody783_2314 NamedBody783_2335

def NamedBody783_2337 : StackLang.HolProg 64 :=
.seq NamedBody783_2313 NamedBody783_2336

def NamedBody783_2338 : StackLang.HolProg 64 :=
.seq NamedBody783_2312 NamedBody783_2337

def NamedBody783_2339 : StackLang.HolProg 64 :=
.seq NamedBody783_2311 NamedBody783_2338

def NamedBody783_2340 : StackLang.HolProg 64 :=
.seq NamedBody783_2310 NamedBody783_2339

def NamedBody783_2341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody783_2342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody783_2343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody783_2344 : StackLang.HolProg 64 :=
.seq NamedBody783_2342 NamedBody783_2343

def NamedBody783_2345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody783_2346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody783_2347 : StackLang.HolProg 64 :=
.seq NamedBody783_2345 NamedBody783_2346

def NamedBody783_2348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody783_2349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody783_2350 : StackLang.HolProg 64 :=
.seq NamedBody783_2348 NamedBody783_2349

def NamedBody783_2351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody783_2352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody783_2353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody783_2354 : StackLang.HolProg 64 :=
.seq NamedBody783_2352 NamedBody783_2353

def NamedBody783_2355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody783_2356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody783_2357 : StackLang.HolProg 64 :=
.seq NamedBody783_2355 NamedBody783_2356

def NamedBody783_2358 : StackLang.HolProg 64 :=
.seq NamedBody783_2354 NamedBody783_2357

def NamedBody783_2359 : StackLang.HolProg 64 :=
.seq NamedBody783_2351 NamedBody783_2358

def NamedBody783_2360 : StackLang.HolProg 64 :=
.seq NamedBody783_2350 NamedBody783_2359

def NamedBody783_2361 : StackLang.HolProg 64 :=
.seq NamedBody783_2347 NamedBody783_2360

def NamedBody783_2362 : StackLang.HolProg 64 :=
.seq NamedBody783_2344 NamedBody783_2361

def NamedBody783_2363 : StackLang.HolProg 64 :=
.seq NamedBody783_2341 NamedBody783_2362

def NamedBody783_2364 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody783_2365 : StackLang.HolProg 64 :=
.seq NamedBody783_2363 NamedBody783_2364

def NamedBody783_2366 : StackLang.HolProg 64 :=
.call (some (NamedBody783_2340, 1, 783, 60)) (Sum.inl 739) (some (NamedBody783_2365, 783, 61))

def NamedBody783_2367 : StackLang.HolProg 64 :=
.seq NamedBody783_2309 NamedBody783_2366

def NamedBody783_2368 : StackLang.HolProg 64 :=
.seq NamedBody783_2308 NamedBody783_2367

def NamedBody783_2369 : StackLang.HolProg 64 :=
.seq NamedBody783_2307 NamedBody783_2368

def NamedBody783_2370 : StackLang.HolProg 64 :=
.seq NamedBody783_2278 NamedBody783_2369

def NamedBody783_2371 : StackLang.HolProg 64 :=
.seq NamedBody783_2275 NamedBody783_2370

def NamedBody783_2372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody783_2373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody783_2374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody783_2375 : StackLang.HolProg 64 :=
.seq NamedBody783_2373 NamedBody783_2374

def NamedBody783_2376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_2377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3612#64)

def NamedBody783_2378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody783_2379 : StackLang.HolProg 64 :=
.seq NamedBody783_2377 NamedBody783_2378

def NamedBody783_2380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody783_2381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody783_2382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody783_2383 : StackLang.HolProg 64 :=
.seq NamedBody783_2381 NamedBody783_2382

def NamedBody783_2384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_2385 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody783_2383 NamedBody783_2384

def NamedBody783_2386 : StackLang.HolProg 64 :=
.seq NamedBody783_2380 NamedBody783_2385

def NamedBody783_2387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody783_2388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody783_2389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 783 63

def NamedBody783_2390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody783_2391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_2392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_2393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_2394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody783_2395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody783_2396 : StackLang.HolProg 64 :=
.seq NamedBody783_2394 NamedBody783_2395

def NamedBody783_2397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody783_2398 : StackLang.HolProg 64 :=
.seq NamedBody783_2396 NamedBody783_2397

def NamedBody783_2399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_2400 : StackLang.HolProg 64 :=
.seq NamedBody783_2398 NamedBody783_2399

def NamedBody783_2401 : StackLang.HolProg 64 :=
.seq NamedBody783_2393 NamedBody783_2400

def NamedBody783_2402 : StackLang.HolProg 64 :=
.seq NamedBody783_2392 NamedBody783_2401

def NamedBody783_2403 : StackLang.HolProg 64 :=
.seq NamedBody783_2391 NamedBody783_2402

def NamedBody783_2404 : StackLang.HolProg 64 :=
.seq NamedBody783_2390 NamedBody783_2403

def NamedBody783_2405 : StackLang.HolProg 64 :=
.seq NamedBody783_2389 NamedBody783_2404

def NamedBody783_2406 : StackLang.HolProg 64 :=
.seq NamedBody783_2388 NamedBody783_2405

def NamedBody783_2407 : StackLang.HolProg 64 :=
.seq NamedBody783_2387 NamedBody783_2406

def NamedBody783_2408 : StackLang.HolProg 64 :=
.seq NamedBody783_2386 NamedBody783_2407

def NamedBody783_2409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_2410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_2411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_2412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_2413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_2414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody783_2415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody783_2416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody783_2417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody783_2418 : StackLang.HolProg 64 :=
.seq NamedBody783_2416 NamedBody783_2417

def NamedBody783_2419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody783_2420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody783_2421 : StackLang.HolProg 64 :=
.seq NamedBody783_2419 NamedBody783_2420

def NamedBody783_2422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody783_2423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody783_2424 : StackLang.HolProg 64 :=
.seq NamedBody783_2422 NamedBody783_2423

def NamedBody783_2425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody783_2426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody783_2427 : StackLang.HolProg 64 :=
.seq NamedBody783_2425 NamedBody783_2426

def NamedBody783_2428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody783_2429 : StackLang.HolProg 64 :=
.seq NamedBody783_2427 NamedBody783_2428

def NamedBody783_2430 : StackLang.HolProg 64 :=
.seq NamedBody783_2424 NamedBody783_2429

def NamedBody783_2431 : StackLang.HolProg 64 :=
.seq NamedBody783_2421 NamedBody783_2430

def NamedBody783_2432 : StackLang.HolProg 64 :=
.seq NamedBody783_2418 NamedBody783_2431

def NamedBody783_2433 : StackLang.HolProg 64 :=
.seq NamedBody783_2415 NamedBody783_2432

def NamedBody783_2434 : StackLang.HolProg 64 :=
.seq NamedBody783_2414 NamedBody783_2433

def NamedBody783_2435 : StackLang.HolProg 64 :=
.seq NamedBody783_2413 NamedBody783_2434

def NamedBody783_2436 : StackLang.HolProg 64 :=
.seq NamedBody783_2412 NamedBody783_2435

def NamedBody783_2437 : StackLang.HolProg 64 :=
.seq NamedBody783_2411 NamedBody783_2436

def NamedBody783_2438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody783_2439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody783_2440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody783_2441 : StackLang.HolProg 64 :=
.seq NamedBody783_2439 NamedBody783_2440

def NamedBody783_2442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody783_2443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody783_2444 : StackLang.HolProg 64 :=
.seq NamedBody783_2442 NamedBody783_2443

def NamedBody783_2445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody783_2446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody783_2447 : StackLang.HolProg 64 :=
.seq NamedBody783_2445 NamedBody783_2446

def NamedBody783_2448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody783_2449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody783_2450 : StackLang.HolProg 64 :=
.seq NamedBody783_2448 NamedBody783_2449

def NamedBody783_2451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody783_2452 : StackLang.HolProg 64 :=
.seq NamedBody783_2450 NamedBody783_2451

def NamedBody783_2453 : StackLang.HolProg 64 :=
.seq NamedBody783_2447 NamedBody783_2452

def NamedBody783_2454 : StackLang.HolProg 64 :=
.seq NamedBody783_2444 NamedBody783_2453

def NamedBody783_2455 : StackLang.HolProg 64 :=
.seq NamedBody783_2441 NamedBody783_2454

def NamedBody783_2456 : StackLang.HolProg 64 :=
.seq NamedBody783_2438 NamedBody783_2455

def NamedBody783_2457 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody783_2458 : StackLang.HolProg 64 :=
.seq NamedBody783_2456 NamedBody783_2457

def NamedBody783_2459 : StackLang.HolProg 64 :=
.call (some (NamedBody783_2437, 1, 783, 62)) (Sum.inl 735) (some (NamedBody783_2458, 783, 63))

def NamedBody783_2460 : StackLang.HolProg 64 :=
.seq NamedBody783_2410 NamedBody783_2459

def NamedBody783_2461 : StackLang.HolProg 64 :=
.seq NamedBody783_2409 NamedBody783_2460

def NamedBody783_2462 : StackLang.HolProg 64 :=
.seq NamedBody783_2408 NamedBody783_2461

def NamedBody783_2463 : StackLang.HolProg 64 :=
.seq NamedBody783_2379 NamedBody783_2462

def NamedBody783_2464 : StackLang.HolProg 64 :=
.seq NamedBody783_2376 NamedBody783_2463

def NamedBody783_2465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody783_2466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody783_2467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody783_2468 : StackLang.HolProg 64 :=
.seq NamedBody783_2466 NamedBody783_2467

def NamedBody783_2469 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_2470 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3613#64)

def NamedBody783_2471 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody783_2472 : StackLang.HolProg 64 :=
.seq NamedBody783_2470 NamedBody783_2471

def NamedBody783_2473 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody783_2474 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody783_2475 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody783_2476 : StackLang.HolProg 64 :=
.seq NamedBody783_2474 NamedBody783_2475

def NamedBody783_2477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_2478 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody783_2476 NamedBody783_2477

def NamedBody783_2479 : StackLang.HolProg 64 :=
.seq NamedBody783_2473 NamedBody783_2478

def NamedBody783_2480 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody783_2481 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody783_2482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 783 65

def NamedBody783_2483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody783_2484 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_2485 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_2486 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_2487 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody783_2488 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody783_2489 : StackLang.HolProg 64 :=
.seq NamedBody783_2487 NamedBody783_2488

def NamedBody783_2490 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody783_2491 : StackLang.HolProg 64 :=
.seq NamedBody783_2489 NamedBody783_2490

def NamedBody783_2492 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_2493 : StackLang.HolProg 64 :=
.seq NamedBody783_2491 NamedBody783_2492

def NamedBody783_2494 : StackLang.HolProg 64 :=
.seq NamedBody783_2486 NamedBody783_2493

def NamedBody783_2495 : StackLang.HolProg 64 :=
.seq NamedBody783_2485 NamedBody783_2494

def NamedBody783_2496 : StackLang.HolProg 64 :=
.seq NamedBody783_2484 NamedBody783_2495

def NamedBody783_2497 : StackLang.HolProg 64 :=
.seq NamedBody783_2483 NamedBody783_2496

def NamedBody783_2498 : StackLang.HolProg 64 :=
.seq NamedBody783_2482 NamedBody783_2497

def NamedBody783_2499 : StackLang.HolProg 64 :=
.seq NamedBody783_2481 NamedBody783_2498

def NamedBody783_2500 : StackLang.HolProg 64 :=
.seq NamedBody783_2480 NamedBody783_2499

def NamedBody783_2501 : StackLang.HolProg 64 :=
.seq NamedBody783_2479 NamedBody783_2500

def NamedBody783_2502 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_2503 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_2504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_2505 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_2506 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_2507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody783_2508 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody783_2509 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody783_2510 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody783_2511 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody783_2512 : StackLang.HolProg 64 :=
.seq NamedBody783_2510 NamedBody783_2511

def NamedBody783_2513 : StackLang.HolProg 64 :=
.seq NamedBody783_2509 NamedBody783_2512

def NamedBody783_2514 : StackLang.HolProg 64 :=
.seq NamedBody783_2508 NamedBody783_2513

def NamedBody783_2515 : StackLang.HolProg 64 :=
.seq NamedBody783_2507 NamedBody783_2514

def NamedBody783_2516 : StackLang.HolProg 64 :=
.seq NamedBody783_2506 NamedBody783_2515

def NamedBody783_2517 : StackLang.HolProg 64 :=
.seq NamedBody783_2505 NamedBody783_2516

def NamedBody783_2518 : StackLang.HolProg 64 :=
.seq NamedBody783_2504 NamedBody783_2517

def NamedBody783_2519 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody783_2520 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody783_2521 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody783_2522 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody783_2523 : StackLang.HolProg 64 :=
.seq NamedBody783_2521 NamedBody783_2522

def NamedBody783_2524 : StackLang.HolProg 64 :=
.seq NamedBody783_2520 NamedBody783_2523

def NamedBody783_2525 : StackLang.HolProg 64 :=
.seq NamedBody783_2519 NamedBody783_2524

def NamedBody783_2526 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody783_2527 : StackLang.HolProg 64 :=
.seq NamedBody783_2525 NamedBody783_2526

def NamedBody783_2528 : StackLang.HolProg 64 :=
.call (some (NamedBody783_2518, 1, 783, 64)) (Sum.inl 739) (some (NamedBody783_2527, 783, 65))

def NamedBody783_2529 : StackLang.HolProg 64 :=
.seq NamedBody783_2503 NamedBody783_2528

def NamedBody783_2530 : StackLang.HolProg 64 :=
.seq NamedBody783_2502 NamedBody783_2529

def NamedBody783_2531 : StackLang.HolProg 64 :=
.seq NamedBody783_2501 NamedBody783_2530

def NamedBody783_2532 : StackLang.HolProg 64 :=
.seq NamedBody783_2472 NamedBody783_2531

def NamedBody783_2533 : StackLang.HolProg 64 :=
.seq NamedBody783_2469 NamedBody783_2532

def NamedBody783_2534 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody783_2535 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody783_2536 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody783_2537 : StackLang.HolProg 64 :=
.seq NamedBody783_2535 NamedBody783_2536

def NamedBody783_2538 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_2539 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3614#64)

def NamedBody783_2540 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody783_2541 : StackLang.HolProg 64 :=
.seq NamedBody783_2539 NamedBody783_2540

def NamedBody783_2542 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody783_2543 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody783_2544 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody783_2545 : StackLang.HolProg 64 :=
.seq NamedBody783_2543 NamedBody783_2544

def NamedBody783_2546 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_2547 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody783_2545 NamedBody783_2546

def NamedBody783_2548 : StackLang.HolProg 64 :=
.seq NamedBody783_2542 NamedBody783_2547

def NamedBody783_2549 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody783_2550 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody783_2551 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 783 67

def NamedBody783_2552 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody783_2553 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_2554 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_2555 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_2556 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody783_2557 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody783_2558 : StackLang.HolProg 64 :=
.seq NamedBody783_2556 NamedBody783_2557

def NamedBody783_2559 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody783_2560 : StackLang.HolProg 64 :=
.seq NamedBody783_2558 NamedBody783_2559

def NamedBody783_2561 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_2562 : StackLang.HolProg 64 :=
.seq NamedBody783_2560 NamedBody783_2561

def NamedBody783_2563 : StackLang.HolProg 64 :=
.seq NamedBody783_2555 NamedBody783_2562

def NamedBody783_2564 : StackLang.HolProg 64 :=
.seq NamedBody783_2554 NamedBody783_2563

def NamedBody783_2565 : StackLang.HolProg 64 :=
.seq NamedBody783_2553 NamedBody783_2564

def NamedBody783_2566 : StackLang.HolProg 64 :=
.seq NamedBody783_2552 NamedBody783_2565

def NamedBody783_2567 : StackLang.HolProg 64 :=
.seq NamedBody783_2551 NamedBody783_2566

def NamedBody783_2568 : StackLang.HolProg 64 :=
.seq NamedBody783_2550 NamedBody783_2567

def NamedBody783_2569 : StackLang.HolProg 64 :=
.seq NamedBody783_2549 NamedBody783_2568

def NamedBody783_2570 : StackLang.HolProg 64 :=
.seq NamedBody783_2548 NamedBody783_2569

def NamedBody783_2571 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_2572 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_2573 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_2574 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_2575 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_2576 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody783_2577 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody783_2578 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody783_2579 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody783_2580 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody783_2581 : StackLang.HolProg 64 :=
.seq NamedBody783_2579 NamedBody783_2580

def NamedBody783_2582 : StackLang.HolProg 64 :=
.seq NamedBody783_2578 NamedBody783_2581

def NamedBody783_2583 : StackLang.HolProg 64 :=
.seq NamedBody783_2577 NamedBody783_2582

def NamedBody783_2584 : StackLang.HolProg 64 :=
.seq NamedBody783_2576 NamedBody783_2583

def NamedBody783_2585 : StackLang.HolProg 64 :=
.seq NamedBody783_2575 NamedBody783_2584

def NamedBody783_2586 : StackLang.HolProg 64 :=
.seq NamedBody783_2574 NamedBody783_2585

def NamedBody783_2587 : StackLang.HolProg 64 :=
.seq NamedBody783_2573 NamedBody783_2586

def NamedBody783_2588 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody783_2589 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody783_2590 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody783_2591 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody783_2592 : StackLang.HolProg 64 :=
.seq NamedBody783_2590 NamedBody783_2591

def NamedBody783_2593 : StackLang.HolProg 64 :=
.seq NamedBody783_2589 NamedBody783_2592

def NamedBody783_2594 : StackLang.HolProg 64 :=
.seq NamedBody783_2588 NamedBody783_2593

def NamedBody783_2595 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody783_2596 : StackLang.HolProg 64 :=
.seq NamedBody783_2594 NamedBody783_2595

def NamedBody783_2597 : StackLang.HolProg 64 :=
.call (some (NamedBody783_2587, 1, 783, 66)) (Sum.inl 729) (some (NamedBody783_2596, 783, 67))

def NamedBody783_2598 : StackLang.HolProg 64 :=
.seq NamedBody783_2572 NamedBody783_2597

def NamedBody783_2599 : StackLang.HolProg 64 :=
.seq NamedBody783_2571 NamedBody783_2598

def NamedBody783_2600 : StackLang.HolProg 64 :=
.seq NamedBody783_2570 NamedBody783_2599

def NamedBody783_2601 : StackLang.HolProg 64 :=
.seq NamedBody783_2541 NamedBody783_2600

def NamedBody783_2602 : StackLang.HolProg 64 :=
.seq NamedBody783_2538 NamedBody783_2601

def NamedBody783_2603 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody783_2604 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_2605 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def NamedBody783_2606 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody783_2607 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_2608 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3615#64)

def NamedBody783_2609 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody783_2610 : StackLang.HolProg 64 :=
.seq NamedBody783_2608 NamedBody783_2609

def NamedBody783_2611 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody783_2612 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody783_2613 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody783_2614 : StackLang.HolProg 64 :=
.seq NamedBody783_2612 NamedBody783_2613

def NamedBody783_2615 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_2616 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody783_2614 NamedBody783_2615

def NamedBody783_2617 : StackLang.HolProg 64 :=
.seq NamedBody783_2611 NamedBody783_2616

def NamedBody783_2618 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody783_2619 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody783_2620 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 783 69

def NamedBody783_2621 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody783_2622 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_2623 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_2624 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_2625 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody783_2626 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody783_2627 : StackLang.HolProg 64 :=
.seq NamedBody783_2625 NamedBody783_2626

def NamedBody783_2628 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody783_2629 : StackLang.HolProg 64 :=
.seq NamedBody783_2627 NamedBody783_2628

def NamedBody783_2630 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_2631 : StackLang.HolProg 64 :=
.seq NamedBody783_2629 NamedBody783_2630

def NamedBody783_2632 : StackLang.HolProg 64 :=
.seq NamedBody783_2624 NamedBody783_2631

def NamedBody783_2633 : StackLang.HolProg 64 :=
.seq NamedBody783_2623 NamedBody783_2632

def NamedBody783_2634 : StackLang.HolProg 64 :=
.seq NamedBody783_2622 NamedBody783_2633

def NamedBody783_2635 : StackLang.HolProg 64 :=
.seq NamedBody783_2621 NamedBody783_2634

def NamedBody783_2636 : StackLang.HolProg 64 :=
.seq NamedBody783_2620 NamedBody783_2635

def NamedBody783_2637 : StackLang.HolProg 64 :=
.seq NamedBody783_2619 NamedBody783_2636

def NamedBody783_2638 : StackLang.HolProg 64 :=
.seq NamedBody783_2618 NamedBody783_2637

def NamedBody783_2639 : StackLang.HolProg 64 :=
.seq NamedBody783_2617 NamedBody783_2638

def NamedBody783_2640 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_2641 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_2642 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_2643 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_2644 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_2645 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody783_2646 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody783_2647 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody783_2648 : StackLang.HolProg 64 :=
.seq NamedBody783_2646 NamedBody783_2647

def NamedBody783_2649 : StackLang.HolProg 64 :=
.seq NamedBody783_2645 NamedBody783_2648

def NamedBody783_2650 : StackLang.HolProg 64 :=
.seq NamedBody783_2644 NamedBody783_2649

def NamedBody783_2651 : StackLang.HolProg 64 :=
.seq NamedBody783_2643 NamedBody783_2650

def NamedBody783_2652 : StackLang.HolProg 64 :=
.seq NamedBody783_2642 NamedBody783_2651

def NamedBody783_2653 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody783_2654 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody783_2655 : StackLang.HolProg 64 :=
.seq NamedBody783_2653 NamedBody783_2654

def NamedBody783_2656 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody783_2657 : StackLang.HolProg 64 :=
.seq NamedBody783_2655 NamedBody783_2656

def NamedBody783_2658 : StackLang.HolProg 64 :=
.call (some (NamedBody783_2652, 1, 783, 68)) (Sum.inl 729) (some (NamedBody783_2657, 783, 69))

def NamedBody783_2659 : StackLang.HolProg 64 :=
.seq NamedBody783_2641 NamedBody783_2658

def NamedBody783_2660 : StackLang.HolProg 64 :=
.seq NamedBody783_2640 NamedBody783_2659

def NamedBody783_2661 : StackLang.HolProg 64 :=
.seq NamedBody783_2639 NamedBody783_2660

def NamedBody783_2662 : StackLang.HolProg 64 :=
.seq NamedBody783_2610 NamedBody783_2661

def NamedBody783_2663 : StackLang.HolProg 64 :=
.seq NamedBody783_2607 NamedBody783_2662

def NamedBody783_2664 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody783_2665 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_2666 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def NamedBody783_2667 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_2668 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_2669 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3616#64)

def NamedBody783_2670 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody783_2671 : StackLang.HolProg 64 :=
.seq NamedBody783_2669 NamedBody783_2670

def NamedBody783_2672 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody783_2673 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody783_2674 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody783_2675 : StackLang.HolProg 64 :=
.seq NamedBody783_2673 NamedBody783_2674

def NamedBody783_2676 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_2677 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody783_2675 NamedBody783_2676

def NamedBody783_2678 : StackLang.HolProg 64 :=
.seq NamedBody783_2672 NamedBody783_2677

def NamedBody783_2679 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody783_2680 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody783_2681 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 783 71

def NamedBody783_2682 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody783_2683 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_2684 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_2685 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_2686 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody783_2687 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody783_2688 : StackLang.HolProg 64 :=
.seq NamedBody783_2686 NamedBody783_2687

def NamedBody783_2689 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody783_2690 : StackLang.HolProg 64 :=
.seq NamedBody783_2688 NamedBody783_2689

def NamedBody783_2691 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_2692 : StackLang.HolProg 64 :=
.seq NamedBody783_2690 NamedBody783_2691

def NamedBody783_2693 : StackLang.HolProg 64 :=
.seq NamedBody783_2685 NamedBody783_2692

def NamedBody783_2694 : StackLang.HolProg 64 :=
.seq NamedBody783_2684 NamedBody783_2693

def NamedBody783_2695 : StackLang.HolProg 64 :=
.seq NamedBody783_2683 NamedBody783_2694

def NamedBody783_2696 : StackLang.HolProg 64 :=
.seq NamedBody783_2682 NamedBody783_2695

def NamedBody783_2697 : StackLang.HolProg 64 :=
.seq NamedBody783_2681 NamedBody783_2696

def NamedBody783_2698 : StackLang.HolProg 64 :=
.seq NamedBody783_2680 NamedBody783_2697

def NamedBody783_2699 : StackLang.HolProg 64 :=
.seq NamedBody783_2679 NamedBody783_2698

def NamedBody783_2700 : StackLang.HolProg 64 :=
.seq NamedBody783_2678 NamedBody783_2699

def NamedBody783_2701 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_2702 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_2703 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_2704 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_2705 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_2706 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody783_2707 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody783_2708 : StackLang.HolProg 64 :=
.seq NamedBody783_2706 NamedBody783_2707

def NamedBody783_2709 : StackLang.HolProg 64 :=
.seq NamedBody783_2705 NamedBody783_2708

def NamedBody783_2710 : StackLang.HolProg 64 :=
.seq NamedBody783_2704 NamedBody783_2709

def NamedBody783_2711 : StackLang.HolProg 64 :=
.seq NamedBody783_2703 NamedBody783_2710

def NamedBody783_2712 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody783_2713 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody783_2714 : StackLang.HolProg 64 :=
.seq NamedBody783_2712 NamedBody783_2713

def NamedBody783_2715 : StackLang.HolProg 64 :=
.call (some (NamedBody783_2711, 1, 783, 70)) (Sum.inl 729) (some (NamedBody783_2714, 783, 71))

def NamedBody783_2716 : StackLang.HolProg 64 :=
.seq NamedBody783_2702 NamedBody783_2715

def NamedBody783_2717 : StackLang.HolProg 64 :=
.seq NamedBody783_2701 NamedBody783_2716

def NamedBody783_2718 : StackLang.HolProg 64 :=
.seq NamedBody783_2700 NamedBody783_2717

def NamedBody783_2719 : StackLang.HolProg 64 :=
.seq NamedBody783_2671 NamedBody783_2718

def NamedBody783_2720 : StackLang.HolProg 64 :=
.seq NamedBody783_2668 NamedBody783_2719

def NamedBody783_2721 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody783_2722 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody783_2723 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_2724 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3617#64)

def NamedBody783_2725 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody783_2726 : StackLang.HolProg 64 :=
.seq NamedBody783_2724 NamedBody783_2725

def NamedBody783_2727 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody783_2728 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody783_2729 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody783_2730 : StackLang.HolProg 64 :=
.seq NamedBody783_2728 NamedBody783_2729

def NamedBody783_2731 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_2732 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody783_2730 NamedBody783_2731

def NamedBody783_2733 : StackLang.HolProg 64 :=
.seq NamedBody783_2727 NamedBody783_2732

def NamedBody783_2734 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody783_2735 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody783_2736 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 783 73

def NamedBody783_2737 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody783_2738 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_2739 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_2740 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_2741 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody783_2742 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody783_2743 : StackLang.HolProg 64 :=
.seq NamedBody783_2741 NamedBody783_2742

def NamedBody783_2744 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody783_2745 : StackLang.HolProg 64 :=
.seq NamedBody783_2743 NamedBody783_2744

def NamedBody783_2746 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_2747 : StackLang.HolProg 64 :=
.seq NamedBody783_2745 NamedBody783_2746

def NamedBody783_2748 : StackLang.HolProg 64 :=
.seq NamedBody783_2740 NamedBody783_2747

def NamedBody783_2749 : StackLang.HolProg 64 :=
.seq NamedBody783_2739 NamedBody783_2748

def NamedBody783_2750 : StackLang.HolProg 64 :=
.seq NamedBody783_2738 NamedBody783_2749

def NamedBody783_2751 : StackLang.HolProg 64 :=
.seq NamedBody783_2737 NamedBody783_2750

def NamedBody783_2752 : StackLang.HolProg 64 :=
.seq NamedBody783_2736 NamedBody783_2751

def NamedBody783_2753 : StackLang.HolProg 64 :=
.seq NamedBody783_2735 NamedBody783_2752

def NamedBody783_2754 : StackLang.HolProg 64 :=
.seq NamedBody783_2734 NamedBody783_2753

def NamedBody783_2755 : StackLang.HolProg 64 :=
.seq NamedBody783_2733 NamedBody783_2754

def NamedBody783_2756 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_2757 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_2758 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_2759 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody783_2760 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody783_2761 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody783_2762 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody783_2763 : StackLang.HolProg 64 :=
.seq NamedBody783_2761 NamedBody783_2762

def NamedBody783_2764 : StackLang.HolProg 64 :=
.seq NamedBody783_2760 NamedBody783_2763

def NamedBody783_2765 : StackLang.HolProg 64 :=
.seq NamedBody783_2759 NamedBody783_2764

def NamedBody783_2766 : StackLang.HolProg 64 :=
.seq NamedBody783_2758 NamedBody783_2765

def NamedBody783_2767 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody783_2768 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody783_2769 : StackLang.HolProg 64 :=
.seq NamedBody783_2767 NamedBody783_2768

def NamedBody783_2770 : StackLang.HolProg 64 :=
.call (some (NamedBody783_2766, 1, 783, 72)) (Sum.inl 70) (some (NamedBody783_2769, 783, 73))

def NamedBody783_2771 : StackLang.HolProg 64 :=
.seq NamedBody783_2757 NamedBody783_2770

def NamedBody783_2772 : StackLang.HolProg 64 :=
.seq NamedBody783_2756 NamedBody783_2771

def NamedBody783_2773 : StackLang.HolProg 64 :=
.seq NamedBody783_2755 NamedBody783_2772

def NamedBody783_2774 : StackLang.HolProg 64 :=
.seq NamedBody783_2726 NamedBody783_2773

def NamedBody783_2775 : StackLang.HolProg 64 :=
.seq NamedBody783_2723 NamedBody783_2774

def NamedBody783_2776 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody783_2777 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody783_2778 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody783_2779 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 144#64)))

def NamedBody783_2780 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody783_2781 : StackLang.HolProg 64 :=
.seq NamedBody783_2779 NamedBody783_2780

def NamedBody783_2782 : StackLang.HolProg 64 :=
.seq NamedBody783_2778 NamedBody783_2781

def NamedBody783_2783 : StackLang.HolProg 64 :=
.seq NamedBody783_2777 NamedBody783_2782

def NamedBody783_2784 : StackLang.HolProg 64 :=
.seq NamedBody783_2776 NamedBody783_2783

def NamedBody783_2785 : StackLang.HolProg 64 :=
.seq NamedBody783_2775 NamedBody783_2784

def NamedBody783_2786 : StackLang.HolProg 64 :=
.seq NamedBody783_2722 NamedBody783_2785

def NamedBody783_2787 : StackLang.HolProg 64 :=
.seq NamedBody783_2721 NamedBody783_2786

def NamedBody783_2788 : StackLang.HolProg 64 :=
.seq NamedBody783_2720 NamedBody783_2787

def NamedBody783_2789 : StackLang.HolProg 64 :=
.seq NamedBody783_2667 NamedBody783_2788

def NamedBody783_2790 : StackLang.HolProg 64 :=
.seq NamedBody783_2666 NamedBody783_2789

def NamedBody783_2791 : StackLang.HolProg 64 :=
.seq NamedBody783_2665 NamedBody783_2790

def NamedBody783_2792 : StackLang.HolProg 64 :=
.seq NamedBody783_2664 NamedBody783_2791

def NamedBody783_2793 : StackLang.HolProg 64 :=
.seq NamedBody783_2663 NamedBody783_2792

def NamedBody783_2794 : StackLang.HolProg 64 :=
.seq NamedBody783_2606 NamedBody783_2793

def NamedBody783_2795 : StackLang.HolProg 64 :=
.seq NamedBody783_2605 NamedBody783_2794

def NamedBody783_2796 : StackLang.HolProg 64 :=
.seq NamedBody783_2604 NamedBody783_2795

def NamedBody783_2797 : StackLang.HolProg 64 :=
.seq NamedBody783_2603 NamedBody783_2796

def NamedBody783_2798 : StackLang.HolProg 64 :=
.seq NamedBody783_2602 NamedBody783_2797

def NamedBody783_2799 : StackLang.HolProg 64 :=
.seq NamedBody783_2537 NamedBody783_2798

def NamedBody783_2800 : StackLang.HolProg 64 :=
.seq NamedBody783_2534 NamedBody783_2799

def NamedBody783_2801 : StackLang.HolProg 64 :=
.seq NamedBody783_2533 NamedBody783_2800

def NamedBody783_2802 : StackLang.HolProg 64 :=
.seq NamedBody783_2468 NamedBody783_2801

def NamedBody783_2803 : StackLang.HolProg 64 :=
.seq NamedBody783_2465 NamedBody783_2802

def NamedBody783_2804 : StackLang.HolProg 64 :=
.seq NamedBody783_2464 NamedBody783_2803

def NamedBody783_2805 : StackLang.HolProg 64 :=
.seq NamedBody783_2375 NamedBody783_2804

def NamedBody783_2806 : StackLang.HolProg 64 :=
.seq NamedBody783_2372 NamedBody783_2805

def NamedBody783_2807 : StackLang.HolProg 64 :=
.seq NamedBody783_2371 NamedBody783_2806

def NamedBody783_2808 : StackLang.HolProg 64 :=
.seq NamedBody783_2274 NamedBody783_2807

def NamedBody783_2809 : StackLang.HolProg 64 :=
.seq NamedBody783_2269 NamedBody783_2808

def NamedBody783_2810 : StackLang.HolProg 64 :=
.seq NamedBody783_2268 NamedBody783_2809

def NamedBody783_2811 : StackLang.HolProg 64 :=
.seq NamedBody783_2211 NamedBody783_2810

def NamedBody783_2812 : StackLang.HolProg 64 :=
.seq NamedBody783_2208 NamedBody783_2811

def NamedBody783_2813 : StackLang.HolProg 64 :=
.seq NamedBody783_2207 NamedBody783_2812

def NamedBody783_2814 : StackLang.HolProg 64 :=
.seq NamedBody783_2134 NamedBody783_2813

def NamedBody783_2815 : StackLang.HolProg 64 :=
.seq NamedBody783_2131 NamedBody783_2814

def NamedBody783_2816 : StackLang.HolProg 64 :=
.seq NamedBody783_2130 NamedBody783_2815

def NamedBody783_2817 : StackLang.HolProg 64 :=
.seq NamedBody783_2037 NamedBody783_2816

def NamedBody783_2818 : StackLang.HolProg 64 :=
.seq NamedBody783_2032 NamedBody783_2817

def NamedBody783_2819 : StackLang.HolProg 64 :=
.seq NamedBody783_2031 NamedBody783_2818

def NamedBody783_2820 : StackLang.HolProg 64 :=
.seq NamedBody783_1922 NamedBody783_2819

def NamedBody783_2821 : StackLang.HolProg 64 :=
.seq NamedBody783_1917 NamedBody783_2820

def NamedBody783_2822 : StackLang.HolProg 64 :=
.seq NamedBody783_1916 NamedBody783_2821

def NamedBody783_2823 : StackLang.HolProg 64 :=
.seq NamedBody783_1859 NamedBody783_2822

def NamedBody783_2824 : StackLang.HolProg 64 :=
.seq NamedBody783_1852 NamedBody783_2823

def NamedBody783_2825 : StackLang.HolProg 64 :=
.seq NamedBody783_1851 NamedBody783_2824

def NamedBody783_2826 : StackLang.HolProg 64 :=
.seq NamedBody783_1794 NamedBody783_2825

def NamedBody783_2827 : StackLang.HolProg 64 :=
.seq NamedBody783_1789 NamedBody783_2826

def NamedBody783_2828 : StackLang.HolProg 64 :=
.seq NamedBody783_1788 NamedBody783_2827

def NamedBody783_2829 : StackLang.HolProg 64 :=
.seq NamedBody783_1731 NamedBody783_2828

def NamedBody783_2830 : StackLang.HolProg 64 :=
.seq NamedBody783_1726 NamedBody783_2829

def NamedBody783_2831 : StackLang.HolProg 64 :=
.seq NamedBody783_1725 NamedBody783_2830

def NamedBody783_2832 : StackLang.HolProg 64 :=
.seq NamedBody783_1668 NamedBody783_2831

def NamedBody783_2833 : StackLang.HolProg 64 :=
.seq NamedBody783_1663 NamedBody783_2832

def NamedBody783_2834 : StackLang.HolProg 64 :=
.seq NamedBody783_1662 NamedBody783_2833

def NamedBody783_2835 : StackLang.HolProg 64 :=
.seq NamedBody783_1605 NamedBody783_2834

def NamedBody783_2836 : StackLang.HolProg 64 :=
.seq NamedBody783_1604 NamedBody783_2835

def NamedBody783_2837 : StackLang.HolProg 64 :=
.seq NamedBody783_1603 NamedBody783_2836

def NamedBody783_2838 : StackLang.HolProg 64 :=
.seq NamedBody783_1602 NamedBody783_2837

def NamedBody783_2839 : StackLang.HolProg 64 :=
.seq NamedBody783_1601 NamedBody783_2838

def NamedBody783_2840 : StackLang.HolProg 64 :=
.seq NamedBody783_1600 NamedBody783_2839

def NamedBody783_2841 : StackLang.HolProg 64 :=
.seq NamedBody783_1599 NamedBody783_2840

def NamedBody783_2842 : StackLang.HolProg 64 :=
.seq NamedBody783_1490 NamedBody783_2841

def NamedBody783_2843 : StackLang.HolProg 64 :=
.seq NamedBody783_1485 NamedBody783_2842

def NamedBody783_2844 : StackLang.HolProg 64 :=
.seq NamedBody783_1484 NamedBody783_2843

def NamedBody783_2845 : StackLang.HolProg 64 :=
.seq NamedBody783_1367 NamedBody783_2844

def NamedBody783_2846 : StackLang.HolProg 64 :=
.seq NamedBody783_1362 NamedBody783_2845

def NamedBody783_2847 : StackLang.HolProg 64 :=
.seq NamedBody783_1361 NamedBody783_2846

def NamedBody783_2848 : StackLang.HolProg 64 :=
.seq NamedBody783_1252 NamedBody783_2847

def NamedBody783_2849 : StackLang.HolProg 64 :=
.seq NamedBody783_1247 NamedBody783_2848

def NamedBody783_2850 : StackLang.HolProg 64 :=
.seq NamedBody783_1246 NamedBody783_2849

def NamedBody783_2851 : StackLang.HolProg 64 :=
.seq NamedBody783_1189 NamedBody783_2850

def NamedBody783_2852 : StackLang.HolProg 64 :=
.seq NamedBody783_1184 NamedBody783_2851

def NamedBody783_2853 : StackLang.HolProg 64 :=
.seq NamedBody783_1183 NamedBody783_2852

def NamedBody783_2854 : StackLang.HolProg 64 :=
.seq NamedBody783_1114 NamedBody783_2853

def NamedBody783_2855 : StackLang.HolProg 64 :=
.seq NamedBody783_1107 NamedBody783_2854

def NamedBody783_2856 : StackLang.HolProg 64 :=
.seq NamedBody783_1106 NamedBody783_2855

def NamedBody783_2857 : StackLang.HolProg 64 :=
.seq NamedBody783_1105 NamedBody783_2856

def NamedBody783_2858 : StackLang.HolProg 64 :=
.seq NamedBody783_792 NamedBody783_2857

def NamedBody783_2859 : StackLang.HolProg 64 :=
.seq NamedBody783_791 NamedBody783_2858

def NamedBody783_2860 : StackLang.HolProg 64 :=
.seq NamedBody783_790 NamedBody783_2859

def NamedBody783_2861 : StackLang.HolProg 64 :=
.seq NamedBody783_789 NamedBody783_2860

def NamedBody783_2862 : StackLang.HolProg 64 :=
.seq NamedBody783_726 NamedBody783_2861

def NamedBody783_2863 : StackLang.HolProg 64 :=
.seq NamedBody783_721 NamedBody783_2862

def NamedBody783_2864 : StackLang.HolProg 64 :=
.seq NamedBody783_720 NamedBody783_2863

def NamedBody783_2865 : StackLang.HolProg 64 :=
.seq NamedBody783_663 NamedBody783_2864

def NamedBody783_2866 : StackLang.HolProg 64 :=
.seq NamedBody783_658 NamedBody783_2865

def NamedBody783_2867 : StackLang.HolProg 64 :=
.seq NamedBody783_657 NamedBody783_2866

def NamedBody783_2868 : StackLang.HolProg 64 :=
.seq NamedBody783_656 NamedBody783_2867

def NamedBody783_2869 : StackLang.HolProg 64 :=
.seq NamedBody783_655 NamedBody783_2868

def NamedBody783_2870 : StackLang.HolProg 64 :=
.seq NamedBody783_594 NamedBody783_2869

def NamedBody783_2871 : StackLang.HolProg 64 :=
.seq NamedBody783_589 NamedBody783_2870

def NamedBody783_2872 : StackLang.HolProg 64 :=
.seq NamedBody783_588 NamedBody783_2871

def NamedBody783_2873 : StackLang.HolProg 64 :=
.seq NamedBody783_587 NamedBody783_2872

def NamedBody783_2874 : StackLang.HolProg 64 :=
.seq NamedBody783_586 NamedBody783_2873

def NamedBody783_2875 : StackLang.HolProg 64 :=
.seq NamedBody783_525 NamedBody783_2874

def NamedBody783_2876 : StackLang.HolProg 64 :=
.seq NamedBody783_520 NamedBody783_2875

def NamedBody783_2877 : StackLang.HolProg 64 :=
.seq NamedBody783_519 NamedBody783_2876

def NamedBody783_2878 : StackLang.HolProg 64 :=
.seq NamedBody783_518 NamedBody783_2877

def NamedBody783_2879 : StackLang.HolProg 64 :=
.seq NamedBody783_517 NamedBody783_2878

def NamedBody783_2880 : StackLang.HolProg 64 :=
.seq NamedBody783_516 NamedBody783_2879

def NamedBody783_2881 : StackLang.HolProg 64 :=
.seq NamedBody783_515 NamedBody783_2880

def NamedBody783_2882 : StackLang.HolProg 64 :=
.seq NamedBody783_454 NamedBody783_2881

def NamedBody783_2883 : StackLang.HolProg 64 :=
.seq NamedBody783_427 NamedBody783_2882

def NamedBody783_2884 : StackLang.HolProg 64 :=
.seq NamedBody783_426 NamedBody783_2883

def NamedBody783_2885 : StackLang.HolProg 64 :=
.seq NamedBody783_425 NamedBody783_2884

def NamedBody783_2886 : StackLang.HolProg 64 :=
.seq NamedBody783_424 NamedBody783_2885

def NamedBody783_2887 : StackLang.HolProg 64 :=
.seq NamedBody783_423 NamedBody783_2886

def NamedBody783_2888 : StackLang.HolProg 64 :=
.seq NamedBody783_422 NamedBody783_2887

def NamedBody783_2889 : StackLang.HolProg 64 :=
.seq NamedBody783_421 NamedBody783_2888

def NamedBody783_2890 : StackLang.HolProg 64 :=
.seq NamedBody783_420 NamedBody783_2889

def NamedBody783_2891 : StackLang.HolProg 64 :=
.seq NamedBody783_419 NamedBody783_2890

def NamedBody783_2892 : StackLang.HolProg 64 :=
.seq NamedBody783_418 NamedBody783_2891

def NamedBody783_2893 : StackLang.HolProg 64 :=
.seq NamedBody783_417 NamedBody783_2892

def NamedBody783_2894 : StackLang.HolProg 64 :=
.seq NamedBody783_416 NamedBody783_2893

def NamedBody783_2895 : StackLang.HolProg 64 :=
.seq NamedBody783_415 NamedBody783_2894

def NamedBody783_2896 : StackLang.HolProg 64 :=
.seq NamedBody783_414 NamedBody783_2895

def NamedBody783_2897 : StackLang.HolProg 64 :=
.seq NamedBody783_413 NamedBody783_2896

def NamedBody783_2898 : StackLang.HolProg 64 :=
.seq NamedBody783_412 NamedBody783_2897

def NamedBody783_2899 : StackLang.HolProg 64 :=
.seq NamedBody783_411 NamedBody783_2898

def NamedBody783_2900 : StackLang.HolProg 64 :=
.seq NamedBody783_410 NamedBody783_2899

def NamedBody783_2901 : StackLang.HolProg 64 :=
.seq NamedBody783_409 NamedBody783_2900

def NamedBody783_2902 : StackLang.HolProg 64 :=
.seq NamedBody783_408 NamedBody783_2901

def NamedBody783_2903 : StackLang.HolProg 64 :=
.seq NamedBody783_407 NamedBody783_2902

def NamedBody783_2904 : StackLang.HolProg 64 :=
.seq NamedBody783_406 NamedBody783_2903

def NamedBody783_2905 : StackLang.HolProg 64 :=
.seq NamedBody783_405 NamedBody783_2904

def NamedBody783_2906 : StackLang.HolProg 64 :=
.seq NamedBody783_404 NamedBody783_2905

def NamedBody783_2907 : StackLang.HolProg 64 :=
.seq NamedBody783_403 NamedBody783_2906

def NamedBody783_2908 : StackLang.HolProg 64 :=
.seq NamedBody783_402 NamedBody783_2907

def NamedBody783_2909 : StackLang.HolProg 64 :=
.seq NamedBody783_401 NamedBody783_2908

def NamedBody783_2910 : StackLang.HolProg 64 :=
.seq NamedBody783_400 NamedBody783_2909

def NamedBody783_2911 : StackLang.HolProg 64 :=
.seq NamedBody783_341 NamedBody783_2910

def NamedBody783_2912 : StackLang.HolProg 64 :=
.seq NamedBody783_340 NamedBody783_2911

def NamedBody783_2913 : StackLang.HolProg 64 :=
.seq NamedBody783_339 NamedBody783_2912

def NamedBody783_2914 : StackLang.HolProg 64 :=
.seq NamedBody783_338 NamedBody783_2913

def NamedBody783_2915 : StackLang.HolProg 64 :=
.seq NamedBody783_285 NamedBody783_2914

def NamedBody783_2916 : StackLang.HolProg 64 :=
.seq NamedBody783_284 NamedBody783_2915

def NamedBody783_2917 : StackLang.HolProg 64 :=
.seq NamedBody783_283 NamedBody783_2916

def NamedBody783_2918 : StackLang.HolProg 64 :=
.seq NamedBody783_282 NamedBody783_2917

def NamedBody783_2919 : StackLang.HolProg 64 :=
.seq NamedBody783_207 NamedBody783_2918

def NamedBody783_2920 : StackLang.HolProg 64 :=
.seq NamedBody783_206 NamedBody783_2919

def NamedBody783_2921 : StackLang.HolProg 64 :=
.seq NamedBody783_205 NamedBody783_2920

def NamedBody783_2922 : StackLang.HolProg 64 :=
.seq NamedBody783_204 NamedBody783_2921

def NamedBody783_2923 : StackLang.HolProg 64 :=
.seq NamedBody783_151 NamedBody783_2922

def NamedBody783_2924 : StackLang.HolProg 64 :=
.seq NamedBody783_148 NamedBody783_2923

def NamedBody783_2925 : StackLang.HolProg 64 :=
.seq NamedBody783_147 NamedBody783_2924

def NamedBody783_2926 : StackLang.HolProg 64 :=
.seq NamedBody783_146 NamedBody783_2925

def NamedBody783_2927 : StackLang.HolProg 64 :=
.seq NamedBody783_73 NamedBody783_2926

def NamedBody783_2928 : StackLang.HolProg 64 :=
.seq NamedBody783_72 NamedBody783_2927

def NamedBody783_2929 : StackLang.HolProg 64 :=
.seq NamedBody783_71 NamedBody783_2928

def NamedBody783_2930 : StackLang.HolProg 64 :=
.seq NamedBody783_70 NamedBody783_2929

def NamedBody783_2931 : StackLang.HolProg 64 :=
.seq NamedBody783_15 NamedBody783_2930

def NamedBody783_2932 : StackLang.HolProg 64 :=
.seq NamedBody783_6 NamedBody783_2931

def Named783 : Nat × StackLang.HolProg 64 := (783, NamedBody783_2932)
theorem Named783_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed783 = Named783 := by
  kernel_rfl
#print axioms Named783_eq
end InitECandidate.Proofs.BackendStages
