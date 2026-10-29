import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed608
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody608_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def NamedBody608_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody608_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody608_3 : StackLang.HolProg 64 :=
.seq NamedBody608_1 NamedBody608_2

def NamedBody608_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody608_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody608_3 NamedBody608_4

def NamedBody608_6 : StackLang.HolProg 64 :=
.seq NamedBody608_0 NamedBody608_5

def NamedBody608_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody608_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody608_9 : StackLang.HolProg 64 :=
.seq NamedBody608_7 NamedBody608_8

def NamedBody608_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody608_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2335#64)

def NamedBody608_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody608_13 : StackLang.HolProg 64 :=
.seq NamedBody608_11 NamedBody608_12

def NamedBody608_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody608_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody608_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody608_17 : StackLang.HolProg 64 :=
.seq NamedBody608_15 NamedBody608_16

def NamedBody608_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody608_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody608_17 NamedBody608_18

def NamedBody608_20 : StackLang.HolProg 64 :=
.seq NamedBody608_14 NamedBody608_19

def NamedBody608_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody608_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody608_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 608 3

def NamedBody608_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody608_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody608_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody608_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody608_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody608_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody608_30 : StackLang.HolProg 64 :=
.seq NamedBody608_28 NamedBody608_29

def NamedBody608_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody608_32 : StackLang.HolProg 64 :=
.seq NamedBody608_30 NamedBody608_31

def NamedBody608_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody608_34 : StackLang.HolProg 64 :=
.seq NamedBody608_32 NamedBody608_33

def NamedBody608_35 : StackLang.HolProg 64 :=
.seq NamedBody608_27 NamedBody608_34

def NamedBody608_36 : StackLang.HolProg 64 :=
.seq NamedBody608_26 NamedBody608_35

def NamedBody608_37 : StackLang.HolProg 64 :=
.seq NamedBody608_25 NamedBody608_36

def NamedBody608_38 : StackLang.HolProg 64 :=
.seq NamedBody608_24 NamedBody608_37

def NamedBody608_39 : StackLang.HolProg 64 :=
.seq NamedBody608_23 NamedBody608_38

def NamedBody608_40 : StackLang.HolProg 64 :=
.seq NamedBody608_22 NamedBody608_39

def NamedBody608_41 : StackLang.HolProg 64 :=
.seq NamedBody608_21 NamedBody608_40

def NamedBody608_42 : StackLang.HolProg 64 :=
.seq NamedBody608_20 NamedBody608_41

def NamedBody608_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody608_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody608_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody608_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody608_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody608_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody608_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody608_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody608_51 : StackLang.HolProg 64 :=
.seq NamedBody608_49 NamedBody608_50

def NamedBody608_52 : StackLang.HolProg 64 :=
.seq NamedBody608_48 NamedBody608_51

def NamedBody608_53 : StackLang.HolProg 64 :=
.seq NamedBody608_47 NamedBody608_52

def NamedBody608_54 : StackLang.HolProg 64 :=
.seq NamedBody608_46 NamedBody608_53

def NamedBody608_55 : StackLang.HolProg 64 :=
.seq NamedBody608_45 NamedBody608_54

def NamedBody608_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody608_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody608_58 : StackLang.HolProg 64 :=
.seq NamedBody608_56 NamedBody608_57

def NamedBody608_59 : StackLang.HolProg 64 :=
.call (some (NamedBody608_55, 1, 608, 2)) (Sum.inl 390) (some (NamedBody608_58, 608, 3))

def NamedBody608_60 : StackLang.HolProg 64 :=
.seq NamedBody608_44 NamedBody608_59

def NamedBody608_61 : StackLang.HolProg 64 :=
.seq NamedBody608_43 NamedBody608_60

def NamedBody608_62 : StackLang.HolProg 64 :=
.seq NamedBody608_42 NamedBody608_61

def NamedBody608_63 : StackLang.HolProg 64 :=
.seq NamedBody608_13 NamedBody608_62

def NamedBody608_64 : StackLang.HolProg 64 :=
.seq NamedBody608_10 NamedBody608_63

def NamedBody608_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody608_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody608_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 32#64))

def NamedBody608_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody608_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody608_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody608_71 : StackLang.HolProg 64 :=
.seq NamedBody608_69 NamedBody608_70

def NamedBody608_72 : StackLang.HolProg 64 :=
.seq NamedBody608_68 NamedBody608_71

def NamedBody608_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody608_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2336#64)

def NamedBody608_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody608_76 : StackLang.HolProg 64 :=
.seq NamedBody608_74 NamedBody608_75

def NamedBody608_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody608_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody608_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody608_80 : StackLang.HolProg 64 :=
.seq NamedBody608_78 NamedBody608_79

def NamedBody608_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody608_82 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody608_80 NamedBody608_81

def NamedBody608_83 : StackLang.HolProg 64 :=
.seq NamedBody608_77 NamedBody608_82

def NamedBody608_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody608_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody608_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 608 5

def NamedBody608_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody608_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody608_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody608_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody608_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody608_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody608_93 : StackLang.HolProg 64 :=
.seq NamedBody608_91 NamedBody608_92

def NamedBody608_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody608_95 : StackLang.HolProg 64 :=
.seq NamedBody608_93 NamedBody608_94

def NamedBody608_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody608_97 : StackLang.HolProg 64 :=
.seq NamedBody608_95 NamedBody608_96

def NamedBody608_98 : StackLang.HolProg 64 :=
.seq NamedBody608_90 NamedBody608_97

def NamedBody608_99 : StackLang.HolProg 64 :=
.seq NamedBody608_89 NamedBody608_98

def NamedBody608_100 : StackLang.HolProg 64 :=
.seq NamedBody608_88 NamedBody608_99

def NamedBody608_101 : StackLang.HolProg 64 :=
.seq NamedBody608_87 NamedBody608_100

def NamedBody608_102 : StackLang.HolProg 64 :=
.seq NamedBody608_86 NamedBody608_101

def NamedBody608_103 : StackLang.HolProg 64 :=
.seq NamedBody608_85 NamedBody608_102

