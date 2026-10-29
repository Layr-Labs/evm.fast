import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed240
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody240_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def NamedBody240_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody240_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody240_3 : StackLang.HolProg 64 :=
.seq NamedBody240_1 NamedBody240_2

def NamedBody240_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody240_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody240_3 NamedBody240_4

def NamedBody240_6 : StackLang.HolProg 64 :=
.seq NamedBody240_0 NamedBody240_5

def NamedBody240_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody240_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody240_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody240_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody240_11 : StackLang.HolProg 64 :=
.seq NamedBody240_9 NamedBody240_10

def NamedBody240_12 : StackLang.HolProg 64 :=
.seq NamedBody240_8 NamedBody240_11

def NamedBody240_13 : StackLang.HolProg 64 :=
.seq NamedBody240_7 NamedBody240_12

def NamedBody240_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody240_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 461#64)

def NamedBody240_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody240_17 : StackLang.HolProg 64 :=
.seq NamedBody240_15 NamedBody240_16

def NamedBody240_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody240_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody240_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody240_21 : StackLang.HolProg 64 :=
.seq NamedBody240_19 NamedBody240_20

def NamedBody240_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody240_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody240_21 NamedBody240_22

def NamedBody240_24 : StackLang.HolProg 64 :=
.seq NamedBody240_18 NamedBody240_23

def NamedBody240_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody240_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody240_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 240 3

def NamedBody240_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody240_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody240_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody240_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody240_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody240_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody240_34 : StackLang.HolProg 64 :=
.seq NamedBody240_32 NamedBody240_33

def NamedBody240_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody240_36 : StackLang.HolProg 64 :=
.seq NamedBody240_34 NamedBody240_35

def NamedBody240_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody240_38 : StackLang.HolProg 64 :=
.seq NamedBody240_36 NamedBody240_37

def NamedBody240_39 : StackLang.HolProg 64 :=
.seq NamedBody240_31 NamedBody240_38

def NamedBody240_40 : StackLang.HolProg 64 :=
.seq NamedBody240_30 NamedBody240_39

def NamedBody240_41 : StackLang.HolProg 64 :=
.seq NamedBody240_29 NamedBody240_40

def NamedBody240_42 : StackLang.HolProg 64 :=
.seq NamedBody240_28 NamedBody240_41

def NamedBody240_43 : StackLang.HolProg 64 :=
.seq NamedBody240_27 NamedBody240_42

def NamedBody240_44 : StackLang.HolProg 64 :=
.seq NamedBody240_26 NamedBody240_43

def NamedBody240_45 : StackLang.HolProg 64 :=
.seq NamedBody240_25 NamedBody240_44

def NamedBody240_46 : StackLang.HolProg 64 :=
.seq NamedBody240_24 NamedBody240_45

def NamedBody240_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody240_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody240_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody240_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody240_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody240_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody240_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody240_54 : StackLang.HolProg 64 :=
.seq NamedBody240_52 NamedBody240_53

def NamedBody240_55 : StackLang.HolProg 64 :=
.seq NamedBody240_51 NamedBody240_54

def NamedBody240_56 : StackLang.HolProg 64 :=
.seq NamedBody240_50 NamedBody240_55

def NamedBody240_57 : StackLang.HolProg 64 :=
.seq NamedBody240_49 NamedBody240_56

def NamedBody240_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody240_59 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody240_60 : StackLang.HolProg 64 :=
.seq NamedBody240_58 NamedBody240_59

def NamedBody240_61 : StackLang.HolProg 64 :=
.call (some (NamedBody240_57, 1, 240, 2)) (Sum.inl 69) (some (NamedBody240_60, 240, 3))

def NamedBody240_62 : StackLang.HolProg 64 :=
.seq NamedBody240_48 NamedBody240_61

def NamedBody240_63 : StackLang.HolProg 64 :=
.seq NamedBody240_47 NamedBody240_62

