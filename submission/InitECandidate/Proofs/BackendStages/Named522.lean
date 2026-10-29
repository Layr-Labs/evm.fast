import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed522
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody522_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody522_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody522_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody522_3 : StackLang.HolProg 64 :=
.seq NamedBody522_1 NamedBody522_2

def NamedBody522_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody522_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody522_3 NamedBody522_4

def NamedBody522_6 : StackLang.HolProg 64 :=
.seq NamedBody522_0 NamedBody522_5

def NamedBody522_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody522_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody522_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1696#64)

def NamedBody522_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody522_11 : StackLang.HolProg 64 :=
.seq NamedBody522_9 NamedBody522_10

def NamedBody522_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody522_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody522_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody522_15 : StackLang.HolProg 64 :=
.seq NamedBody522_13 NamedBody522_14

def NamedBody522_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody522_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody522_15 NamedBody522_16

def NamedBody522_18 : StackLang.HolProg 64 :=
.seq NamedBody522_12 NamedBody522_17

def NamedBody522_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody522_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody522_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 522 3

def NamedBody522_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody522_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody522_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody522_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody522_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody522_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody522_28 : StackLang.HolProg 64 :=
.seq NamedBody522_26 NamedBody522_27

def NamedBody522_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody522_30 : StackLang.HolProg 64 :=
.seq NamedBody522_28 NamedBody522_29

def NamedBody522_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody522_32 : StackLang.HolProg 64 :=
.seq NamedBody522_30 NamedBody522_31

def NamedBody522_33 : StackLang.HolProg 64 :=
.seq NamedBody522_25 NamedBody522_32

def NamedBody522_34 : StackLang.HolProg 64 :=
.seq NamedBody522_24 NamedBody522_33

def NamedBody522_35 : StackLang.HolProg 64 :=
.seq NamedBody522_23 NamedBody522_34

def NamedBody522_36 : StackLang.HolProg 64 :=
.seq NamedBody522_22 NamedBody522_35

def NamedBody522_37 : StackLang.HolProg 64 :=
.seq NamedBody522_21 NamedBody522_36

def NamedBody522_38 : StackLang.HolProg 64 :=
.seq NamedBody522_20 NamedBody522_37

def NamedBody522_39 : StackLang.HolProg 64 :=
.seq NamedBody522_19 NamedBody522_38

def NamedBody522_40 : StackLang.HolProg 64 :=
.seq NamedBody522_18 NamedBody522_39

def NamedBody522_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody522_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody522_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody522_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody522_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody522_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody522_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody522_48 : StackLang.HolProg 64 :=
.seq NamedBody522_46 NamedBody522_47

def NamedBody522_49 : StackLang.HolProg 64 :=
.seq NamedBody522_45 NamedBody522_48

def NamedBody522_50 : StackLang.HolProg 64 :=
.seq NamedBody522_44 NamedBody522_49

def NamedBody522_51 : StackLang.HolProg 64 :=
.seq NamedBody522_43 NamedBody522_50

def NamedBody522_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody522_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody522_54 : StackLang.HolProg 64 :=
.seq NamedBody522_52 NamedBody522_53

def NamedBody522_55 : StackLang.HolProg 64 :=
.call (some (NamedBody522_51, 1, 522, 2)) (Sum.inl 475) (some (NamedBody522_54, 522, 3))

def NamedBody522_56 : StackLang.HolProg 64 :=
.seq NamedBody522_42 NamedBody522_55

def NamedBody522_57 : StackLang.HolProg 64 :=
.seq NamedBody522_41 NamedBody522_56

def NamedBody522_58 : StackLang.HolProg 64 :=
.seq NamedBody522_40 NamedBody522_57

def NamedBody522_59 : StackLang.HolProg 64 :=
.seq NamedBody522_11 NamedBody522_58

def NamedBody522_60 : StackLang.HolProg 64 :=
.seq NamedBody522_8 NamedBody522_59

def NamedBody522_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody522_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 5#64)

def NamedBody522_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody522_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody522_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody522_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody522_67 : StackLang.HolProg 64 :=
.seq NamedBody522_65 NamedBody522_66

def NamedBody522_68 : StackLang.HolProg 64 :=
.seq NamedBody522_64 NamedBody522_67

def NamedBody522_69 : StackLang.HolProg 64 :=
.seq NamedBody522_63 NamedBody522_68

def NamedBody522_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody522_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1697#64)

