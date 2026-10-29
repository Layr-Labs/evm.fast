import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed296
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody296_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody296_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody296_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody296_3 : StackLang.HolProg 64 :=
.seq NamedBody296_1 NamedBody296_2

def NamedBody296_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody296_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody296_3 NamedBody296_4

def NamedBody296_6 : StackLang.HolProg 64 :=
.seq NamedBody296_0 NamedBody296_5

def NamedBody296_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody296_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 64#64)

def NamedBody296_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody296_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody296_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody296_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody296_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody296_14 : StackLang.HolProg 64 :=
.seq NamedBody296_12 NamedBody296_13

def NamedBody296_15 : StackLang.HolProg 64 :=
.seq NamedBody296_11 NamedBody296_14

def NamedBody296_16 : StackLang.HolProg 64 :=
.seq NamedBody296_10 NamedBody296_15

def NamedBody296_17 : StackLang.HolProg 64 :=
.seq NamedBody296_9 NamedBody296_16

def NamedBody296_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody296_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 802#64)

def NamedBody296_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody296_21 : StackLang.HolProg 64 :=
.seq NamedBody296_19 NamedBody296_20

def NamedBody296_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody296_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody296_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody296_25 : StackLang.HolProg 64 :=
.seq NamedBody296_23 NamedBody296_24

def NamedBody296_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody296_27 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody296_25 NamedBody296_26

def NamedBody296_28 : StackLang.HolProg 64 :=
.seq NamedBody296_22 NamedBody296_27

def NamedBody296_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody296_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody296_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 296 3

def NamedBody296_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody296_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody296_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody296_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody296_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody296_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody296_38 : StackLang.HolProg 64 :=
.seq NamedBody296_36 NamedBody296_37

def NamedBody296_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody296_40 : StackLang.HolProg 64 :=
.seq NamedBody296_38 NamedBody296_39

def NamedBody296_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody296_42 : StackLang.HolProg 64 :=
.seq NamedBody296_40 NamedBody296_41

def NamedBody296_43 : StackLang.HolProg 64 :=
.seq NamedBody296_35 NamedBody296_42

def NamedBody296_44 : StackLang.HolProg 64 :=
.seq NamedBody296_34 NamedBody296_43

def NamedBody296_45 : StackLang.HolProg 64 :=
.seq NamedBody296_33 NamedBody296_44

def NamedBody296_46 : StackLang.HolProg 64 :=
.seq NamedBody296_32 NamedBody296_45

def NamedBody296_47 : StackLang.HolProg 64 :=
.seq NamedBody296_31 NamedBody296_46

def NamedBody296_48 : StackLang.HolProg 64 :=
.seq NamedBody296_30 NamedBody296_47

def NamedBody296_49 : StackLang.HolProg 64 :=
.seq NamedBody296_29 NamedBody296_48

def NamedBody296_50 : StackLang.HolProg 64 :=
.seq NamedBody296_28 NamedBody296_49

def NamedBody296_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody296_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody296_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody296_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody296_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody296_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody296_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody296_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody296_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody296_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody296_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody296_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody296_63 : StackLang.HolProg 64 :=
.seq NamedBody296_61 NamedBody296_62

def NamedBody296_64 : StackLang.HolProg 64 :=
.seq NamedBody296_60 NamedBody296_63

def NamedBody296_65 : StackLang.HolProg 64 :=
.seq NamedBody296_59 NamedBody296_64

def NamedBody296_66 : StackLang.HolProg 64 :=
.seq NamedBody296_58 NamedBody296_65

def NamedBody296_67 : StackLang.HolProg 64 :=
.seq NamedBody296_57 NamedBody296_66

def NamedBody296_68 : StackLang.HolProg 64 :=
.seq NamedBody296_56 NamedBody296_67

def NamedBody296_69 : StackLang.HolProg 64 :=
.seq NamedBody296_55 NamedBody296_68

def NamedBody296_70 : StackLang.HolProg 64 :=
.seq NamedBody296_54 NamedBody296_69

def NamedBody296_71 : StackLang.HolProg 64 :=
.seq NamedBody296_53 NamedBody296_70

def NamedBody296_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody296_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody296_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody296_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody296_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody296_77 : StackLang.HolProg 64 :=
.seq NamedBody296_75 NamedBody296_76

def NamedBody296_78 : StackLang.HolProg 64 :=
.seq NamedBody296_74 NamedBody296_77

def NamedBody296_79 : StackLang.HolProg 64 :=
.seq NamedBody296_73 NamedBody296_78

def NamedBody296_80 : StackLang.HolProg 64 :=
.seq NamedBody296_72 NamedBody296_79

def NamedBody296_81 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody296_82 : StackLang.HolProg 64 :=
.seq NamedBody296_80 NamedBody296_81

def NamedBody296_83 : StackLang.HolProg 64 :=
.call (some (NamedBody296_71, 1, 296, 2)) (Sum.inl 68) (some (NamedBody296_82, 296, 3))

def NamedBody296_84 : StackLang.HolProg 64 :=
.seq NamedBody296_52 NamedBody296_83

def NamedBody296_85 : StackLang.HolProg 64 :=
.seq NamedBody296_51 NamedBody296_84

def NamedBody296_86 : StackLang.HolProg 64 :=
.seq NamedBody296_50 NamedBody296_85

def NamedBody296_87 : StackLang.HolProg 64 :=
.seq NamedBody296_21 NamedBody296_86

def NamedBody296_88 : StackLang.HolProg 64 :=
.seq NamedBody296_18 NamedBody296_87

