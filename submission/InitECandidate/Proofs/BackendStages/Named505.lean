import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed505
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody505_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 112#64)))

def NamedBody505_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody505_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody505_3 : StackLang.HolProg 64 :=
.seq NamedBody505_1 NamedBody505_2

def NamedBody505_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody505_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody505_3 NamedBody505_4

def NamedBody505_6 : StackLang.HolProg 64 :=
.seq NamedBody505_0 NamedBody505_5

def NamedBody505_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody505_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody505_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1593#64)

def NamedBody505_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody505_11 : StackLang.HolProg 64 :=
.seq NamedBody505_9 NamedBody505_10

def NamedBody505_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody505_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody505_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody505_15 : StackLang.HolProg 64 :=
.seq NamedBody505_13 NamedBody505_14

def NamedBody505_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody505_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody505_15 NamedBody505_16

def NamedBody505_18 : StackLang.HolProg 64 :=
.seq NamedBody505_12 NamedBody505_17

def NamedBody505_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody505_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody505_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 505 3

def NamedBody505_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody505_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody505_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody505_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody505_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody505_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody505_28 : StackLang.HolProg 64 :=
.seq NamedBody505_26 NamedBody505_27

def NamedBody505_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody505_30 : StackLang.HolProg 64 :=
.seq NamedBody505_28 NamedBody505_29

def NamedBody505_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody505_32 : StackLang.HolProg 64 :=
.seq NamedBody505_30 NamedBody505_31

def NamedBody505_33 : StackLang.HolProg 64 :=
.seq NamedBody505_25 NamedBody505_32

def NamedBody505_34 : StackLang.HolProg 64 :=
.seq NamedBody505_24 NamedBody505_33

def NamedBody505_35 : StackLang.HolProg 64 :=
.seq NamedBody505_23 NamedBody505_34

def NamedBody505_36 : StackLang.HolProg 64 :=
.seq NamedBody505_22 NamedBody505_35

def NamedBody505_37 : StackLang.HolProg 64 :=
.seq NamedBody505_21 NamedBody505_36

def NamedBody505_38 : StackLang.HolProg 64 :=
.seq NamedBody505_20 NamedBody505_37

def NamedBody505_39 : StackLang.HolProg 64 :=
.seq NamedBody505_19 NamedBody505_38

def NamedBody505_40 : StackLang.HolProg 64 :=
.seq NamedBody505_18 NamedBody505_39

def NamedBody505_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody505_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody505_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody505_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody505_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody505_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody505_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody505_48 : StackLang.HolProg 64 :=
.seq NamedBody505_46 NamedBody505_47

def NamedBody505_49 : StackLang.HolProg 64 :=
.seq NamedBody505_45 NamedBody505_48

def NamedBody505_50 : StackLang.HolProg 64 :=
.seq NamedBody505_44 NamedBody505_49

def NamedBody505_51 : StackLang.HolProg 64 :=
.seq NamedBody505_43 NamedBody505_50

def NamedBody505_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody505_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody505_54 : StackLang.HolProg 64 :=
.seq NamedBody505_52 NamedBody505_53

def NamedBody505_55 : StackLang.HolProg 64 :=
.call (some (NamedBody505_51, 1, 505, 2)) (Sum.inl 475) (some (NamedBody505_54, 505, 3))

def NamedBody505_56 : StackLang.HolProg 64 :=
.seq NamedBody505_42 NamedBody505_55

def NamedBody505_57 : StackLang.HolProg 64 :=
.seq NamedBody505_41 NamedBody505_56

def NamedBody505_58 : StackLang.HolProg 64 :=
.seq NamedBody505_40 NamedBody505_57

def NamedBody505_59 : StackLang.HolProg 64 :=
.seq NamedBody505_11 NamedBody505_58

def NamedBody505_60 : StackLang.HolProg 64 :=
.seq NamedBody505_8 NamedBody505_59

def NamedBody505_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody505_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody505_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody505_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody505_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody505_66 : StackLang.HolProg 64 :=
.seq NamedBody505_64 NamedBody505_65