def NamedBody240_64 : StackLang.HolProg 64 :=
.seq NamedBody240_46 NamedBody240_63

def NamedBody240_65 : StackLang.HolProg 64 :=
.seq NamedBody240_17 NamedBody240_64

def NamedBody240_66 : StackLang.HolProg 64 :=
.seq NamedBody240_14 NamedBody240_65

def NamedBody240_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody240_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 64#64)

def NamedBody240_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody240_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody240_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 462#64)

def NamedBody240_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody240_73 : StackLang.HolProg 64 :=
.seq NamedBody240_71 NamedBody240_72

def NamedBody240_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody240_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody240_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody240_77 : StackLang.HolProg 64 :=
.seq NamedBody240_75 NamedBody240_76

def NamedBody240_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody240_79 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody240_77 NamedBody240_78

def NamedBody240_80 : StackLang.HolProg 64 :=
.seq NamedBody240_74 NamedBody240_79

def NamedBody240_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody240_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody240_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 240 5

def NamedBody240_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody240_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody240_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody240_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody240_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody240_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody240_90 : StackLang.HolProg 64 :=
.seq NamedBody240_88 NamedBody240_89

def NamedBody240_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody240_92 : StackLang.HolProg 64 :=
.seq NamedBody240_90 NamedBody240_91

def NamedBody240_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody240_94 : StackLang.HolProg 64 :=
.seq NamedBody240_92 NamedBody240_93

def NamedBody240_95 : StackLang.HolProg 64 :=
.seq NamedBody240_87 NamedBody240_94

def NamedBody240_96 : StackLang.HolProg 64 :=
.seq NamedBody240_86 NamedBody240_95

def NamedBody240_97 : StackLang.HolProg 64 :=
.seq NamedBody240_85 NamedBody240_96

def NamedBody240_98 : StackLang.HolProg 64 :=
.seq NamedBody240_84 NamedBody240_97

def NamedBody240_99 : StackLang.HolProg 64 :=
.seq NamedBody240_83 NamedBody240_98

def NamedBody240_100 : StackLang.HolProg 64 :=
.seq NamedBody240_82 NamedBody240_99

def NamedBody240_101 : StackLang.HolProg 64 :=
.seq NamedBody240_81 NamedBody240_100

def NamedBody240_102 : StackLang.HolProg 64 :=
.seq NamedBody240_80 NamedBody240_101

def NamedBody240_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody240_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody240_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody240_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody240_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody240_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody240_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody240_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody240_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody240_112 : StackLang.HolProg 64 :=
.seq NamedBody240_110 NamedBody240_111

def NamedBody240_113 : StackLang.HolProg 64 :=
.seq NamedBody240_109 NamedBody240_112

def NamedBody240_114 : StackLang.HolProg 64 :=
.seq NamedBody240_108 NamedBody240_113

def NamedBody240_115 : StackLang.HolProg 64 :=
.seq NamedBody240_107 NamedBody240_114

def NamedBody240_116 : StackLang.HolProg 64 :=
.seq NamedBody240_106 NamedBody240_115

def NamedBody240_117 : StackLang.HolProg 64 :=
.seq NamedBody240_105 NamedBody240_116

def NamedBody240_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody240_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody240_120 : StackLang.HolProg 64 :=
.seq NamedBody240_118 NamedBody240_119

def NamedBody240_121 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody240_122 : StackLang.HolProg 64 :=
.seq NamedBody240_120 NamedBody240_121

def NamedBody240_123 : StackLang.HolProg 64 :=
.call (some (NamedBody240_117, 1, 240, 4)) (Sum.inl 68) (some (NamedBody240_122, 240, 5))

def NamedBody240_124 : StackLang.HolProg 64 :=
.seq NamedBody240_104 NamedBody240_123

def NamedBody240_125 : StackLang.HolProg 64 :=
.seq NamedBody240_103 NamedBody240_124

