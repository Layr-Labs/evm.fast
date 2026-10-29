import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed442
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody442_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody442_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody442_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody442_3 : StackLang.HolProg 64 :=
.seq NamedBody442_1 NamedBody442_2

def NamedBody442_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody442_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody442_3 NamedBody442_4

def NamedBody442_6 : StackLang.HolProg 64 :=
.seq NamedBody442_0 NamedBody442_5

def NamedBody442_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody442_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody442_9 : StackLang.HolProg 64 :=
.seq NamedBody442_7 NamedBody442_8

def NamedBody442_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody442_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1337#64)

def NamedBody442_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody442_13 : StackLang.HolProg 64 :=
.seq NamedBody442_11 NamedBody442_12

def NamedBody442_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody442_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody442_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody442_17 : StackLang.HolProg 64 :=
.seq NamedBody442_15 NamedBody442_16

def NamedBody442_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody442_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody442_17 NamedBody442_18

def NamedBody442_20 : StackLang.HolProg 64 :=
.seq NamedBody442_14 NamedBody442_19

def NamedBody442_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody442_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody442_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 442 3

def NamedBody442_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody442_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody442_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody442_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody442_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody442_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody442_30 : StackLang.HolProg 64 :=
.seq NamedBody442_28 NamedBody442_29

def NamedBody442_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody442_32 : StackLang.HolProg 64 :=
.seq NamedBody442_30 NamedBody442_31

def NamedBody442_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody442_34 : StackLang.HolProg 64 :=
.seq NamedBody442_32 NamedBody442_33

def NamedBody442_35 : StackLang.HolProg 64 :=
.seq NamedBody442_27 NamedBody442_34

def NamedBody442_36 : StackLang.HolProg 64 :=
.seq NamedBody442_26 NamedBody442_35

def NamedBody442_37 : StackLang.HolProg 64 :=
.seq NamedBody442_25 NamedBody442_36

def NamedBody442_38 : StackLang.HolProg 64 :=
.seq NamedBody442_24 NamedBody442_37

def NamedBody442_39 : StackLang.HolProg 64 :=
.seq NamedBody442_23 NamedBody442_38

def NamedBody442_40 : StackLang.HolProg 64 :=
.seq NamedBody442_22 NamedBody442_39

def NamedBody442_41 : StackLang.HolProg 64 :=
.seq NamedBody442_21 NamedBody442_40

def NamedBody442_42 : StackLang.HolProg 64 :=
.seq NamedBody442_20 NamedBody442_41

def NamedBody442_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody442_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody442_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody442_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody442_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody442_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody442_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody442_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody442_51 : StackLang.HolProg 64 :=
.seq NamedBody442_49 NamedBody442_50

def NamedBody442_52 : StackLang.HolProg 64 :=
.seq NamedBody442_48 NamedBody442_51

def NamedBody442_53 : StackLang.HolProg 64 :=
.seq NamedBody442_47 NamedBody442_52

def NamedBody442_54 : StackLang.HolProg 64 :=
.seq NamedBody442_46 NamedBody442_53

def NamedBody442_55 : StackLang.HolProg 64 :=
.seq NamedBody442_45 NamedBody442_54

def NamedBody442_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody442_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody442_58 : StackLang.HolProg 64 :=
.seq NamedBody442_56 NamedBody442_57

def NamedBody442_59 : StackLang.HolProg 64 :=
.call (some (NamedBody442_55, 1, 442, 2)) (Sum.inl 439) (some (NamedBody442_58, 442, 3))

def NamedBody442_60 : StackLang.HolProg 64 :=
.seq NamedBody442_44 NamedBody442_59

def NamedBody442_61 : StackLang.HolProg 64 :=
.seq NamedBody442_43 NamedBody442_60

def NamedBody442_62 : StackLang.HolProg 64 :=
.seq NamedBody442_42 NamedBody442_61

def NamedBody442_63 : StackLang.HolProg 64 :=
.seq NamedBody442_13 NamedBody442_62

def NamedBody442_64 : StackLang.HolProg 64 :=
.seq NamedBody442_10 NamedBody442_63

def NamedBody442_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody442_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody442_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def NamedBody442_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody442_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 1#64)

def NamedBody442_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody442_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody442_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1338#64)

def NamedBody442_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody442_74 : StackLang.HolProg 64 :=
.seq NamedBody442_72 NamedBody442_73

def NamedBody442_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody442_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody442_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody442_78 : StackLang.HolProg 64 :=
.seq NamedBody442_76 NamedBody442_77

def NamedBody442_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody442_80 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody442_78 NamedBody442_79

def NamedBody442_81 : StackLang.HolProg 64 :=
.seq NamedBody442_75 NamedBody442_80

def NamedBody442_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody442_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody442_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 442 5

