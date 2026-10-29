import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed507
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody507_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def NamedBody507_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody507_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody507_3 : StackLang.HolProg 64 :=
.seq NamedBody507_1 NamedBody507_2

def NamedBody507_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody507_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody507_3 NamedBody507_4

def NamedBody507_6 : StackLang.HolProg 64 :=
.seq NamedBody507_0 NamedBody507_5

def NamedBody507_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody507_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody507_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1607#64)

def NamedBody507_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody507_11 : StackLang.HolProg 64 :=
.seq NamedBody507_9 NamedBody507_10

def NamedBody507_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody507_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody507_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody507_15 : StackLang.HolProg 64 :=
.seq NamedBody507_13 NamedBody507_14

def NamedBody507_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody507_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody507_15 NamedBody507_16

def NamedBody507_18 : StackLang.HolProg 64 :=
.seq NamedBody507_12 NamedBody507_17

def NamedBody507_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody507_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody507_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 507 3

def NamedBody507_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody507_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody507_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody507_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody507_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody507_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody507_28 : StackLang.HolProg 64 :=
.seq NamedBody507_26 NamedBody507_27

def NamedBody507_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody507_30 : StackLang.HolProg 64 :=
.seq NamedBody507_28 NamedBody507_29

def NamedBody507_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody507_32 : StackLang.HolProg 64 :=
.seq NamedBody507_30 NamedBody507_31

def NamedBody507_33 : StackLang.HolProg 64 :=
.seq NamedBody507_25 NamedBody507_32

def NamedBody507_34 : StackLang.HolProg 64 :=
.seq NamedBody507_24 NamedBody507_33

def NamedBody507_35 : StackLang.HolProg 64 :=
.seq NamedBody507_23 NamedBody507_34

def NamedBody507_36 : StackLang.HolProg 64 :=
.seq NamedBody507_22 NamedBody507_35

def NamedBody507_37 : StackLang.HolProg 64 :=
.seq NamedBody507_21 NamedBody507_36

def NamedBody507_38 : StackLang.HolProg 64 :=
.seq NamedBody507_20 NamedBody507_37

def NamedBody507_39 : StackLang.HolProg 64 :=
.seq NamedBody507_19 NamedBody507_38

def NamedBody507_40 : StackLang.HolProg 64 :=
.seq NamedBody507_18 NamedBody507_39

def NamedBody507_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody507_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody507_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody507_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody507_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody507_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody507_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody507_48 : StackLang.HolProg 64 :=
.seq NamedBody507_46 NamedBody507_47

def NamedBody507_49 : StackLang.HolProg 64 :=
.seq NamedBody507_45 NamedBody507_48

def NamedBody507_50 : StackLang.HolProg 64 :=
.seq NamedBody507_44 NamedBody507_49

def NamedBody507_51 : StackLang.HolProg 64 :=
.seq NamedBody507_43 NamedBody507_50

def NamedBody507_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody507_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody507_54 : StackLang.HolProg 64 :=
.seq NamedBody507_52 NamedBody507_53

def NamedBody507_55 : StackLang.HolProg 64 :=
.call (some (NamedBody507_51, 1, 507, 2)) (Sum.inl 475) (some (NamedBody507_54, 507, 3))

def NamedBody507_56 : StackLang.HolProg 64 :=
.seq NamedBody507_42 NamedBody507_55

def NamedBody507_57 : StackLang.HolProg 64 :=
.seq NamedBody507_41 NamedBody507_56

def NamedBody507_58 : StackLang.HolProg 64 :=
.seq NamedBody507_40 NamedBody507_57

def NamedBody507_59 : StackLang.HolProg 64 :=
.seq NamedBody507_11 NamedBody507_58

def NamedBody507_60 : StackLang.HolProg 64 :=
.seq NamedBody507_8 NamedBody507_59

def NamedBody507_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody507_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody507_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody507_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody507_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody507_66 : StackLang.HolProg 64 :=
.seq NamedBody507_64 NamedBody507_65