def NamedBody240_126 : StackLang.HolProg 64 :=
.seq NamedBody240_102 NamedBody240_125

def NamedBody240_127 : StackLang.HolProg 64 :=
.seq NamedBody240_73 NamedBody240_126

def NamedBody240_128 : StackLang.HolProg 64 :=
.seq NamedBody240_70 NamedBody240_127

def NamedBody240_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody240_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody240_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody240_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody240_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody240_134 : StackLang.HolProg 64 :=
.seq NamedBody240_132 NamedBody240_133

def NamedBody240_135 : StackLang.HolProg 64 :=
.seq NamedBody240_131 NamedBody240_134

def NamedBody240_136 : StackLang.HolProg 64 :=
.seq NamedBody240_130 NamedBody240_135

def NamedBody240_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody240_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 463#64)

def NamedBody240_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody240_140 : StackLang.HolProg 64 :=
.seq NamedBody240_138 NamedBody240_139

def NamedBody240_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody240_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody240_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody240_144 : StackLang.HolProg 64 :=
.seq NamedBody240_142 NamedBody240_143

def NamedBody240_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody240_146 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody240_144 NamedBody240_145

def NamedBody240_147 : StackLang.HolProg 64 :=
.seq NamedBody240_141 NamedBody240_146

def NamedBody240_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody240_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody240_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 240 7

def NamedBody240_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody240_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody240_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody240_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody240_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody240_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody240_157 : StackLang.HolProg 64 :=
.seq NamedBody240_155 NamedBody240_156

def NamedBody240_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody240_159 : StackLang.HolProg 64 :=
.seq NamedBody240_157 NamedBody240_158

def NamedBody240_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody240_161 : StackLang.HolProg 64 :=
.seq NamedBody240_159 NamedBody240_160

def NamedBody240_162 : StackLang.HolProg 64 :=
.seq NamedBody240_154 NamedBody240_161

def NamedBody240_163 : StackLang.HolProg 64 :=
.seq NamedBody240_153 NamedBody240_162

def NamedBody240_164 : StackLang.HolProg 64 :=
.seq NamedBody240_152 NamedBody240_163

def NamedBody240_165 : StackLang.HolProg 64 :=
.seq NamedBody240_151 NamedBody240_164

def NamedBody240_166 : StackLang.HolProg 64 :=
.seq NamedBody240_150 NamedBody240_165

def NamedBody240_167 : StackLang.HolProg 64 :=
.seq NamedBody240_149 NamedBody240_166

def NamedBody240_168 : StackLang.HolProg 64 :=
.seq NamedBody240_148 NamedBody240_167

def NamedBody240_169 : StackLang.HolProg 64 :=
.seq NamedBody240_147 NamedBody240_168

def NamedBody240_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody240_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody240_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody240_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody240_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody240_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody240_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody240_177 : StackLang.HolProg 64 :=
.seq NamedBody240_175 NamedBody240_176

def NamedBody240_178 : StackLang.HolProg 64 :=
.seq NamedBody240_174 NamedBody240_177

def NamedBody240_179 : StackLang.HolProg 64 :=
.seq NamedBody240_173 NamedBody240_178

def NamedBody240_180 : StackLang.HolProg 64 :=
.seq NamedBody240_172 NamedBody240_179

def NamedBody240_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody240_182 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody240_183 : StackLang.HolProg 64 :=
.seq NamedBody240_181 NamedBody240_182

def NamedBody240_184 : StackLang.HolProg 64 :=
.call (some (NamedBody240_180, 1, 240, 6)) (Sum.inl 237) (some (NamedBody240_183, 240, 7))

def NamedBody240_185 : StackLang.HolProg 64 :=
.seq NamedBody240_171 NamedBody240_184

def NamedBody240_186 : StackLang.HolProg 64 :=
.seq NamedBody240_170 NamedBody240_185

def NamedBody240_187 : StackLang.HolProg 64 :=
.seq NamedBody240_169 NamedBody240_186

