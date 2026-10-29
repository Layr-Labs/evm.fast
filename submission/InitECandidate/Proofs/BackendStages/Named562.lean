import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed562
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody562_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody562_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody562_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody562_3 : StackLang.HolProg 64 :=
.seq NamedBody562_1 NamedBody562_2

def NamedBody562_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody562_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody562_3 NamedBody562_4

def NamedBody562_6 : StackLang.HolProg 64 :=
.seq NamedBody562_0 NamedBody562_5

def NamedBody562_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody562_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody562_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody562_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody562_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1925#64)

def NamedBody562_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody562_13 : StackLang.HolProg 64 :=
.seq NamedBody562_11 NamedBody562_12

def NamedBody562_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody562_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody562_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody562_17 : StackLang.HolProg 64 :=
.seq NamedBody562_15 NamedBody562_16

def NamedBody562_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody562_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody562_17 NamedBody562_18

def NamedBody562_20 : StackLang.HolProg 64 :=
.seq NamedBody562_14 NamedBody562_19

def NamedBody562_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody562_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody562_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 562 3

def NamedBody562_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody562_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody562_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody562_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody562_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody562_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody562_30 : StackLang.HolProg 64 :=
.seq NamedBody562_28 NamedBody562_29

def NamedBody562_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody562_32 : StackLang.HolProg 64 :=
.seq NamedBody562_30 NamedBody562_31

def NamedBody562_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody562_34 : StackLang.HolProg 64 :=
.seq NamedBody562_32 NamedBody562_33

def NamedBody562_35 : StackLang.HolProg 64 :=
.seq NamedBody562_27 NamedBody562_34

def NamedBody562_36 : StackLang.HolProg 64 :=
.seq NamedBody562_26 NamedBody562_35

def NamedBody562_37 : StackLang.HolProg 64 :=
.seq NamedBody562_25 NamedBody562_36

def NamedBody562_38 : StackLang.HolProg 64 :=
.seq NamedBody562_24 NamedBody562_37

def NamedBody562_39 : StackLang.HolProg 64 :=
.seq NamedBody562_23 NamedBody562_38

def NamedBody562_40 : StackLang.HolProg 64 :=
.seq NamedBody562_22 NamedBody562_39

def NamedBody562_41 : StackLang.HolProg 64 :=
.seq NamedBody562_21 NamedBody562_40

def NamedBody562_42 : StackLang.HolProg 64 :=
.seq NamedBody562_20 NamedBody562_41

def NamedBody562_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody562_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody562_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody562_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody562_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody562_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody562_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody562_50 : StackLang.HolProg 64 :=
.seq NamedBody562_48 NamedBody562_49

def NamedBody562_51 : StackLang.HolProg 64 :=
.seq NamedBody562_47 NamedBody562_50

def NamedBody562_52 : StackLang.HolProg 64 :=
.seq NamedBody562_46 NamedBody562_51

def NamedBody562_53 : StackLang.HolProg 64 :=
.seq NamedBody562_45 NamedBody562_52

def NamedBody562_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody562_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody562_56 : StackLang.HolProg 64 :=
.seq NamedBody562_54 NamedBody562_55

def NamedBody562_57 : StackLang.HolProg 64 :=
.call (some (NamedBody562_53, 1, 562, 2)) (Sum.inl 470) (some (NamedBody562_56, 562, 3))

def NamedBody562_58 : StackLang.HolProg 64 :=
.seq NamedBody562_44 NamedBody562_57

def NamedBody562_59 : StackLang.HolProg 64 :=
.seq NamedBody562_43 NamedBody562_58

def NamedBody562_60 : StackLang.HolProg 64 :=
.seq NamedBody562_42 NamedBody562_59

def NamedBody562_61 : StackLang.HolProg 64 :=
.seq NamedBody562_13 NamedBody562_60

def NamedBody562_62 : StackLang.HolProg 64 :=
.seq NamedBody562_10 NamedBody562_61

def NamedBody562_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody562_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody562_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody562_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody562_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def NamedBody562_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 56#64))

def NamedBody562_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody562_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody562_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1926#64)

def NamedBody562_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody562_73 : StackLang.HolProg 64 :=
.seq NamedBody562_71 NamedBody562_72

def NamedBody562_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody562_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody562_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody562_77 : StackLang.HolProg 64 :=
.seq NamedBody562_75 NamedBody562_76

def NamedBody562_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody562_79 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody562_77 NamedBody562_78

def NamedBody562_80 : StackLang.HolProg 64 :=
.seq NamedBody562_74 NamedBody562_79