def NamedBody505_67 : StackLang.HolProg 64 :=
.seq NamedBody505_63 NamedBody505_66

def NamedBody505_68 : StackLang.HolProg 64 :=
.seq NamedBody505_62 NamedBody505_67

def NamedBody505_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody505_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1594#64)

def NamedBody505_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody505_72 : StackLang.HolProg 64 :=
.seq NamedBody505_70 NamedBody505_71

def NamedBody505_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody505_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody505_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody505_76 : StackLang.HolProg 64 :=
.seq NamedBody505_74 NamedBody505_75

def NamedBody505_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody505_78 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody505_76 NamedBody505_77

def NamedBody505_79 : StackLang.HolProg 64 :=
.seq NamedBody505_73 NamedBody505_78

def NamedBody505_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody505_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody505_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 505 5

def NamedBody505_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody505_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody505_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody505_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody505_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody505_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody505_89 : StackLang.HolProg 64 :=
.seq NamedBody505_87 NamedBody505_88

def NamedBody505_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody505_91 : StackLang.HolProg 64 :=
.seq NamedBody505_89 NamedBody505_90

def NamedBody505_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody505_93 : StackLang.HolProg 64 :=
.seq NamedBody505_91 NamedBody505_92

def NamedBody505_94 : StackLang.HolProg 64 :=
.seq NamedBody505_86 NamedBody505_93

def NamedBody505_95 : StackLang.HolProg 64 :=
.seq NamedBody505_85 NamedBody505_94

def NamedBody505_96 : StackLang.HolProg 64 :=
.seq NamedBody505_84 NamedBody505_95

def NamedBody505_97 : StackLang.HolProg 64 :=
.seq NamedBody505_83 NamedBody505_96

def NamedBody505_98 : StackLang.HolProg 64 :=
.seq NamedBody505_82 NamedBody505_97

def NamedBody505_99 : StackLang.HolProg 64 :=
.seq NamedBody505_81 NamedBody505_98

def NamedBody505_100 : StackLang.HolProg 64 :=
.seq NamedBody505_80 NamedBody505_99

def NamedBody505_101 : StackLang.HolProg 64 :=
.seq NamedBody505_79 NamedBody505_100

def NamedBody505_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody505_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody505_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody505_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody505_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody505_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody505_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody505_109 : StackLang.HolProg 64 :=
.seq NamedBody505_107 NamedBody505_108

def NamedBody505_110 : StackLang.HolProg 64 :=
.seq NamedBody505_106 NamedBody505_109

def NamedBody505_111 : StackLang.HolProg 64 :=
.seq NamedBody505_105 NamedBody505_110

def NamedBody505_112 : StackLang.HolProg 64 :=
.seq NamedBody505_104 NamedBody505_111

def NamedBody505_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody505_114 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody505_115 : StackLang.HolProg 64 :=
.seq NamedBody505_113 NamedBody505_114

def NamedBody505_116 : StackLang.HolProg 64 :=
.call (some (NamedBody505_112, 1, 505, 4)) (Sum.inl 475) (some (NamedBody505_115, 505, 5))

def NamedBody505_117 : StackLang.HolProg 64 :=
.seq NamedBody505_103 NamedBody505_116

def NamedBody505_118 : StackLang.HolProg 64 :=
.seq NamedBody505_102 NamedBody505_117

def NamedBody505_119 : StackLang.HolProg 64 :=
.seq NamedBody505_101 NamedBody505_118

def NamedBody505_120 : StackLang.HolProg 64 :=
.seq NamedBody505_72 NamedBody505_119

def NamedBody505_121 : StackLang.HolProg 64 :=
.seq NamedBody505_69 NamedBody505_120

def NamedBody505_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody505_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody505_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody505_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody505_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody505_127 : StackLang.HolProg 64 :=
.seq NamedBody505_125 NamedBody505_126

def NamedBody505_128 : StackLang.HolProg 64 :=
.seq NamedBody505_124 NamedBody505_127