def NamedBody240_188 : StackLang.HolProg 64 :=
.seq NamedBody240_140 NamedBody240_187

def NamedBody240_189 : StackLang.HolProg 64 :=
.seq NamedBody240_137 NamedBody240_188

def NamedBody240_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody240_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody240_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody240_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody240_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 32#64)

def NamedBody240_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody240_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody240_197 : StackLang.HolProg 64 :=
.seq NamedBody240_195 NamedBody240_196

def NamedBody240_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody240_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 464#64)

def NamedBody240_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody240_201 : StackLang.HolProg 64 :=
.seq NamedBody240_199 NamedBody240_200

def NamedBody240_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody240_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody240_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody240_205 : StackLang.HolProg 64 :=
.seq NamedBody240_203 NamedBody240_204

def NamedBody240_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody240_207 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody240_205 NamedBody240_206

def NamedBody240_208 : StackLang.HolProg 64 :=
.seq NamedBody240_202 NamedBody240_207

def NamedBody240_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody240_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody240_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 240 9

def NamedBody240_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody240_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody240_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody240_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody240_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody240_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody240_218 : StackLang.HolProg 64 :=
.seq NamedBody240_216 NamedBody240_217

def NamedBody240_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody240_220 : StackLang.HolProg 64 :=
.seq NamedBody240_218 NamedBody240_219

def NamedBody240_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody240_222 : StackLang.HolProg 64 :=
.seq NamedBody240_220 NamedBody240_221

def NamedBody240_223 : StackLang.HolProg 64 :=
.seq NamedBody240_215 NamedBody240_222

def NamedBody240_224 : StackLang.HolProg 64 :=
.seq NamedBody240_214 NamedBody240_223

def NamedBody240_225 : StackLang.HolProg 64 :=
.seq NamedBody240_213 NamedBody240_224

def NamedBody240_226 : StackLang.HolProg 64 :=
.seq NamedBody240_212 NamedBody240_225

def NamedBody240_227 : StackLang.HolProg 64 :=
.seq NamedBody240_211 NamedBody240_226

def NamedBody240_228 : StackLang.HolProg 64 :=
.seq NamedBody240_210 NamedBody240_227

def NamedBody240_229 : StackLang.HolProg 64 :=
.seq NamedBody240_209 NamedBody240_228

def NamedBody240_230 : StackLang.HolProg 64 :=
.seq NamedBody240_208 NamedBody240_229

def NamedBody240_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody240_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody240_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody240_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody240_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody240_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody240_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody240_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody240_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody240_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody240_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody240_242 : StackLang.HolProg 64 :=
.seq NamedBody240_240 NamedBody240_241

def NamedBody240_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody240_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody240_245 : StackLang.HolProg 64 :=
.seq NamedBody240_243 NamedBody240_244

def NamedBody240_246 : StackLang.HolProg 64 :=
.seq NamedBody240_242 NamedBody240_245

def NamedBody240_247 : StackLang.HolProg 64 :=
.seq NamedBody240_239 NamedBody240_246

def NamedBody240_248 : StackLang.HolProg 64 :=
.seq NamedBody240_238 NamedBody240_247

def NamedBody240_249 : StackLang.HolProg 64 :=
.seq NamedBody240_237 NamedBody240_248

def NamedBody240_250 : StackLang.HolProg 64 :=
.seq NamedBody240_236 NamedBody240_249

def NamedBody240_251 : StackLang.HolProg 64 :=
.seq NamedBody240_235 NamedBody240_250

def NamedBody240_252 : StackLang.HolProg 64 :=
.seq NamedBody240_234 NamedBody240_251

def NamedBody240_253 : StackLang.HolProg 64 :=
.seq NamedBody240_233 NamedBody240_252

def NamedBody240_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody240_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody240_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody240_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody240_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody240_259 : StackLang.HolProg 64 :=
.seq NamedBody240_257 NamedBody240_258