def NamedBody507_67 : StackLang.HolProg 64 :=
.seq NamedBody507_63 NamedBody507_66

def NamedBody507_68 : StackLang.HolProg 64 :=
.seq NamedBody507_62 NamedBody507_67

def NamedBody507_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody507_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1608#64)

def NamedBody507_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody507_72 : StackLang.HolProg 64 :=
.seq NamedBody507_70 NamedBody507_71

def NamedBody507_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody507_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody507_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody507_76 : StackLang.HolProg 64 :=
.seq NamedBody507_74 NamedBody507_75

def NamedBody507_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody507_78 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody507_76 NamedBody507_77

def NamedBody507_79 : StackLang.HolProg 64 :=
.seq NamedBody507_73 NamedBody507_78

def NamedBody507_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody507_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody507_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 507 5

def NamedBody507_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody507_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody507_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody507_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody507_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody507_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody507_89 : StackLang.HolProg 64 :=
.seq NamedBody507_87 NamedBody507_88

def NamedBody507_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody507_91 : StackLang.HolProg 64 :=
.seq NamedBody507_89 NamedBody507_90

def NamedBody507_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody507_93 : StackLang.HolProg 64 :=
.seq NamedBody507_91 NamedBody507_92

def NamedBody507_94 : StackLang.HolProg 64 :=
.seq NamedBody507_86 NamedBody507_93

def NamedBody507_95 : StackLang.HolProg 64 :=
.seq NamedBody507_85 NamedBody507_94

def NamedBody507_96 : StackLang.HolProg 64 :=
.seq NamedBody507_84 NamedBody507_95

def NamedBody507_97 : StackLang.HolProg 64 :=
.seq NamedBody507_83 NamedBody507_96

def NamedBody507_98 : StackLang.HolProg 64 :=
.seq NamedBody507_82 NamedBody507_97

def NamedBody507_99 : StackLang.HolProg 64 :=
.seq NamedBody507_81 NamedBody507_98

def NamedBody507_100 : StackLang.HolProg 64 :=
.seq NamedBody507_80 NamedBody507_99

def NamedBody507_101 : StackLang.HolProg 64 :=
.seq NamedBody507_79 NamedBody507_100

def NamedBody507_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody507_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody507_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody507_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody507_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody507_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody507_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody507_109 : StackLang.HolProg 64 :=
.seq NamedBody507_107 NamedBody507_108

def NamedBody507_110 : StackLang.HolProg 64 :=
.seq NamedBody507_106 NamedBody507_109

def NamedBody507_111 : StackLang.HolProg 64 :=
.seq NamedBody507_105 NamedBody507_110

def NamedBody507_112 : StackLang.HolProg 64 :=
.seq NamedBody507_104 NamedBody507_111

def NamedBody507_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody507_114 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody507_115 : StackLang.HolProg 64 :=
.seq NamedBody507_113 NamedBody507_114

def NamedBody507_116 : StackLang.HolProg 64 :=
.call (some (NamedBody507_112, 1, 507, 4)) (Sum.inl 475) (some (NamedBody507_115, 507, 5))

def NamedBody507_117 : StackLang.HolProg 64 :=
.seq NamedBody507_103 NamedBody507_116

def NamedBody507_118 : StackLang.HolProg 64 :=
.seq NamedBody507_102 NamedBody507_117

def NamedBody507_119 : StackLang.HolProg 64 :=
.seq NamedBody507_101 NamedBody507_118

def NamedBody507_120 : StackLang.HolProg 64 :=
.seq NamedBody507_72 NamedBody507_119

def NamedBody507_121 : StackLang.HolProg 64 :=
.seq NamedBody507_69 NamedBody507_120

def NamedBody507_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody507_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 5#64)

def NamedBody507_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody507_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody507_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody507_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody507_128 : StackLang.HolProg 64 :=
.seq NamedBody507_126 NamedBody507_127

def NamedBody507_129 : StackLang.HolProg 64 :=
.seq NamedBody507_125 NamedBody507_128