def NamedBody608_104 : StackLang.HolProg 64 :=
.seq NamedBody608_84 NamedBody608_103

def NamedBody608_105 : StackLang.HolProg 64 :=
.seq NamedBody608_83 NamedBody608_104

def NamedBody608_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody608_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody608_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody608_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody608_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody608_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody608_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody608_113 : StackLang.HolProg 64 :=
.seq NamedBody608_111 NamedBody608_112

def NamedBody608_114 : StackLang.HolProg 64 :=
.seq NamedBody608_110 NamedBody608_113

def NamedBody608_115 : StackLang.HolProg 64 :=
.seq NamedBody608_109 NamedBody608_114

def NamedBody608_116 : StackLang.HolProg 64 :=
.seq NamedBody608_108 NamedBody608_115

def NamedBody608_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody608_118 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody608_119 : StackLang.HolProg 64 :=
.seq NamedBody608_117 NamedBody608_118

def NamedBody608_120 : StackLang.HolProg 64 :=
.call (some (NamedBody608_116, 1, 608, 4)) (Sum.inl 421) (some (NamedBody608_119, 608, 5))

def NamedBody608_121 : StackLang.HolProg 64 :=
.seq NamedBody608_107 NamedBody608_120

def NamedBody608_122 : StackLang.HolProg 64 :=
.seq NamedBody608_106 NamedBody608_121

def NamedBody608_123 : StackLang.HolProg 64 :=
.seq NamedBody608_105 NamedBody608_122

def NamedBody608_124 : StackLang.HolProg 64 :=
.seq NamedBody608_76 NamedBody608_123

def NamedBody608_125 : StackLang.HolProg 64 :=
.seq NamedBody608_73 NamedBody608_124

def NamedBody608_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody608_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody608_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody608_129 : StackLang.HolProg 64 :=
.seq NamedBody608_127 NamedBody608_128

def NamedBody608_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody608_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2337#64)

def NamedBody608_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody608_133 : StackLang.HolProg 64 :=
.seq NamedBody608_131 NamedBody608_132

def NamedBody608_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody608_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody608_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody608_137 : StackLang.HolProg 64 :=
.seq NamedBody608_135 NamedBody608_136

def NamedBody608_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody608_139 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody608_137 NamedBody608_138

def NamedBody608_140 : StackLang.HolProg 64 :=
.seq NamedBody608_134 NamedBody608_139

def NamedBody608_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody608_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody608_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 608 7

def NamedBody608_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody608_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody608_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody608_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody608_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody608_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody608_150 : StackLang.HolProg 64 :=
.seq NamedBody608_148 NamedBody608_149

def NamedBody608_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody608_152 : StackLang.HolProg 64 :=
.seq NamedBody608_150 NamedBody608_151

def NamedBody608_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody608_154 : StackLang.HolProg 64 :=
.seq NamedBody608_152 NamedBody608_153

def NamedBody608_155 : StackLang.HolProg 64 :=
.seq NamedBody608_147 NamedBody608_154

def NamedBody608_156 : StackLang.HolProg 64 :=
.seq NamedBody608_146 NamedBody608_155

def NamedBody608_157 : StackLang.HolProg 64 :=
.seq NamedBody608_145 NamedBody608_156

def NamedBody608_158 : StackLang.HolProg 64 :=
.seq NamedBody608_144 NamedBody608_157

def NamedBody608_159 : StackLang.HolProg 64 :=
.seq NamedBody608_143 NamedBody608_158

def NamedBody608_160 : StackLang.HolProg 64 :=
.seq NamedBody608_142 NamedBody608_159

def NamedBody608_161 : StackLang.HolProg 64 :=
.seq NamedBody608_141 NamedBody608_160

def NamedBody608_162 : StackLang.HolProg 64 :=
.seq NamedBody608_140 NamedBody608_161

def NamedBody608_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody608_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody608_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody608_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody608_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody608_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody608_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody608_170 : StackLang.HolProg 64 :=
.seq NamedBody608_168 NamedBody608_169

def NamedBody608_171 : StackLang.HolProg 64 :=
.seq NamedBody608_167 NamedBody608_170

def NamedBody608_172 : StackLang.HolProg 64 :=
.seq NamedBody608_166 NamedBody608_171

def NamedBody608_173 : StackLang.HolProg 64 :=
.seq NamedBody608_165 NamedBody608_172

def NamedBody608_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody608_175 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody608_176 : StackLang.HolProg 64 :=
.seq NamedBody608_174 NamedBody608_175

def NamedBody608_177 : StackLang.HolProg 64 :=
.call (some (NamedBody608_173, 1, 608, 6)) (Sum.inl 425) (some (NamedBody608_176, 608, 7))

def NamedBody608_178 : StackLang.HolProg 64 :=
.seq NamedBody608_164 NamedBody608_177

def NamedBody608_179 : StackLang.HolProg 64 :=
.seq NamedBody608_163 NamedBody608_178

def NamedBody608_180 : StackLang.HolProg 64 :=
.seq NamedBody608_162 NamedBody608_179

def NamedBody608_181 : StackLang.HolProg 64 :=
.seq NamedBody608_133 NamedBody608_180

def NamedBody608_182 : StackLang.HolProg 64 :=
.seq NamedBody608_130 NamedBody608_181

def NamedBody608_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody608_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody608_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody608_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2338#64)

def NamedBody608_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody608_188 : StackLang.HolProg 64 :=
.seq NamedBody608_186 NamedBody608_187

def NamedBody608_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody608_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody608_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody608_192 : StackLang.HolProg 64 :=
.seq NamedBody608_190 NamedBody608_191

def NamedBody608_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody608_194 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody608_192 NamedBody608_193

def NamedBody608_195 : StackLang.HolProg 64 :=
.seq NamedBody608_189 NamedBody608_194

def NamedBody608_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody608_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody608_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 608 9

def NamedBody608_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody608_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody608_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody608_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody608_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody608_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody608_205 : StackLang.HolProg 64 :=
.seq NamedBody608_203 NamedBody608_204