def NamedBody522_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody522_73 : StackLang.HolProg 64 :=
.seq NamedBody522_71 NamedBody522_72

def NamedBody522_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody522_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody522_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody522_77 : StackLang.HolProg 64 :=
.seq NamedBody522_75 NamedBody522_76

def NamedBody522_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody522_79 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody522_77 NamedBody522_78

def NamedBody522_80 : StackLang.HolProg 64 :=
.seq NamedBody522_74 NamedBody522_79

def NamedBody522_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody522_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody522_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 522 5

def NamedBody522_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody522_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody522_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody522_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody522_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody522_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody522_90 : StackLang.HolProg 64 :=
.seq NamedBody522_88 NamedBody522_89

def NamedBody522_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody522_92 : StackLang.HolProg 64 :=
.seq NamedBody522_90 NamedBody522_91

def NamedBody522_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody522_94 : StackLang.HolProg 64 :=
.seq NamedBody522_92 NamedBody522_93

def NamedBody522_95 : StackLang.HolProg 64 :=
.seq NamedBody522_87 NamedBody522_94

def NamedBody522_96 : StackLang.HolProg 64 :=
.seq NamedBody522_86 NamedBody522_95

def NamedBody522_97 : StackLang.HolProg 64 :=
.seq NamedBody522_85 NamedBody522_96

def NamedBody522_98 : StackLang.HolProg 64 :=
.seq NamedBody522_84 NamedBody522_97

def NamedBody522_99 : StackLang.HolProg 64 :=
.seq NamedBody522_83 NamedBody522_98

def NamedBody522_100 : StackLang.HolProg 64 :=
.seq NamedBody522_82 NamedBody522_99

def NamedBody522_101 : StackLang.HolProg 64 :=
.seq NamedBody522_81 NamedBody522_100

def NamedBody522_102 : StackLang.HolProg 64 :=
.seq NamedBody522_80 NamedBody522_101

def NamedBody522_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody522_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody522_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody522_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody522_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody522_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody522_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody522_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody522_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody522_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody522_113 : StackLang.HolProg 64 :=
.seq NamedBody522_111 NamedBody522_112

def NamedBody522_114 : StackLang.HolProg 64 :=
.seq NamedBody522_110 NamedBody522_113

def NamedBody522_115 : StackLang.HolProg 64 :=
.seq NamedBody522_109 NamedBody522_114

def NamedBody522_116 : StackLang.HolProg 64 :=
.seq NamedBody522_108 NamedBody522_115

def NamedBody522_117 : StackLang.HolProg 64 :=
.seq NamedBody522_107 NamedBody522_116

def NamedBody522_118 : StackLang.HolProg 64 :=
.seq NamedBody522_106 NamedBody522_117

def NamedBody522_119 : StackLang.HolProg 64 :=
.seq NamedBody522_105 NamedBody522_118

def NamedBody522_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody522_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody522_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody522_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody522_124 : StackLang.HolProg 64 :=
.seq NamedBody522_122 NamedBody522_123

def NamedBody522_125 : StackLang.HolProg 64 :=
.seq NamedBody522_121 NamedBody522_124

def NamedBody522_126 : StackLang.HolProg 64 :=
.seq NamedBody522_120 NamedBody522_125

def NamedBody522_127 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody522_128 : StackLang.HolProg 64 :=
.seq NamedBody522_126 NamedBody522_127

def NamedBody522_129 : StackLang.HolProg 64 :=
.call (some (NamedBody522_119, 1, 522, 4)) (Sum.inl 470) (some (NamedBody522_128, 522, 5))

def NamedBody522_130 : StackLang.HolProg 64 :=
.seq NamedBody522_104 NamedBody522_129

def NamedBody522_131 : StackLang.HolProg 64 :=
.seq NamedBody522_103 NamedBody522_130

def NamedBody522_132 : StackLang.HolProg 64 :=
.seq NamedBody522_102 NamedBody522_131

def NamedBody522_133 : StackLang.HolProg 64 :=
.seq NamedBody522_73 NamedBody522_132

def NamedBody522_134 : StackLang.HolProg 64 :=
.seq NamedBody522_70 NamedBody522_133

def NamedBody522_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody522_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody522_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody522_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1698#64)

def NamedBody522_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody522_140 : StackLang.HolProg 64 :=
.seq NamedBody522_138 NamedBody522_139