def NamedBody507_130 : StackLang.HolProg 64 :=
.seq NamedBody507_124 NamedBody507_129

def NamedBody507_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody507_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1609#64)

def NamedBody507_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody507_134 : StackLang.HolProg 64 :=
.seq NamedBody507_132 NamedBody507_133

def NamedBody507_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody507_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody507_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody507_138 : StackLang.HolProg 64 :=
.seq NamedBody507_136 NamedBody507_137

def NamedBody507_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody507_140 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody507_138 NamedBody507_139

def NamedBody507_141 : StackLang.HolProg 64 :=
.seq NamedBody507_135 NamedBody507_140

def NamedBody507_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody507_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody507_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 507 7

def NamedBody507_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody507_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody507_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody507_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody507_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody507_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody507_151 : StackLang.HolProg 64 :=
.seq NamedBody507_149 NamedBody507_150

def NamedBody507_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody507_153 : StackLang.HolProg 64 :=
.seq NamedBody507_151 NamedBody507_152

def NamedBody507_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody507_155 : StackLang.HolProg 64 :=
.seq NamedBody507_153 NamedBody507_154

def NamedBody507_156 : StackLang.HolProg 64 :=
.seq NamedBody507_148 NamedBody507_155

def NamedBody507_157 : StackLang.HolProg 64 :=
.seq NamedBody507_147 NamedBody507_156

def NamedBody507_158 : StackLang.HolProg 64 :=
.seq NamedBody507_146 NamedBody507_157

def NamedBody507_159 : StackLang.HolProg 64 :=
.seq NamedBody507_145 NamedBody507_158

def NamedBody507_160 : StackLang.HolProg 64 :=
.seq NamedBody507_144 NamedBody507_159

def NamedBody507_161 : StackLang.HolProg 64 :=
.seq NamedBody507_143 NamedBody507_160

def NamedBody507_162 : StackLang.HolProg 64 :=
.seq NamedBody507_142 NamedBody507_161

def NamedBody507_163 : StackLang.HolProg 64 :=
.seq NamedBody507_141 NamedBody507_162

def NamedBody507_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody507_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody507_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody507_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody507_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody507_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody507_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody507_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody507_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody507_173 : StackLang.HolProg 64 :=
.seq NamedBody507_171 NamedBody507_172

def NamedBody507_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody507_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody507_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody507_177 : StackLang.HolProg 64 :=
.seq NamedBody507_175 NamedBody507_176

def NamedBody507_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody507_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody507_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody507_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody507_182 : StackLang.HolProg 64 :=
.seq NamedBody507_180 NamedBody507_181

def NamedBody507_183 : StackLang.HolProg 64 :=
.seq NamedBody507_179 NamedBody507_182

def NamedBody507_184 : StackLang.HolProg 64 :=
.seq NamedBody507_178 NamedBody507_183

def NamedBody507_185 : StackLang.HolProg 64 :=
.seq NamedBody507_177 NamedBody507_184

def NamedBody507_186 : StackLang.HolProg 64 :=
.seq NamedBody507_174 NamedBody507_185

def NamedBody507_187 : StackLang.HolProg 64 :=
.seq NamedBody507_173 NamedBody507_186

def NamedBody507_188 : StackLang.HolProg 64 :=
.seq NamedBody507_170 NamedBody507_187

def NamedBody507_189 : StackLang.HolProg 64 :=
.seq NamedBody507_169 NamedBody507_188

def NamedBody507_190 : StackLang.HolProg 64 :=
.seq NamedBody507_168 NamedBody507_189

def NamedBody507_191 : StackLang.HolProg 64 :=
.seq NamedBody507_167 NamedBody507_190

def NamedBody507_192 : StackLang.HolProg 64 :=
.seq NamedBody507_166 NamedBody507_191

def NamedBody507_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody507_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody507_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody507_196 : StackLang.HolProg 64 :=
.seq NamedBody507_194 NamedBody507_195

def NamedBody507_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody507_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody507_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody507_200 : StackLang.HolProg 64 :=
.seq NamedBody507_198 NamedBody507_199

