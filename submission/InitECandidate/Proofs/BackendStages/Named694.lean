import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed694
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody694_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 72#64)))

def NamedBody694_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody694_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody694_3 : StackLang.HolProg 64 :=
.seq NamedBody694_1 NamedBody694_2

def NamedBody694_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody694_3 NamedBody694_4

def NamedBody694_6 : StackLang.HolProg 64 :=
.seq NamedBody694_0 NamedBody694_5

def NamedBody694_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody694_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody694_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody694_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody694_11 : StackLang.HolProg 64 :=
.seq NamedBody694_9 NamedBody694_10

def NamedBody694_12 : StackLang.HolProg 64 :=
.seq NamedBody694_8 NamedBody694_11

def NamedBody694_13 : StackLang.HolProg 64 :=
.seq NamedBody694_7 NamedBody694_12

def NamedBody694_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3013#64)

def NamedBody694_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody694_17 : StackLang.HolProg 64 :=
.seq NamedBody694_15 NamedBody694_16

def NamedBody694_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody694_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody694_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody694_21 : StackLang.HolProg 64 :=
.seq NamedBody694_19 NamedBody694_20

def NamedBody694_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody694_21 NamedBody694_22

def NamedBody694_24 : StackLang.HolProg 64 :=
.seq NamedBody694_18 NamedBody694_23

def NamedBody694_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody694_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody694_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 694 3

def NamedBody694_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody694_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody694_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody694_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody694_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody694_34 : StackLang.HolProg 64 :=
.seq NamedBody694_32 NamedBody694_33

def NamedBody694_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody694_36 : StackLang.HolProg 64 :=
.seq NamedBody694_34 NamedBody694_35

def NamedBody694_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody694_38 : StackLang.HolProg 64 :=
.seq NamedBody694_36 NamedBody694_37

def NamedBody694_39 : StackLang.HolProg 64 :=
.seq NamedBody694_31 NamedBody694_38

def NamedBody694_40 : StackLang.HolProg 64 :=
.seq NamedBody694_30 NamedBody694_39

def NamedBody694_41 : StackLang.HolProg 64 :=
.seq NamedBody694_29 NamedBody694_40

def NamedBody694_42 : StackLang.HolProg 64 :=
.seq NamedBody694_28 NamedBody694_41

def NamedBody694_43 : StackLang.HolProg 64 :=
.seq NamedBody694_27 NamedBody694_42

def NamedBody694_44 : StackLang.HolProg 64 :=
.seq NamedBody694_26 NamedBody694_43

def NamedBody694_45 : StackLang.HolProg 64 :=
.seq NamedBody694_25 NamedBody694_44

def NamedBody694_46 : StackLang.HolProg 64 :=
.seq NamedBody694_24 NamedBody694_45

def NamedBody694_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody694_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody694_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody694_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody694_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody694_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody694_56 : StackLang.HolProg 64 :=
.seq NamedBody694_54 NamedBody694_55

def NamedBody694_57 : StackLang.HolProg 64 :=
.seq NamedBody694_53 NamedBody694_56

def NamedBody694_58 : StackLang.HolProg 64 :=
.seq NamedBody694_52 NamedBody694_57

def NamedBody694_59 : StackLang.HolProg 64 :=
.seq NamedBody694_51 NamedBody694_58

def NamedBody694_60 : StackLang.HolProg 64 :=
.seq NamedBody694_50 NamedBody694_59

def NamedBody694_61 : StackLang.HolProg 64 :=
.seq NamedBody694_49 NamedBody694_60

def NamedBody694_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody694_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody694_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody694_65 : StackLang.HolProg 64 :=
.seq NamedBody694_63 NamedBody694_64

def NamedBody694_66 : StackLang.HolProg 64 :=
.seq NamedBody694_62 NamedBody694_65

def NamedBody694_67 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody694_68 : StackLang.HolProg 64 :=
.seq NamedBody694_66 NamedBody694_67

def NamedBody694_69 : StackLang.HolProg 64 :=
.call (some (NamedBody694_61, 1, 694, 2)) (Sum.inl 657) (some (NamedBody694_68, 694, 3))

def NamedBody694_70 : StackLang.HolProg 64 :=
.seq NamedBody694_48 NamedBody694_69

def NamedBody694_71 : StackLang.HolProg 64 :=
.seq NamedBody694_47 NamedBody694_70

def NamedBody694_72 : StackLang.HolProg 64 :=
.seq NamedBody694_46 NamedBody694_71

def NamedBody694_73 : StackLang.HolProg 64 :=
.seq NamedBody694_17 NamedBody694_72

def NamedBody694_74 : StackLang.HolProg 64 :=
.seq NamedBody694_14 NamedBody694_73

def NamedBody694_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody694_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody694_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody694_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3014#64)

def NamedBody694_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody694_82 : StackLang.HolProg 64 :=
.seq NamedBody694_80 NamedBody694_81

def NamedBody694_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody694_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody694_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody694_86 : StackLang.HolProg 64 :=
.seq NamedBody694_84 NamedBody694_85

def NamedBody694_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_88 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody694_86 NamedBody694_87

def NamedBody694_89 : StackLang.HolProg 64 :=
.seq NamedBody694_83 NamedBody694_88

def NamedBody694_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody694_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody694_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 694 5

def NamedBody694_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody694_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody694_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody694_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody694_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody694_99 : StackLang.HolProg 64 :=
.seq NamedBody694_97 NamedBody694_98

def NamedBody694_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody694_101 : StackLang.HolProg 64 :=
.seq NamedBody694_99 NamedBody694_100

def NamedBody694_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody694_103 : StackLang.HolProg 64 :=
.seq NamedBody694_101 NamedBody694_102

def NamedBody694_104 : StackLang.HolProg 64 :=
.seq NamedBody694_96 NamedBody694_103

def NamedBody694_105 : StackLang.HolProg 64 :=
.seq NamedBody694_95 NamedBody694_104

def NamedBody694_106 : StackLang.HolProg 64 :=
.seq NamedBody694_94 NamedBody694_105

def NamedBody694_107 : StackLang.HolProg 64 :=
.seq NamedBody694_93 NamedBody694_106

def NamedBody694_108 : StackLang.HolProg 64 :=
.seq NamedBody694_92 NamedBody694_107

def NamedBody694_109 : StackLang.HolProg 64 :=
.seq NamedBody694_91 NamedBody694_108

def NamedBody694_110 : StackLang.HolProg 64 :=
.seq NamedBody694_90 NamedBody694_109

def NamedBody694_111 : StackLang.HolProg 64 :=
.seq NamedBody694_89 NamedBody694_110

def NamedBody694_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody694_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody694_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody694_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody694_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody694_120 : StackLang.HolProg 64 :=
.seq NamedBody694_118 NamedBody694_119

def NamedBody694_121 : StackLang.HolProg 64 :=
.seq NamedBody694_117 NamedBody694_120

def NamedBody694_122 : StackLang.HolProg 64 :=
.seq NamedBody694_116 NamedBody694_121

def NamedBody694_123 : StackLang.HolProg 64 :=
.seq NamedBody694_115 NamedBody694_122

def NamedBody694_124 : StackLang.HolProg 64 :=
.seq NamedBody694_114 NamedBody694_123

def NamedBody694_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody694_126 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody694_127 : StackLang.HolProg 64 :=
.seq NamedBody694_125 NamedBody694_126

def NamedBody694_128 : StackLang.HolProg 64 :=
.call (some (NamedBody694_124, 1, 694, 4)) (Sum.inl 681) (some (NamedBody694_127, 694, 5))

def NamedBody694_129 : StackLang.HolProg 64 :=
.seq NamedBody694_113 NamedBody694_128

def NamedBody694_130 : StackLang.HolProg 64 :=
.seq NamedBody694_112 NamedBody694_129

def NamedBody694_131 : StackLang.HolProg 64 :=
.seq NamedBody694_111 NamedBody694_130

def NamedBody694_132 : StackLang.HolProg 64 :=
.seq NamedBody694_82 NamedBody694_131

def NamedBody694_133 : StackLang.HolProg 64 :=
.seq NamedBody694_79 NamedBody694_132

def NamedBody694_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody694_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody694_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody694_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody694_139 : StackLang.HolProg 64 :=
.seq NamedBody694_137 NamedBody694_138

def NamedBody694_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3015#64)

def NamedBody694_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody694_143 : StackLang.HolProg 64 :=
.seq NamedBody694_141 NamedBody694_142

def NamedBody694_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody694_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody694_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody694_147 : StackLang.HolProg 64 :=
.seq NamedBody694_145 NamedBody694_146

def NamedBody694_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_149 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody694_147 NamedBody694_148

def NamedBody694_150 : StackLang.HolProg 64 :=
.seq NamedBody694_144 NamedBody694_149

def NamedBody694_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody694_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody694_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 694 7

def NamedBody694_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody694_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody694_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody694_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody694_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody694_160 : StackLang.HolProg 64 :=
.seq NamedBody694_158 NamedBody694_159