def NamedBody505_129 : StackLang.HolProg 64 :=
.seq NamedBody505_123 NamedBody505_128

def NamedBody505_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody505_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1595#64)

def NamedBody505_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody505_133 : StackLang.HolProg 64 :=
.seq NamedBody505_131 NamedBody505_132

def NamedBody505_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody505_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody505_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody505_137 : StackLang.HolProg 64 :=
.seq NamedBody505_135 NamedBody505_136

def NamedBody505_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody505_139 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody505_137 NamedBody505_138

def NamedBody505_140 : StackLang.HolProg 64 :=
.seq NamedBody505_134 NamedBody505_139

def NamedBody505_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody505_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody505_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 505 7

def NamedBody505_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody505_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody505_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody505_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody505_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody505_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody505_150 : StackLang.HolProg 64 :=
.seq NamedBody505_148 NamedBody505_149

def NamedBody505_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody505_152 : StackLang.HolProg 64 :=
.seq NamedBody505_150 NamedBody505_151

def NamedBody505_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody505_154 : StackLang.HolProg 64 :=
.seq NamedBody505_152 NamedBody505_153

def NamedBody505_155 : StackLang.HolProg 64 :=
.seq NamedBody505_147 NamedBody505_154

def NamedBody505_156 : StackLang.HolProg 64 :=
.seq NamedBody505_146 NamedBody505_155

def NamedBody505_157 : StackLang.HolProg 64 :=
.seq NamedBody505_145 NamedBody505_156

def NamedBody505_158 : StackLang.HolProg 64 :=
.seq NamedBody505_144 NamedBody505_157

def NamedBody505_159 : StackLang.HolProg 64 :=
.seq NamedBody505_143 NamedBody505_158

def NamedBody505_160 : StackLang.HolProg 64 :=
.seq NamedBody505_142 NamedBody505_159

def NamedBody505_161 : StackLang.HolProg 64 :=
.seq NamedBody505_141 NamedBody505_160

def NamedBody505_162 : StackLang.HolProg 64 :=
.seq NamedBody505_140 NamedBody505_161

def NamedBody505_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody505_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody505_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody505_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody505_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody505_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody505_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody505_170 : StackLang.HolProg 64 :=
.seq NamedBody505_168 NamedBody505_169

def NamedBody505_171 : StackLang.HolProg 64 :=
.seq NamedBody505_167 NamedBody505_170

def NamedBody505_172 : StackLang.HolProg 64 :=
.seq NamedBody505_166 NamedBody505_171

def NamedBody505_173 : StackLang.HolProg 64 :=
.seq NamedBody505_165 NamedBody505_172

def NamedBody505_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody505_175 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody505_176 : StackLang.HolProg 64 :=
.seq NamedBody505_174 NamedBody505_175

def NamedBody505_177 : StackLang.HolProg 64 :=
.call (some (NamedBody505_173, 1, 505, 6)) (Sum.inl 475) (some (NamedBody505_176, 505, 7))

def NamedBody505_178 : StackLang.HolProg 64 :=
.seq NamedBody505_164 NamedBody505_177

def NamedBody505_179 : StackLang.HolProg 64 :=
.seq NamedBody505_163 NamedBody505_178

def NamedBody505_180 : StackLang.HolProg 64 :=
.seq NamedBody505_162 NamedBody505_179

def NamedBody505_181 : StackLang.HolProg 64 :=
.seq NamedBody505_133 NamedBody505_180

def NamedBody505_182 : StackLang.HolProg 64 :=
.seq NamedBody505_130 NamedBody505_181

def NamedBody505_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody505_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 8#64)

def NamedBody505_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody505_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody505_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody505_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody505_189 : StackLang.HolProg 64 :=
.seq NamedBody505_187 NamedBody505_188

def NamedBody505_190 : StackLang.HolProg 64 :=
.seq NamedBody505_186 NamedBody505_189

def NamedBody505_191 : StackLang.HolProg 64 :=
.seq NamedBody505_185 NamedBody505_190

def NamedBody505_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody505_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1596#64)