def NamedBody507_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody507_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody507_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody507_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody507_205 : StackLang.HolProg 64 :=
.seq NamedBody507_203 NamedBody507_204

def NamedBody507_206 : StackLang.HolProg 64 :=
.seq NamedBody507_202 NamedBody507_205

def NamedBody507_207 : StackLang.HolProg 64 :=
.seq NamedBody507_201 NamedBody507_206

def NamedBody507_208 : StackLang.HolProg 64 :=
.seq NamedBody507_200 NamedBody507_207

def NamedBody507_209 : StackLang.HolProg 64 :=
.seq NamedBody507_197 NamedBody507_208

def NamedBody507_210 : StackLang.HolProg 64 :=
.seq NamedBody507_196 NamedBody507_209

def NamedBody507_211 : StackLang.HolProg 64 :=
.seq NamedBody507_193 NamedBody507_210

def NamedBody507_212 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody507_213 : StackLang.HolProg 64 :=
.seq NamedBody507_211 NamedBody507_212

def NamedBody507_214 : StackLang.HolProg 64 :=
.call (some (NamedBody507_192, 1, 507, 6)) (Sum.inl 470) (some (NamedBody507_213, 507, 7))

def NamedBody507_215 : StackLang.HolProg 64 :=
.seq NamedBody507_165 NamedBody507_214

def NamedBody507_216 : StackLang.HolProg 64 :=
.seq NamedBody507_164 NamedBody507_215

def NamedBody507_217 : StackLang.HolProg 64 :=
.seq NamedBody507_163 NamedBody507_216

def NamedBody507_218 : StackLang.HolProg 64 :=
.seq NamedBody507_134 NamedBody507_217

def NamedBody507_219 : StackLang.HolProg 64 :=
.seq NamedBody507_131 NamedBody507_218

def NamedBody507_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody507_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody507_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody507_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1610#64)

def NamedBody507_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody507_225 : StackLang.HolProg 64 :=
.seq NamedBody507_223 NamedBody507_224

def NamedBody507_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody507_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody507_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody507_229 : StackLang.HolProg 64 :=
.seq NamedBody507_227 NamedBody507_228

def NamedBody507_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody507_231 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody507_229 NamedBody507_230

def NamedBody507_232 : StackLang.HolProg 64 :=
.seq NamedBody507_226 NamedBody507_231

def NamedBody507_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody507_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody507_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 507 9

def NamedBody507_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody507_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody507_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody507_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody507_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody507_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody507_242 : StackLang.HolProg 64 :=
.seq NamedBody507_240 NamedBody507_241

def NamedBody507_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody507_244 : StackLang.HolProg 64 :=
.seq NamedBody507_242 NamedBody507_243

def NamedBody507_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody507_246 : StackLang.HolProg 64 :=
.seq NamedBody507_244 NamedBody507_245

def NamedBody507_247 : StackLang.HolProg 64 :=
.seq NamedBody507_239 NamedBody507_246

def NamedBody507_248 : StackLang.HolProg 64 :=
.seq NamedBody507_238 NamedBody507_247

def NamedBody507_249 : StackLang.HolProg 64 :=
.seq NamedBody507_237 NamedBody507_248

def NamedBody507_250 : StackLang.HolProg 64 :=
.seq NamedBody507_236 NamedBody507_249

def NamedBody507_251 : StackLang.HolProg 64 :=
.seq NamedBody507_235 NamedBody507_250

def NamedBody507_252 : StackLang.HolProg 64 :=
.seq NamedBody507_234 NamedBody507_251

def NamedBody507_253 : StackLang.HolProg 64 :=
.seq NamedBody507_233 NamedBody507_252

def NamedBody507_254 : StackLang.HolProg 64 :=
.seq NamedBody507_232 NamedBody507_253

def NamedBody507_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody507_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody507_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody507_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody507_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody507_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody507_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody507_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody507_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody507_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody507_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody507_266 : StackLang.HolProg 64 :=
.seq NamedBody507_264 NamedBody507_265