def NamedBody240_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody240_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody240_262 : StackLang.HolProg 64 :=
.seq NamedBody240_260 NamedBody240_261

def NamedBody240_263 : StackLang.HolProg 64 :=
.seq NamedBody240_259 NamedBody240_262

def NamedBody240_264 : StackLang.HolProg 64 :=
.seq NamedBody240_256 NamedBody240_263

def NamedBody240_265 : StackLang.HolProg 64 :=
.seq NamedBody240_255 NamedBody240_264

def NamedBody240_266 : StackLang.HolProg 64 :=
.seq NamedBody240_254 NamedBody240_265

def NamedBody240_267 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody240_268 : StackLang.HolProg 64 :=
.seq NamedBody240_266 NamedBody240_267

def NamedBody240_269 : StackLang.HolProg 64 :=
.call (some (NamedBody240_253, 1, 240, 8)) (Sum.inl 78) (some (NamedBody240_268, 240, 9))

def NamedBody240_270 : StackLang.HolProg 64 :=
.seq NamedBody240_232 NamedBody240_269

def NamedBody240_271 : StackLang.HolProg 64 :=
.seq NamedBody240_231 NamedBody240_270

def NamedBody240_272 : StackLang.HolProg 64 :=
.seq NamedBody240_230 NamedBody240_271

def NamedBody240_273 : StackLang.HolProg 64 :=
.seq NamedBody240_201 NamedBody240_272

def NamedBody240_274 : StackLang.HolProg 64 :=
.seq NamedBody240_198 NamedBody240_273

def NamedBody240_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody240_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 0#64)

def NamedBody240_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody240_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody240_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody240_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody240_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody240_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody240_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody240_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody240_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def NamedBody240_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody240_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 1#64)

def NamedBody240_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody240_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 13 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def NamedBody240_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody240_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 13 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody240_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody240_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody240_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def NamedBody240_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody240_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 8 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody240_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody240_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def NamedBody240_299 : StackLang.HolProg 64 :=
.seq NamedBody240_297 NamedBody240_298

def NamedBody240_300 : StackLang.HolProg 64 :=
.seq NamedBody240_296 NamedBody240_299

def NamedBody240_301 : StackLang.HolProg 64 :=
.seq NamedBody240_295 NamedBody240_300

def NamedBody240_302 : StackLang.HolProg 64 :=
.seq NamedBody240_294 NamedBody240_301

def NamedBody240_303 : StackLang.HolProg 64 :=
.seq NamedBody240_293 NamedBody240_302

def NamedBody240_304 : StackLang.HolProg 64 :=
.seq NamedBody240_292 NamedBody240_303

def NamedBody240_305 : StackLang.HolProg 64 :=
.seq NamedBody240_291 NamedBody240_304

def NamedBody240_306 : StackLang.HolProg 64 :=
.seq NamedBody240_290 NamedBody240_305

def NamedBody240_307 : StackLang.HolProg 64 :=
.seq NamedBody240_289 NamedBody240_306

def NamedBody240_308 : StackLang.HolProg 64 :=
.seq NamedBody240_288 NamedBody240_307

def NamedBody240_309 : StackLang.HolProg 64 :=
.seq NamedBody240_287 NamedBody240_308

def NamedBody240_310 : StackLang.HolProg 64 :=
.seq NamedBody240_286 NamedBody240_309

def NamedBody240_311 : StackLang.HolProg 64 :=
.seq NamedBody240_285 NamedBody240_310

def NamedBody240_312 : StackLang.HolProg 64 :=
.seq NamedBody240_284 NamedBody240_311

def NamedBody240_313 : StackLang.HolProg 64 :=
.seq NamedBody240_283 NamedBody240_312

def NamedBody240_314 : StackLang.HolProg 64 :=
.seq NamedBody240_282 NamedBody240_313

def NamedBody240_315 : StackLang.HolProg 64 :=
.seq NamedBody240_281 NamedBody240_314

