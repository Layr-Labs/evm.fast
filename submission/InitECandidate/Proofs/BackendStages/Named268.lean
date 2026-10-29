import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed268
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody268_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody268_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody268_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody268_3 : StackLang.HolProg 64 :=
.seq NamedBody268_1 NamedBody268_2

def NamedBody268_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody268_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody268_3 NamedBody268_4

def NamedBody268_6 : StackLang.HolProg 64 :=
.seq NamedBody268_0 NamedBody268_5

def NamedBody268_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody268_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 32#64)

def NamedBody268_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody268_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody268_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody268_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody268_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody268_14 : StackLang.HolProg 64 :=
.seq NamedBody268_12 NamedBody268_13

def NamedBody268_15 : StackLang.HolProg 64 :=
.seq NamedBody268_11 NamedBody268_14

def NamedBody268_16 : StackLang.HolProg 64 :=
.seq NamedBody268_10 NamedBody268_15

def NamedBody268_17 : StackLang.HolProg 64 :=
.seq NamedBody268_9 NamedBody268_16

def NamedBody268_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody268_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 653#64)

def NamedBody268_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody268_21 : StackLang.HolProg 64 :=
.seq NamedBody268_19 NamedBody268_20

def NamedBody268_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody268_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody268_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody268_25 : StackLang.HolProg 64 :=
.seq NamedBody268_23 NamedBody268_24

def NamedBody268_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody268_27 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody268_25 NamedBody268_26

def NamedBody268_28 : StackLang.HolProg 64 :=
.seq NamedBody268_22 NamedBody268_27

def NamedBody268_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody268_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody268_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 268 3

def NamedBody268_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody268_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody268_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody268_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody268_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody268_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody268_38 : StackLang.HolProg 64 :=
.seq NamedBody268_36 NamedBody268_37

def NamedBody268_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody268_40 : StackLang.HolProg 64 :=
.seq NamedBody268_38 NamedBody268_39

def NamedBody268_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody268_42 : StackLang.HolProg 64 :=
.seq NamedBody268_40 NamedBody268_41

def NamedBody268_43 : StackLang.HolProg 64 :=
.seq NamedBody268_35 NamedBody268_42

def NamedBody268_44 : StackLang.HolProg 64 :=
.seq NamedBody268_34 NamedBody268_43

def NamedBody268_45 : StackLang.HolProg 64 :=
.seq NamedBody268_33 NamedBody268_44

def NamedBody268_46 : StackLang.HolProg 64 :=
.seq NamedBody268_32 NamedBody268_45

def NamedBody268_47 : StackLang.HolProg 64 :=
.seq NamedBody268_31 NamedBody268_46

def NamedBody268_48 : StackLang.HolProg 64 :=
.seq NamedBody268_30 NamedBody268_47

def NamedBody268_49 : StackLang.HolProg 64 :=
.seq NamedBody268_29 NamedBody268_48

def NamedBody268_50 : StackLang.HolProg 64 :=
.seq NamedBody268_28 NamedBody268_49

def NamedBody268_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody268_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody268_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody268_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody268_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody268_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody268_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody268_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody268_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody268_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody268_61 : StackLang.HolProg 64 :=
.seq NamedBody268_59 NamedBody268_60

def NamedBody268_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody268_63 : StackLang.HolProg 64 :=
.seq NamedBody268_61 NamedBody268_62

def NamedBody268_64 : StackLang.HolProg 64 :=
.seq NamedBody268_58 NamedBody268_63

def NamedBody268_65 : StackLang.HolProg 64 :=
.seq NamedBody268_57 NamedBody268_64

def NamedBody268_66 : StackLang.HolProg 64 :=
.seq NamedBody268_56 NamedBody268_65

def NamedBody268_67 : StackLang.HolProg 64 :=
.seq NamedBody268_55 NamedBody268_66

def NamedBody268_68 : StackLang.HolProg 64 :=
.seq NamedBody268_54 NamedBody268_67

def NamedBody268_69 : StackLang.HolProg 64 :=
.seq NamedBody268_53 NamedBody268_68

def NamedBody268_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody268_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody268_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody268_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody268_74 : StackLang.HolProg 64 :=
.seq NamedBody268_72 NamedBody268_73

def NamedBody268_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody268_76 : StackLang.HolProg 64 :=
.seq NamedBody268_74 NamedBody268_75

def NamedBody268_77 : StackLang.HolProg 64 :=
.seq NamedBody268_71 NamedBody268_76