def NamedBody505_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody505_195 : StackLang.HolProg 64 :=
.seq NamedBody505_193 NamedBody505_194

def NamedBody505_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody505_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody505_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody505_199 : StackLang.HolProg 64 :=
.seq NamedBody505_197 NamedBody505_198

def NamedBody505_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody505_201 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody505_199 NamedBody505_200

def NamedBody505_202 : StackLang.HolProg 64 :=
.seq NamedBody505_196 NamedBody505_201

def NamedBody505_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody505_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody505_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 505 9

def NamedBody505_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody505_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody505_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody505_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody505_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody505_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody505_212 : StackLang.HolProg 64 :=
.seq NamedBody505_210 NamedBody505_211

def NamedBody505_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody505_214 : StackLang.HolProg 64 :=
.seq NamedBody505_212 NamedBody505_213

def NamedBody505_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody505_216 : StackLang.HolProg 64 :=
.seq NamedBody505_214 NamedBody505_215

def NamedBody505_217 : StackLang.HolProg 64 :=
.seq NamedBody505_209 NamedBody505_216

def NamedBody505_218 : StackLang.HolProg 64 :=
.seq NamedBody505_208 NamedBody505_217

def NamedBody505_219 : StackLang.HolProg 64 :=
.seq NamedBody505_207 NamedBody505_218

def NamedBody505_220 : StackLang.HolProg 64 :=
.seq NamedBody505_206 NamedBody505_219

def NamedBody505_221 : StackLang.HolProg 64 :=
.seq NamedBody505_205 NamedBody505_220

def NamedBody505_222 : StackLang.HolProg 64 :=
.seq NamedBody505_204 NamedBody505_221

def NamedBody505_223 : StackLang.HolProg 64 :=
.seq NamedBody505_203 NamedBody505_222

def NamedBody505_224 : StackLang.HolProg 64 :=
.seq NamedBody505_202 NamedBody505_223

def NamedBody505_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody505_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody505_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody505_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody505_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody505_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody505_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody505_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody505_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody505_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody505_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 29
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody505_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody505_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody505_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody505_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody505_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody505_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 28
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody505_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody505_243 : StackLang.HolProg 64 :=
.seq NamedBody505_241 NamedBody505_242

def NamedBody505_244 : StackLang.HolProg 64 :=
.seq NamedBody505_240 NamedBody505_243

def NamedBody505_245 : StackLang.HolProg 64 :=
.seq NamedBody505_239 NamedBody505_244

def NamedBody505_246 : StackLang.HolProg 64 :=
.seq NamedBody505_238 NamedBody505_245

def NamedBody505_247 : StackLang.HolProg 64 :=
.seq NamedBody505_237 NamedBody505_246

def NamedBody505_248 : StackLang.HolProg 64 :=
.seq NamedBody505_236 NamedBody505_247

def NamedBody505_249 : StackLang.HolProg 64 :=
.seq NamedBody505_235 NamedBody505_248

def NamedBody505_250 : StackLang.HolProg 64 :=
.seq NamedBody505_234 NamedBody505_249

def NamedBody505_251 : StackLang.HolProg 64 :=
.seq NamedBody505_233 NamedBody505_250

def NamedBody505_252 : StackLang.HolProg 64 :=
.seq NamedBody505_232 NamedBody505_251

def NamedBody505_253 : StackLang.HolProg 64 :=
.seq NamedBody505_231 NamedBody505_252

def NamedBody505_254 : StackLang.HolProg 64 :=
.seq NamedBody505_230 NamedBody505_253

def NamedBody505_255 : StackLang.HolProg 64 :=
.seq NamedBody505_229 NamedBody505_254

def NamedBody505_256 : StackLang.HolProg 64 :=
.seq NamedBody505_228 NamedBody505_255

def NamedBody505_257 : StackLang.HolProg 64 :=
.seq NamedBody505_227 NamedBody505_256