def NamedBody442_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody442_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody442_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody442_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody442_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody442_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody442_91 : StackLang.HolProg 64 :=
.seq NamedBody442_89 NamedBody442_90

def NamedBody442_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody442_93 : StackLang.HolProg 64 :=
.seq NamedBody442_91 NamedBody442_92

def NamedBody442_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody442_95 : StackLang.HolProg 64 :=
.seq NamedBody442_93 NamedBody442_94

def NamedBody442_96 : StackLang.HolProg 64 :=
.seq NamedBody442_88 NamedBody442_95

def NamedBody442_97 : StackLang.HolProg 64 :=
.seq NamedBody442_87 NamedBody442_96

def NamedBody442_98 : StackLang.HolProg 64 :=
.seq NamedBody442_86 NamedBody442_97

def NamedBody442_99 : StackLang.HolProg 64 :=
.seq NamedBody442_85 NamedBody442_98

def NamedBody442_100 : StackLang.HolProg 64 :=
.seq NamedBody442_84 NamedBody442_99

def NamedBody442_101 : StackLang.HolProg 64 :=
.seq NamedBody442_83 NamedBody442_100

def NamedBody442_102 : StackLang.HolProg 64 :=
.seq NamedBody442_82 NamedBody442_101

def NamedBody442_103 : StackLang.HolProg 64 :=
.seq NamedBody442_81 NamedBody442_102

def NamedBody442_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody442_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody442_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody442_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody442_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody442_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody442_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody442_111 : StackLang.HolProg 64 :=
.seq NamedBody442_109 NamedBody442_110

def NamedBody442_112 : StackLang.HolProg 64 :=
.seq NamedBody442_108 NamedBody442_111

def NamedBody442_113 : StackLang.HolProg 64 :=
.seq NamedBody442_107 NamedBody442_112

def NamedBody442_114 : StackLang.HolProg 64 :=
.seq NamedBody442_106 NamedBody442_113

def NamedBody442_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody442_116 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody442_117 : StackLang.HolProg 64 :=
.seq NamedBody442_115 NamedBody442_116

def NamedBody442_118 : StackLang.HolProg 64 :=
.call (some (NamedBody442_114, 1, 442, 4)) (Sum.inl 192) (some (NamedBody442_117, 442, 5))

def NamedBody442_119 : StackLang.HolProg 64 :=
.seq NamedBody442_105 NamedBody442_118

def NamedBody442_120 : StackLang.HolProg 64 :=
.seq NamedBody442_104 NamedBody442_119

def NamedBody442_121 : StackLang.HolProg 64 :=
.seq NamedBody442_103 NamedBody442_120

def NamedBody442_122 : StackLang.HolProg 64 :=
.seq NamedBody442_74 NamedBody442_121

def NamedBody442_123 : StackLang.HolProg 64 :=
.seq NamedBody442_71 NamedBody442_122

def NamedBody442_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody442_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody442_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody442_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody442_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody442_129 : StackLang.HolProg 64 :=
.seq NamedBody442_127 NamedBody442_128

def NamedBody442_130 : StackLang.HolProg 64 :=
.seq NamedBody442_126 NamedBody442_129

def NamedBody442_131 : StackLang.HolProg 64 :=
.seq NamedBody442_125 NamedBody442_130

def NamedBody442_132 : StackLang.HolProg 64 :=
.seq NamedBody442_124 NamedBody442_131

def NamedBody442_133 : StackLang.HolProg 64 :=
.seq NamedBody442_123 NamedBody442_132

def NamedBody442_134 : StackLang.HolProg 64 :=
.seq NamedBody442_70 NamedBody442_133

def NamedBody442_135 : StackLang.HolProg 64 :=
.seq NamedBody442_69 NamedBody442_134

def NamedBody442_136 : StackLang.HolProg 64 :=
.seq NamedBody442_68 NamedBody442_135

def NamedBody442_137 : StackLang.HolProg 64 :=
.seq NamedBody442_67 NamedBody442_136

def NamedBody442_138 : StackLang.HolProg 64 :=
.seq NamedBody442_66 NamedBody442_137

def NamedBody442_139 : StackLang.HolProg 64 :=
.seq NamedBody442_65 NamedBody442_138

def NamedBody442_140 : StackLang.HolProg 64 :=
.seq NamedBody442_64 NamedBody442_139

def NamedBody442_141 : StackLang.HolProg 64 :=
.seq NamedBody442_9 NamedBody442_140

def NamedBody442_142 : StackLang.HolProg 64 :=
.seq NamedBody442_6 NamedBody442_141

def Named442 : Nat × StackLang.HolProg 64 := (442, NamedBody442_142)
theorem Named442_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed442 = Named442 := by
  kernel_rfl
#print axioms Named442_eq
end InitECandidate.Proofs.BackendStages