def NamedBody694_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody694_162 : StackLang.HolProg 64 :=
.seq NamedBody694_160 NamedBody694_161

def NamedBody694_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody694_164 : StackLang.HolProg 64 :=
.seq NamedBody694_162 NamedBody694_163

def NamedBody694_165 : StackLang.HolProg 64 :=
.seq NamedBody694_157 NamedBody694_164

def NamedBody694_166 : StackLang.HolProg 64 :=
.seq NamedBody694_156 NamedBody694_165

def NamedBody694_167 : StackLang.HolProg 64 :=
.seq NamedBody694_155 NamedBody694_166

def NamedBody694_168 : StackLang.HolProg 64 :=
.seq NamedBody694_154 NamedBody694_167

def NamedBody694_169 : StackLang.HolProg 64 :=
.seq NamedBody694_153 NamedBody694_168

def NamedBody694_170 : StackLang.HolProg 64 :=
.seq NamedBody694_152 NamedBody694_169

def NamedBody694_171 : StackLang.HolProg 64 :=
.seq NamedBody694_151 NamedBody694_170

def NamedBody694_172 : StackLang.HolProg 64 :=
.seq NamedBody694_150 NamedBody694_171

def NamedBody694_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody694_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody694_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody694_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody694_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody694_181 : StackLang.HolProg 64 :=
.seq NamedBody694_179 NamedBody694_180

def NamedBody694_182 : StackLang.HolProg 64 :=
.seq NamedBody694_178 NamedBody694_181

def NamedBody694_183 : StackLang.HolProg 64 :=
.seq NamedBody694_177 NamedBody694_182

def NamedBody694_184 : StackLang.HolProg 64 :=
.seq NamedBody694_176 NamedBody694_183

def NamedBody694_185 : StackLang.HolProg 64 :=
.seq NamedBody694_175 NamedBody694_184

def NamedBody694_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody694_187 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody694_188 : StackLang.HolProg 64 :=
.seq NamedBody694_186 NamedBody694_187

def NamedBody694_189 : StackLang.HolProg 64 :=
.call (some (NamedBody694_185, 1, 694, 6)) (Sum.inl 681) (some (NamedBody694_188, 694, 7))

def NamedBody694_190 : StackLang.HolProg 64 :=
.seq NamedBody694_174 NamedBody694_189

def NamedBody694_191 : StackLang.HolProg 64 :=
.seq NamedBody694_173 NamedBody694_190

def NamedBody694_192 : StackLang.HolProg 64 :=
.seq NamedBody694_172 NamedBody694_191

def NamedBody694_193 : StackLang.HolProg 64 :=
.seq NamedBody694_143 NamedBody694_192

def NamedBody694_194 : StackLang.HolProg 64 :=
.seq NamedBody694_140 NamedBody694_193

def NamedBody694_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody694_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody694_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody694_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody694_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody694_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 12#64)

def NamedBody694_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody694_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody694_204 : StackLang.HolProg 64 :=
.seq NamedBody694_202 NamedBody694_203

def NamedBody694_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3016#64)

def NamedBody694_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody694_208 : StackLang.HolProg 64 :=
.seq NamedBody694_206 NamedBody694_207

def NamedBody694_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody694_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody694_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody694_212 : StackLang.HolProg 64 :=
.seq NamedBody694_210 NamedBody694_211

def NamedBody694_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_214 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody694_212 NamedBody694_213

def NamedBody694_215 : StackLang.HolProg 64 :=
.seq NamedBody694_209 NamedBody694_214

def NamedBody694_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody694_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody694_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 694 9

def NamedBody694_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody694_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody694_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody694_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody694_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody694_225 : StackLang.HolProg 64 :=
.seq NamedBody694_223 NamedBody694_224

def NamedBody694_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody694_227 : StackLang.HolProg 64 :=
.seq NamedBody694_225 NamedBody694_226

def NamedBody694_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody694_229 : StackLang.HolProg 64 :=
.seq NamedBody694_227 NamedBody694_228

def NamedBody694_230 : StackLang.HolProg 64 :=
.seq NamedBody694_222 NamedBody694_229

def NamedBody694_231 : StackLang.HolProg 64 :=
.seq NamedBody694_221 NamedBody694_230

def NamedBody694_232 : StackLang.HolProg 64 :=
.seq NamedBody694_220 NamedBody694_231

def NamedBody694_233 : StackLang.HolProg 64 :=
.seq NamedBody694_219 NamedBody694_232

def NamedBody694_234 : StackLang.HolProg 64 :=
.seq NamedBody694_218 NamedBody694_233

def NamedBody694_235 : StackLang.HolProg 64 :=
.seq NamedBody694_217 NamedBody694_234

def NamedBody694_236 : StackLang.HolProg 64 :=
.seq NamedBody694_216 NamedBody694_235

def NamedBody694_237 : StackLang.HolProg 64 :=
.seq NamedBody694_215 NamedBody694_236

def NamedBody694_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody694_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody694_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody694_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody694_245 : StackLang.HolProg 64 :=
.seq NamedBody694_243 NamedBody694_244

def NamedBody694_246 : StackLang.HolProg 64 :=
.seq NamedBody694_242 NamedBody694_245

def NamedBody694_247 : StackLang.HolProg 64 :=
.seq NamedBody694_241 NamedBody694_246

def NamedBody694_248 : StackLang.HolProg 64 :=
.seq NamedBody694_240 NamedBody694_247

def NamedBody694_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody694_250 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody694_251 : StackLang.HolProg 64 :=
.seq NamedBody694_249 NamedBody694_250

def NamedBody694_252 : StackLang.HolProg 64 :=
.call (some (NamedBody694_248, 1, 694, 8)) (Sum.inl 679) (some (NamedBody694_251, 694, 9))

def NamedBody694_253 : StackLang.HolProg 64 :=
.seq NamedBody694_239 NamedBody694_252

def NamedBody694_254 : StackLang.HolProg 64 :=
.seq NamedBody694_238 NamedBody694_253

def NamedBody694_255 : StackLang.HolProg 64 :=
.seq NamedBody694_237 NamedBody694_254

def NamedBody694_256 : StackLang.HolProg 64 :=
.seq NamedBody694_208 NamedBody694_255

def NamedBody694_257 : StackLang.HolProg 64 :=
.seq NamedBody694_205 NamedBody694_256

def NamedBody694_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody694_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody694_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 72#64)))

def NamedBody694_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody694_263 : StackLang.HolProg 64 :=
.seq NamedBody694_261 NamedBody694_262

def NamedBody694_264 : StackLang.HolProg 64 :=
.seq NamedBody694_260 NamedBody694_263

def NamedBody694_265 : StackLang.HolProg 64 :=
.seq NamedBody694_259 NamedBody694_264

def NamedBody694_266 : StackLang.HolProg 64 :=
.seq NamedBody694_258 NamedBody694_265

def NamedBody694_267 : StackLang.HolProg 64 :=
.seq NamedBody694_257 NamedBody694_266

def NamedBody694_268 : StackLang.HolProg 64 :=
.seq NamedBody694_204 NamedBody694_267

def NamedBody694_269 : StackLang.HolProg 64 :=
.seq NamedBody694_201 NamedBody694_268

def NamedBody694_270 : StackLang.HolProg 64 :=
.seq NamedBody694_200 NamedBody694_269

def NamedBody694_271 : StackLang.HolProg 64 :=
.seq NamedBody694_199 NamedBody694_270

def NamedBody694_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_273 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody694_271 NamedBody694_272

def NamedBody694_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody694_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody694_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3017#64)

def NamedBody694_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody694_280 : StackLang.HolProg 64 :=
.seq NamedBody694_278 NamedBody694_279

def NamedBody694_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody694_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody694_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody694_284 : StackLang.HolProg 64 :=
.seq NamedBody694_282 NamedBody694_283

def NamedBody694_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_286 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody694_284 NamedBody694_285

def NamedBody694_287 : StackLang.HolProg 64 :=
.seq NamedBody694_281 NamedBody694_286

def NamedBody694_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody694_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody694_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 694 11

def NamedBody694_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody694_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody694_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody694_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody694_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody694_297 : StackLang.HolProg 64 :=
.seq NamedBody694_295 NamedBody694_296

def NamedBody694_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody694_299 : StackLang.HolProg 64 :=
.seq NamedBody694_297 NamedBody694_298

def NamedBody694_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody694_301 : StackLang.HolProg 64 :=
.seq NamedBody694_299 NamedBody694_300

def NamedBody694_302 : StackLang.HolProg 64 :=
.seq NamedBody694_294 NamedBody694_301

def NamedBody694_303 : StackLang.HolProg 64 :=
.seq NamedBody694_293 NamedBody694_302

def NamedBody694_304 : StackLang.HolProg 64 :=
.seq NamedBody694_292 NamedBody694_303

def NamedBody694_305 : StackLang.HolProg 64 :=
.seq NamedBody694_291 NamedBody694_304

def NamedBody694_306 : StackLang.HolProg 64 :=
.seq NamedBody694_290 NamedBody694_305

def NamedBody694_307 : StackLang.HolProg 64 :=
.seq NamedBody694_289 NamedBody694_306