def NamedBody505_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody505_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody505_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody505_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody505_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 29
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody505_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody505_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody505_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody505_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody505_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody505_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 28
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody505_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody505_270 : StackLang.HolProg 64 :=
.seq NamedBody505_268 NamedBody505_269

def NamedBody505_271 : StackLang.HolProg 64 :=
.seq NamedBody505_267 NamedBody505_270

def NamedBody505_272 : StackLang.HolProg 64 :=
.seq NamedBody505_266 NamedBody505_271

def NamedBody505_273 : StackLang.HolProg 64 :=
.seq NamedBody505_265 NamedBody505_272

def NamedBody505_274 : StackLang.HolProg 64 :=
.seq NamedBody505_264 NamedBody505_273

def NamedBody505_275 : StackLang.HolProg 64 :=
.seq NamedBody505_263 NamedBody505_274

def NamedBody505_276 : StackLang.HolProg 64 :=
.seq NamedBody505_262 NamedBody505_275

def NamedBody505_277 : StackLang.HolProg 64 :=
.seq NamedBody505_261 NamedBody505_276

def NamedBody505_278 : StackLang.HolProg 64 :=
.seq NamedBody505_260 NamedBody505_277

def NamedBody505_279 : StackLang.HolProg 64 :=
.seq NamedBody505_259 NamedBody505_278

def NamedBody505_280 : StackLang.HolProg 64 :=
.seq NamedBody505_258 NamedBody505_279

def NamedBody505_281 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody505_282 : StackLang.HolProg 64 :=
.seq NamedBody505_280 NamedBody505_281

def NamedBody505_283 : StackLang.HolProg 64 :=
.call (some (NamedBody505_257, 1, 505, 8)) (Sum.inl 470) (some (NamedBody505_282, 505, 9))

def NamedBody505_284 : StackLang.HolProg 64 :=
.seq NamedBody505_226 NamedBody505_283

def NamedBody505_285 : StackLang.HolProg 64 :=
.seq NamedBody505_225 NamedBody505_284

def NamedBody505_286 : StackLang.HolProg 64 :=
.seq NamedBody505_224 NamedBody505_285

def NamedBody505_287 : StackLang.HolProg 64 :=
.seq NamedBody505_195 NamedBody505_286

def NamedBody505_288 : StackLang.HolProg 64 :=
.seq NamedBody505_192 NamedBody505_287

def NamedBody505_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody505_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody505_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody505_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1597#64)

def NamedBody505_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody505_294 : StackLang.HolProg 64 :=
.seq NamedBody505_292 NamedBody505_293

def NamedBody505_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody505_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody505_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody505_298 : StackLang.HolProg 64 :=
.seq NamedBody505_296 NamedBody505_297

def NamedBody505_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody505_300 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody505_298 NamedBody505_299

def NamedBody505_301 : StackLang.HolProg 64 :=
.seq NamedBody505_295 NamedBody505_300

def NamedBody505_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody505_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody505_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 505 11

def NamedBody505_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody505_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody505_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody505_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody505_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody505_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody505_311 : StackLang.HolProg 64 :=
.seq NamedBody505_309 NamedBody505_310

def NamedBody505_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody505_313 : StackLang.HolProg 64 :=
.seq NamedBody505_311 NamedBody505_312

def NamedBody505_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody505_315 : StackLang.HolProg 64 :=
.seq NamedBody505_313 NamedBody505_314

def NamedBody505_316 : StackLang.HolProg 64 :=
.seq NamedBody505_308 NamedBody505_315

def NamedBody505_317 : StackLang.HolProg 64 :=
.seq NamedBody505_307 NamedBody505_316

def NamedBody505_318 : StackLang.HolProg 64 :=
.seq NamedBody505_306 NamedBody505_317

def NamedBody505_319 : StackLang.HolProg 64 :=
.seq NamedBody505_305 NamedBody505_318

def NamedBody505_320 : StackLang.HolProg 64 :=
.seq NamedBody505_304 NamedBody505_319

def NamedBody505_321 : StackLang.HolProg 64 :=
.seq NamedBody505_303 NamedBody505_320