def NamedBody522_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody522_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody522_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody522_144 : StackLang.HolProg 64 :=
.seq NamedBody522_142 NamedBody522_143

def NamedBody522_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody522_146 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody522_144 NamedBody522_145

def NamedBody522_147 : StackLang.HolProg 64 :=
.seq NamedBody522_141 NamedBody522_146

def NamedBody522_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody522_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody522_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 522 7

def NamedBody522_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody522_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody522_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody522_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody522_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody522_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody522_157 : StackLang.HolProg 64 :=
.seq NamedBody522_155 NamedBody522_156

def NamedBody522_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody522_159 : StackLang.HolProg 64 :=
.seq NamedBody522_157 NamedBody522_158

def NamedBody522_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody522_161 : StackLang.HolProg 64 :=
.seq NamedBody522_159 NamedBody522_160

def NamedBody522_162 : StackLang.HolProg 64 :=
.seq NamedBody522_154 NamedBody522_161

def NamedBody522_163 : StackLang.HolProg 64 :=
.seq NamedBody522_153 NamedBody522_162

def NamedBody522_164 : StackLang.HolProg 64 :=
.seq NamedBody522_152 NamedBody522_163

def NamedBody522_165 : StackLang.HolProg 64 :=
.seq NamedBody522_151 NamedBody522_164

def NamedBody522_166 : StackLang.HolProg 64 :=
.seq NamedBody522_150 NamedBody522_165

def NamedBody522_167 : StackLang.HolProg 64 :=
.seq NamedBody522_149 NamedBody522_166

def NamedBody522_168 : StackLang.HolProg 64 :=
.seq NamedBody522_148 NamedBody522_167

def NamedBody522_169 : StackLang.HolProg 64 :=
.seq NamedBody522_147 NamedBody522_168

def NamedBody522_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody522_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody522_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody522_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody522_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody522_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody522_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody522_177 : StackLang.HolProg 64 :=
.seq NamedBody522_175 NamedBody522_176

def NamedBody522_178 : StackLang.HolProg 64 :=
.seq NamedBody522_174 NamedBody522_177

def NamedBody522_179 : StackLang.HolProg 64 :=
.seq NamedBody522_173 NamedBody522_178

def NamedBody522_180 : StackLang.HolProg 64 :=
.seq NamedBody522_172 NamedBody522_179

def NamedBody522_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody522_182 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody522_183 : StackLang.HolProg 64 :=
.seq NamedBody522_181 NamedBody522_182

def NamedBody522_184 : StackLang.HolProg 64 :=
.call (some (NamedBody522_180, 1, 522, 6)) (Sum.inl 138) (some (NamedBody522_183, 522, 7))

def NamedBody522_185 : StackLang.HolProg 64 :=
.seq NamedBody522_171 NamedBody522_184

def NamedBody522_186 : StackLang.HolProg 64 :=
.seq NamedBody522_170 NamedBody522_185

def NamedBody522_187 : StackLang.HolProg 64 :=
.seq NamedBody522_169 NamedBody522_186

def NamedBody522_188 : StackLang.HolProg 64 :=
.seq NamedBody522_140 NamedBody522_187

def NamedBody522_189 : StackLang.HolProg 64 :=
.seq NamedBody522_137 NamedBody522_188

def NamedBody522_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody522_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 256#64)

def NamedBody522_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody522_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody522_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody522_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody522_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1699#64)

def NamedBody522_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody522_198 : StackLang.HolProg 64 :=
.seq NamedBody522_196 NamedBody522_197

def NamedBody522_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody522_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody522_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody522_202 : StackLang.HolProg 64 :=
.seq NamedBody522_200 NamedBody522_201

def NamedBody522_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody522_204 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody522_202 NamedBody522_203

def NamedBody522_205 : StackLang.HolProg 64 :=
.seq NamedBody522_199 NamedBody522_204

def NamedBody522_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody522_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody522_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 522 9

def NamedBody522_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody522_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody522_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody522_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody522_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody522_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody522_215 : StackLang.HolProg 64 :=
.seq NamedBody522_213 NamedBody522_214

def NamedBody522_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody522_217 : StackLang.HolProg 64 :=
.seq NamedBody522_215 NamedBody522_216

def NamedBody522_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody522_219 : StackLang.HolProg 64 :=
.seq NamedBody522_217 NamedBody522_218

def NamedBody522_220 : StackLang.HolProg 64 :=
.seq NamedBody522_212 NamedBody522_219