def NamedBody296_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody296_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody296_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody296_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody296_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def NamedBody296_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody296_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody296_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def NamedBody296_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody296_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody296_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody296_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody296_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def NamedBody296_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody296_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody296_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody296_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody296_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def NamedBody296_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody296_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody296_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody296_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody296_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody296_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody296_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody296_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody296_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody296_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody296_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody296_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody296_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody296_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody296_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody296_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def NamedBody296_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody296_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody296_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody296_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody296_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 6

def NamedBody296_128 : StackLang.HolProg 64 :=
.seq NamedBody296_126 NamedBody296_127

def NamedBody296_129 : StackLang.HolProg 64 :=
.seq NamedBody296_125 NamedBody296_128

def NamedBody296_130 : StackLang.HolProg 64 :=
.seq NamedBody296_124 NamedBody296_129

def NamedBody296_131 : StackLang.HolProg 64 :=
.seq NamedBody296_123 NamedBody296_130

def NamedBody296_132 : StackLang.HolProg 64 :=
.seq NamedBody296_122 NamedBody296_131

def NamedBody296_133 : StackLang.HolProg 64 :=
.seq NamedBody296_121 NamedBody296_132

def NamedBody296_134 : StackLang.HolProg 64 :=
.seq NamedBody296_120 NamedBody296_133

def NamedBody296_135 : StackLang.HolProg 64 :=
.seq NamedBody296_119 NamedBody296_134

def NamedBody296_136 : StackLang.HolProg 64 :=
.seq NamedBody296_118 NamedBody296_135

def NamedBody296_137 : StackLang.HolProg 64 :=
.seq NamedBody296_117 NamedBody296_136

def NamedBody296_138 : StackLang.HolProg 64 :=
.seq NamedBody296_116 NamedBody296_137

def NamedBody296_139 : StackLang.HolProg 64 :=
.seq NamedBody296_115 NamedBody296_138

def NamedBody296_140 : StackLang.HolProg 64 :=
.seq NamedBody296_114 NamedBody296_139

def NamedBody296_141 : StackLang.HolProg 64 :=
.seq NamedBody296_113 NamedBody296_140

def NamedBody296_142 : StackLang.HolProg 64 :=
.seq NamedBody296_112 NamedBody296_141

def NamedBody296_143 : StackLang.HolProg 64 :=
.seq NamedBody296_111 NamedBody296_142

def NamedBody296_144 : StackLang.HolProg 64 :=
.seq NamedBody296_110 NamedBody296_143

def NamedBody296_145 : StackLang.HolProg 64 :=
.seq NamedBody296_109 NamedBody296_144

def NamedBody296_146 : StackLang.HolProg 64 :=
.seq NamedBody296_108 NamedBody296_145

def NamedBody296_147 : StackLang.HolProg 64 :=
.seq NamedBody296_107 NamedBody296_146

def NamedBody296_148 : StackLang.HolProg 64 :=
.seq NamedBody296_106 NamedBody296_147

def NamedBody296_149 : StackLang.HolProg 64 :=
.seq NamedBody296_105 NamedBody296_148

def NamedBody296_150 : StackLang.HolProg 64 :=
.seq NamedBody296_104 NamedBody296_149

def NamedBody296_151 : StackLang.HolProg 64 :=
.seq NamedBody296_103 NamedBody296_150

def NamedBody296_152 : StackLang.HolProg 64 :=
.seq NamedBody296_102 NamedBody296_151

def NamedBody296_153 : StackLang.HolProg 64 :=
.seq NamedBody296_101 NamedBody296_152

def NamedBody296_154 : StackLang.HolProg 64 :=
.seq NamedBody296_100 NamedBody296_153

def NamedBody296_155 : StackLang.HolProg 64 :=
.seq NamedBody296_99 NamedBody296_154

def NamedBody296_156 : StackLang.HolProg 64 :=
.seq NamedBody296_98 NamedBody296_155

def NamedBody296_157 : StackLang.HolProg 64 :=
.seq NamedBody296_97 NamedBody296_156

def NamedBody296_158 : StackLang.HolProg 64 :=
.seq NamedBody296_96 NamedBody296_157

def NamedBody296_159 : StackLang.HolProg 64 :=
.seq NamedBody296_95 NamedBody296_158

def NamedBody296_160 : StackLang.HolProg 64 :=
.seq NamedBody296_94 NamedBody296_159

def NamedBody296_161 : StackLang.HolProg 64 :=
.seq NamedBody296_93 NamedBody296_160

def NamedBody296_162 : StackLang.HolProg 64 :=
.seq NamedBody296_92 NamedBody296_161

def NamedBody296_163 : StackLang.HolProg 64 :=
.seq NamedBody296_91 NamedBody296_162

def NamedBody296_164 : StackLang.HolProg 64 :=
.seq NamedBody296_90 NamedBody296_163

def NamedBody296_165 : StackLang.HolProg 64 :=
.seq NamedBody296_89 NamedBody296_164

def NamedBody296_166 : StackLang.HolProg 64 :=
.seq NamedBody296_88 NamedBody296_165

def NamedBody296_167 : StackLang.HolProg 64 :=
.seq NamedBody296_17 NamedBody296_166

def NamedBody296_168 : StackLang.HolProg 64 :=
.seq NamedBody296_8 NamedBody296_167

def NamedBody296_169 : StackLang.HolProg 64 :=
.seq NamedBody296_7 NamedBody296_168

def NamedBody296_170 : StackLang.HolProg 64 :=
.seq NamedBody296_6 NamedBody296_169

def Named296 : Nat × StackLang.HolProg 64 := (296, NamedBody296_170)
theorem Named296_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed296 = Named296 := by
  kernel_rfl
#print axioms Named296_eq
end InitECandidate.Proofs.BackendStages