def NamedBody694_308 : StackLang.HolProg 64 :=
.seq NamedBody694_288 NamedBody694_307

def NamedBody694_309 : StackLang.HolProg 64 :=
.seq NamedBody694_287 NamedBody694_308

def NamedBody694_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody694_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody694_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody694_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody694_317 : StackLang.HolProg 64 :=
.seq NamedBody694_315 NamedBody694_316

def NamedBody694_318 : StackLang.HolProg 64 :=
.seq NamedBody694_314 NamedBody694_317

def NamedBody694_319 : StackLang.HolProg 64 :=
.seq NamedBody694_313 NamedBody694_318

def NamedBody694_320 : StackLang.HolProg 64 :=
.seq NamedBody694_312 NamedBody694_319

def NamedBody694_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_322 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody694_323 : StackLang.HolProg 64 :=
.seq NamedBody694_321 NamedBody694_322

def NamedBody694_324 : StackLang.HolProg 64 :=
.call (some (NamedBody694_320, 1, 694, 10)) (Sum.inl 69) (some (NamedBody694_323, 694, 11))

def NamedBody694_325 : StackLang.HolProg 64 :=
.seq NamedBody694_311 NamedBody694_324

def NamedBody694_326 : StackLang.HolProg 64 :=
.seq NamedBody694_310 NamedBody694_325

def NamedBody694_327 : StackLang.HolProg 64 :=
.seq NamedBody694_309 NamedBody694_326

def NamedBody694_328 : StackLang.HolProg 64 :=
.seq NamedBody694_280 NamedBody694_327

def NamedBody694_329 : StackLang.HolProg 64 :=
.seq NamedBody694_277 NamedBody694_328

def NamedBody694_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody694_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1152#64)

def NamedBody694_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody694_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3018#64)

def NamedBody694_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody694_336 : StackLang.HolProg 64 :=
.seq NamedBody694_334 NamedBody694_335

def NamedBody694_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody694_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody694_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody694_340 : StackLang.HolProg 64 :=
.seq NamedBody694_338 NamedBody694_339

def NamedBody694_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_342 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody694_340 NamedBody694_341

def NamedBody694_343 : StackLang.HolProg 64 :=
.seq NamedBody694_337 NamedBody694_342

def NamedBody694_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody694_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody694_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 694 13

def NamedBody694_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody694_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody694_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody694_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody694_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody694_353 : StackLang.HolProg 64 :=
.seq NamedBody694_351 NamedBody694_352

def NamedBody694_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody694_355 : StackLang.HolProg 64 :=
.seq NamedBody694_353 NamedBody694_354

def NamedBody694_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody694_357 : StackLang.HolProg 64 :=
.seq NamedBody694_355 NamedBody694_356

def NamedBody694_358 : StackLang.HolProg 64 :=
.seq NamedBody694_350 NamedBody694_357

def NamedBody694_359 : StackLang.HolProg 64 :=
.seq NamedBody694_349 NamedBody694_358

def NamedBody694_360 : StackLang.HolProg 64 :=
.seq NamedBody694_348 NamedBody694_359

def NamedBody694_361 : StackLang.HolProg 64 :=
.seq NamedBody694_347 NamedBody694_360

def NamedBody694_362 : StackLang.HolProg 64 :=
.seq NamedBody694_346 NamedBody694_361

def NamedBody694_363 : StackLang.HolProg 64 :=
.seq NamedBody694_345 NamedBody694_362

def NamedBody694_364 : StackLang.HolProg 64 :=
.seq NamedBody694_344 NamedBody694_363

def NamedBody694_365 : StackLang.HolProg 64 :=
.seq NamedBody694_343 NamedBody694_364

def NamedBody694_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody694_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody694_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody694_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody694_373 : StackLang.HolProg 64 :=
.seq NamedBody694_371 NamedBody694_372

def NamedBody694_374 : StackLang.HolProg 64 :=
.seq NamedBody694_370 NamedBody694_373

def NamedBody694_375 : StackLang.HolProg 64 :=
.seq NamedBody694_369 NamedBody694_374

def NamedBody694_376 : StackLang.HolProg 64 :=
.seq NamedBody694_368 NamedBody694_375

def NamedBody694_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_378 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody694_379 : StackLang.HolProg 64 :=
.seq NamedBody694_377 NamedBody694_378

def NamedBody694_380 : StackLang.HolProg 64 :=
.call (some (NamedBody694_376, 1, 694, 12)) (Sum.inl 68) (some (NamedBody694_379, 694, 13))

def NamedBody694_381 : StackLang.HolProg 64 :=
.seq NamedBody694_367 NamedBody694_380

def NamedBody694_382 : StackLang.HolProg 64 :=
.seq NamedBody694_366 NamedBody694_381

def NamedBody694_383 : StackLang.HolProg 64 :=
.seq NamedBody694_365 NamedBody694_382

def NamedBody694_384 : StackLang.HolProg 64 :=
.seq NamedBody694_336 NamedBody694_383

def NamedBody694_385 : StackLang.HolProg 64 :=
.seq NamedBody694_333 NamedBody694_384

def NamedBody694_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody694_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1152#64)

def NamedBody694_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody694_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3019#64)

def NamedBody694_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody694_392 : StackLang.HolProg 64 :=
.seq NamedBody694_390 NamedBody694_391

def NamedBody694_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody694_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody694_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody694_396 : StackLang.HolProg 64 :=
.seq NamedBody694_394 NamedBody694_395

def NamedBody694_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_398 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody694_396 NamedBody694_397

def NamedBody694_399 : StackLang.HolProg 64 :=
.seq NamedBody694_393 NamedBody694_398

def NamedBody694_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody694_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody694_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 694 15

def NamedBody694_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody694_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody694_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody694_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody694_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody694_409 : StackLang.HolProg 64 :=
.seq NamedBody694_407 NamedBody694_408

def NamedBody694_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody694_411 : StackLang.HolProg 64 :=
.seq NamedBody694_409 NamedBody694_410

def NamedBody694_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody694_413 : StackLang.HolProg 64 :=
.seq NamedBody694_411 NamedBody694_412

def NamedBody694_414 : StackLang.HolProg 64 :=
.seq NamedBody694_406 NamedBody694_413

def NamedBody694_415 : StackLang.HolProg 64 :=
.seq NamedBody694_405 NamedBody694_414

def NamedBody694_416 : StackLang.HolProg 64 :=
.seq NamedBody694_404 NamedBody694_415

def NamedBody694_417 : StackLang.HolProg 64 :=
.seq NamedBody694_403 NamedBody694_416

def NamedBody694_418 : StackLang.HolProg 64 :=
.seq NamedBody694_402 NamedBody694_417

def NamedBody694_419 : StackLang.HolProg 64 :=
.seq NamedBody694_401 NamedBody694_418

def NamedBody694_420 : StackLang.HolProg 64 :=
.seq NamedBody694_400 NamedBody694_419

def NamedBody694_421 : StackLang.HolProg 64 :=
.seq NamedBody694_399 NamedBody694_420

def NamedBody694_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody694_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody694_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody694_428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody694_429 : StackLang.HolProg 64 :=
.seq NamedBody694_427 NamedBody694_428

def NamedBody694_430 : StackLang.HolProg 64 :=
.seq NamedBody694_426 NamedBody694_429

def NamedBody694_431 : StackLang.HolProg 64 :=
.seq NamedBody694_425 NamedBody694_430

def NamedBody694_432 : StackLang.HolProg 64 :=
.seq NamedBody694_424 NamedBody694_431

def NamedBody694_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_434 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody694_435 : StackLang.HolProg 64 :=
.seq NamedBody694_433 NamedBody694_434

def NamedBody694_436 : StackLang.HolProg 64 :=
.call (some (NamedBody694_432, 1, 694, 14)) (Sum.inl 68) (some (NamedBody694_435, 694, 15))

def NamedBody694_437 : StackLang.HolProg 64 :=
.seq NamedBody694_423 NamedBody694_436

def NamedBody694_438 : StackLang.HolProg 64 :=
.seq NamedBody694_422 NamedBody694_437

def NamedBody694_439 : StackLang.HolProg 64 :=
.seq NamedBody694_421 NamedBody694_438

def NamedBody694_440 : StackLang.HolProg 64 :=
.seq NamedBody694_392 NamedBody694_439

def NamedBody694_441 : StackLang.HolProg 64 :=
.seq NamedBody694_389 NamedBody694_440

def NamedBody694_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody694_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 384#64)

def NamedBody694_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody694_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3020#64)

def NamedBody694_447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody694_448 : StackLang.HolProg 64 :=
.seq NamedBody694_446 NamedBody694_447

def NamedBody694_449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody694_450 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody694_451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody694_452 : StackLang.HolProg 64 :=
.seq NamedBody694_450 NamedBody694_451

def NamedBody694_453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_454 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody694_452 NamedBody694_453

def NamedBody694_455 : StackLang.HolProg 64 :=
.seq NamedBody694_449 NamedBody694_454

def NamedBody694_456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody694_457 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody694_458 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 694 17