def NamedBody240_316 : StackLang.HolProg 64 :=
.seq NamedBody240_280 NamedBody240_315

def NamedBody240_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody240_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody240_319 : StackLang.HolProg 64 :=
.seq NamedBody240_317 NamedBody240_318

def NamedBody240_320 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 8 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7) NamedBody240_316 NamedBody240_319

def NamedBody240_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody240_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody240_323 : StackLang.HolProg 64 :=
.seq NamedBody240_321 NamedBody240_322

def NamedBody240_324 : StackLang.HolProg 64 :=
.seq NamedBody240_320 NamedBody240_323

def NamedBody240_325 : StackLang.HolProg 64 :=
.seq NamedBody240_279 NamedBody240_324

def NamedBody240_326 : StackLang.HolProg 64 :=
.loop NamedBody240_325

def NamedBody240_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody240_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody240_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody240_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 465#64)

def NamedBody240_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody240_332 : StackLang.HolProg 64 :=
.seq NamedBody240_330 NamedBody240_331

def NamedBody240_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody240_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody240_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody240_336 : StackLang.HolProg 64 :=
.seq NamedBody240_334 NamedBody240_335

def NamedBody240_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody240_338 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody240_336 NamedBody240_337

def NamedBody240_339 : StackLang.HolProg 64 :=
.seq NamedBody240_333 NamedBody240_338

def NamedBody240_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody240_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody240_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 240 11

def NamedBody240_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody240_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody240_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody240_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody240_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody240_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody240_349 : StackLang.HolProg 64 :=
.seq NamedBody240_347 NamedBody240_348

def NamedBody240_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody240_351 : StackLang.HolProg 64 :=
.seq NamedBody240_349 NamedBody240_350

def NamedBody240_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody240_353 : StackLang.HolProg 64 :=
.seq NamedBody240_351 NamedBody240_352

def NamedBody240_354 : StackLang.HolProg 64 :=
.seq NamedBody240_346 NamedBody240_353

def NamedBody240_355 : StackLang.HolProg 64 :=
.seq NamedBody240_345 NamedBody240_354

def NamedBody240_356 : StackLang.HolProg 64 :=
.seq NamedBody240_344 NamedBody240_355

def NamedBody240_357 : StackLang.HolProg 64 :=
.seq NamedBody240_343 NamedBody240_356

def NamedBody240_358 : StackLang.HolProg 64 :=
.seq NamedBody240_342 NamedBody240_357

def NamedBody240_359 : StackLang.HolProg 64 :=
.seq NamedBody240_341 NamedBody240_358

def NamedBody240_360 : StackLang.HolProg 64 :=
.seq NamedBody240_340 NamedBody240_359

def NamedBody240_361 : StackLang.HolProg 64 :=
.seq NamedBody240_339 NamedBody240_360

def NamedBody240_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody240_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody240_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody240_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody240_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody240_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody240_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody240_369 : StackLang.HolProg 64 :=
.seq NamedBody240_367 NamedBody240_368

def NamedBody240_370 : StackLang.HolProg 64 :=
.seq NamedBody240_366 NamedBody240_369

def NamedBody240_371 : StackLang.HolProg 64 :=
.seq NamedBody240_365 NamedBody240_370

def NamedBody240_372 : StackLang.HolProg 64 :=
.seq NamedBody240_364 NamedBody240_371

def NamedBody240_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody240_374 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody240_375 : StackLang.HolProg 64 :=
.seq NamedBody240_373 NamedBody240_374

def NamedBody240_376 : StackLang.HolProg 64 :=
.call (some (NamedBody240_372, 1, 240, 10)) (Sum.inl 154) (some (NamedBody240_375, 240, 11))

def NamedBody240_377 : StackLang.HolProg 64 :=
.seq NamedBody240_363 NamedBody240_376

def NamedBody240_378 : StackLang.HolProg 64 :=
.seq NamedBody240_362 NamedBody240_377