def NamedBody268_78 : StackLang.HolProg 64 :=
.seq NamedBody268_70 NamedBody268_77

def NamedBody268_79 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody268_80 : StackLang.HolProg 64 :=
.seq NamedBody268_78 NamedBody268_79

def NamedBody268_81 : StackLang.HolProg 64 :=
.call (some (NamedBody268_69, 1, 268, 2)) (Sum.inl 77) (some (NamedBody268_80, 268, 3))

def NamedBody268_82 : StackLang.HolProg 64 :=
.seq NamedBody268_52 NamedBody268_81

def NamedBody268_83 : StackLang.HolProg 64 :=
.seq NamedBody268_51 NamedBody268_82

def NamedBody268_84 : StackLang.HolProg 64 :=
.seq NamedBody268_50 NamedBody268_83

def NamedBody268_85 : StackLang.HolProg 64 :=
.seq NamedBody268_21 NamedBody268_84

def NamedBody268_86 : StackLang.HolProg 64 :=
.seq NamedBody268_18 NamedBody268_85

def NamedBody268_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody268_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody268_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody268_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody268_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody268_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody268_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 33#64)))

def NamedBody268_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody268_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody268_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 654#64)

def NamedBody268_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody268_98 : StackLang.HolProg 64 :=
.seq NamedBody268_96 NamedBody268_97

def NamedBody268_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody268_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody268_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody268_102 : StackLang.HolProg 64 :=
.seq NamedBody268_100 NamedBody268_101

def NamedBody268_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody268_104 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody268_102 NamedBody268_103

def NamedBody268_105 : StackLang.HolProg 64 :=
.seq NamedBody268_99 NamedBody268_104

def NamedBody268_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody268_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody268_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 268 5

def NamedBody268_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody268_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody268_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody268_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody268_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody268_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody268_115 : StackLang.HolProg 64 :=
.seq NamedBody268_113 NamedBody268_114

def NamedBody268_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody268_117 : StackLang.HolProg 64 :=
.seq NamedBody268_115 NamedBody268_116

def NamedBody268_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody268_119 : StackLang.HolProg 64 :=
.seq NamedBody268_117 NamedBody268_118

def NamedBody268_120 : StackLang.HolProg 64 :=
.seq NamedBody268_112 NamedBody268_119

def NamedBody268_121 : StackLang.HolProg 64 :=
.seq NamedBody268_111 NamedBody268_120

def NamedBody268_122 : StackLang.HolProg 64 :=
.seq NamedBody268_110 NamedBody268_121

def NamedBody268_123 : StackLang.HolProg 64 :=
.seq NamedBody268_109 NamedBody268_122

def NamedBody268_124 : StackLang.HolProg 64 :=
.seq NamedBody268_108 NamedBody268_123

def NamedBody268_125 : StackLang.HolProg 64 :=
.seq NamedBody268_107 NamedBody268_124

def NamedBody268_126 : StackLang.HolProg 64 :=
.seq NamedBody268_106 NamedBody268_125

def NamedBody268_127 : StackLang.HolProg 64 :=
.seq NamedBody268_105 NamedBody268_126

def NamedBody268_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody268_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody268_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody268_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody268_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody268_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody268_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody268_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody268_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody268_137 : StackLang.HolProg 64 :=
.seq NamedBody268_135 NamedBody268_136

def NamedBody268_138 : StackLang.HolProg 64 :=
.seq NamedBody268_134 NamedBody268_137

def NamedBody268_139 : StackLang.HolProg 64 :=
.seq NamedBody268_133 NamedBody268_138

def NamedBody268_140 : StackLang.HolProg 64 :=
.seq NamedBody268_132 NamedBody268_139

def NamedBody268_141 : StackLang.HolProg 64 :=
.seq NamedBody268_131 NamedBody268_140

def NamedBody268_142 : StackLang.HolProg 64 :=
.seq NamedBody268_130 NamedBody268_141

def NamedBody268_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody268_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody268_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody268_146 : StackLang.HolProg 64 :=
.seq NamedBody268_144 NamedBody268_145

def NamedBody268_147 : StackLang.HolProg 64 :=
.seq NamedBody268_143 NamedBody268_146

def NamedBody268_148 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody268_149 : StackLang.HolProg 64 :=
.seq NamedBody268_147 NamedBody268_148

def NamedBody268_150 : StackLang.HolProg 64 :=
.call (some (NamedBody268_142, 1, 268, 4)) (Sum.inl 87) (some (NamedBody268_149, 268, 5))