def NamedBody608_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody608_207 : StackLang.HolProg 64 :=
.seq NamedBody608_205 NamedBody608_206

def NamedBody608_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody608_209 : StackLang.HolProg 64 :=
.seq NamedBody608_207 NamedBody608_208

def NamedBody608_210 : StackLang.HolProg 64 :=
.seq NamedBody608_202 NamedBody608_209

def NamedBody608_211 : StackLang.HolProg 64 :=
.seq NamedBody608_201 NamedBody608_210

def NamedBody608_212 : StackLang.HolProg 64 :=
.seq NamedBody608_200 NamedBody608_211

def NamedBody608_213 : StackLang.HolProg 64 :=
.seq NamedBody608_199 NamedBody608_212

def NamedBody608_214 : StackLang.HolProg 64 :=
.seq NamedBody608_198 NamedBody608_213

def NamedBody608_215 : StackLang.HolProg 64 :=
.seq NamedBody608_197 NamedBody608_214

def NamedBody608_216 : StackLang.HolProg 64 :=
.seq NamedBody608_196 NamedBody608_215

def NamedBody608_217 : StackLang.HolProg 64 :=
.seq NamedBody608_195 NamedBody608_216

def NamedBody608_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody608_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody608_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody608_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody608_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody608_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody608_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody608_225 : StackLang.HolProg 64 :=
.seq NamedBody608_223 NamedBody608_224

def NamedBody608_226 : StackLang.HolProg 64 :=
.seq NamedBody608_222 NamedBody608_225

def NamedBody608_227 : StackLang.HolProg 64 :=
.seq NamedBody608_221 NamedBody608_226

def NamedBody608_228 : StackLang.HolProg 64 :=
.seq NamedBody608_220 NamedBody608_227

def NamedBody608_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody608_230 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody608_231 : StackLang.HolProg 64 :=
.seq NamedBody608_229 NamedBody608_230

def NamedBody608_232 : StackLang.HolProg 64 :=
.call (some (NamedBody608_228, 1, 608, 8)) (Sum.inl 430) (some (NamedBody608_231, 608, 9))

def NamedBody608_233 : StackLang.HolProg 64 :=
.seq NamedBody608_219 NamedBody608_232

def NamedBody608_234 : StackLang.HolProg 64 :=
.seq NamedBody608_218 NamedBody608_233

def NamedBody608_235 : StackLang.HolProg 64 :=
.seq NamedBody608_217 NamedBody608_234

def NamedBody608_236 : StackLang.HolProg 64 :=
.seq NamedBody608_188 NamedBody608_235

def NamedBody608_237 : StackLang.HolProg 64 :=
.seq NamedBody608_185 NamedBody608_236

def NamedBody608_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody608_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody608_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody608_241 : StackLang.HolProg 64 :=
.seq NamedBody608_239 NamedBody608_240

def NamedBody608_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody608_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2339#64)

def NamedBody608_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody608_245 : StackLang.HolProg 64 :=
.seq NamedBody608_243 NamedBody608_244

def NamedBody608_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody608_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody608_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody608_249 : StackLang.HolProg 64 :=
.seq NamedBody608_247 NamedBody608_248

def NamedBody608_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody608_251 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody608_249 NamedBody608_250

def NamedBody608_252 : StackLang.HolProg 64 :=
.seq NamedBody608_246 NamedBody608_251

def NamedBody608_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody608_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody608_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 608 11

def NamedBody608_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody608_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody608_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody608_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody608_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody608_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody608_262 : StackLang.HolProg 64 :=
.seq NamedBody608_260 NamedBody608_261

def NamedBody608_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody608_264 : StackLang.HolProg 64 :=
.seq NamedBody608_262 NamedBody608_263

def NamedBody608_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody608_266 : StackLang.HolProg 64 :=
.seq NamedBody608_264 NamedBody608_265

def NamedBody608_267 : StackLang.HolProg 64 :=
.seq NamedBody608_259 NamedBody608_266

def NamedBody608_268 : StackLang.HolProg 64 :=
.seq NamedBody608_258 NamedBody608_267

def NamedBody608_269 : StackLang.HolProg 64 :=
.seq NamedBody608_257 NamedBody608_268

def NamedBody608_270 : StackLang.HolProg 64 :=
.seq NamedBody608_256 NamedBody608_269

def NamedBody608_271 : StackLang.HolProg 64 :=
.seq NamedBody608_255 NamedBody608_270

def NamedBody608_272 : StackLang.HolProg 64 :=
.seq NamedBody608_254 NamedBody608_271

def NamedBody608_273 : StackLang.HolProg 64 :=
.seq NamedBody608_253 NamedBody608_272

def NamedBody608_274 : StackLang.HolProg 64 :=
.seq NamedBody608_252 NamedBody608_273

def NamedBody608_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody608_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody608_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody608_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody608_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody608_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody608_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody608_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody608_283 : StackLang.HolProg 64 :=
.seq NamedBody608_281 NamedBody608_282

def NamedBody608_284 : StackLang.HolProg 64 :=
.seq NamedBody608_280 NamedBody608_283

def NamedBody608_285 : StackLang.HolProg 64 :=
.seq NamedBody608_279 NamedBody608_284

def NamedBody608_286 : StackLang.HolProg 64 :=
.seq NamedBody608_278 NamedBody608_285

def NamedBody608_287 : StackLang.HolProg 64 :=
.seq NamedBody608_277 NamedBody608_286

def NamedBody608_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody608_289 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody608_290 : StackLang.HolProg 64 :=
.seq NamedBody608_288 NamedBody608_289

def NamedBody608_291 : StackLang.HolProg 64 :=
.call (some (NamedBody608_287, 1, 608, 10)) (Sum.inl 606) (some (NamedBody608_290, 608, 11))

def NamedBody608_292 : StackLang.HolProg 64 :=
.seq NamedBody608_276 NamedBody608_291

def NamedBody608_293 : StackLang.HolProg 64 :=
.seq NamedBody608_275 NamedBody608_292

def NamedBody608_294 : StackLang.HolProg 64 :=
.seq NamedBody608_274 NamedBody608_293