def NamedBody240_379 : StackLang.HolProg 64 :=
.seq NamedBody240_361 NamedBody240_378

def NamedBody240_380 : StackLang.HolProg 64 :=
.seq NamedBody240_332 NamedBody240_379

def NamedBody240_381 : StackLang.HolProg 64 :=
.seq NamedBody240_329 NamedBody240_380

def NamedBody240_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody240_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody240_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody240_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 466#64)

def NamedBody240_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody240_387 : StackLang.HolProg 64 :=
.seq NamedBody240_385 NamedBody240_386

def NamedBody240_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody240_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody240_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody240_391 : StackLang.HolProg 64 :=
.seq NamedBody240_389 NamedBody240_390

def NamedBody240_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody240_393 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody240_391 NamedBody240_392

def NamedBody240_394 : StackLang.HolProg 64 :=
.seq NamedBody240_388 NamedBody240_393

def NamedBody240_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody240_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody240_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 240 13

def NamedBody240_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody240_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody240_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody240_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody240_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody240_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody240_404 : StackLang.HolProg 64 :=
.seq NamedBody240_402 NamedBody240_403

def NamedBody240_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody240_406 : StackLang.HolProg 64 :=
.seq NamedBody240_404 NamedBody240_405

def NamedBody240_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody240_408 : StackLang.HolProg 64 :=
.seq NamedBody240_406 NamedBody240_407

def NamedBody240_409 : StackLang.HolProg 64 :=
.seq NamedBody240_401 NamedBody240_408

def NamedBody240_410 : StackLang.HolProg 64 :=
.seq NamedBody240_400 NamedBody240_409

def NamedBody240_411 : StackLang.HolProg 64 :=
.seq NamedBody240_399 NamedBody240_410

def NamedBody240_412 : StackLang.HolProg 64 :=
.seq NamedBody240_398 NamedBody240_411

def NamedBody240_413 : StackLang.HolProg 64 :=
.seq NamedBody240_397 NamedBody240_412

def NamedBody240_414 : StackLang.HolProg 64 :=
.seq NamedBody240_396 NamedBody240_413

def NamedBody240_415 : StackLang.HolProg 64 :=
.seq NamedBody240_395 NamedBody240_414

def NamedBody240_416 : StackLang.HolProg 64 :=
.seq NamedBody240_394 NamedBody240_415

def NamedBody240_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody240_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody240_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody240_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody240_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody240_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody240_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody240_424 : StackLang.HolProg 64 :=
.seq NamedBody240_422 NamedBody240_423

def NamedBody240_425 : StackLang.HolProg 64 :=
.seq NamedBody240_421 NamedBody240_424

def NamedBody240_426 : StackLang.HolProg 64 :=
.seq NamedBody240_420 NamedBody240_425

def NamedBody240_427 : StackLang.HolProg 64 :=
.seq NamedBody240_419 NamedBody240_426

def NamedBody240_428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody240_429 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody240_430 : StackLang.HolProg 64 :=
.seq NamedBody240_428 NamedBody240_429

def NamedBody240_431 : StackLang.HolProg 64 :=
.call (some (NamedBody240_427, 1, 240, 12)) (Sum.inl 70) (some (NamedBody240_430, 240, 13))

def NamedBody240_432 : StackLang.HolProg 64 :=
.seq NamedBody240_418 NamedBody240_431

def NamedBody240_433 : StackLang.HolProg 64 :=
.seq NamedBody240_417 NamedBody240_432

def NamedBody240_434 : StackLang.HolProg 64 :=
.seq NamedBody240_416 NamedBody240_433

def NamedBody240_435 : StackLang.HolProg 64 :=
.seq NamedBody240_387 NamedBody240_434

def NamedBody240_436 : StackLang.HolProg 64 :=
.seq NamedBody240_384 NamedBody240_435

def NamedBody240_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody240_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody240_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody240_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def NamedBody240_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody240_442 : StackLang.HolProg 64 :=
.seq NamedBody240_440 NamedBody240_441