def NamedBody522_221 : StackLang.HolProg 64 :=
.seq NamedBody522_211 NamedBody522_220

def NamedBody522_222 : StackLang.HolProg 64 :=
.seq NamedBody522_210 NamedBody522_221

def NamedBody522_223 : StackLang.HolProg 64 :=
.seq NamedBody522_209 NamedBody522_222

def NamedBody522_224 : StackLang.HolProg 64 :=
.seq NamedBody522_208 NamedBody522_223

def NamedBody522_225 : StackLang.HolProg 64 :=
.seq NamedBody522_207 NamedBody522_224

def NamedBody522_226 : StackLang.HolProg 64 :=
.seq NamedBody522_206 NamedBody522_225

def NamedBody522_227 : StackLang.HolProg 64 :=
.seq NamedBody522_205 NamedBody522_226

def NamedBody522_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody522_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody522_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody522_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody522_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody522_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody522_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody522_235 : StackLang.HolProg 64 :=
.seq NamedBody522_233 NamedBody522_234

def NamedBody522_236 : StackLang.HolProg 64 :=
.seq NamedBody522_232 NamedBody522_235

def NamedBody522_237 : StackLang.HolProg 64 :=
.seq NamedBody522_231 NamedBody522_236

def NamedBody522_238 : StackLang.HolProg 64 :=
.seq NamedBody522_230 NamedBody522_237

def NamedBody522_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody522_240 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody522_241 : StackLang.HolProg 64 :=
.seq NamedBody522_239 NamedBody522_240

def NamedBody522_242 : StackLang.HolProg 64 :=
.call (some (NamedBody522_238, 1, 522, 8)) (Sum.inl 477) (some (NamedBody522_241, 522, 9))

def NamedBody522_243 : StackLang.HolProg 64 :=
.seq NamedBody522_229 NamedBody522_242

def NamedBody522_244 : StackLang.HolProg 64 :=
.seq NamedBody522_228 NamedBody522_243

def NamedBody522_245 : StackLang.HolProg 64 :=
.seq NamedBody522_227 NamedBody522_244

def NamedBody522_246 : StackLang.HolProg 64 :=
.seq NamedBody522_198 NamedBody522_245

def NamedBody522_247 : StackLang.HolProg 64 :=
.seq NamedBody522_195 NamedBody522_246

def NamedBody522_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody522_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody522_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody522_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody522_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1700#64)

def NamedBody522_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody522_254 : StackLang.HolProg 64 :=
.seq NamedBody522_252 NamedBody522_253

def NamedBody522_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody522_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody522_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody522_258 : StackLang.HolProg 64 :=
.seq NamedBody522_256 NamedBody522_257

def NamedBody522_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody522_260 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody522_258 NamedBody522_259

def NamedBody522_261 : StackLang.HolProg 64 :=
.seq NamedBody522_255 NamedBody522_260

def NamedBody522_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody522_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody522_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 522 11

def NamedBody522_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody522_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody522_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody522_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody522_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody522_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody522_271 : StackLang.HolProg 64 :=
.seq NamedBody522_269 NamedBody522_270

def NamedBody522_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody522_273 : StackLang.HolProg 64 :=
.seq NamedBody522_271 NamedBody522_272

def NamedBody522_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody522_275 : StackLang.HolProg 64 :=
.seq NamedBody522_273 NamedBody522_274

def NamedBody522_276 : StackLang.HolProg 64 :=
.seq NamedBody522_268 NamedBody522_275

def NamedBody522_277 : StackLang.HolProg 64 :=
.seq NamedBody522_267 NamedBody522_276

def NamedBody522_278 : StackLang.HolProg 64 :=
.seq NamedBody522_266 NamedBody522_277

def NamedBody522_279 : StackLang.HolProg 64 :=
.seq NamedBody522_265 NamedBody522_278

def NamedBody522_280 : StackLang.HolProg 64 :=
.seq NamedBody522_264 NamedBody522_279

def NamedBody522_281 : StackLang.HolProg 64 :=
.seq NamedBody522_263 NamedBody522_280

def NamedBody522_282 : StackLang.HolProg 64 :=
.seq NamedBody522_262 NamedBody522_281

def NamedBody522_283 : StackLang.HolProg 64 :=
.seq NamedBody522_261 NamedBody522_282

def NamedBody522_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody522_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody522_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody522_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody522_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody522_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody522_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody522_291 : StackLang.HolProg 64 :=
.seq NamedBody522_289 NamedBody522_290