def NamedBody268_151 : StackLang.HolProg 64 :=
.seq NamedBody268_129 NamedBody268_150

def NamedBody268_152 : StackLang.HolProg 64 :=
.seq NamedBody268_128 NamedBody268_151

def NamedBody268_153 : StackLang.HolProg 64 :=
.seq NamedBody268_127 NamedBody268_152

def NamedBody268_154 : StackLang.HolProg 64 :=
.seq NamedBody268_98 NamedBody268_153

def NamedBody268_155 : StackLang.HolProg 64 :=
.seq NamedBody268_95 NamedBody268_154

def NamedBody268_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody268_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody268_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 41#64)))

def NamedBody268_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody268_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 255#64)))

def NamedBody268_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 0#64))

def NamedBody268_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody268_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 42#64)))

def NamedBody268_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody268_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody268_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody268_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 43#64)

def NamedBody268_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody268_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody268_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 12

def NamedBody268_171 : StackLang.HolProg 64 :=
.seq NamedBody268_169 NamedBody268_170

def NamedBody268_172 : StackLang.HolProg 64 :=
.seq NamedBody268_168 NamedBody268_171

def NamedBody268_173 : StackLang.HolProg 64 :=
.seq NamedBody268_167 NamedBody268_172

def NamedBody268_174 : StackLang.HolProg 64 :=
.seq NamedBody268_166 NamedBody268_173

def NamedBody268_175 : StackLang.HolProg 64 :=
.seq NamedBody268_165 NamedBody268_174

def NamedBody268_176 : StackLang.HolProg 64 :=
.seq NamedBody268_164 NamedBody268_175

def NamedBody268_177 : StackLang.HolProg 64 :=
.seq NamedBody268_163 NamedBody268_176

def NamedBody268_178 : StackLang.HolProg 64 :=
.seq NamedBody268_162 NamedBody268_177

def NamedBody268_179 : StackLang.HolProg 64 :=
.seq NamedBody268_161 NamedBody268_178

def NamedBody268_180 : StackLang.HolProg 64 :=
.seq NamedBody268_160 NamedBody268_179

def NamedBody268_181 : StackLang.HolProg 64 :=
.seq NamedBody268_159 NamedBody268_180

def NamedBody268_182 : StackLang.HolProg 64 :=
.seq NamedBody268_158 NamedBody268_181

def NamedBody268_183 : StackLang.HolProg 64 :=
.seq NamedBody268_157 NamedBody268_182

def NamedBody268_184 : StackLang.HolProg 64 :=
.seq NamedBody268_156 NamedBody268_183

def NamedBody268_185 : StackLang.HolProg 64 :=
.seq NamedBody268_155 NamedBody268_184

def NamedBody268_186 : StackLang.HolProg 64 :=
.seq NamedBody268_94 NamedBody268_185

def NamedBody268_187 : StackLang.HolProg 64 :=
.seq NamedBody268_93 NamedBody268_186

def NamedBody268_188 : StackLang.HolProg 64 :=
.seq NamedBody268_92 NamedBody268_187

def NamedBody268_189 : StackLang.HolProg 64 :=
.seq NamedBody268_91 NamedBody268_188

def NamedBody268_190 : StackLang.HolProg 64 :=
.seq NamedBody268_90 NamedBody268_189

def NamedBody268_191 : StackLang.HolProg 64 :=
.seq NamedBody268_89 NamedBody268_190

def NamedBody268_192 : StackLang.HolProg 64 :=
.seq NamedBody268_88 NamedBody268_191

def NamedBody268_193 : StackLang.HolProg 64 :=
.seq NamedBody268_87 NamedBody268_192

def NamedBody268_194 : StackLang.HolProg 64 :=
.seq NamedBody268_86 NamedBody268_193

def NamedBody268_195 : StackLang.HolProg 64 :=
.seq NamedBody268_17 NamedBody268_194

def NamedBody268_196 : StackLang.HolProg 64 :=
.seq NamedBody268_8 NamedBody268_195

def NamedBody268_197 : StackLang.HolProg 64 :=
.seq NamedBody268_7 NamedBody268_196

def NamedBody268_198 : StackLang.HolProg 64 :=
.seq NamedBody268_6 NamedBody268_197

def Named268 : Nat × StackLang.HolProg 64 := (268, NamedBody268_198)
theorem Named268_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed268 = Named268 := by
  kernel_rfl
#print axioms Named268_eq
end InitECandidate.Proofs.BackendStages