def NamedBody694_459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody694_460 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody694_461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody694_462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody694_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody694_465 : StackLang.HolProg 64 :=
.seq NamedBody694_463 NamedBody694_464

def NamedBody694_466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody694_467 : StackLang.HolProg 64 :=
.seq NamedBody694_465 NamedBody694_466

def NamedBody694_468 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody694_469 : StackLang.HolProg 64 :=
.seq NamedBody694_467 NamedBody694_468

def NamedBody694_470 : StackLang.HolProg 64 :=
.seq NamedBody694_462 NamedBody694_469

def NamedBody694_471 : StackLang.HolProg 64 :=
.seq NamedBody694_461 NamedBody694_470

def NamedBody694_472 : StackLang.HolProg 64 :=
.seq NamedBody694_460 NamedBody694_471

def NamedBody694_473 : StackLang.HolProg 64 :=
.seq NamedBody694_459 NamedBody694_472

def NamedBody694_474 : StackLang.HolProg 64 :=
.seq NamedBody694_458 NamedBody694_473

def NamedBody694_475 : StackLang.HolProg 64 :=
.seq NamedBody694_457 NamedBody694_474

def NamedBody694_476 : StackLang.HolProg 64 :=
.seq NamedBody694_456 NamedBody694_475

def NamedBody694_477 : StackLang.HolProg 64 :=
.seq NamedBody694_455 NamedBody694_476

def NamedBody694_478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_479 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_480 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_481 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody694_482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody694_483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody694_484 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody694_485 : StackLang.HolProg 64 :=
.seq NamedBody694_483 NamedBody694_484

def NamedBody694_486 : StackLang.HolProg 64 :=
.seq NamedBody694_482 NamedBody694_485

def NamedBody694_487 : StackLang.HolProg 64 :=
.seq NamedBody694_481 NamedBody694_486

def NamedBody694_488 : StackLang.HolProg 64 :=
.seq NamedBody694_480 NamedBody694_487

def NamedBody694_489 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_490 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody694_491 : StackLang.HolProg 64 :=
.seq NamedBody694_489 NamedBody694_490

def NamedBody694_492 : StackLang.HolProg 64 :=
.call (some (NamedBody694_488, 1, 694, 16)) (Sum.inl 68) (some (NamedBody694_491, 694, 17))

def NamedBody694_493 : StackLang.HolProg 64 :=
.seq NamedBody694_479 NamedBody694_492

def NamedBody694_494 : StackLang.HolProg 64 :=
.seq NamedBody694_478 NamedBody694_493

def NamedBody694_495 : StackLang.HolProg 64 :=
.seq NamedBody694_477 NamedBody694_494

def NamedBody694_496 : StackLang.HolProg 64 :=
.seq NamedBody694_448 NamedBody694_495

def NamedBody694_497 : StackLang.HolProg 64 :=
.seq NamedBody694_445 NamedBody694_496

def NamedBody694_498 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody694_499 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 384#64)

def NamedBody694_500 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody694_501 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_502 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3021#64)

def NamedBody694_503 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody694_504 : StackLang.HolProg 64 :=
.seq NamedBody694_502 NamedBody694_503

def NamedBody694_505 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody694_506 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody694_507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody694_508 : StackLang.HolProg 64 :=
.seq NamedBody694_506 NamedBody694_507

def NamedBody694_509 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_510 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody694_508 NamedBody694_509

def NamedBody694_511 : StackLang.HolProg 64 :=
.seq NamedBody694_505 NamedBody694_510

def NamedBody694_512 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody694_513 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody694_514 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 694 19

def NamedBody694_515 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody694_516 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody694_517 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody694_518 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_519 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody694_520 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody694_521 : StackLang.HolProg 64 :=
.seq NamedBody694_519 NamedBody694_520

def NamedBody694_522 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody694_523 : StackLang.HolProg 64 :=
.seq NamedBody694_521 NamedBody694_522

def NamedBody694_524 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody694_525 : StackLang.HolProg 64 :=
.seq NamedBody694_523 NamedBody694_524

def NamedBody694_526 : StackLang.HolProg 64 :=
.seq NamedBody694_518 NamedBody694_525

def NamedBody694_527 : StackLang.HolProg 64 :=
.seq NamedBody694_517 NamedBody694_526

def NamedBody694_528 : StackLang.HolProg 64 :=
.seq NamedBody694_516 NamedBody694_527

def NamedBody694_529 : StackLang.HolProg 64 :=
.seq NamedBody694_515 NamedBody694_528

def NamedBody694_530 : StackLang.HolProg 64 :=
.seq NamedBody694_514 NamedBody694_529

def NamedBody694_531 : StackLang.HolProg 64 :=
.seq NamedBody694_513 NamedBody694_530

def NamedBody694_532 : StackLang.HolProg 64 :=
.seq NamedBody694_512 NamedBody694_531

def NamedBody694_533 : StackLang.HolProg 64 :=
.seq NamedBody694_511 NamedBody694_532

def NamedBody694_534 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_535 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_536 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_537 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody694_538 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody694_539 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody694_540 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody694_541 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody694_542 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody694_543 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody694_544 : StackLang.HolProg 64 :=
.seq NamedBody694_542 NamedBody694_543

def NamedBody694_545 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody694_546 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody694_547 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody694_548 : StackLang.HolProg 64 :=
.seq NamedBody694_546 NamedBody694_547

def NamedBody694_549 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody694_550 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody694_551 : StackLang.HolProg 64 :=
.seq NamedBody694_549 NamedBody694_550

def NamedBody694_552 : StackLang.HolProg 64 :=
.seq NamedBody694_548 NamedBody694_551

def NamedBody694_553 : StackLang.HolProg 64 :=
.seq NamedBody694_545 NamedBody694_552

def NamedBody694_554 : StackLang.HolProg 64 :=
.seq NamedBody694_544 NamedBody694_553

def NamedBody694_555 : StackLang.HolProg 64 :=
.seq NamedBody694_541 NamedBody694_554

def NamedBody694_556 : StackLang.HolProg 64 :=
.seq NamedBody694_540 NamedBody694_555

def NamedBody694_557 : StackLang.HolProg 64 :=
.seq NamedBody694_539 NamedBody694_556

def NamedBody694_558 : StackLang.HolProg 64 :=
.seq NamedBody694_538 NamedBody694_557

def NamedBody694_559 : StackLang.HolProg 64 :=
.seq NamedBody694_537 NamedBody694_558

def NamedBody694_560 : StackLang.HolProg 64 :=
.seq NamedBody694_536 NamedBody694_559

def NamedBody694_561 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody694_562 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody694_563 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody694_564 : StackLang.HolProg 64 :=
.seq NamedBody694_562 NamedBody694_563

def NamedBody694_565 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody694_566 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody694_567 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody694_568 : StackLang.HolProg 64 :=
.seq NamedBody694_566 NamedBody694_567

def NamedBody694_569 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody694_570 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody694_571 : StackLang.HolProg 64 :=
.seq NamedBody694_569 NamedBody694_570

def NamedBody694_572 : StackLang.HolProg 64 :=
.seq NamedBody694_568 NamedBody694_571

def NamedBody694_573 : StackLang.HolProg 64 :=
.seq NamedBody694_565 NamedBody694_572

def NamedBody694_574 : StackLang.HolProg 64 :=
.seq NamedBody694_564 NamedBody694_573

def NamedBody694_575 : StackLang.HolProg 64 :=
.seq NamedBody694_561 NamedBody694_574

def NamedBody694_576 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody694_577 : StackLang.HolProg 64 :=
.seq NamedBody694_575 NamedBody694_576

def NamedBody694_578 : StackLang.HolProg 64 :=
.call (some (NamedBody694_560, 1, 694, 18)) (Sum.inl 68) (some (NamedBody694_577, 694, 19))

def NamedBody694_579 : StackLang.HolProg 64 :=
.seq NamedBody694_535 NamedBody694_578

def NamedBody694_580 : StackLang.HolProg 64 :=
.seq NamedBody694_534 NamedBody694_579

def NamedBody694_581 : StackLang.HolProg 64 :=
.seq NamedBody694_533 NamedBody694_580

def NamedBody694_582 : StackLang.HolProg 64 :=
.seq NamedBody694_504 NamedBody694_581

def NamedBody694_583 : StackLang.HolProg 64 :=
.seq NamedBody694_501 NamedBody694_582

def NamedBody694_584 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody694_585 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody694_586 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody694_587 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody694_588 : StackLang.HolProg 64 :=
.seq NamedBody694_586 NamedBody694_587

def NamedBody694_589 : StackLang.HolProg 64 :=
.seq NamedBody694_585 NamedBody694_588

def NamedBody694_590 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_591 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3022#64)

def NamedBody694_592 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody694_593 : StackLang.HolProg 64 :=
.seq NamedBody694_591 NamedBody694_592

def NamedBody694_594 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody694_595 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody694_596 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody694_597 : StackLang.HolProg 64 :=
.seq NamedBody694_595 NamedBody694_596

def NamedBody694_598 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_599 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody694_597 NamedBody694_598