def NamedBody562_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody562_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody562_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 562 5

def NamedBody562_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody562_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody562_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody562_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody562_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody562_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody562_90 : StackLang.HolProg 64 :=
.seq NamedBody562_88 NamedBody562_89

def NamedBody562_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody562_92 : StackLang.HolProg 64 :=
.seq NamedBody562_90 NamedBody562_91

def NamedBody562_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody562_94 : StackLang.HolProg 64 :=
.seq NamedBody562_92 NamedBody562_93

def NamedBody562_95 : StackLang.HolProg 64 :=
.seq NamedBody562_87 NamedBody562_94

def NamedBody562_96 : StackLang.HolProg 64 :=
.seq NamedBody562_86 NamedBody562_95

def NamedBody562_97 : StackLang.HolProg 64 :=
.seq NamedBody562_85 NamedBody562_96

def NamedBody562_98 : StackLang.HolProg 64 :=
.seq NamedBody562_84 NamedBody562_97

def NamedBody562_99 : StackLang.HolProg 64 :=
.seq NamedBody562_83 NamedBody562_98

def NamedBody562_100 : StackLang.HolProg 64 :=
.seq NamedBody562_82 NamedBody562_99

def NamedBody562_101 : StackLang.HolProg 64 :=
.seq NamedBody562_81 NamedBody562_100

def NamedBody562_102 : StackLang.HolProg 64 :=
.seq NamedBody562_80 NamedBody562_101

def NamedBody562_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody562_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody562_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody562_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody562_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody562_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody562_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody562_110 : StackLang.HolProg 64 :=
.seq NamedBody562_108 NamedBody562_109

def NamedBody562_111 : StackLang.HolProg 64 :=
.seq NamedBody562_107 NamedBody562_110

def NamedBody562_112 : StackLang.HolProg 64 :=
.seq NamedBody562_106 NamedBody562_111

def NamedBody562_113 : StackLang.HolProg 64 :=
.seq NamedBody562_105 NamedBody562_112

def NamedBody562_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody562_115 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody562_116 : StackLang.HolProg 64 :=
.seq NamedBody562_114 NamedBody562_115

def NamedBody562_117 : StackLang.HolProg 64 :=
.call (some (NamedBody562_113, 1, 562, 4)) (Sum.inl 477) (some (NamedBody562_116, 562, 5))

def NamedBody562_118 : StackLang.HolProg 64 :=
.seq NamedBody562_104 NamedBody562_117

def NamedBody562_119 : StackLang.HolProg 64 :=
.seq NamedBody562_103 NamedBody562_118

def NamedBody562_120 : StackLang.HolProg 64 :=
.seq NamedBody562_102 NamedBody562_119

def NamedBody562_121 : StackLang.HolProg 64 :=
.seq NamedBody562_73 NamedBody562_120

def NamedBody562_122 : StackLang.HolProg 64 :=
.seq NamedBody562_70 NamedBody562_121

def NamedBody562_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody562_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody562_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody562_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody562_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1927#64)

def NamedBody562_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody562_129 : StackLang.HolProg 64 :=
.seq NamedBody562_127 NamedBody562_128

def NamedBody562_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody562_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody562_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody562_133 : StackLang.HolProg 64 :=
.seq NamedBody562_131 NamedBody562_132

def NamedBody562_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody562_135 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody562_133 NamedBody562_134

def NamedBody562_136 : StackLang.HolProg 64 :=
.seq NamedBody562_130 NamedBody562_135

def NamedBody562_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody562_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody562_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 562 7

def NamedBody562_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody562_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody562_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody562_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody562_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody562_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody562_146 : StackLang.HolProg 64 :=
.seq NamedBody562_144 NamedBody562_145

def NamedBody562_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody562_148 : StackLang.HolProg 64 :=
.seq NamedBody562_146 NamedBody562_147

def NamedBody562_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody562_150 : StackLang.HolProg 64 :=
.seq NamedBody562_148 NamedBody562_149

def NamedBody562_151 : StackLang.HolProg 64 :=
.seq NamedBody562_143 NamedBody562_150

def NamedBody562_152 : StackLang.HolProg 64 :=
.seq NamedBody562_142 NamedBody562_151

def NamedBody562_153 : StackLang.HolProg 64 :=
.seq NamedBody562_141 NamedBody562_152

def NamedBody562_154 : StackLang.HolProg 64 :=
.seq NamedBody562_140 NamedBody562_153

def NamedBody562_155 : StackLang.HolProg 64 :=
.seq NamedBody562_139 NamedBody562_154