def NamedBody507_267 : StackLang.HolProg 64 :=
.seq NamedBody507_263 NamedBody507_266

def NamedBody507_268 : StackLang.HolProg 64 :=
.seq NamedBody507_262 NamedBody507_267

def NamedBody507_269 : StackLang.HolProg 64 :=
.seq NamedBody507_261 NamedBody507_268

def NamedBody507_270 : StackLang.HolProg 64 :=
.seq NamedBody507_260 NamedBody507_269

def NamedBody507_271 : StackLang.HolProg 64 :=
.seq NamedBody507_259 NamedBody507_270

def NamedBody507_272 : StackLang.HolProg 64 :=
.seq NamedBody507_258 NamedBody507_271

def NamedBody507_273 : StackLang.HolProg 64 :=
.seq NamedBody507_257 NamedBody507_272

def NamedBody507_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody507_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody507_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody507_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody507_278 : StackLang.HolProg 64 :=
.seq NamedBody507_276 NamedBody507_277

def NamedBody507_279 : StackLang.HolProg 64 :=
.seq NamedBody507_275 NamedBody507_278

def NamedBody507_280 : StackLang.HolProg 64 :=
.seq NamedBody507_274 NamedBody507_279

def NamedBody507_281 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody507_282 : StackLang.HolProg 64 :=
.seq NamedBody507_280 NamedBody507_281

def NamedBody507_283 : StackLang.HolProg 64 :=
.call (some (NamedBody507_273, 1, 507, 8)) (Sum.inl 462) (some (NamedBody507_282, 507, 9))

def NamedBody507_284 : StackLang.HolProg 64 :=
.seq NamedBody507_256 NamedBody507_283

def NamedBody507_285 : StackLang.HolProg 64 :=
.seq NamedBody507_255 NamedBody507_284

def NamedBody507_286 : StackLang.HolProg 64 :=
.seq NamedBody507_254 NamedBody507_285

def NamedBody507_287 : StackLang.HolProg 64 :=
.seq NamedBody507_225 NamedBody507_286

def NamedBody507_288 : StackLang.HolProg 64 :=
.seq NamedBody507_222 NamedBody507_287

def NamedBody507_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody507_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody507_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody507_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1611#64)

def NamedBody507_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody507_294 : StackLang.HolProg 64 :=
.seq NamedBody507_292 NamedBody507_293

def NamedBody507_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody507_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody507_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody507_298 : StackLang.HolProg 64 :=
.seq NamedBody507_296 NamedBody507_297

def NamedBody507_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody507_300 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody507_298 NamedBody507_299

def NamedBody507_301 : StackLang.HolProg 64 :=
.seq NamedBody507_295 NamedBody507_300

def NamedBody507_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody507_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody507_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 507 11

def NamedBody507_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody507_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody507_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody507_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody507_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody507_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody507_311 : StackLang.HolProg 64 :=
.seq NamedBody507_309 NamedBody507_310

def NamedBody507_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody507_313 : StackLang.HolProg 64 :=
.seq NamedBody507_311 NamedBody507_312

def NamedBody507_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody507_315 : StackLang.HolProg 64 :=
.seq NamedBody507_313 NamedBody507_314

def NamedBody507_316 : StackLang.HolProg 64 :=
.seq NamedBody507_308 NamedBody507_315

def NamedBody507_317 : StackLang.HolProg 64 :=
.seq NamedBody507_307 NamedBody507_316

def NamedBody507_318 : StackLang.HolProg 64 :=
.seq NamedBody507_306 NamedBody507_317

def NamedBody507_319 : StackLang.HolProg 64 :=
.seq NamedBody507_305 NamedBody507_318

def NamedBody507_320 : StackLang.HolProg 64 :=
.seq NamedBody507_304 NamedBody507_319

def NamedBody507_321 : StackLang.HolProg 64 :=
.seq NamedBody507_303 NamedBody507_320

def NamedBody507_322 : StackLang.HolProg 64 :=
.seq NamedBody507_302 NamedBody507_321