def NamedBody694_600 : StackLang.HolProg 64 :=
.seq NamedBody694_594 NamedBody694_599

def NamedBody694_601 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody694_602 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody694_603 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 694 21

def NamedBody694_604 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody694_605 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody694_606 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody694_607 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_608 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody694_609 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody694_610 : StackLang.HolProg 64 :=
.seq NamedBody694_608 NamedBody694_609

def NamedBody694_611 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody694_612 : StackLang.HolProg 64 :=
.seq NamedBody694_610 NamedBody694_611

def NamedBody694_613 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody694_614 : StackLang.HolProg 64 :=
.seq NamedBody694_612 NamedBody694_613

def NamedBody694_615 : StackLang.HolProg 64 :=
.seq NamedBody694_607 NamedBody694_614

def NamedBody694_616 : StackLang.HolProg 64 :=
.seq NamedBody694_606 NamedBody694_615

def NamedBody694_617 : StackLang.HolProg 64 :=
.seq NamedBody694_605 NamedBody694_616

def NamedBody694_618 : StackLang.HolProg 64 :=
.seq NamedBody694_604 NamedBody694_617

def NamedBody694_619 : StackLang.HolProg 64 :=
.seq NamedBody694_603 NamedBody694_618

def NamedBody694_620 : StackLang.HolProg 64 :=
.seq NamedBody694_602 NamedBody694_619

def NamedBody694_621 : StackLang.HolProg 64 :=
.seq NamedBody694_601 NamedBody694_620

def NamedBody694_622 : StackLang.HolProg 64 :=
.seq NamedBody694_600 NamedBody694_621

def NamedBody694_623 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_624 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_625 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_626 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody694_627 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody694_628 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody694_629 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody694_630 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody694_631 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody694_632 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody694_633 : StackLang.HolProg 64 :=
.seq NamedBody694_631 NamedBody694_632

def NamedBody694_634 : StackLang.HolProg 64 :=
.seq NamedBody694_630 NamedBody694_633

def NamedBody694_635 : StackLang.HolProg 64 :=
.seq NamedBody694_629 NamedBody694_634

def NamedBody694_636 : StackLang.HolProg 64 :=
.seq NamedBody694_628 NamedBody694_635

def NamedBody694_637 : StackLang.HolProg 64 :=
.seq NamedBody694_627 NamedBody694_636

def NamedBody694_638 : StackLang.HolProg 64 :=
.seq NamedBody694_626 NamedBody694_637

def NamedBody694_639 : StackLang.HolProg 64 :=
.seq NamedBody694_625 NamedBody694_638

def NamedBody694_640 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody694_641 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody694_642 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody694_643 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody694_644 : StackLang.HolProg 64 :=
.seq NamedBody694_642 NamedBody694_643

def NamedBody694_645 : StackLang.HolProg 64 :=
.seq NamedBody694_641 NamedBody694_644

def NamedBody694_646 : StackLang.HolProg 64 :=
.seq NamedBody694_640 NamedBody694_645

def NamedBody694_647 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody694_648 : StackLang.HolProg 64 :=
.seq NamedBody694_646 NamedBody694_647

def NamedBody694_649 : StackLang.HolProg 64 :=
.call (some (NamedBody694_639, 1, 694, 20)) (Sum.inl 686) (some (NamedBody694_648, 694, 21))

def NamedBody694_650 : StackLang.HolProg 64 :=
.seq NamedBody694_624 NamedBody694_649

def NamedBody694_651 : StackLang.HolProg 64 :=
.seq NamedBody694_623 NamedBody694_650

def NamedBody694_652 : StackLang.HolProg 64 :=
.seq NamedBody694_622 NamedBody694_651

def NamedBody694_653 : StackLang.HolProg 64 :=
.seq NamedBody694_593 NamedBody694_652

def NamedBody694_654 : StackLang.HolProg 64 :=
.seq NamedBody694_590 NamedBody694_653

def NamedBody694_655 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody694_656 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody694_657 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody694_658 : StackLang.HolProg 64 :=
.seq NamedBody694_656 NamedBody694_657

def NamedBody694_659 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_660 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3023#64)

def NamedBody694_661 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody694_662 : StackLang.HolProg 64 :=
.seq NamedBody694_660 NamedBody694_661

def NamedBody694_663 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody694_664 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody694_665 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody694_666 : StackLang.HolProg 64 :=
.seq NamedBody694_664 NamedBody694_665

def NamedBody694_667 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_668 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody694_666 NamedBody694_667

def NamedBody694_669 : StackLang.HolProg 64 :=
.seq NamedBody694_663 NamedBody694_668

def NamedBody694_670 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody694_671 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody694_672 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 694 23

def NamedBody694_673 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody694_674 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody694_675 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody694_676 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_677 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody694_678 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody694_679 : StackLang.HolProg 64 :=
.seq NamedBody694_677 NamedBody694_678

def NamedBody694_680 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody694_681 : StackLang.HolProg 64 :=
.seq NamedBody694_679 NamedBody694_680

def NamedBody694_682 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody694_683 : StackLang.HolProg 64 :=
.seq NamedBody694_681 NamedBody694_682

def NamedBody694_684 : StackLang.HolProg 64 :=
.seq NamedBody694_676 NamedBody694_683

def NamedBody694_685 : StackLang.HolProg 64 :=
.seq NamedBody694_675 NamedBody694_684

def NamedBody694_686 : StackLang.HolProg 64 :=
.seq NamedBody694_674 NamedBody694_685

def NamedBody694_687 : StackLang.HolProg 64 :=
.seq NamedBody694_673 NamedBody694_686

def NamedBody694_688 : StackLang.HolProg 64 :=
.seq NamedBody694_672 NamedBody694_687

def NamedBody694_689 : StackLang.HolProg 64 :=
.seq NamedBody694_671 NamedBody694_688

def NamedBody694_690 : StackLang.HolProg 64 :=
.seq NamedBody694_670 NamedBody694_689

def NamedBody694_691 : StackLang.HolProg 64 :=
.seq NamedBody694_669 NamedBody694_690

def NamedBody694_692 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_693 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_694 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_695 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody694_696 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody694_697 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody694_698 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody694_699 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody694_700 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody694_701 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody694_702 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody694_703 : StackLang.HolProg 64 :=
.seq NamedBody694_701 NamedBody694_702

def NamedBody694_704 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody694_705 : StackLang.HolProg 64 :=
.seq NamedBody694_703 NamedBody694_704

def NamedBody694_706 : StackLang.HolProg 64 :=
.seq NamedBody694_700 NamedBody694_705

def NamedBody694_707 : StackLang.HolProg 64 :=
.seq NamedBody694_699 NamedBody694_706

def NamedBody694_708 : StackLang.HolProg 64 :=
.seq NamedBody694_698 NamedBody694_707

def NamedBody694_709 : StackLang.HolProg 64 :=
.seq NamedBody694_697 NamedBody694_708

def NamedBody694_710 : StackLang.HolProg 64 :=
.seq NamedBody694_696 NamedBody694_709

def NamedBody694_711 : StackLang.HolProg 64 :=
.seq NamedBody694_695 NamedBody694_710

def NamedBody694_712 : StackLang.HolProg 64 :=
.seq NamedBody694_694 NamedBody694_711

def NamedBody694_713 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody694_714 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody694_715 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody694_716 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody694_717 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody694_718 : StackLang.HolProg 64 :=
.seq NamedBody694_716 NamedBody694_717

def NamedBody694_719 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody694_720 : StackLang.HolProg 64 :=
.seq NamedBody694_718 NamedBody694_719

def NamedBody694_721 : StackLang.HolProg 64 :=
.seq NamedBody694_715 NamedBody694_720

def NamedBody694_722 : StackLang.HolProg 64 :=
.seq NamedBody694_714 NamedBody694_721

def NamedBody694_723 : StackLang.HolProg 64 :=
.seq NamedBody694_713 NamedBody694_722

def NamedBody694_724 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody694_725 : StackLang.HolProg 64 :=
.seq NamedBody694_723 NamedBody694_724

def NamedBody694_726 : StackLang.HolProg 64 :=
.call (some (NamedBody694_712, 1, 694, 22)) (Sum.inl 687) (some (NamedBody694_725, 694, 23))

def NamedBody694_727 : StackLang.HolProg 64 :=
.seq NamedBody694_693 NamedBody694_726

def NamedBody694_728 : StackLang.HolProg 64 :=
.seq NamedBody694_692 NamedBody694_727

def NamedBody694_729 : StackLang.HolProg 64 :=
.seq NamedBody694_691 NamedBody694_728

def NamedBody694_730 : StackLang.HolProg 64 :=
.seq NamedBody694_662 NamedBody694_729

def NamedBody694_731 : StackLang.HolProg 64 :=
.seq NamedBody694_659 NamedBody694_730

def NamedBody694_732 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody694_733 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody694_734 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody694_735 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody694_736 : StackLang.HolProg 64 :=
.seq NamedBody694_734 NamedBody694_735

def NamedBody694_737 : StackLang.HolProg 64 :=
.seq NamedBody694_733 NamedBody694_736