def NamedBody505_322 : StackLang.HolProg 64 :=
.seq NamedBody505_302 NamedBody505_321

def NamedBody505_323 : StackLang.HolProg 64 :=
.seq NamedBody505_301 NamedBody505_322

def NamedBody505_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody505_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody505_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody505_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody505_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody505_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody505_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody505_331 : StackLang.HolProg 64 :=
.seq NamedBody505_329 NamedBody505_330

def NamedBody505_332 : StackLang.HolProg 64 :=
.seq NamedBody505_328 NamedBody505_331

def NamedBody505_333 : StackLang.HolProg 64 :=
.seq NamedBody505_327 NamedBody505_332

def NamedBody505_334 : StackLang.HolProg 64 :=
.seq NamedBody505_326 NamedBody505_333

def NamedBody505_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody505_336 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody505_337 : StackLang.HolProg 64 :=
.seq NamedBody505_335 NamedBody505_336

def NamedBody505_338 : StackLang.HolProg 64 :=
.call (some (NamedBody505_334, 1, 505, 10)) (Sum.inl 136) (some (NamedBody505_337, 505, 11))

def NamedBody505_339 : StackLang.HolProg 64 :=
.seq NamedBody505_325 NamedBody505_338

def NamedBody505_340 : StackLang.HolProg 64 :=
.seq NamedBody505_324 NamedBody505_339

def NamedBody505_341 : StackLang.HolProg 64 :=
.seq NamedBody505_323 NamedBody505_340

def NamedBody505_342 : StackLang.HolProg 64 :=
.seq NamedBody505_294 NamedBody505_341

def NamedBody505_343 : StackLang.HolProg 64 :=
.seq NamedBody505_291 NamedBody505_342

def NamedBody505_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody505_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody505_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody505_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1598#64)

def NamedBody505_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody505_349 : StackLang.HolProg 64 :=
.seq NamedBody505_347 NamedBody505_348

def NamedBody505_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody505_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody505_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody505_353 : StackLang.HolProg 64 :=
.seq NamedBody505_351 NamedBody505_352

def NamedBody505_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody505_355 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody505_353 NamedBody505_354

def NamedBody505_356 : StackLang.HolProg 64 :=
.seq NamedBody505_350 NamedBody505_355

def NamedBody505_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody505_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody505_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 505 13

def NamedBody505_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody505_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody505_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody505_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody505_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody505_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody505_366 : StackLang.HolProg 64 :=
.seq NamedBody505_364 NamedBody505_365

def NamedBody505_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody505_368 : StackLang.HolProg 64 :=
.seq NamedBody505_366 NamedBody505_367

def NamedBody505_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody505_370 : StackLang.HolProg 64 :=
.seq NamedBody505_368 NamedBody505_369

def NamedBody505_371 : StackLang.HolProg 64 :=
.seq NamedBody505_363 NamedBody505_370

def NamedBody505_372 : StackLang.HolProg 64 :=
.seq NamedBody505_362 NamedBody505_371

def NamedBody505_373 : StackLang.HolProg 64 :=
.seq NamedBody505_361 NamedBody505_372

def NamedBody505_374 : StackLang.HolProg 64 :=
.seq NamedBody505_360 NamedBody505_373

def NamedBody505_375 : StackLang.HolProg 64 :=
.seq NamedBody505_359 NamedBody505_374

def NamedBody505_376 : StackLang.HolProg 64 :=
.seq NamedBody505_358 NamedBody505_375

def NamedBody505_377 : StackLang.HolProg 64 :=
.seq NamedBody505_357 NamedBody505_376

def NamedBody505_378 : StackLang.HolProg 64 :=
.seq NamedBody505_356 NamedBody505_377

def NamedBody505_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody505_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody505_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody505_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody505_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody505_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody505_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody505_386 : StackLang.HolProg 64 :=
.seq NamedBody505_384 NamedBody505_385

def NamedBody505_387 : StackLang.HolProg 64 :=
.seq NamedBody505_383 NamedBody505_386