def NamedBody608_295 : StackLang.HolProg 64 :=
.seq NamedBody608_245 NamedBody608_294

def NamedBody608_296 : StackLang.HolProg 64 :=
.seq NamedBody608_242 NamedBody608_295

def NamedBody608_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody608_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody608_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 160#64))

def NamedBody608_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody608_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody608_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody608_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody608_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody608_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def NamedBody608_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody608_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551360#64)))

def NamedBody608_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody608_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def NamedBody608_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody608_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody608_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody608_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody608_314 : StackLang.HolProg 64 :=
.seq NamedBody608_312 NamedBody608_313

def NamedBody608_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody608_316 : StackLang.HolProg 64 :=
.seq NamedBody608_314 NamedBody608_315

def NamedBody608_317 : StackLang.HolProg 64 :=
.seq NamedBody608_311 NamedBody608_316

def NamedBody608_318 : StackLang.HolProg 64 :=
.seq NamedBody608_310 NamedBody608_317

def NamedBody608_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody608_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2340#64)

def NamedBody608_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody608_322 : StackLang.HolProg 64 :=
.seq NamedBody608_320 NamedBody608_321

def NamedBody608_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody608_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody608_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody608_326 : StackLang.HolProg 64 :=
.seq NamedBody608_324 NamedBody608_325

def NamedBody608_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody608_328 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody608_326 NamedBody608_327

def NamedBody608_329 : StackLang.HolProg 64 :=
.seq NamedBody608_323 NamedBody608_328

def NamedBody608_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody608_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody608_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 608 19

def NamedBody608_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody608_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody608_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody608_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody608_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody608_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody608_339 : StackLang.HolProg 64 :=
.seq NamedBody608_337 NamedBody608_338

def NamedBody608_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody608_341 : StackLang.HolProg 64 :=
.seq NamedBody608_339 NamedBody608_340

def NamedBody608_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody608_343 : StackLang.HolProg 64 :=
.seq NamedBody608_341 NamedBody608_342

def NamedBody608_344 : StackLang.HolProg 64 :=
.seq NamedBody608_336 NamedBody608_343

def NamedBody608_345 : StackLang.HolProg 64 :=
.seq NamedBody608_335 NamedBody608_344

def NamedBody608_346 : StackLang.HolProg 64 :=
.seq NamedBody608_334 NamedBody608_345

def NamedBody608_347 : StackLang.HolProg 64 :=
.seq NamedBody608_333 NamedBody608_346

def NamedBody608_348 : StackLang.HolProg 64 :=
.seq NamedBody608_332 NamedBody608_347

def NamedBody608_349 : StackLang.HolProg 64 :=
.seq NamedBody608_331 NamedBody608_348

def NamedBody608_350 : StackLang.HolProg 64 :=
.seq NamedBody608_330 NamedBody608_349

def NamedBody608_351 : StackLang.HolProg 64 :=
.seq NamedBody608_329 NamedBody608_350

def NamedBody608_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody608_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody608_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody608_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody608_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody608_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody608_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody608_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody608_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody608_361 : StackLang.HolProg 64 :=
.seq NamedBody608_359 NamedBody608_360

def NamedBody608_362 : StackLang.HolProg 64 :=
.seq NamedBody608_358 NamedBody608_361

def NamedBody608_363 : StackLang.HolProg 64 :=
.seq NamedBody608_357 NamedBody608_362

def NamedBody608_364 : StackLang.HolProg 64 :=
.seq NamedBody608_356 NamedBody608_363

def NamedBody608_365 : StackLang.HolProg 64 :=
.seq NamedBody608_355 NamedBody608_364

def NamedBody608_366 : StackLang.HolProg 64 :=
.seq NamedBody608_354 NamedBody608_365

def NamedBody608_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody608_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody608_369 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody608_370 : StackLang.HolProg 64 :=
.seq NamedBody608_368 NamedBody608_369

def NamedBody608_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody608_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody608_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody608_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody608_375 : StackLang.HolProg 64 :=
.seq NamedBody608_373 NamedBody608_374

def NamedBody608_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody608_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2341#64)

def NamedBody608_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody608_379 : StackLang.HolProg 64 :=
.seq NamedBody608_377 NamedBody608_378

def NamedBody608_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody608_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody608_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody608_383 : StackLang.HolProg 64 :=
.seq NamedBody608_381 NamedBody608_382

def NamedBody608_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody608_385 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody608_383 NamedBody608_384

def NamedBody608_386 : StackLang.HolProg 64 :=
.seq NamedBody608_380 NamedBody608_385

def NamedBody608_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody608_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody608_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 608 14

def NamedBody608_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody608_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody608_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody608_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody608_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody608_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody608_396 : StackLang.HolProg 64 :=
.seq NamedBody608_394 NamedBody608_395

def NamedBody608_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody608_398 : StackLang.HolProg 64 :=
.seq NamedBody608_396 NamedBody608_397

def NamedBody608_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody608_400 : StackLang.HolProg 64 :=
.seq NamedBody608_398 NamedBody608_399

def NamedBody608_401 : StackLang.HolProg 64 :=
.seq NamedBody608_393 NamedBody608_400

def NamedBody608_402 : StackLang.HolProg 64 :=
.seq NamedBody608_392 NamedBody608_401

def NamedBody608_403 : StackLang.HolProg 64 :=
.seq NamedBody608_391 NamedBody608_402

def NamedBody608_404 : StackLang.HolProg 64 :=
.seq NamedBody608_390 NamedBody608_403

def NamedBody608_405 : StackLang.HolProg 64 :=
.seq NamedBody608_389 NamedBody608_404

def NamedBody608_406 : StackLang.HolProg 64 :=
.seq NamedBody608_388 NamedBody608_405

def NamedBody608_407 : StackLang.HolProg 64 :=
.seq NamedBody608_387 NamedBody608_406

def NamedBody608_408 : StackLang.HolProg 64 :=
.seq NamedBody608_386 NamedBody608_407

def NamedBody608_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody608_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody608_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody608_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody608_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody608_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody608_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody608_416 : StackLang.HolProg 64 :=
.seq NamedBody608_414 NamedBody608_415