def NamedBody694_738 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_739 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3024#64)

def NamedBody694_740 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody694_741 : StackLang.HolProg 64 :=
.seq NamedBody694_739 NamedBody694_740

def NamedBody694_742 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody694_743 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody694_744 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody694_745 : StackLang.HolProg 64 :=
.seq NamedBody694_743 NamedBody694_744

def NamedBody694_746 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_747 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody694_745 NamedBody694_746

def NamedBody694_748 : StackLang.HolProg 64 :=
.seq NamedBody694_742 NamedBody694_747

def NamedBody694_749 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody694_750 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody694_751 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 694 25

def NamedBody694_752 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody694_753 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody694_754 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody694_755 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_756 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody694_757 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody694_758 : StackLang.HolProg 64 :=
.seq NamedBody694_756 NamedBody694_757

def NamedBody694_759 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody694_760 : StackLang.HolProg 64 :=
.seq NamedBody694_758 NamedBody694_759

def NamedBody694_761 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody694_762 : StackLang.HolProg 64 :=
.seq NamedBody694_760 NamedBody694_761

def NamedBody694_763 : StackLang.HolProg 64 :=
.seq NamedBody694_755 NamedBody694_762

def NamedBody694_764 : StackLang.HolProg 64 :=
.seq NamedBody694_754 NamedBody694_763

def NamedBody694_765 : StackLang.HolProg 64 :=
.seq NamedBody694_753 NamedBody694_764

def NamedBody694_766 : StackLang.HolProg 64 :=
.seq NamedBody694_752 NamedBody694_765

def NamedBody694_767 : StackLang.HolProg 64 :=
.seq NamedBody694_751 NamedBody694_766

def NamedBody694_768 : StackLang.HolProg 64 :=
.seq NamedBody694_750 NamedBody694_767

def NamedBody694_769 : StackLang.HolProg 64 :=
.seq NamedBody694_749 NamedBody694_768

def NamedBody694_770 : StackLang.HolProg 64 :=
.seq NamedBody694_748 NamedBody694_769

def NamedBody694_771 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_772 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_773 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_774 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody694_775 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody694_776 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody694_777 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody694_778 : StackLang.HolProg 64 :=
.seq NamedBody694_776 NamedBody694_777

def NamedBody694_779 : StackLang.HolProg 64 :=
.seq NamedBody694_775 NamedBody694_778

def NamedBody694_780 : StackLang.HolProg 64 :=
.seq NamedBody694_774 NamedBody694_779

def NamedBody694_781 : StackLang.HolProg 64 :=
.seq NamedBody694_773 NamedBody694_780

def NamedBody694_782 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody694_783 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody694_784 : StackLang.HolProg 64 :=
.seq NamedBody694_782 NamedBody694_783

def NamedBody694_785 : StackLang.HolProg 64 :=
.call (some (NamedBody694_781, 1, 694, 24)) (Sum.inl 693) (some (NamedBody694_784, 694, 25))

def NamedBody694_786 : StackLang.HolProg 64 :=
.seq NamedBody694_772 NamedBody694_785

def NamedBody694_787 : StackLang.HolProg 64 :=
.seq NamedBody694_771 NamedBody694_786

def NamedBody694_788 : StackLang.HolProg 64 :=
.seq NamedBody694_770 NamedBody694_787

def NamedBody694_789 : StackLang.HolProg 64 :=
.seq NamedBody694_741 NamedBody694_788

def NamedBody694_790 : StackLang.HolProg 64 :=
.seq NamedBody694_738 NamedBody694_789

def NamedBody694_791 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody694_792 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody694_793 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody694_794 : StackLang.HolProg 64 :=
.seq NamedBody694_792 NamedBody694_793

def NamedBody694_795 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_796 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3025#64)

def NamedBody694_797 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody694_798 : StackLang.HolProg 64 :=
.seq NamedBody694_796 NamedBody694_797

def NamedBody694_799 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody694_800 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody694_801 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody694_802 : StackLang.HolProg 64 :=
.seq NamedBody694_800 NamedBody694_801

def NamedBody694_803 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_804 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody694_802 NamedBody694_803

def NamedBody694_805 : StackLang.HolProg 64 :=
.seq NamedBody694_799 NamedBody694_804

def NamedBody694_806 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody694_807 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody694_808 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 694 27

def NamedBody694_809 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody694_810 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody694_811 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody694_812 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_813 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody694_814 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody694_815 : StackLang.HolProg 64 :=
.seq NamedBody694_813 NamedBody694_814

def NamedBody694_816 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody694_817 : StackLang.HolProg 64 :=
.seq NamedBody694_815 NamedBody694_816

def NamedBody694_818 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody694_819 : StackLang.HolProg 64 :=
.seq NamedBody694_817 NamedBody694_818

def NamedBody694_820 : StackLang.HolProg 64 :=
.seq NamedBody694_812 NamedBody694_819

def NamedBody694_821 : StackLang.HolProg 64 :=
.seq NamedBody694_811 NamedBody694_820

def NamedBody694_822 : StackLang.HolProg 64 :=
.seq NamedBody694_810 NamedBody694_821

def NamedBody694_823 : StackLang.HolProg 64 :=
.seq NamedBody694_809 NamedBody694_822

def NamedBody694_824 : StackLang.HolProg 64 :=
.seq NamedBody694_808 NamedBody694_823

def NamedBody694_825 : StackLang.HolProg 64 :=
.seq NamedBody694_807 NamedBody694_824

def NamedBody694_826 : StackLang.HolProg 64 :=
.seq NamedBody694_806 NamedBody694_825

def NamedBody694_827 : StackLang.HolProg 64 :=
.seq NamedBody694_805 NamedBody694_826

def NamedBody694_828 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_829 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_830 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_831 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody694_832 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody694_833 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody694_834 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody694_835 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody694_836 : StackLang.HolProg 64 :=
.seq NamedBody694_834 NamedBody694_835

def NamedBody694_837 : StackLang.HolProg 64 :=
.seq NamedBody694_833 NamedBody694_836

def NamedBody694_838 : StackLang.HolProg 64 :=
.seq NamedBody694_832 NamedBody694_837

def NamedBody694_839 : StackLang.HolProg 64 :=
.seq NamedBody694_831 NamedBody694_838

def NamedBody694_840 : StackLang.HolProg 64 :=
.seq NamedBody694_830 NamedBody694_839

def NamedBody694_841 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody694_842 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody694_843 : StackLang.HolProg 64 :=
.seq NamedBody694_841 NamedBody694_842

def NamedBody694_844 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody694_845 : StackLang.HolProg 64 :=
.seq NamedBody694_843 NamedBody694_844

def NamedBody694_846 : StackLang.HolProg 64 :=
.call (some (NamedBody694_840, 1, 694, 26)) (Sum.inl 691) (some (NamedBody694_845, 694, 27))

def NamedBody694_847 : StackLang.HolProg 64 :=
.seq NamedBody694_829 NamedBody694_846

def NamedBody694_848 : StackLang.HolProg 64 :=
.seq NamedBody694_828 NamedBody694_847

def NamedBody694_849 : StackLang.HolProg 64 :=
.seq NamedBody694_827 NamedBody694_848

def NamedBody694_850 : StackLang.HolProg 64 :=
.seq NamedBody694_798 NamedBody694_849

def NamedBody694_851 : StackLang.HolProg 64 :=
.seq NamedBody694_795 NamedBody694_850

def NamedBody694_852 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody694_853 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody694_854 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody694_855 : StackLang.HolProg 64 :=
.seq NamedBody694_853 NamedBody694_854

def NamedBody694_856 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_857 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3026#64)

def NamedBody694_858 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody694_859 : StackLang.HolProg 64 :=
.seq NamedBody694_857 NamedBody694_858

def NamedBody694_860 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody694_861 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody694_862 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody694_863 : StackLang.HolProg 64 :=
.seq NamedBody694_861 NamedBody694_862

def NamedBody694_864 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_865 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody694_863 NamedBody694_864

def NamedBody694_866 : StackLang.HolProg 64 :=
.seq NamedBody694_860 NamedBody694_865

def NamedBody694_867 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody694_868 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody694_869 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 694 29

def NamedBody694_870 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody694_871 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody694_872 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody694_873 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_874 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody694_875 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody694_876 : StackLang.HolProg 64 :=
.seq NamedBody694_874 NamedBody694_875

def NamedBody694_877 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody694_878 : StackLang.HolProg 64 :=
.seq NamedBody694_876 NamedBody694_877

def NamedBody694_879 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody694_880 : StackLang.HolProg 64 :=
.seq NamedBody694_878 NamedBody694_879

def NamedBody694_881 : StackLang.HolProg 64 :=
.seq NamedBody694_873 NamedBody694_880

def NamedBody694_882 : StackLang.HolProg 64 :=
.seq NamedBody694_872 NamedBody694_881

def NamedBody694_883 : StackLang.HolProg 64 :=
.seq NamedBody694_871 NamedBody694_882

def NamedBody694_884 : StackLang.HolProg 64 :=
.seq NamedBody694_870 NamedBody694_883