def NamedBody505_388 : StackLang.HolProg 64 :=
.seq NamedBody505_382 NamedBody505_387

def NamedBody505_389 : StackLang.HolProg 64 :=
.seq NamedBody505_381 NamedBody505_388

def NamedBody505_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody505_391 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody505_392 : StackLang.HolProg 64 :=
.seq NamedBody505_390 NamedBody505_391

def NamedBody505_393 : StackLang.HolProg 64 :=
.call (some (NamedBody505_389, 1, 505, 12)) (Sum.inl 476) (some (NamedBody505_392, 505, 13))

def NamedBody505_394 : StackLang.HolProg 64 :=
.seq NamedBody505_380 NamedBody505_393

def NamedBody505_395 : StackLang.HolProg 64 :=
.seq NamedBody505_379 NamedBody505_394

def NamedBody505_396 : StackLang.HolProg 64 :=
.seq NamedBody505_378 NamedBody505_395

def NamedBody505_397 : StackLang.HolProg 64 :=
.seq NamedBody505_349 NamedBody505_396

def NamedBody505_398 : StackLang.HolProg 64 :=
.seq NamedBody505_346 NamedBody505_397

def NamedBody505_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody505_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody505_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody505_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody505_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1599#64)

def NamedBody505_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody505_405 : StackLang.HolProg 64 :=
.seq NamedBody505_403 NamedBody505_404

def NamedBody505_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody505_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody505_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody505_409 : StackLang.HolProg 64 :=
.seq NamedBody505_407 NamedBody505_408

def NamedBody505_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody505_411 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody505_409 NamedBody505_410

def NamedBody505_412 : StackLang.HolProg 64 :=
.seq NamedBody505_406 NamedBody505_411

def NamedBody505_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody505_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody505_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 505 15

def NamedBody505_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody505_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody505_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody505_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody505_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody505_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody505_422 : StackLang.HolProg 64 :=
.seq NamedBody505_420 NamedBody505_421

def NamedBody505_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody505_424 : StackLang.HolProg 64 :=
.seq NamedBody505_422 NamedBody505_423

def NamedBody505_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody505_426 : StackLang.HolProg 64 :=
.seq NamedBody505_424 NamedBody505_425

def NamedBody505_427 : StackLang.HolProg 64 :=
.seq NamedBody505_419 NamedBody505_426

def NamedBody505_428 : StackLang.HolProg 64 :=
.seq NamedBody505_418 NamedBody505_427

def NamedBody505_429 : StackLang.HolProg 64 :=
.seq NamedBody505_417 NamedBody505_428

def NamedBody505_430 : StackLang.HolProg 64 :=
.seq NamedBody505_416 NamedBody505_429

def NamedBody505_431 : StackLang.HolProg 64 :=
.seq NamedBody505_415 NamedBody505_430

def NamedBody505_432 : StackLang.HolProg 64 :=
.seq NamedBody505_414 NamedBody505_431

def NamedBody505_433 : StackLang.HolProg 64 :=
.seq NamedBody505_413 NamedBody505_432

def NamedBody505_434 : StackLang.HolProg 64 :=
.seq NamedBody505_412 NamedBody505_433

def NamedBody505_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody505_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody505_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody505_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody505_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody505_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody505_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody505_442 : StackLang.HolProg 64 :=
.seq NamedBody505_440 NamedBody505_441

def NamedBody505_443 : StackLang.HolProg 64 :=
.seq NamedBody505_439 NamedBody505_442

def NamedBody505_444 : StackLang.HolProg 64 :=
.seq NamedBody505_438 NamedBody505_443

def NamedBody505_445 : StackLang.HolProg 64 :=
.seq NamedBody505_437 NamedBody505_444

def NamedBody505_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody505_447 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody505_448 : StackLang.HolProg 64 :=
.seq NamedBody505_446 NamedBody505_447

def NamedBody505_449 : StackLang.HolProg 64 :=
.call (some (NamedBody505_445, 1, 505, 14)) (Sum.inl 490) (some (NamedBody505_448, 505, 15))