def NamedBody507_323 : StackLang.HolProg 64 :=
.seq NamedBody507_301 NamedBody507_322

def NamedBody507_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody507_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody507_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody507_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody507_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody507_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody507_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody507_331 : StackLang.HolProg 64 :=
.seq NamedBody507_329 NamedBody507_330

def NamedBody507_332 : StackLang.HolProg 64 :=
.seq NamedBody507_328 NamedBody507_331

def NamedBody507_333 : StackLang.HolProg 64 :=
.seq NamedBody507_327 NamedBody507_332

def NamedBody507_334 : StackLang.HolProg 64 :=
.seq NamedBody507_326 NamedBody507_333

def NamedBody507_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody507_336 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody507_337 : StackLang.HolProg 64 :=
.seq NamedBody507_335 NamedBody507_336

def NamedBody507_338 : StackLang.HolProg 64 :=
.call (some (NamedBody507_334, 1, 507, 10)) (Sum.inl 144) (some (NamedBody507_337, 507, 11))

def NamedBody507_339 : StackLang.HolProg 64 :=
.seq NamedBody507_325 NamedBody507_338

def NamedBody507_340 : StackLang.HolProg 64 :=
.seq NamedBody507_324 NamedBody507_339

def NamedBody507_341 : StackLang.HolProg 64 :=
.seq NamedBody507_323 NamedBody507_340

def NamedBody507_342 : StackLang.HolProg 64 :=
.seq NamedBody507_294 NamedBody507_341

def NamedBody507_343 : StackLang.HolProg 64 :=
.seq NamedBody507_291 NamedBody507_342

def NamedBody507_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody507_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody507_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody507_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1612#64)

def NamedBody507_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody507_349 : StackLang.HolProg 64 :=
.seq NamedBody507_347 NamedBody507_348

def NamedBody507_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody507_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody507_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody507_353 : StackLang.HolProg 64 :=
.seq NamedBody507_351 NamedBody507_352

def NamedBody507_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody507_355 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody507_353 NamedBody507_354

def NamedBody507_356 : StackLang.HolProg 64 :=
.seq NamedBody507_350 NamedBody507_355

def NamedBody507_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody507_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody507_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 507 13

def NamedBody507_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody507_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody507_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody507_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody507_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody507_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody507_366 : StackLang.HolProg 64 :=
.seq NamedBody507_364 NamedBody507_365

def NamedBody507_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody507_368 : StackLang.HolProg 64 :=
.seq NamedBody507_366 NamedBody507_367

def NamedBody507_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody507_370 : StackLang.HolProg 64 :=
.seq NamedBody507_368 NamedBody507_369

def NamedBody507_371 : StackLang.HolProg 64 :=
.seq NamedBody507_363 NamedBody507_370

def NamedBody507_372 : StackLang.HolProg 64 :=
.seq NamedBody507_362 NamedBody507_371

def NamedBody507_373 : StackLang.HolProg 64 :=
.seq NamedBody507_361 NamedBody507_372

def NamedBody507_374 : StackLang.HolProg 64 :=
.seq NamedBody507_360 NamedBody507_373

def NamedBody507_375 : StackLang.HolProg 64 :=
.seq NamedBody507_359 NamedBody507_374

def NamedBody507_376 : StackLang.HolProg 64 :=
.seq NamedBody507_358 NamedBody507_375

def NamedBody507_377 : StackLang.HolProg 64 :=
.seq NamedBody507_357 NamedBody507_376

def NamedBody507_378 : StackLang.HolProg 64 :=
.seq NamedBody507_356 NamedBody507_377

def NamedBody507_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody507_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody507_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody507_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody507_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody507_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody507_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody507_386 : StackLang.HolProg 64 :=
.seq NamedBody507_384 NamedBody507_385

def NamedBody507_387 : StackLang.HolProg 64 :=
.seq NamedBody507_383 NamedBody507_386

def NamedBody507_388 : StackLang.HolProg 64 :=
.seq NamedBody507_382 NamedBody507_387