def NamedBody608_417 : StackLang.HolProg 64 :=
.seq NamedBody608_413 NamedBody608_416

def NamedBody608_418 : StackLang.HolProg 64 :=
.seq NamedBody608_412 NamedBody608_417

def NamedBody608_419 : StackLang.HolProg 64 :=
.seq NamedBody608_411 NamedBody608_418

def NamedBody608_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody608_421 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody608_422 : StackLang.HolProg 64 :=
.seq NamedBody608_420 NamedBody608_421

def NamedBody608_423 : StackLang.HolProg 64 :=
.call (some (NamedBody608_419, 1, 608, 13)) (Sum.inl 391) (some (NamedBody608_422, 608, 14))

def NamedBody608_424 : StackLang.HolProg 64 :=
.seq NamedBody608_410 NamedBody608_423

def NamedBody608_425 : StackLang.HolProg 64 :=
.seq NamedBody608_409 NamedBody608_424

def NamedBody608_426 : StackLang.HolProg 64 :=
.seq NamedBody608_408 NamedBody608_425

def NamedBody608_427 : StackLang.HolProg 64 :=
.seq NamedBody608_379 NamedBody608_426

def NamedBody608_428 : StackLang.HolProg 64 :=
.seq NamedBody608_376 NamedBody608_427

def NamedBody608_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody608_430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody608_431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody608_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2342#64)

def NamedBody608_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody608_434 : StackLang.HolProg 64 :=
.seq NamedBody608_432 NamedBody608_433

def NamedBody608_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody608_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody608_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody608_438 : StackLang.HolProg 64 :=
.seq NamedBody608_436 NamedBody608_437

def NamedBody608_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody608_440 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody608_438 NamedBody608_439

def NamedBody608_441 : StackLang.HolProg 64 :=
.seq NamedBody608_435 NamedBody608_440

def NamedBody608_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody608_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody608_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 608 16

def NamedBody608_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody608_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody608_447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody608_448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody608_449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody608_450 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody608_451 : StackLang.HolProg 64 :=
.seq NamedBody608_449 NamedBody608_450

def NamedBody608_452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody608_453 : StackLang.HolProg 64 :=
.seq NamedBody608_451 NamedBody608_452

def NamedBody608_454 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody608_455 : StackLang.HolProg 64 :=
.seq NamedBody608_453 NamedBody608_454

def NamedBody608_456 : StackLang.HolProg 64 :=
.seq NamedBody608_448 NamedBody608_455

def NamedBody608_457 : StackLang.HolProg 64 :=
.seq NamedBody608_447 NamedBody608_456

def NamedBody608_458 : StackLang.HolProg 64 :=
.seq NamedBody608_446 NamedBody608_457

def NamedBody608_459 : StackLang.HolProg 64 :=
.seq NamedBody608_445 NamedBody608_458

def NamedBody608_460 : StackLang.HolProg 64 :=
.seq NamedBody608_444 NamedBody608_459

def NamedBody608_461 : StackLang.HolProg 64 :=
.seq NamedBody608_443 NamedBody608_460

def NamedBody608_462 : StackLang.HolProg 64 :=
.seq NamedBody608_442 NamedBody608_461

def NamedBody608_463 : StackLang.HolProg 64 :=
.seq NamedBody608_441 NamedBody608_462

def NamedBody608_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody608_465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody608_466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody608_467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody608_468 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody608_469 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody608_470 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody608_471 : StackLang.HolProg 64 :=
.seq NamedBody608_469 NamedBody608_470

def NamedBody608_472 : StackLang.HolProg 64 :=
.seq NamedBody608_468 NamedBody608_471

def NamedBody608_473 : StackLang.HolProg 64 :=
.seq NamedBody608_467 NamedBody608_472

def NamedBody608_474 : StackLang.HolProg 64 :=
.seq NamedBody608_466 NamedBody608_473

def NamedBody608_475 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody608_476 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody608_477 : StackLang.HolProg 64 :=
.seq NamedBody608_475 NamedBody608_476

def NamedBody608_478 : StackLang.HolProg 64 :=
.call (some (NamedBody608_474, 1, 608, 15)) (Sum.inl 474) (some (NamedBody608_477, 608, 16))

def NamedBody608_479 : StackLang.HolProg 64 :=
.seq NamedBody608_465 NamedBody608_478

def NamedBody608_480 : StackLang.HolProg 64 :=
.seq NamedBody608_464 NamedBody608_479

def NamedBody608_481 : StackLang.HolProg 64 :=
.seq NamedBody608_463 NamedBody608_480

def NamedBody608_482 : StackLang.HolProg 64 :=
.seq NamedBody608_434 NamedBody608_481

def NamedBody608_483 : StackLang.HolProg 64 :=
.seq NamedBody608_431 NamedBody608_482

def NamedBody608_484 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody608_485 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody608_486 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody608_487 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2343#64)

def NamedBody608_488 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody608_489 : StackLang.HolProg 64 :=
.seq NamedBody608_487 NamedBody608_488

def NamedBody608_490 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody608_491 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody608_492 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody608_493 : StackLang.HolProg 64 :=
.seq NamedBody608_491 NamedBody608_492

def NamedBody608_494 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody608_495 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody608_493 NamedBody608_494

def NamedBody608_496 : StackLang.HolProg 64 :=
.seq NamedBody608_490 NamedBody608_495

def NamedBody608_497 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody608_498 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody608_499 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 608 18

def NamedBody608_500 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody608_501 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody608_502 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody608_503 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody608_504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody608_505 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody608_506 : StackLang.HolProg 64 :=
.seq NamedBody608_504 NamedBody608_505

def NamedBody608_507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody608_508 : StackLang.HolProg 64 :=
.seq NamedBody608_506 NamedBody608_507

def NamedBody608_509 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody608_510 : StackLang.HolProg 64 :=
.seq NamedBody608_508 NamedBody608_509

def NamedBody608_511 : StackLang.HolProg 64 :=
.seq NamedBody608_503 NamedBody608_510