def NamedBody694_885 : StackLang.HolProg 64 :=
.seq NamedBody694_869 NamedBody694_884

def NamedBody694_886 : StackLang.HolProg 64 :=
.seq NamedBody694_868 NamedBody694_885

def NamedBody694_887 : StackLang.HolProg 64 :=
.seq NamedBody694_867 NamedBody694_886

def NamedBody694_888 : StackLang.HolProg 64 :=
.seq NamedBody694_866 NamedBody694_887

def NamedBody694_889 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_890 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_891 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_892 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody694_893 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody694_894 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody694_895 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody694_896 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody694_897 : StackLang.HolProg 64 :=
.seq NamedBody694_895 NamedBody694_896

def NamedBody694_898 : StackLang.HolProg 64 :=
.seq NamedBody694_894 NamedBody694_897

def NamedBody694_899 : StackLang.HolProg 64 :=
.seq NamedBody694_893 NamedBody694_898

def NamedBody694_900 : StackLang.HolProg 64 :=
.seq NamedBody694_892 NamedBody694_899

def NamedBody694_901 : StackLang.HolProg 64 :=
.seq NamedBody694_891 NamedBody694_900

def NamedBody694_902 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody694_903 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody694_904 : StackLang.HolProg 64 :=
.seq NamedBody694_902 NamedBody694_903

def NamedBody694_905 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody694_906 : StackLang.HolProg 64 :=
.seq NamedBody694_904 NamedBody694_905

def NamedBody694_907 : StackLang.HolProg 64 :=
.call (some (NamedBody694_901, 1, 694, 28)) (Sum.inl 668) (some (NamedBody694_906, 694, 29))

def NamedBody694_908 : StackLang.HolProg 64 :=
.seq NamedBody694_890 NamedBody694_907

def NamedBody694_909 : StackLang.HolProg 64 :=
.seq NamedBody694_889 NamedBody694_908

def NamedBody694_910 : StackLang.HolProg 64 :=
.seq NamedBody694_888 NamedBody694_909

def NamedBody694_911 : StackLang.HolProg 64 :=
.seq NamedBody694_859 NamedBody694_910

def NamedBody694_912 : StackLang.HolProg 64 :=
.seq NamedBody694_856 NamedBody694_911

def NamedBody694_913 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody694_914 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody694_915 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody694_916 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody694_917 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody694_918 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551232#64))

def NamedBody694_919 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 44#64)

def NamedBody694_920 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_921 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_922 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3027#64)

def NamedBody694_923 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody694_924 : StackLang.HolProg 64 :=
.seq NamedBody694_922 NamedBody694_923

def NamedBody694_925 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody694_926 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody694_927 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody694_928 : StackLang.HolProg 64 :=
.seq NamedBody694_926 NamedBody694_927

def NamedBody694_929 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_930 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody694_928 NamedBody694_929

def NamedBody694_931 : StackLang.HolProg 64 :=
.seq NamedBody694_925 NamedBody694_930

def NamedBody694_932 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody694_933 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody694_934 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 694 31

def NamedBody694_935 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody694_936 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody694_937 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody694_938 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_939 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody694_940 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody694_941 : StackLang.HolProg 64 :=
.seq NamedBody694_939 NamedBody694_940

def NamedBody694_942 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody694_943 : StackLang.HolProg 64 :=
.seq NamedBody694_941 NamedBody694_942

def NamedBody694_944 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody694_945 : StackLang.HolProg 64 :=
.seq NamedBody694_943 NamedBody694_944

def NamedBody694_946 : StackLang.HolProg 64 :=
.seq NamedBody694_938 NamedBody694_945

def NamedBody694_947 : StackLang.HolProg 64 :=
.seq NamedBody694_937 NamedBody694_946

def NamedBody694_948 : StackLang.HolProg 64 :=
.seq NamedBody694_936 NamedBody694_947

def NamedBody694_949 : StackLang.HolProg 64 :=
.seq NamedBody694_935 NamedBody694_948

def NamedBody694_950 : StackLang.HolProg 64 :=
.seq NamedBody694_934 NamedBody694_949

def NamedBody694_951 : StackLang.HolProg 64 :=
.seq NamedBody694_933 NamedBody694_950

def NamedBody694_952 : StackLang.HolProg 64 :=
.seq NamedBody694_932 NamedBody694_951

def NamedBody694_953 : StackLang.HolProg 64 :=
.seq NamedBody694_931 NamedBody694_952

def NamedBody694_954 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_955 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_956 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_957 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody694_958 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody694_959 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody694_960 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody694_961 : StackLang.HolProg 64 :=
.seq NamedBody694_959 NamedBody694_960

def NamedBody694_962 : StackLang.HolProg 64 :=
.seq NamedBody694_958 NamedBody694_961

def NamedBody694_963 : StackLang.HolProg 64 :=
.seq NamedBody694_957 NamedBody694_962

def NamedBody694_964 : StackLang.HolProg 64 :=
.seq NamedBody694_956 NamedBody694_963

def NamedBody694_965 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody694_966 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody694_967 : StackLang.HolProg 64 :=
.seq NamedBody694_965 NamedBody694_966

def NamedBody694_968 : StackLang.HolProg 64 :=
.call (some (NamedBody694_964, 1, 694, 30)) (Sum.inl 692) (some (NamedBody694_967, 694, 31))

def NamedBody694_969 : StackLang.HolProg 64 :=
.seq NamedBody694_955 NamedBody694_968

def NamedBody694_970 : StackLang.HolProg 64 :=
.seq NamedBody694_954 NamedBody694_969

def NamedBody694_971 : StackLang.HolProg 64 :=
.seq NamedBody694_953 NamedBody694_970

def NamedBody694_972 : StackLang.HolProg 64 :=
.seq NamedBody694_924 NamedBody694_971

def NamedBody694_973 : StackLang.HolProg 64 :=
.seq NamedBody694_921 NamedBody694_972

def NamedBody694_974 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody694_975 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody694_976 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_977 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3028#64)

def NamedBody694_978 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody694_979 : StackLang.HolProg 64 :=
.seq NamedBody694_977 NamedBody694_978

def NamedBody694_980 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody694_981 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody694_982 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody694_983 : StackLang.HolProg 64 :=
.seq NamedBody694_981 NamedBody694_982

def NamedBody694_984 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_985 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody694_983 NamedBody694_984

def NamedBody694_986 : StackLang.HolProg 64 :=
.seq NamedBody694_980 NamedBody694_985

def NamedBody694_987 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody694_988 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody694_989 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 694 33

def NamedBody694_990 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody694_991 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody694_992 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody694_993 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_994 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody694_995 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody694_996 : StackLang.HolProg 64 :=
.seq NamedBody694_994 NamedBody694_995

def NamedBody694_997 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody694_998 : StackLang.HolProg 64 :=
.seq NamedBody694_996 NamedBody694_997

def NamedBody694_999 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody694_1000 : StackLang.HolProg 64 :=
.seq NamedBody694_998 NamedBody694_999

def NamedBody694_1001 : StackLang.HolProg 64 :=
.seq NamedBody694_993 NamedBody694_1000

def NamedBody694_1002 : StackLang.HolProg 64 :=
.seq NamedBody694_992 NamedBody694_1001

def NamedBody694_1003 : StackLang.HolProg 64 :=
.seq NamedBody694_991 NamedBody694_1002

def NamedBody694_1004 : StackLang.HolProg 64 :=
.seq NamedBody694_990 NamedBody694_1003

def NamedBody694_1005 : StackLang.HolProg 64 :=
.seq NamedBody694_989 NamedBody694_1004

def NamedBody694_1006 : StackLang.HolProg 64 :=
.seq NamedBody694_988 NamedBody694_1005

def NamedBody694_1007 : StackLang.HolProg 64 :=
.seq NamedBody694_987 NamedBody694_1006

def NamedBody694_1008 : StackLang.HolProg 64 :=
.seq NamedBody694_986 NamedBody694_1007

def NamedBody694_1009 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_1010 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_1011 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_1012 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody694_1013 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody694_1014 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody694_1015 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody694_1016 : StackLang.HolProg 64 :=
.seq NamedBody694_1014 NamedBody694_1015

def NamedBody694_1017 : StackLang.HolProg 64 :=
.seq NamedBody694_1013 NamedBody694_1016

def NamedBody694_1018 : StackLang.HolProg 64 :=
.seq NamedBody694_1012 NamedBody694_1017

def NamedBody694_1019 : StackLang.HolProg 64 :=
.seq NamedBody694_1011 NamedBody694_1018

def NamedBody694_1020 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody694_1021 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody694_1022 : StackLang.HolProg 64 :=
.seq NamedBody694_1020 NamedBody694_1021

def NamedBody694_1023 : StackLang.HolProg 64 :=
.call (some (NamedBody694_1019, 1, 694, 32)) (Sum.inl 70) (some (NamedBody694_1022, 694, 33))

def NamedBody694_1024 : StackLang.HolProg 64 :=
.seq NamedBody694_1010 NamedBody694_1023

