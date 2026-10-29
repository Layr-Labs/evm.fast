import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed364
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody364_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def NamedBody364_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody364_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody364_3 : StackLang.HolProg 64 :=
.seq NamedBody364_1 NamedBody364_2

def NamedBody364_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody364_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody364_3 NamedBody364_4

def NamedBody364_6 : StackLang.HolProg 64 :=
.seq NamedBody364_0 NamedBody364_5

def NamedBody364_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody364_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody364_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody364_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody364_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody364_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody364_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody364_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody364_15 : StackLang.HolProg 64 :=
.seq NamedBody364_13 NamedBody364_14

def NamedBody364_16 : StackLang.HolProg 64 :=
.seq NamedBody364_12 NamedBody364_15

def NamedBody364_17 : StackLang.HolProg 64 :=
.seq NamedBody364_11 NamedBody364_16

def NamedBody364_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody364_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody364_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody364_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 120#64)

def NamedBody364_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody364_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 12 1 1 11))

def NamedBody364_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody364_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody364_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody364_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody364_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody364_29 : StackLang.HolProg 64 :=
.seq NamedBody364_27 NamedBody364_28

def NamedBody364_30 : StackLang.HolProg 64 :=
.seq NamedBody364_26 NamedBody364_29

def NamedBody364_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody364_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1049#64)

def NamedBody364_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody364_34 : StackLang.HolProg 64 :=
.seq NamedBody364_32 NamedBody364_33

def NamedBody364_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody364_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody364_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody364_38 : StackLang.HolProg 64 :=
.seq NamedBody364_36 NamedBody364_37

def NamedBody364_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody364_40 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody364_38 NamedBody364_39

def NamedBody364_41 : StackLang.HolProg 64 :=
.seq NamedBody364_35 NamedBody364_40

def NamedBody364_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody364_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody364_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 364 3

def NamedBody364_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody364_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody364_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody364_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody364_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody364_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody364_51 : StackLang.HolProg 64 :=
.seq NamedBody364_49 NamedBody364_50

def NamedBody364_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody364_53 : StackLang.HolProg 64 :=
.seq NamedBody364_51 NamedBody364_52

def NamedBody364_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody364_55 : StackLang.HolProg 64 :=
.seq NamedBody364_53 NamedBody364_54

def NamedBody364_56 : StackLang.HolProg 64 :=
.seq NamedBody364_48 NamedBody364_55

def NamedBody364_57 : StackLang.HolProg 64 :=
.seq NamedBody364_47 NamedBody364_56

def NamedBody364_58 : StackLang.HolProg 64 :=
.seq NamedBody364_46 NamedBody364_57

def NamedBody364_59 : StackLang.HolProg 64 :=
.seq NamedBody364_45 NamedBody364_58

def NamedBody364_60 : StackLang.HolProg 64 :=
.seq NamedBody364_44 NamedBody364_59

def NamedBody364_61 : StackLang.HolProg 64 :=
.seq NamedBody364_43 NamedBody364_60

def NamedBody364_62 : StackLang.HolProg 64 :=
.seq NamedBody364_42 NamedBody364_61

def NamedBody364_63 : StackLang.HolProg 64 :=
.seq NamedBody364_41 NamedBody364_62

def NamedBody364_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody364_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody364_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody364_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody364_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody364_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody364_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody364_71 : StackLang.HolProg 64 :=
.seq NamedBody364_69 NamedBody364_70

def NamedBody364_72 : StackLang.HolProg 64 :=
.seq NamedBody364_68 NamedBody364_71

def NamedBody364_73 : StackLang.HolProg 64 :=
.seq NamedBody364_67 NamedBody364_72

def NamedBody364_74 : StackLang.HolProg 64 :=
.seq NamedBody364_66 NamedBody364_73

def NamedBody364_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody364_76 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody364_77 : StackLang.HolProg 64 :=
.seq NamedBody364_75 NamedBody364_76

def NamedBody364_78 : StackLang.HolProg 64 :=
.call (some (NamedBody364_74, 1, 364, 2)) (Sum.inl 363) (some (NamedBody364_77, 364, 3))

def NamedBody364_79 : StackLang.HolProg 64 :=
.seq NamedBody364_65 NamedBody364_78

def NamedBody364_80 : StackLang.HolProg 64 :=
.seq NamedBody364_64 NamedBody364_79

def NamedBody364_81 : StackLang.HolProg 64 :=
.seq NamedBody364_63 NamedBody364_80

def NamedBody364_82 : StackLang.HolProg 64 :=
.seq NamedBody364_34 NamedBody364_81

def NamedBody364_83 : StackLang.HolProg 64 :=
.seq NamedBody364_31 NamedBody364_82

def NamedBody364_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody364_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody364_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody364_87 : StackLang.HolProg 64 :=
.seq NamedBody364_85 NamedBody364_86