def NamedBody608_512 : StackLang.HolProg 64 :=
.seq NamedBody608_502 NamedBody608_511

def NamedBody608_513 : StackLang.HolProg 64 :=
.seq NamedBody608_501 NamedBody608_512

def NamedBody608_514 : StackLang.HolProg 64 :=
.seq NamedBody608_500 NamedBody608_513

def NamedBody608_515 : StackLang.HolProg 64 :=
.seq NamedBody608_499 NamedBody608_514

def NamedBody608_516 : StackLang.HolProg 64 :=
.seq NamedBody608_498 NamedBody608_515

def NamedBody608_517 : StackLang.HolProg 64 :=
.seq NamedBody608_497 NamedBody608_516

def NamedBody608_518 : StackLang.HolProg 64 :=
.seq NamedBody608_496 NamedBody608_517

def NamedBody608_519 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody608_520 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody608_521 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody608_522 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody608_523 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody608_524 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody608_525 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody608_526 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody608_527 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody608_528 : StackLang.HolProg 64 :=
.seq NamedBody608_526 NamedBody608_527

def NamedBody608_529 : StackLang.HolProg 64 :=
.seq NamedBody608_525 NamedBody608_528

def NamedBody608_530 : StackLang.HolProg 64 :=
.seq NamedBody608_524 NamedBody608_529

def NamedBody608_531 : StackLang.HolProg 64 :=
.seq NamedBody608_523 NamedBody608_530

def NamedBody608_532 : StackLang.HolProg 64 :=
.seq NamedBody608_522 NamedBody608_531

def NamedBody608_533 : StackLang.HolProg 64 :=
.seq NamedBody608_521 NamedBody608_532

def NamedBody608_534 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody608_535 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody608_536 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody608_537 : StackLang.HolProg 64 :=
.seq NamedBody608_535 NamedBody608_536

def NamedBody608_538 : StackLang.HolProg 64 :=
.seq NamedBody608_534 NamedBody608_537

def NamedBody608_539 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody608_540 : StackLang.HolProg 64 :=
.seq NamedBody608_538 NamedBody608_539

def NamedBody608_541 : StackLang.HolProg 64 :=
.call (some (NamedBody608_533, 1, 608, 17)) (Sum.inl 604) (some (NamedBody608_540, 608, 18))

def NamedBody608_542 : StackLang.HolProg 64 :=
.seq NamedBody608_520 NamedBody608_541

def NamedBody608_543 : StackLang.HolProg 64 :=
.seq NamedBody608_519 NamedBody608_542

def NamedBody608_544 : StackLang.HolProg 64 :=
.seq NamedBody608_518 NamedBody608_543

def NamedBody608_545 : StackLang.HolProg 64 :=
.seq NamedBody608_489 NamedBody608_544

def NamedBody608_546 : StackLang.HolProg 64 :=
.seq NamedBody608_486 NamedBody608_545

def NamedBody608_547 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody608_548 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody608_549 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody608_550 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody608_551 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551360#64))

def NamedBody608_552 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 120#64)))

def NamedBody608_553 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody608_554 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody608_555 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody608_556 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551352#64))

def NamedBody608_557 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody608_558 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 0#64))

def NamedBody608_559 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody608_560 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody608_561 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody608_562 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551360#64))

def NamedBody608_563 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 128#64)))

def NamedBody608_564 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody608_565 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody608_566 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 0#64))

def NamedBody608_567 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody608_568 : StackLang.HolProg 64 :=
.seq NamedBody608_566 NamedBody608_567

def NamedBody608_569 : StackLang.HolProg 64 :=
.seq NamedBody608_565 NamedBody608_568

def NamedBody608_570 : StackLang.HolProg 64 :=
.seq NamedBody608_564 NamedBody608_569

def NamedBody608_571 : StackLang.HolProg 64 :=
.seq NamedBody608_563 NamedBody608_570

def NamedBody608_572 : StackLang.HolProg 64 :=
.seq NamedBody608_562 NamedBody608_571

def NamedBody608_573 : StackLang.HolProg 64 :=
.seq NamedBody608_561 NamedBody608_572

def NamedBody608_574 : StackLang.HolProg 64 :=
.seq NamedBody608_560 NamedBody608_573

def NamedBody608_575 : StackLang.HolProg 64 :=
.seq NamedBody608_559 NamedBody608_574

def NamedBody608_576 : StackLang.HolProg 64 :=
.seq NamedBody608_558 NamedBody608_575

def NamedBody608_577 : StackLang.HolProg 64 :=
.seq NamedBody608_557 NamedBody608_576

def NamedBody608_578 : StackLang.HolProg 64 :=
.seq NamedBody608_556 NamedBody608_577

def NamedBody608_579 : StackLang.HolProg 64 :=
.seq NamedBody608_555 NamedBody608_578

def NamedBody608_580 : StackLang.HolProg 64 :=
.seq NamedBody608_554 NamedBody608_579

def NamedBody608_581 : StackLang.HolProg 64 :=
.seq NamedBody608_553 NamedBody608_580

def NamedBody608_582 : StackLang.HolProg 64 :=
.seq NamedBody608_552 NamedBody608_581

def NamedBody608_583 : StackLang.HolProg 64 :=
.seq NamedBody608_551 NamedBody608_582

def NamedBody608_584 : StackLang.HolProg 64 :=
.seq NamedBody608_550 NamedBody608_583

def NamedBody608_585 : StackLang.HolProg 64 :=
.seq NamedBody608_549 NamedBody608_584

def NamedBody608_586 : StackLang.HolProg 64 :=
.seq NamedBody608_548 NamedBody608_585

def NamedBody608_587 : StackLang.HolProg 64 :=
.seq NamedBody608_547 NamedBody608_586

def NamedBody608_588 : StackLang.HolProg 64 :=
.seq NamedBody608_546 NamedBody608_587

def NamedBody608_589 : StackLang.HolProg 64 :=
.seq NamedBody608_485 NamedBody608_588

def NamedBody608_590 : StackLang.HolProg 64 :=
.seq NamedBody608_484 NamedBody608_589

def NamedBody608_591 : StackLang.HolProg 64 :=
.seq NamedBody608_483 NamedBody608_590