def NamedBody505_450 : StackLang.HolProg 64 :=
.seq NamedBody505_436 NamedBody505_449

def NamedBody505_451 : StackLang.HolProg 64 :=
.seq NamedBody505_435 NamedBody505_450

def NamedBody505_452 : StackLang.HolProg 64 :=
.seq NamedBody505_434 NamedBody505_451

def NamedBody505_453 : StackLang.HolProg 64 :=
.seq NamedBody505_405 NamedBody505_452

def NamedBody505_454 : StackLang.HolProg 64 :=
.seq NamedBody505_402 NamedBody505_453

def NamedBody505_455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody505_456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody505_457 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody505_458 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 112#64)))

def NamedBody505_459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody505_460 : StackLang.HolProg 64 :=
.seq NamedBody505_458 NamedBody505_459

def NamedBody505_461 : StackLang.HolProg 64 :=
.seq NamedBody505_457 NamedBody505_460

def NamedBody505_462 : StackLang.HolProg 64 :=
.seq NamedBody505_456 NamedBody505_461

def NamedBody505_463 : StackLang.HolProg 64 :=
.seq NamedBody505_455 NamedBody505_462

def NamedBody505_464 : StackLang.HolProg 64 :=
.seq NamedBody505_454 NamedBody505_463

def NamedBody505_465 : StackLang.HolProg 64 :=
.seq NamedBody505_401 NamedBody505_464

def NamedBody505_466 : StackLang.HolProg 64 :=
.seq NamedBody505_400 NamedBody505_465

def NamedBody505_467 : StackLang.HolProg 64 :=
.seq NamedBody505_399 NamedBody505_466

def NamedBody505_468 : StackLang.HolProg 64 :=
.seq NamedBody505_398 NamedBody505_467

def NamedBody505_469 : StackLang.HolProg 64 :=
.seq NamedBody505_345 NamedBody505_468

def NamedBody505_470 : StackLang.HolProg 64 :=
.seq NamedBody505_344 NamedBody505_469

def NamedBody505_471 : StackLang.HolProg 64 :=
.seq NamedBody505_343 NamedBody505_470

def NamedBody505_472 : StackLang.HolProg 64 :=
.seq NamedBody505_290 NamedBody505_471

def NamedBody505_473 : StackLang.HolProg 64 :=
.seq NamedBody505_289 NamedBody505_472

def NamedBody505_474 : StackLang.HolProg 64 :=
.seq NamedBody505_288 NamedBody505_473

def NamedBody505_475 : StackLang.HolProg 64 :=
.seq NamedBody505_191 NamedBody505_474

def NamedBody505_476 : StackLang.HolProg 64 :=
.seq NamedBody505_184 NamedBody505_475

def NamedBody505_477 : StackLang.HolProg 64 :=
.seq NamedBody505_183 NamedBody505_476

def NamedBody505_478 : StackLang.HolProg 64 :=
.seq NamedBody505_182 NamedBody505_477

def NamedBody505_479 : StackLang.HolProg 64 :=
.seq NamedBody505_129 NamedBody505_478

def NamedBody505_480 : StackLang.HolProg 64 :=
.seq NamedBody505_122 NamedBody505_479

def NamedBody505_481 : StackLang.HolProg 64 :=
.seq NamedBody505_121 NamedBody505_480

def NamedBody505_482 : StackLang.HolProg 64 :=
.seq NamedBody505_68 NamedBody505_481

def NamedBody505_483 : StackLang.HolProg 64 :=
.seq NamedBody505_61 NamedBody505_482

def NamedBody505_484 : StackLang.HolProg 64 :=
.seq NamedBody505_60 NamedBody505_483

def NamedBody505_485 : StackLang.HolProg 64 :=
.seq NamedBody505_7 NamedBody505_484

def NamedBody505_486 : StackLang.HolProg 64 :=
.seq NamedBody505_6 NamedBody505_485

def Named505 : Nat × StackLang.HolProg 64 := (505, NamedBody505_486)
theorem Named505_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed505 = Named505 := by
  kernel_rfl
#print axioms Named505_eq
end InitECandidate.Proofs.BackendStages