def NamedBody364_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody364_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1050#64)

def NamedBody364_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody364_91 : StackLang.HolProg 64 :=
.seq NamedBody364_89 NamedBody364_90

def NamedBody364_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody364_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody364_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody364_95 : StackLang.HolProg 64 :=
.seq NamedBody364_93 NamedBody364_94

def NamedBody364_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody364_97 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody364_95 NamedBody364_96

def NamedBody364_98 : StackLang.HolProg 64 :=
.seq NamedBody364_92 NamedBody364_97

def NamedBody364_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody364_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody364_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 364 5

def NamedBody364_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody364_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody364_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody364_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody364_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody364_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody364_108 : StackLang.HolProg 64 :=
.seq NamedBody364_106 NamedBody364_107

def NamedBody364_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody364_110 : StackLang.HolProg 64 :=
.seq NamedBody364_108 NamedBody364_109

def NamedBody364_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody364_112 : StackLang.HolProg 64 :=
.seq NamedBody364_110 NamedBody364_111

def NamedBody364_113 : StackLang.HolProg 64 :=
.seq NamedBody364_105 NamedBody364_112

def NamedBody364_114 : StackLang.HolProg 64 :=
.seq NamedBody364_104 NamedBody364_113

def NamedBody364_115 : StackLang.HolProg 64 :=
.seq NamedBody364_103 NamedBody364_114

def NamedBody364_116 : StackLang.HolProg 64 :=
.seq NamedBody364_102 NamedBody364_115

def NamedBody364_117 : StackLang.HolProg 64 :=
.seq NamedBody364_101 NamedBody364_116

def NamedBody364_118 : StackLang.HolProg 64 :=
.seq NamedBody364_100 NamedBody364_117

def NamedBody364_119 : StackLang.HolProg 64 :=
.seq NamedBody364_99 NamedBody364_118

def NamedBody364_120 : StackLang.HolProg 64 :=
.seq NamedBody364_98 NamedBody364_119

def NamedBody364_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody364_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody364_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody364_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody364_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody364_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody364_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody364_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody364_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody364_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody364_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody364_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody364_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody364_134 : StackLang.HolProg 64 :=
.seq NamedBody364_132 NamedBody364_133

def NamedBody364_135 : StackLang.HolProg 64 :=
.seq NamedBody364_131 NamedBody364_134

def NamedBody364_136 : StackLang.HolProg 64 :=
.seq NamedBody364_130 NamedBody364_135

def NamedBody364_137 : StackLang.HolProg 64 :=
.seq NamedBody364_129 NamedBody364_136

def NamedBody364_138 : StackLang.HolProg 64 :=
.seq NamedBody364_128 NamedBody364_137

def NamedBody364_139 : StackLang.HolProg 64 :=
.seq NamedBody364_127 NamedBody364_138

def NamedBody364_140 : StackLang.HolProg 64 :=
.seq NamedBody364_126 NamedBody364_139

def NamedBody364_141 : StackLang.HolProg 64 :=
.seq NamedBody364_125 NamedBody364_140

def NamedBody364_142 : StackLang.HolProg 64 :=
.seq NamedBody364_124 NamedBody364_141

def NamedBody364_143 : StackLang.HolProg 64 :=
.seq NamedBody364_123 NamedBody364_142

def NamedBody364_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody364_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody364_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody364_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody364_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody364_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody364_150 : StackLang.HolProg 64 :=
.seq NamedBody364_148 NamedBody364_149

def NamedBody364_151 : StackLang.HolProg 64 :=
.seq NamedBody364_147 NamedBody364_150

def NamedBody364_152 : StackLang.HolProg 64 :=
.seq NamedBody364_146 NamedBody364_151

def NamedBody364_153 : StackLang.HolProg 64 :=
.seq NamedBody364_145 NamedBody364_152

def NamedBody364_154 : StackLang.HolProg 64 :=
.seq NamedBody364_144 NamedBody364_153

def NamedBody364_155 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody364_156 : StackLang.HolProg 64 :=
.seq NamedBody364_154 NamedBody364_155

def NamedBody364_157 : StackLang.HolProg 64 :=
.call (some (NamedBody364_143, 1, 364, 4)) (Sum.inl 180) (some (NamedBody364_156, 364, 5))

def NamedBody364_158 : StackLang.HolProg 64 :=
.seq NamedBody364_122 NamedBody364_157

def NamedBody364_159 : StackLang.HolProg 64 :=
.seq NamedBody364_121 NamedBody364_158

def NamedBody364_160 : StackLang.HolProg 64 :=
.seq NamedBody364_120 NamedBody364_159

def NamedBody364_161 : StackLang.HolProg 64 :=
.seq NamedBody364_91 NamedBody364_160

def NamedBody364_162 : StackLang.HolProg 64 :=
.seq NamedBody364_88 NamedBody364_161