def NamedBody694_1025 : StackLang.HolProg 64 :=
.seq NamedBody694_1009 NamedBody694_1024

def NamedBody694_1026 : StackLang.HolProg 64 :=
.seq NamedBody694_1008 NamedBody694_1025

def NamedBody694_1027 : StackLang.HolProg 64 :=
.seq NamedBody694_979 NamedBody694_1026

def NamedBody694_1028 : StackLang.HolProg 64 :=
.seq NamedBody694_976 NamedBody694_1027

def NamedBody694_1029 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody694_1030 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody694_1031 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody694_1032 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 72#64)))

def NamedBody694_1033 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody694_1034 : StackLang.HolProg 64 :=
.seq NamedBody694_1032 NamedBody694_1033

def NamedBody694_1035 : StackLang.HolProg 64 :=
.seq NamedBody694_1031 NamedBody694_1034

def NamedBody694_1036 : StackLang.HolProg 64 :=
.seq NamedBody694_1030 NamedBody694_1035

def NamedBody694_1037 : StackLang.HolProg 64 :=
.seq NamedBody694_1029 NamedBody694_1036

def NamedBody694_1038 : StackLang.HolProg 64 :=
.seq NamedBody694_1028 NamedBody694_1037

def NamedBody694_1039 : StackLang.HolProg 64 :=
.seq NamedBody694_975 NamedBody694_1038

def NamedBody694_1040 : StackLang.HolProg 64 :=
.seq NamedBody694_974 NamedBody694_1039

def NamedBody694_1041 : StackLang.HolProg 64 :=
.seq NamedBody694_973 NamedBody694_1040

def NamedBody694_1042 : StackLang.HolProg 64 :=
.seq NamedBody694_920 NamedBody694_1041

def NamedBody694_1043 : StackLang.HolProg 64 :=
.seq NamedBody694_919 NamedBody694_1042

def NamedBody694_1044 : StackLang.HolProg 64 :=
.seq NamedBody694_918 NamedBody694_1043

def NamedBody694_1045 : StackLang.HolProg 64 :=
.seq NamedBody694_917 NamedBody694_1044

def NamedBody694_1046 : StackLang.HolProg 64 :=
.seq NamedBody694_916 NamedBody694_1045

def NamedBody694_1047 : StackLang.HolProg 64 :=
.seq NamedBody694_915 NamedBody694_1046

def NamedBody694_1048 : StackLang.HolProg 64 :=
.seq NamedBody694_914 NamedBody694_1047

def NamedBody694_1049 : StackLang.HolProg 64 :=
.seq NamedBody694_913 NamedBody694_1048

def NamedBody694_1050 : StackLang.HolProg 64 :=
.seq NamedBody694_912 NamedBody694_1049

def NamedBody694_1051 : StackLang.HolProg 64 :=
.seq NamedBody694_855 NamedBody694_1050

def NamedBody694_1052 : StackLang.HolProg 64 :=
.seq NamedBody694_852 NamedBody694_1051

def NamedBody694_1053 : StackLang.HolProg 64 :=
.seq NamedBody694_851 NamedBody694_1052

def NamedBody694_1054 : StackLang.HolProg 64 :=
.seq NamedBody694_794 NamedBody694_1053

def NamedBody694_1055 : StackLang.HolProg 64 :=
.seq NamedBody694_791 NamedBody694_1054

def NamedBody694_1056 : StackLang.HolProg 64 :=
.seq NamedBody694_790 NamedBody694_1055

def NamedBody694_1057 : StackLang.HolProg 64 :=
.seq NamedBody694_737 NamedBody694_1056

def NamedBody694_1058 : StackLang.HolProg 64 :=
.seq NamedBody694_732 NamedBody694_1057

def NamedBody694_1059 : StackLang.HolProg 64 :=
.seq NamedBody694_731 NamedBody694_1058

def NamedBody694_1060 : StackLang.HolProg 64 :=
.seq NamedBody694_658 NamedBody694_1059

def NamedBody694_1061 : StackLang.HolProg 64 :=
.seq NamedBody694_655 NamedBody694_1060

def NamedBody694_1062 : StackLang.HolProg 64 :=
.seq NamedBody694_654 NamedBody694_1061

def NamedBody694_1063 : StackLang.HolProg 64 :=
.seq NamedBody694_589 NamedBody694_1062

def NamedBody694_1064 : StackLang.HolProg 64 :=
.seq NamedBody694_584 NamedBody694_1063

def NamedBody694_1065 : StackLang.HolProg 64 :=
.seq NamedBody694_583 NamedBody694_1064

def NamedBody694_1066 : StackLang.HolProg 64 :=
.seq NamedBody694_500 NamedBody694_1065

def NamedBody694_1067 : StackLang.HolProg 64 :=
.seq NamedBody694_499 NamedBody694_1066

def NamedBody694_1068 : StackLang.HolProg 64 :=
.seq NamedBody694_498 NamedBody694_1067

def NamedBody694_1069 : StackLang.HolProg 64 :=
.seq NamedBody694_497 NamedBody694_1068

def NamedBody694_1070 : StackLang.HolProg 64 :=
.seq NamedBody694_444 NamedBody694_1069

def NamedBody694_1071 : StackLang.HolProg 64 :=
.seq NamedBody694_443 NamedBody694_1070

def NamedBody694_1072 : StackLang.HolProg 64 :=
.seq NamedBody694_442 NamedBody694_1071

def NamedBody694_1073 : StackLang.HolProg 64 :=
.seq NamedBody694_441 NamedBody694_1072

def NamedBody694_1074 : StackLang.HolProg 64 :=
.seq NamedBody694_388 NamedBody694_1073

def NamedBody694_1075 : StackLang.HolProg 64 :=
.seq NamedBody694_387 NamedBody694_1074

def NamedBody694_1076 : StackLang.HolProg 64 :=
.seq NamedBody694_386 NamedBody694_1075

def NamedBody694_1077 : StackLang.HolProg 64 :=
.seq NamedBody694_385 NamedBody694_1076

def NamedBody694_1078 : StackLang.HolProg 64 :=
.seq NamedBody694_332 NamedBody694_1077

def NamedBody694_1079 : StackLang.HolProg 64 :=
.seq NamedBody694_331 NamedBody694_1078

def NamedBody694_1080 : StackLang.HolProg 64 :=
.seq NamedBody694_330 NamedBody694_1079

def NamedBody694_1081 : StackLang.HolProg 64 :=
.seq NamedBody694_329 NamedBody694_1080

def NamedBody694_1082 : StackLang.HolProg 64 :=
.seq NamedBody694_276 NamedBody694_1081

def NamedBody694_1083 : StackLang.HolProg 64 :=
.seq NamedBody694_275 NamedBody694_1082

def NamedBody694_1084 : StackLang.HolProg 64 :=
.seq NamedBody694_274 NamedBody694_1083

def NamedBody694_1085 : StackLang.HolProg 64 :=
.seq NamedBody694_273 NamedBody694_1084

def NamedBody694_1086 : StackLang.HolProg 64 :=
.seq NamedBody694_198 NamedBody694_1085

def NamedBody694_1087 : StackLang.HolProg 64 :=
.seq NamedBody694_197 NamedBody694_1086

def NamedBody694_1088 : StackLang.HolProg 64 :=
.seq NamedBody694_196 NamedBody694_1087

def NamedBody694_1089 : StackLang.HolProg 64 :=
.seq NamedBody694_195 NamedBody694_1088

def NamedBody694_1090 : StackLang.HolProg 64 :=
.seq NamedBody694_194 NamedBody694_1089

def NamedBody694_1091 : StackLang.HolProg 64 :=
.seq NamedBody694_139 NamedBody694_1090

def NamedBody694_1092 : StackLang.HolProg 64 :=
.seq NamedBody694_136 NamedBody694_1091

def NamedBody694_1093 : StackLang.HolProg 64 :=
.seq NamedBody694_135 NamedBody694_1092

def NamedBody694_1094 : StackLang.HolProg 64 :=
.seq NamedBody694_134 NamedBody694_1093

def NamedBody694_1095 : StackLang.HolProg 64 :=
.seq NamedBody694_133 NamedBody694_1094

def NamedBody694_1096 : StackLang.HolProg 64 :=
.seq NamedBody694_78 NamedBody694_1095

def NamedBody694_1097 : StackLang.HolProg 64 :=
.seq NamedBody694_77 NamedBody694_1096

def NamedBody694_1098 : StackLang.HolProg 64 :=
.seq NamedBody694_76 NamedBody694_1097

def NamedBody694_1099 : StackLang.HolProg 64 :=
.seq NamedBody694_75 NamedBody694_1098

def NamedBody694_1100 : StackLang.HolProg 64 :=
.seq NamedBody694_74 NamedBody694_1099

def NamedBody694_1101 : StackLang.HolProg 64 :=
.seq NamedBody694_13 NamedBody694_1100

def NamedBody694_1102 : StackLang.HolProg 64 :=
.seq NamedBody694_6 NamedBody694_1101

def Named694 : Nat × StackLang.HolProg 64 := (694, NamedBody694_1102)
theorem Named694_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed694 = Named694 := by
  kernel_rfl
#print axioms Named694_eq
end InitECandidate.Proofs.BackendStages