def NamedBody608_592 : StackLang.HolProg 64 :=
.seq NamedBody608_430 NamedBody608_591

def NamedBody608_593 : StackLang.HolProg 64 :=
.seq NamedBody608_429 NamedBody608_592

def NamedBody608_594 : StackLang.HolProg 64 :=
.seq NamedBody608_428 NamedBody608_593

def NamedBody608_595 : StackLang.HolProg 64 :=
.seq NamedBody608_375 NamedBody608_594

def NamedBody608_596 : StackLang.HolProg 64 :=
.seq NamedBody608_372 NamedBody608_595

def NamedBody608_597 : StackLang.HolProg 64 :=
.seq NamedBody608_371 NamedBody608_596

def NamedBody608_598 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64) NamedBody608_370 NamedBody608_597

def NamedBody608_599 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody608_600 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody608_601 : StackLang.HolProg 64 :=
.seq NamedBody608_599 NamedBody608_600

def NamedBody608_602 : StackLang.HolProg 64 :=
.seq NamedBody608_598 NamedBody608_601

def NamedBody608_603 : StackLang.HolProg 64 :=
.seq NamedBody608_367 NamedBody608_602

def NamedBody608_604 : StackLang.HolProg 64 :=
.call (some (NamedBody608_366, 1, 608, 12)) (Sum.inl 607) (some (NamedBody608_603, 608, 19))

def NamedBody608_605 : StackLang.HolProg 64 :=
.seq NamedBody608_353 NamedBody608_604

def NamedBody608_606 : StackLang.HolProg 64 :=
.seq NamedBody608_352 NamedBody608_605

def NamedBody608_607 : StackLang.HolProg 64 :=
.seq NamedBody608_351 NamedBody608_606

def NamedBody608_608 : StackLang.HolProg 64 :=
.seq NamedBody608_322 NamedBody608_607

def NamedBody608_609 : StackLang.HolProg 64 :=
.seq NamedBody608_319 NamedBody608_608

def NamedBody608_610 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody608_611 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody608_612 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody608_613 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody608_614 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551360#64)))

def NamedBody608_615 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody608_616 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody608_617 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody608_618 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def NamedBody608_619 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 12

def NamedBody608_620 : StackLang.HolProg 64 :=
.seq NamedBody608_618 NamedBody608_619

def NamedBody608_621 : StackLang.HolProg 64 :=
.seq NamedBody608_617 NamedBody608_620

def NamedBody608_622 : StackLang.HolProg 64 :=
.seq NamedBody608_616 NamedBody608_621

def NamedBody608_623 : StackLang.HolProg 64 :=
.seq NamedBody608_615 NamedBody608_622

def NamedBody608_624 : StackLang.HolProg 64 :=
.seq NamedBody608_614 NamedBody608_623

def NamedBody608_625 : StackLang.HolProg 64 :=
.seq NamedBody608_613 NamedBody608_624

def NamedBody608_626 : StackLang.HolProg 64 :=
.seq NamedBody608_612 NamedBody608_625

def NamedBody608_627 : StackLang.HolProg 64 :=
.seq NamedBody608_611 NamedBody608_626

def NamedBody608_628 : StackLang.HolProg 64 :=
.seq NamedBody608_610 NamedBody608_627

def NamedBody608_629 : StackLang.HolProg 64 :=
.seq NamedBody608_609 NamedBody608_628

def NamedBody608_630 : StackLang.HolProg 64 :=
.seq NamedBody608_318 NamedBody608_629

def NamedBody608_631 : StackLang.HolProg 64 :=
.seq NamedBody608_309 NamedBody608_630

def NamedBody608_632 : StackLang.HolProg 64 :=
.seq NamedBody608_308 NamedBody608_631

def NamedBody608_633 : StackLang.HolProg 64 :=
.seq NamedBody608_307 NamedBody608_632

def NamedBody608_634 : StackLang.HolProg 64 :=
.seq NamedBody608_306 NamedBody608_633

def NamedBody608_635 : StackLang.HolProg 64 :=
.seq NamedBody608_305 NamedBody608_634

def NamedBody608_636 : StackLang.HolProg 64 :=
.seq NamedBody608_304 NamedBody608_635

def NamedBody608_637 : StackLang.HolProg 64 :=
.seq NamedBody608_303 NamedBody608_636

def NamedBody608_638 : StackLang.HolProg 64 :=
.seq NamedBody608_302 NamedBody608_637

def NamedBody608_639 : StackLang.HolProg 64 :=
.seq NamedBody608_301 NamedBody608_638

def NamedBody608_640 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody608_641 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody608_642 : StackLang.HolProg 64 :=
.seq NamedBody608_640 NamedBody608_641

def NamedBody608_643 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody608_639 NamedBody608_642

def NamedBody608_644 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody608_645 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody608_646 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody608_647 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody608_648 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2344#64)

def NamedBody608_649 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody608_650 : StackLang.HolProg 64 :=
.seq NamedBody608_648 NamedBody608_649

def NamedBody608_651 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody608_652 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody608_653 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody608_654 : StackLang.HolProg 64 :=
.seq NamedBody608_652 NamedBody608_653

def NamedBody608_655 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody608_656 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody608_654 NamedBody608_655

def NamedBody608_657 : StackLang.HolProg 64 :=
.seq NamedBody608_651 NamedBody608_656

def NamedBody608_658 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody608_659 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody608_660 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 608 21

def NamedBody608_661 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody608_662 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody608_663 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody608_664 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody608_665 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody608_666 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody608_667 : StackLang.HolProg 64 :=
.seq NamedBody608_665 NamedBody608_666

def NamedBody608_668 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody608_669 : StackLang.HolProg 64 :=
.seq NamedBody608_667 NamedBody608_668

def NamedBody608_670 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody608_671 : StackLang.HolProg 64 :=
.seq NamedBody608_669 NamedBody608_670

def NamedBody608_672 : StackLang.HolProg 64 :=
.seq NamedBody608_664 NamedBody608_671

def NamedBody608_673 : StackLang.HolProg 64 :=
.seq NamedBody608_663 NamedBody608_672