def NamedBody240_443 : StackLang.HolProg 64 :=
.seq NamedBody240_439 NamedBody240_442

def NamedBody240_444 : StackLang.HolProg 64 :=
.seq NamedBody240_438 NamedBody240_443

def NamedBody240_445 : StackLang.HolProg 64 :=
.seq NamedBody240_437 NamedBody240_444

def NamedBody240_446 : StackLang.HolProg 64 :=
.seq NamedBody240_436 NamedBody240_445

def NamedBody240_447 : StackLang.HolProg 64 :=
.seq NamedBody240_383 NamedBody240_446

def NamedBody240_448 : StackLang.HolProg 64 :=
.seq NamedBody240_382 NamedBody240_447

def NamedBody240_449 : StackLang.HolProg 64 :=
.seq NamedBody240_381 NamedBody240_448

def NamedBody240_450 : StackLang.HolProg 64 :=
.seq NamedBody240_328 NamedBody240_449

def NamedBody240_451 : StackLang.HolProg 64 :=
.seq NamedBody240_327 NamedBody240_450

def NamedBody240_452 : StackLang.HolProg 64 :=
.seq NamedBody240_326 NamedBody240_451

def NamedBody240_453 : StackLang.HolProg 64 :=
.seq NamedBody240_278 NamedBody240_452

def NamedBody240_454 : StackLang.HolProg 64 :=
.seq NamedBody240_277 NamedBody240_453

def NamedBody240_455 : StackLang.HolProg 64 :=
.seq NamedBody240_276 NamedBody240_454

def NamedBody240_456 : StackLang.HolProg 64 :=
.seq NamedBody240_275 NamedBody240_455

def NamedBody240_457 : StackLang.HolProg 64 :=
.seq NamedBody240_274 NamedBody240_456

def NamedBody240_458 : StackLang.HolProg 64 :=
.seq NamedBody240_197 NamedBody240_457

def NamedBody240_459 : StackLang.HolProg 64 :=
.seq NamedBody240_194 NamedBody240_458

def NamedBody240_460 : StackLang.HolProg 64 :=
.seq NamedBody240_193 NamedBody240_459

def NamedBody240_461 : StackLang.HolProg 64 :=
.seq NamedBody240_192 NamedBody240_460

def NamedBody240_462 : StackLang.HolProg 64 :=
.seq NamedBody240_191 NamedBody240_461

def NamedBody240_463 : StackLang.HolProg 64 :=
.seq NamedBody240_190 NamedBody240_462

def NamedBody240_464 : StackLang.HolProg 64 :=
.seq NamedBody240_189 NamedBody240_463

def NamedBody240_465 : StackLang.HolProg 64 :=
.seq NamedBody240_136 NamedBody240_464

def NamedBody240_466 : StackLang.HolProg 64 :=
.seq NamedBody240_129 NamedBody240_465

def NamedBody240_467 : StackLang.HolProg 64 :=
.seq NamedBody240_128 NamedBody240_466

def NamedBody240_468 : StackLang.HolProg 64 :=
.seq NamedBody240_69 NamedBody240_467

def NamedBody240_469 : StackLang.HolProg 64 :=
.seq NamedBody240_68 NamedBody240_468

def NamedBody240_470 : StackLang.HolProg 64 :=
.seq NamedBody240_67 NamedBody240_469

def NamedBody240_471 : StackLang.HolProg 64 :=
.seq NamedBody240_66 NamedBody240_470

def NamedBody240_472 : StackLang.HolProg 64 :=
.seq NamedBody240_13 NamedBody240_471

def NamedBody240_473 : StackLang.HolProg 64 :=
.seq NamedBody240_6 NamedBody240_472

def Named240 : Nat × StackLang.HolProg 64 := (240, NamedBody240_473)
theorem Named240_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed240 = Named240 := by
  kernel_rfl
#print axioms Named240_eq
end InitECandidate.Proofs.BackendStages