def NamedBody507_389 : StackLang.HolProg 64 :=
.seq NamedBody507_381 NamedBody507_388

def NamedBody507_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody507_391 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody507_392 : StackLang.HolProg 64 :=
.seq NamedBody507_390 NamedBody507_391

def NamedBody507_393 : StackLang.HolProg 64 :=
.call (some (NamedBody507_389, 1, 507, 12)) (Sum.inl 476) (some (NamedBody507_392, 507, 13))

def NamedBody507_394 : StackLang.HolProg 64 :=
.seq NamedBody507_380 NamedBody507_393

def NamedBody507_395 : StackLang.HolProg 64 :=
.seq NamedBody507_379 NamedBody507_394

def NamedBody507_396 : StackLang.HolProg 64 :=
.seq NamedBody507_378 NamedBody507_395

def NamedBody507_397 : StackLang.HolProg 64 :=
.seq NamedBody507_349 NamedBody507_396

def NamedBody507_398 : StackLang.HolProg 64 :=
.seq NamedBody507_346 NamedBody507_397

def NamedBody507_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody507_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody507_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody507_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody507_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1613#64)

def NamedBody507_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody507_405 : StackLang.HolProg 64 :=
.seq NamedBody507_403 NamedBody507_404

def NamedBody507_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody507_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody507_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody507_409 : StackLang.HolProg 64 :=
.seq NamedBody507_407 NamedBody507_408

def NamedBody507_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody507_411 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody507_409 NamedBody507_410

def NamedBody507_412 : StackLang.HolProg 64 :=
.seq NamedBody507_406 NamedBody507_411

def NamedBody507_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody507_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody507_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 507 15

def NamedBody507_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody507_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody507_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody507_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody507_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody507_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody507_422 : StackLang.HolProg 64 :=
.seq NamedBody507_420 NamedBody507_421

def NamedBody507_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody507_424 : StackLang.HolProg 64 :=
.seq NamedBody507_422 NamedBody507_423

def NamedBody507_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody507_426 : StackLang.HolProg 64 :=
.seq NamedBody507_424 NamedBody507_425

def NamedBody507_427 : StackLang.HolProg 64 :=
.seq NamedBody507_419 NamedBody507_426

def NamedBody507_428 : StackLang.HolProg 64 :=
.seq NamedBody507_418 NamedBody507_427

def NamedBody507_429 : StackLang.HolProg 64 :=
.seq NamedBody507_417 NamedBody507_428

def NamedBody507_430 : StackLang.HolProg 64 :=
.seq NamedBody507_416 NamedBody507_429

def NamedBody507_431 : StackLang.HolProg 64 :=
.seq NamedBody507_415 NamedBody507_430

def NamedBody507_432 : StackLang.HolProg 64 :=
.seq NamedBody507_414 NamedBody507_431

def NamedBody507_433 : StackLang.HolProg 64 :=
.seq NamedBody507_413 NamedBody507_432

def NamedBody507_434 : StackLang.HolProg 64 :=
.seq NamedBody507_412 NamedBody507_433

def NamedBody507_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody507_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody507_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody507_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody507_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody507_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody507_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody507_442 : StackLang.HolProg 64 :=
.seq NamedBody507_440 NamedBody507_441

def NamedBody507_443 : StackLang.HolProg 64 :=
.seq NamedBody507_439 NamedBody507_442

def NamedBody507_444 : StackLang.HolProg 64 :=
.seq NamedBody507_438 NamedBody507_443

def NamedBody507_445 : StackLang.HolProg 64 :=
.seq NamedBody507_437 NamedBody507_444

def NamedBody507_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody507_447 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody507_448 : StackLang.HolProg 64 :=
.seq NamedBody507_446 NamedBody507_447

def NamedBody507_449 : StackLang.HolProg 64 :=
.call (some (NamedBody507_445, 1, 507, 14)) (Sum.inl 490) (some (NamedBody507_448, 507, 15))