def NamedBody522_292 : StackLang.HolProg 64 :=
.seq NamedBody522_288 NamedBody522_291

def NamedBody522_293 : StackLang.HolProg 64 :=
.seq NamedBody522_287 NamedBody522_292

def NamedBody522_294 : StackLang.HolProg 64 :=
.seq NamedBody522_286 NamedBody522_293

def NamedBody522_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody522_296 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody522_297 : StackLang.HolProg 64 :=
.seq NamedBody522_295 NamedBody522_296

def NamedBody522_298 : StackLang.HolProg 64 :=
.call (some (NamedBody522_294, 1, 522, 10)) (Sum.inl 490) (some (NamedBody522_297, 522, 11))

def NamedBody522_299 : StackLang.HolProg 64 :=
.seq NamedBody522_285 NamedBody522_298

def NamedBody522_300 : StackLang.HolProg 64 :=
.seq NamedBody522_284 NamedBody522_299

def NamedBody522_301 : StackLang.HolProg 64 :=
.seq NamedBody522_283 NamedBody522_300

def NamedBody522_302 : StackLang.HolProg 64 :=
.seq NamedBody522_254 NamedBody522_301

def NamedBody522_303 : StackLang.HolProg 64 :=
.seq NamedBody522_251 NamedBody522_302

def NamedBody522_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody522_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody522_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody522_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody522_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody522_309 : StackLang.HolProg 64 :=
.seq NamedBody522_307 NamedBody522_308

def NamedBody522_310 : StackLang.HolProg 64 :=
.seq NamedBody522_306 NamedBody522_309

def NamedBody522_311 : StackLang.HolProg 64 :=
.seq NamedBody522_305 NamedBody522_310

def NamedBody522_312 : StackLang.HolProg 64 :=
.seq NamedBody522_304 NamedBody522_311

def NamedBody522_313 : StackLang.HolProg 64 :=
.seq NamedBody522_303 NamedBody522_312

def NamedBody522_314 : StackLang.HolProg 64 :=
.seq NamedBody522_250 NamedBody522_313

def NamedBody522_315 : StackLang.HolProg 64 :=
.seq NamedBody522_249 NamedBody522_314

def NamedBody522_316 : StackLang.HolProg 64 :=
.seq NamedBody522_248 NamedBody522_315

def NamedBody522_317 : StackLang.HolProg 64 :=
.seq NamedBody522_247 NamedBody522_316

def NamedBody522_318 : StackLang.HolProg 64 :=
.seq NamedBody522_194 NamedBody522_317

def NamedBody522_319 : StackLang.HolProg 64 :=
.seq NamedBody522_193 NamedBody522_318

def NamedBody522_320 : StackLang.HolProg 64 :=
.seq NamedBody522_192 NamedBody522_319

def NamedBody522_321 : StackLang.HolProg 64 :=
.seq NamedBody522_191 NamedBody522_320

def NamedBody522_322 : StackLang.HolProg 64 :=
.seq NamedBody522_190 NamedBody522_321

def NamedBody522_323 : StackLang.HolProg 64 :=
.seq NamedBody522_189 NamedBody522_322

def NamedBody522_324 : StackLang.HolProg 64 :=
.seq NamedBody522_136 NamedBody522_323

def NamedBody522_325 : StackLang.HolProg 64 :=
.seq NamedBody522_135 NamedBody522_324

def NamedBody522_326 : StackLang.HolProg 64 :=
.seq NamedBody522_134 NamedBody522_325

def NamedBody522_327 : StackLang.HolProg 64 :=
.seq NamedBody522_69 NamedBody522_326

def NamedBody522_328 : StackLang.HolProg 64 :=
.seq NamedBody522_62 NamedBody522_327

def NamedBody522_329 : StackLang.HolProg 64 :=
.seq NamedBody522_61 NamedBody522_328

def NamedBody522_330 : StackLang.HolProg 64 :=
.seq NamedBody522_60 NamedBody522_329

def NamedBody522_331 : StackLang.HolProg 64 :=
.seq NamedBody522_7 NamedBody522_330

def NamedBody522_332 : StackLang.HolProg 64 :=
.seq NamedBody522_6 NamedBody522_331

def Named522 : Nat × StackLang.HolProg 64 := (522, NamedBody522_332)
theorem Named522_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed522 = Named522 := by
  kernel_rfl
#print axioms Named522_eq
end InitECandidate.Proofs.BackendStages