def NamedBody364_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody364_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody364_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody364_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody364_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody364_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody364_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody364_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody364_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody364_172 : StackLang.HolProg 64 :=
.seq NamedBody364_170 NamedBody364_171

def NamedBody364_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def NamedBody364_174 : StackLang.HolProg 64 :=
.seq NamedBody364_172 NamedBody364_173

def NamedBody364_175 : StackLang.HolProg 64 :=
.seq NamedBody364_169 NamedBody364_174

def NamedBody364_176 : StackLang.HolProg 64 :=
.seq NamedBody364_168 NamedBody364_175

def NamedBody364_177 : StackLang.HolProg 64 :=
.seq NamedBody364_167 NamedBody364_176

def NamedBody364_178 : StackLang.HolProg 64 :=
.seq NamedBody364_166 NamedBody364_177

def NamedBody364_179 : StackLang.HolProg 64 :=
.seq NamedBody364_165 NamedBody364_178

def NamedBody364_180 : StackLang.HolProg 64 :=
.seq NamedBody364_164 NamedBody364_179

def NamedBody364_181 : StackLang.HolProg 64 :=
.seq NamedBody364_163 NamedBody364_180

def NamedBody364_182 : StackLang.HolProg 64 :=
.seq NamedBody364_162 NamedBody364_181

def NamedBody364_183 : StackLang.HolProg 64 :=
.seq NamedBody364_87 NamedBody364_182

def NamedBody364_184 : StackLang.HolProg 64 :=
.seq NamedBody364_84 NamedBody364_183

def NamedBody364_185 : StackLang.HolProg 64 :=
.seq NamedBody364_83 NamedBody364_184

def NamedBody364_186 : StackLang.HolProg 64 :=
.seq NamedBody364_30 NamedBody364_185

def NamedBody364_187 : StackLang.HolProg 64 :=
.seq NamedBody364_25 NamedBody364_186

def NamedBody364_188 : StackLang.HolProg 64 :=
.seq NamedBody364_24 NamedBody364_187

def NamedBody364_189 : StackLang.HolProg 64 :=
.seq NamedBody364_23 NamedBody364_188

def NamedBody364_190 : StackLang.HolProg 64 :=
.seq NamedBody364_22 NamedBody364_189

def NamedBody364_191 : StackLang.HolProg 64 :=
.seq NamedBody364_21 NamedBody364_190

def NamedBody364_192 : StackLang.HolProg 64 :=
.seq NamedBody364_20 NamedBody364_191

def NamedBody364_193 : StackLang.HolProg 64 :=
.seq NamedBody364_19 NamedBody364_192

def NamedBody364_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody364_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody364_196 : StackLang.HolProg 64 :=
.seq NamedBody364_194 NamedBody364_195

def NamedBody364_197 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 13 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) NamedBody364_193 NamedBody364_196

def NamedBody364_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody364_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody364_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody364_201 : StackLang.HolProg 64 :=
.seq NamedBody364_199 NamedBody364_200

def NamedBody364_202 : StackLang.HolProg 64 :=
.seq NamedBody364_198 NamedBody364_201

def NamedBody364_203 : StackLang.HolProg 64 :=
.seq NamedBody364_197 NamedBody364_202

def NamedBody364_204 : StackLang.HolProg 64 :=
.seq NamedBody364_18 NamedBody364_203

def NamedBody364_205 : StackLang.HolProg 64 :=
.loop NamedBody364_204

def NamedBody364_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody364_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody364_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody364_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def NamedBody364_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def NamedBody364_211 : StackLang.HolProg 64 :=
.seq NamedBody364_209 NamedBody364_210

def NamedBody364_212 : StackLang.HolProg 64 :=
.seq NamedBody364_208 NamedBody364_211

def NamedBody364_213 : StackLang.HolProg 64 :=
.seq NamedBody364_207 NamedBody364_212

def NamedBody364_214 : StackLang.HolProg 64 :=
.seq NamedBody364_206 NamedBody364_213

def NamedBody364_215 : StackLang.HolProg 64 :=
.seq NamedBody364_205 NamedBody364_214

def NamedBody364_216 : StackLang.HolProg 64 :=
.seq NamedBody364_17 NamedBody364_215

def NamedBody364_217 : StackLang.HolProg 64 :=
.seq NamedBody364_10 NamedBody364_216

def NamedBody364_218 : StackLang.HolProg 64 :=
.seq NamedBody364_9 NamedBody364_217

def NamedBody364_219 : StackLang.HolProg 64 :=
.seq NamedBody364_8 NamedBody364_218

def NamedBody364_220 : StackLang.HolProg 64 :=
.seq NamedBody364_7 NamedBody364_219

def NamedBody364_221 : StackLang.HolProg 64 :=
.seq NamedBody364_6 NamedBody364_220

def Named364 : Nat × StackLang.HolProg 64 := (364, NamedBody364_221)
theorem Named364_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed364 = Named364 := by
  kernel_rfl
#print axioms Named364_eq
end InitECandidate.Proofs.BackendStages