def NamedBody507_450 : StackLang.HolProg 64 :=
.seq NamedBody507_436 NamedBody507_449

def NamedBody507_451 : StackLang.HolProg 64 :=
.seq NamedBody507_435 NamedBody507_450

def NamedBody507_452 : StackLang.HolProg 64 :=
.seq NamedBody507_434 NamedBody507_451

def NamedBody507_453 : StackLang.HolProg 64 :=
.seq NamedBody507_405 NamedBody507_452

def NamedBody507_454 : StackLang.HolProg 64 :=
.seq NamedBody507_402 NamedBody507_453

def NamedBody507_455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody507_456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody507_457 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody507_458 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def NamedBody507_459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody507_460 : StackLang.HolProg 64 :=
.seq NamedBody507_458 NamedBody507_459

def NamedBody507_461 : StackLang.HolProg 64 :=
.seq NamedBody507_457 NamedBody507_460

def NamedBody507_462 : StackLang.HolProg 64 :=
.seq NamedBody507_456 NamedBody507_461

def NamedBody507_463 : StackLang.HolProg 64 :=
.seq NamedBody507_455 NamedBody507_462

def NamedBody507_464 : StackLang.HolProg 64 :=
.seq NamedBody507_454 NamedBody507_463

def NamedBody507_465 : StackLang.HolProg 64 :=
.seq NamedBody507_401 NamedBody507_464

def NamedBody507_466 : StackLang.HolProg 64 :=
.seq NamedBody507_400 NamedBody507_465

def NamedBody507_467 : StackLang.HolProg 64 :=
.seq NamedBody507_399 NamedBody507_466

def NamedBody507_468 : StackLang.HolProg 64 :=
.seq NamedBody507_398 NamedBody507_467

def NamedBody507_469 : StackLang.HolProg 64 :=
.seq NamedBody507_345 NamedBody507_468

def NamedBody507_470 : StackLang.HolProg 64 :=
.seq NamedBody507_344 NamedBody507_469

def NamedBody507_471 : StackLang.HolProg 64 :=
.seq NamedBody507_343 NamedBody507_470

def NamedBody507_472 : StackLang.HolProg 64 :=
.seq NamedBody507_290 NamedBody507_471

def NamedBody507_473 : StackLang.HolProg 64 :=
.seq NamedBody507_289 NamedBody507_472

def NamedBody507_474 : StackLang.HolProg 64 :=
.seq NamedBody507_288 NamedBody507_473

def NamedBody507_475 : StackLang.HolProg 64 :=
.seq NamedBody507_221 NamedBody507_474

def NamedBody507_476 : StackLang.HolProg 64 :=
.seq NamedBody507_220 NamedBody507_475

def NamedBody507_477 : StackLang.HolProg 64 :=
.seq NamedBody507_219 NamedBody507_476

def NamedBody507_478 : StackLang.HolProg 64 :=
.seq NamedBody507_130 NamedBody507_477

def NamedBody507_479 : StackLang.HolProg 64 :=
.seq NamedBody507_123 NamedBody507_478

def NamedBody507_480 : StackLang.HolProg 64 :=
.seq NamedBody507_122 NamedBody507_479

def NamedBody507_481 : StackLang.HolProg 64 :=
.seq NamedBody507_121 NamedBody507_480

def NamedBody507_482 : StackLang.HolProg 64 :=
.seq NamedBody507_68 NamedBody507_481

def NamedBody507_483 : StackLang.HolProg 64 :=
.seq NamedBody507_61 NamedBody507_482

def NamedBody507_484 : StackLang.HolProg 64 :=
.seq NamedBody507_60 NamedBody507_483

def NamedBody507_485 : StackLang.HolProg 64 :=
.seq NamedBody507_7 NamedBody507_484

def NamedBody507_486 : StackLang.HolProg 64 :=
.seq NamedBody507_6 NamedBody507_485

def Named507 : Nat × StackLang.HolProg 64 := (507, NamedBody507_486)
theorem Named507_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed507 = Named507 := by
  kernel_rfl
#print axioms Named507_eq
end InitECandidate.Proofs.BackendStages