def NamedBody608_674 : StackLang.HolProg 64 :=
.seq NamedBody608_662 NamedBody608_673

def NamedBody608_675 : StackLang.HolProg 64 :=
.seq NamedBody608_661 NamedBody608_674

def NamedBody608_676 : StackLang.HolProg 64 :=
.seq NamedBody608_660 NamedBody608_675

def NamedBody608_677 : StackLang.HolProg 64 :=
.seq NamedBody608_659 NamedBody608_676

def NamedBody608_678 : StackLang.HolProg 64 :=
.seq NamedBody608_658 NamedBody608_677

def NamedBody608_679 : StackLang.HolProg 64 :=
.seq NamedBody608_657 NamedBody608_678

def NamedBody608_680 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody608_681 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody608_682 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody608_683 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody608_684 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody608_685 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody608_686 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody608_687 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody608_688 : StackLang.HolProg 64 :=
.seq NamedBody608_686 NamedBody608_687

def NamedBody608_689 : StackLang.HolProg 64 :=
.seq NamedBody608_685 NamedBody608_688

def NamedBody608_690 : StackLang.HolProg 64 :=
.seq NamedBody608_684 NamedBody608_689

def NamedBody608_691 : StackLang.HolProg 64 :=
.seq NamedBody608_683 NamedBody608_690

def NamedBody608_692 : StackLang.HolProg 64 :=
.seq NamedBody608_682 NamedBody608_691

def NamedBody608_693 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody608_694 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody608_695 : StackLang.HolProg 64 :=
.seq NamedBody608_693 NamedBody608_694

def NamedBody608_696 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody608_697 : StackLang.HolProg 64 :=
.seq NamedBody608_695 NamedBody608_696

def NamedBody608_698 : StackLang.HolProg 64 :=
.call (some (NamedBody608_692, 1, 608, 20)) (Sum.inl 391) (some (NamedBody608_697, 608, 21))

def NamedBody608_699 : StackLang.HolProg 64 :=
.seq NamedBody608_681 NamedBody608_698

def NamedBody608_700 : StackLang.HolProg 64 :=
.seq NamedBody608_680 NamedBody608_699

def NamedBody608_701 : StackLang.HolProg 64 :=
.seq NamedBody608_679 NamedBody608_700

def NamedBody608_702 : StackLang.HolProg 64 :=
.seq NamedBody608_650 NamedBody608_701

def NamedBody608_703 : StackLang.HolProg 64 :=
.seq NamedBody608_647 NamedBody608_702

def NamedBody608_704 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody608_705 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody608_706 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def NamedBody608_707 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody608_708 : StackLang.HolProg 64 :=
.seq NamedBody608_706 NamedBody608_707

def NamedBody608_709 : StackLang.HolProg 64 :=
.seq NamedBody608_705 NamedBody608_708

def NamedBody608_710 : StackLang.HolProg 64 :=
.seq NamedBody608_704 NamedBody608_709

def NamedBody608_711 : StackLang.HolProg 64 :=
.seq NamedBody608_703 NamedBody608_710

def NamedBody608_712 : StackLang.HolProg 64 :=
.seq NamedBody608_646 NamedBody608_711

def NamedBody608_713 : StackLang.HolProg 64 :=
.seq NamedBody608_645 NamedBody608_712

def NamedBody608_714 : StackLang.HolProg 64 :=
.seq NamedBody608_644 NamedBody608_713

def NamedBody608_715 : StackLang.HolProg 64 :=
.seq NamedBody608_643 NamedBody608_714

def NamedBody608_716 : StackLang.HolProg 64 :=
.seq NamedBody608_300 NamedBody608_715

def NamedBody608_717 : StackLang.HolProg 64 :=
.seq NamedBody608_299 NamedBody608_716

def NamedBody608_718 : StackLang.HolProg 64 :=
.seq NamedBody608_298 NamedBody608_717

def NamedBody608_719 : StackLang.HolProg 64 :=
.seq NamedBody608_297 NamedBody608_718

def NamedBody608_720 : StackLang.HolProg 64 :=
.seq NamedBody608_296 NamedBody608_719

def NamedBody608_721 : StackLang.HolProg 64 :=
.seq NamedBody608_241 NamedBody608_720

def NamedBody608_722 : StackLang.HolProg 64 :=
.seq NamedBody608_238 NamedBody608_721

def NamedBody608_723 : StackLang.HolProg 64 :=
.seq NamedBody608_237 NamedBody608_722

def NamedBody608_724 : StackLang.HolProg 64 :=
.seq NamedBody608_184 NamedBody608_723

def NamedBody608_725 : StackLang.HolProg 64 :=
.seq NamedBody608_183 NamedBody608_724

def NamedBody608_726 : StackLang.HolProg 64 :=
.seq NamedBody608_182 NamedBody608_725

def NamedBody608_727 : StackLang.HolProg 64 :=
.seq NamedBody608_129 NamedBody608_726

def NamedBody608_728 : StackLang.HolProg 64 :=
.seq NamedBody608_126 NamedBody608_727

def NamedBody608_729 : StackLang.HolProg 64 :=
.seq NamedBody608_125 NamedBody608_728

def NamedBody608_730 : StackLang.HolProg 64 :=
.seq NamedBody608_72 NamedBody608_729

def NamedBody608_731 : StackLang.HolProg 64 :=
.seq NamedBody608_67 NamedBody608_730

def NamedBody608_732 : StackLang.HolProg 64 :=
.seq NamedBody608_66 NamedBody608_731

def NamedBody608_733 : StackLang.HolProg 64 :=
.seq NamedBody608_65 NamedBody608_732

def NamedBody608_734 : StackLang.HolProg 64 :=
.seq NamedBody608_64 NamedBody608_733

def NamedBody608_735 : StackLang.HolProg 64 :=
.seq NamedBody608_9 NamedBody608_734

def NamedBody608_736 : StackLang.HolProg 64 :=
.seq NamedBody608_6 NamedBody608_735

def Named608 : Nat × StackLang.HolProg 64 := (608, NamedBody608_736)
theorem Named608_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed608 = Named608 := by
  kernel_rfl
#print axioms Named608_eq
end InitECandidate.Proofs.BackendStages