def NamedBody562_156 : StackLang.HolProg 64 :=
.seq NamedBody562_138 NamedBody562_155

def NamedBody562_157 : StackLang.HolProg 64 :=
.seq NamedBody562_137 NamedBody562_156

def NamedBody562_158 : StackLang.HolProg 64 :=
.seq NamedBody562_136 NamedBody562_157

def NamedBody562_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody562_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody562_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody562_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody562_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody562_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody562_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody562_166 : StackLang.HolProg 64 :=
.seq NamedBody562_164 NamedBody562_165

def NamedBody562_167 : StackLang.HolProg 64 :=
.seq NamedBody562_163 NamedBody562_166

def NamedBody562_168 : StackLang.HolProg 64 :=
.seq NamedBody562_162 NamedBody562_167

def NamedBody562_169 : StackLang.HolProg 64 :=
.seq NamedBody562_161 NamedBody562_168

def NamedBody562_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody562_171 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody562_172 : StackLang.HolProg 64 :=
.seq NamedBody562_170 NamedBody562_171

def NamedBody562_173 : StackLang.HolProg 64 :=
.call (some (NamedBody562_169, 1, 562, 6)) (Sum.inl 490) (some (NamedBody562_172, 562, 7))

def NamedBody562_174 : StackLang.HolProg 64 :=
.seq NamedBody562_160 NamedBody562_173

def NamedBody562_175 : StackLang.HolProg 64 :=
.seq NamedBody562_159 NamedBody562_174

def NamedBody562_176 : StackLang.HolProg 64 :=
.seq NamedBody562_158 NamedBody562_175

def NamedBody562_177 : StackLang.HolProg 64 :=
.seq NamedBody562_129 NamedBody562_176

def NamedBody562_178 : StackLang.HolProg 64 :=
.seq NamedBody562_126 NamedBody562_177

def NamedBody562_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody562_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody562_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody562_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody562_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody562_184 : StackLang.HolProg 64 :=
.seq NamedBody562_182 NamedBody562_183

def NamedBody562_185 : StackLang.HolProg 64 :=
.seq NamedBody562_181 NamedBody562_184

def NamedBody562_186 : StackLang.HolProg 64 :=
.seq NamedBody562_180 NamedBody562_185

def NamedBody562_187 : StackLang.HolProg 64 :=
.seq NamedBody562_179 NamedBody562_186

def NamedBody562_188 : StackLang.HolProg 64 :=
.seq NamedBody562_178 NamedBody562_187

def NamedBody562_189 : StackLang.HolProg 64 :=
.seq NamedBody562_125 NamedBody562_188

def NamedBody562_190 : StackLang.HolProg 64 :=
.seq NamedBody562_124 NamedBody562_189

def NamedBody562_191 : StackLang.HolProg 64 :=
.seq NamedBody562_123 NamedBody562_190

def NamedBody562_192 : StackLang.HolProg 64 :=
.seq NamedBody562_122 NamedBody562_191

def NamedBody562_193 : StackLang.HolProg 64 :=
.seq NamedBody562_69 NamedBody562_192

def NamedBody562_194 : StackLang.HolProg 64 :=
.seq NamedBody562_68 NamedBody562_193

def NamedBody562_195 : StackLang.HolProg 64 :=
.seq NamedBody562_67 NamedBody562_194

def NamedBody562_196 : StackLang.HolProg 64 :=
.seq NamedBody562_66 NamedBody562_195

def NamedBody562_197 : StackLang.HolProg 64 :=
.seq NamedBody562_65 NamedBody562_196

def NamedBody562_198 : StackLang.HolProg 64 :=
.seq NamedBody562_64 NamedBody562_197

def NamedBody562_199 : StackLang.HolProg 64 :=
.seq NamedBody562_63 NamedBody562_198

def NamedBody562_200 : StackLang.HolProg 64 :=
.seq NamedBody562_62 NamedBody562_199

def NamedBody562_201 : StackLang.HolProg 64 :=
.seq NamedBody562_9 NamedBody562_200

def NamedBody562_202 : StackLang.HolProg 64 :=
.seq NamedBody562_8 NamedBody562_201

def NamedBody562_203 : StackLang.HolProg 64 :=
.seq NamedBody562_7 NamedBody562_202

def NamedBody562_204 : StackLang.HolProg 64 :=
.seq NamedBody562_6 NamedBody562_203

def Named562 : Nat × StackLang.HolProg 64 := (562, NamedBody562_204)
theorem Named562_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed562 = Named562 := by
  kernel_rfl
#print axioms Named562_eq
end InitECandidate.Proofs.BackendStages
