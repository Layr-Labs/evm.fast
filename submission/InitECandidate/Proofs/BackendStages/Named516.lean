import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed516
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody516_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def NamedBody516_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody516_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody516_3 : StackLang.HolProg 64 :=
.seq NamedBody516_1 NamedBody516_2

def NamedBody516_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody516_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody516_3 NamedBody516_4

def NamedBody516_6 : StackLang.HolProg 64 :=
.seq NamedBody516_0 NamedBody516_5

def NamedBody516_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody516_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody516_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1659#64)

def NamedBody516_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody516_11 : StackLang.HolProg 64 :=
.seq NamedBody516_9 NamedBody516_10

def NamedBody516_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody516_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody516_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody516_15 : StackLang.HolProg 64 :=
.seq NamedBody516_13 NamedBody516_14

def NamedBody516_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody516_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody516_15 NamedBody516_16

def NamedBody516_18 : StackLang.HolProg 64 :=
.seq NamedBody516_12 NamedBody516_17

def NamedBody516_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody516_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody516_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 516 3

def NamedBody516_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody516_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody516_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody516_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody516_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody516_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody516_28 : StackLang.HolProg 64 :=
.seq NamedBody516_26 NamedBody516_27

def NamedBody516_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody516_30 : StackLang.HolProg 64 :=
.seq NamedBody516_28 NamedBody516_29

def NamedBody516_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody516_32 : StackLang.HolProg 64 :=
.seq NamedBody516_30 NamedBody516_31

def NamedBody516_33 : StackLang.HolProg 64 :=
.seq NamedBody516_25 NamedBody516_32

def NamedBody516_34 : StackLang.HolProg 64 :=
.seq NamedBody516_24 NamedBody516_33

def NamedBody516_35 : StackLang.HolProg 64 :=
.seq NamedBody516_23 NamedBody516_34

def NamedBody516_36 : StackLang.HolProg 64 :=
.seq NamedBody516_22 NamedBody516_35

def NamedBody516_37 : StackLang.HolProg 64 :=
.seq NamedBody516_21 NamedBody516_36

def NamedBody516_38 : StackLang.HolProg 64 :=
.seq NamedBody516_20 NamedBody516_37

def NamedBody516_39 : StackLang.HolProg 64 :=
.seq NamedBody516_19 NamedBody516_38

def NamedBody516_40 : StackLang.HolProg 64 :=
.seq NamedBody516_18 NamedBody516_39

def NamedBody516_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody516_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody516_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody516_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody516_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody516_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody516_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody516_48 : StackLang.HolProg 64 :=
.seq NamedBody516_46 NamedBody516_47

def NamedBody516_49 : StackLang.HolProg 64 :=
.seq NamedBody516_45 NamedBody516_48

def NamedBody516_50 : StackLang.HolProg 64 :=
.seq NamedBody516_44 NamedBody516_49

def NamedBody516_51 : StackLang.HolProg 64 :=
.seq NamedBody516_43 NamedBody516_50

def NamedBody516_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody516_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody516_54 : StackLang.HolProg 64 :=
.seq NamedBody516_52 NamedBody516_53

def NamedBody516_55 : StackLang.HolProg 64 :=
.call (some (NamedBody516_51, 1, 516, 2)) (Sum.inl 475) (some (NamedBody516_54, 516, 3))

def NamedBody516_56 : StackLang.HolProg 64 :=
.seq NamedBody516_42 NamedBody516_55

def NamedBody516_57 : StackLang.HolProg 64 :=
.seq NamedBody516_41 NamedBody516_56

def NamedBody516_58 : StackLang.HolProg 64 :=
.seq NamedBody516_40 NamedBody516_57

def NamedBody516_59 : StackLang.HolProg 64 :=
.seq NamedBody516_11 NamedBody516_58

def NamedBody516_60 : StackLang.HolProg 64 :=
.seq NamedBody516_8 NamedBody516_59

def NamedBody516_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody516_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody516_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody516_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody516_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody516_66 : StackLang.HolProg 64 :=
.seq NamedBody516_64 NamedBody516_65

def NamedBody516_67 : StackLang.HolProg 64 :=
.seq NamedBody516_63 NamedBody516_66

def NamedBody516_68 : StackLang.HolProg 64 :=
.seq NamedBody516_62 NamedBody516_67

def NamedBody516_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody516_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1660#64)

def NamedBody516_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody516_72 : StackLang.HolProg 64 :=
.seq NamedBody516_70 NamedBody516_71

def NamedBody516_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody516_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody516_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody516_76 : StackLang.HolProg 64 :=
.seq NamedBody516_74 NamedBody516_75

def NamedBody516_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody516_78 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody516_76 NamedBody516_77

def NamedBody516_79 : StackLang.HolProg 64 :=
.seq NamedBody516_73 NamedBody516_78

def NamedBody516_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody516_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody516_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 516 5

def NamedBody516_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody516_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody516_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody516_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody516_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody516_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody516_89 : StackLang.HolProg 64 :=
.seq NamedBody516_87 NamedBody516_88

def NamedBody516_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody516_91 : StackLang.HolProg 64 :=
.seq NamedBody516_89 NamedBody516_90

def NamedBody516_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody516_93 : StackLang.HolProg 64 :=
.seq NamedBody516_91 NamedBody516_92

def NamedBody516_94 : StackLang.HolProg 64 :=
.seq NamedBody516_86 NamedBody516_93

def NamedBody516_95 : StackLang.HolProg 64 :=
.seq NamedBody516_85 NamedBody516_94

def NamedBody516_96 : StackLang.HolProg 64 :=
.seq NamedBody516_84 NamedBody516_95

def NamedBody516_97 : StackLang.HolProg 64 :=
.seq NamedBody516_83 NamedBody516_96

def NamedBody516_98 : StackLang.HolProg 64 :=
.seq NamedBody516_82 NamedBody516_97

def NamedBody516_99 : StackLang.HolProg 64 :=
.seq NamedBody516_81 NamedBody516_98

def NamedBody516_100 : StackLang.HolProg 64 :=
.seq NamedBody516_80 NamedBody516_99

def NamedBody516_101 : StackLang.HolProg 64 :=
.seq NamedBody516_79 NamedBody516_100

def NamedBody516_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody516_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody516_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody516_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody516_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody516_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody516_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody516_109 : StackLang.HolProg 64 :=
.seq NamedBody516_107 NamedBody516_108

def NamedBody516_110 : StackLang.HolProg 64 :=
.seq NamedBody516_106 NamedBody516_109

def NamedBody516_111 : StackLang.HolProg 64 :=
.seq NamedBody516_105 NamedBody516_110

def NamedBody516_112 : StackLang.HolProg 64 :=
.seq NamedBody516_104 NamedBody516_111

def NamedBody516_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody516_114 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody516_115 : StackLang.HolProg 64 :=
.seq NamedBody516_113 NamedBody516_114

def NamedBody516_116 : StackLang.HolProg 64 :=
.call (some (NamedBody516_112, 1, 516, 4)) (Sum.inl 475) (some (NamedBody516_115, 516, 5))

def NamedBody516_117 : StackLang.HolProg 64 :=
.seq NamedBody516_103 NamedBody516_116

def NamedBody516_118 : StackLang.HolProg 64 :=
.seq NamedBody516_102 NamedBody516_117

def NamedBody516_119 : StackLang.HolProg 64 :=
.seq NamedBody516_101 NamedBody516_118

def NamedBody516_120 : StackLang.HolProg 64 :=
.seq NamedBody516_72 NamedBody516_119

def NamedBody516_121 : StackLang.HolProg 64 :=
.seq NamedBody516_69 NamedBody516_120

def NamedBody516_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody516_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 3#64)

def NamedBody516_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody516_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody516_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody516_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody516_128 : StackLang.HolProg 64 :=
.seq NamedBody516_126 NamedBody516_127

def NamedBody516_129 : StackLang.HolProg 64 :=
.seq NamedBody516_125 NamedBody516_128

def NamedBody516_130 : StackLang.HolProg 64 :=
.seq NamedBody516_124 NamedBody516_129

def NamedBody516_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody516_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1661#64)

def NamedBody516_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody516_134 : StackLang.HolProg 64 :=
.seq NamedBody516_132 NamedBody516_133

def NamedBody516_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody516_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody516_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody516_138 : StackLang.HolProg 64 :=
.seq NamedBody516_136 NamedBody516_137

def NamedBody516_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody516_140 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody516_138 NamedBody516_139

def NamedBody516_141 : StackLang.HolProg 64 :=
.seq NamedBody516_135 NamedBody516_140

def NamedBody516_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody516_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody516_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 516 7

def NamedBody516_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody516_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody516_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody516_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody516_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody516_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody516_151 : StackLang.HolProg 64 :=
.seq NamedBody516_149 NamedBody516_150

def NamedBody516_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody516_153 : StackLang.HolProg 64 :=
.seq NamedBody516_151 NamedBody516_152

def NamedBody516_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody516_155 : StackLang.HolProg 64 :=
.seq NamedBody516_153 NamedBody516_154

def NamedBody516_156 : StackLang.HolProg 64 :=
.seq NamedBody516_148 NamedBody516_155

def NamedBody516_157 : StackLang.HolProg 64 :=
.seq NamedBody516_147 NamedBody516_156

def NamedBody516_158 : StackLang.HolProg 64 :=
.seq NamedBody516_146 NamedBody516_157

def NamedBody516_159 : StackLang.HolProg 64 :=
.seq NamedBody516_145 NamedBody516_158

def NamedBody516_160 : StackLang.HolProg 64 :=
.seq NamedBody516_144 NamedBody516_159

def NamedBody516_161 : StackLang.HolProg 64 :=
.seq NamedBody516_143 NamedBody516_160

def NamedBody516_162 : StackLang.HolProg 64 :=
.seq NamedBody516_142 NamedBody516_161

def NamedBody516_163 : StackLang.HolProg 64 :=
.seq NamedBody516_141 NamedBody516_162

def NamedBody516_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody516_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody516_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody516_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody516_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody516_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody516_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody516_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody516_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody516_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody516_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody516_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody516_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody516_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody516_178 : StackLang.HolProg 64 :=
.seq NamedBody516_176 NamedBody516_177

def NamedBody516_179 : StackLang.HolProg 64 :=
.seq NamedBody516_175 NamedBody516_178

def NamedBody516_180 : StackLang.HolProg 64 :=
.seq NamedBody516_174 NamedBody516_179

def NamedBody516_181 : StackLang.HolProg 64 :=
.seq NamedBody516_173 NamedBody516_180

def NamedBody516_182 : StackLang.HolProg 64 :=
.seq NamedBody516_172 NamedBody516_181

def NamedBody516_183 : StackLang.HolProg 64 :=
.seq NamedBody516_171 NamedBody516_182

def NamedBody516_184 : StackLang.HolProg 64 :=
.seq NamedBody516_170 NamedBody516_183

def NamedBody516_185 : StackLang.HolProg 64 :=
.seq NamedBody516_169 NamedBody516_184

def NamedBody516_186 : StackLang.HolProg 64 :=
.seq NamedBody516_168 NamedBody516_185

def NamedBody516_187 : StackLang.HolProg 64 :=
.seq NamedBody516_167 NamedBody516_186

def NamedBody516_188 : StackLang.HolProg 64 :=
.seq NamedBody516_166 NamedBody516_187

def NamedBody516_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody516_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody516_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody516_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody516_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody516_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody516_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody516_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody516_197 : StackLang.HolProg 64 :=
.seq NamedBody516_195 NamedBody516_196

def NamedBody516_198 : StackLang.HolProg 64 :=
.seq NamedBody516_194 NamedBody516_197

def NamedBody516_199 : StackLang.HolProg 64 :=
.seq NamedBody516_193 NamedBody516_198

def NamedBody516_200 : StackLang.HolProg 64 :=
.seq NamedBody516_192 NamedBody516_199

def NamedBody516_201 : StackLang.HolProg 64 :=
.seq NamedBody516_191 NamedBody516_200

def NamedBody516_202 : StackLang.HolProg 64 :=
.seq NamedBody516_190 NamedBody516_201

def NamedBody516_203 : StackLang.HolProg 64 :=
.seq NamedBody516_189 NamedBody516_202

def NamedBody516_204 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody516_205 : StackLang.HolProg 64 :=
.seq NamedBody516_203 NamedBody516_204

def NamedBody516_206 : StackLang.HolProg 64 :=
.call (some (NamedBody516_188, 1, 516, 6)) (Sum.inl 470) (some (NamedBody516_205, 516, 7))

def NamedBody516_207 : StackLang.HolProg 64 :=
.seq NamedBody516_165 NamedBody516_206

def NamedBody516_208 : StackLang.HolProg 64 :=
.seq NamedBody516_164 NamedBody516_207

def NamedBody516_209 : StackLang.HolProg 64 :=
.seq NamedBody516_163 NamedBody516_208

def NamedBody516_210 : StackLang.HolProg 64 :=
.seq NamedBody516_134 NamedBody516_209

def NamedBody516_211 : StackLang.HolProg 64 :=
.seq NamedBody516_131 NamedBody516_210

def NamedBody516_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody516_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody516_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 10 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def NamedBody516_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody516_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody516_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody516_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 12 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody516_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody516_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 13 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody516_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody516_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody516_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1662#64)

def NamedBody516_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody516_225 : StackLang.HolProg 64 :=
.seq NamedBody516_223 NamedBody516_224

def NamedBody516_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody516_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody516_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody516_229 : StackLang.HolProg 64 :=
.seq NamedBody516_227 NamedBody516_228

def NamedBody516_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody516_231 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody516_229 NamedBody516_230

def NamedBody516_232 : StackLang.HolProg 64 :=
.seq NamedBody516_226 NamedBody516_231

def NamedBody516_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody516_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody516_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 516 9

def NamedBody516_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody516_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody516_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody516_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody516_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody516_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody516_242 : StackLang.HolProg 64 :=
.seq NamedBody516_240 NamedBody516_241

def NamedBody516_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody516_244 : StackLang.HolProg 64 :=
.seq NamedBody516_242 NamedBody516_243

def NamedBody516_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody516_246 : StackLang.HolProg 64 :=
.seq NamedBody516_244 NamedBody516_245

def NamedBody516_247 : StackLang.HolProg 64 :=
.seq NamedBody516_239 NamedBody516_246

def NamedBody516_248 : StackLang.HolProg 64 :=
.seq NamedBody516_238 NamedBody516_247

def NamedBody516_249 : StackLang.HolProg 64 :=
.seq NamedBody516_237 NamedBody516_248

def NamedBody516_250 : StackLang.HolProg 64 :=
.seq NamedBody516_236 NamedBody516_249

def NamedBody516_251 : StackLang.HolProg 64 :=
.seq NamedBody516_235 NamedBody516_250

def NamedBody516_252 : StackLang.HolProg 64 :=
.seq NamedBody516_234 NamedBody516_251

def NamedBody516_253 : StackLang.HolProg 64 :=
.seq NamedBody516_233 NamedBody516_252

def NamedBody516_254 : StackLang.HolProg 64 :=
.seq NamedBody516_232 NamedBody516_253

def NamedBody516_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody516_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody516_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody516_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody516_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody516_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody516_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody516_262 : StackLang.HolProg 64 :=
.seq NamedBody516_260 NamedBody516_261

def NamedBody516_263 : StackLang.HolProg 64 :=
.seq NamedBody516_259 NamedBody516_262

def NamedBody516_264 : StackLang.HolProg 64 :=
.seq NamedBody516_258 NamedBody516_263

def NamedBody516_265 : StackLang.HolProg 64 :=
.seq NamedBody516_257 NamedBody516_264

def NamedBody516_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody516_267 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody516_268 : StackLang.HolProg 64 :=
.seq NamedBody516_266 NamedBody516_267

def NamedBody516_269 : StackLang.HolProg 64 :=
.call (some (NamedBody516_265, 1, 516, 8)) (Sum.inl 476) (some (NamedBody516_268, 516, 9))

def NamedBody516_270 : StackLang.HolProg 64 :=
.seq NamedBody516_256 NamedBody516_269

def NamedBody516_271 : StackLang.HolProg 64 :=
.seq NamedBody516_255 NamedBody516_270

def NamedBody516_272 : StackLang.HolProg 64 :=
.seq NamedBody516_254 NamedBody516_271

def NamedBody516_273 : StackLang.HolProg 64 :=
.seq NamedBody516_225 NamedBody516_272

def NamedBody516_274 : StackLang.HolProg 64 :=
.seq NamedBody516_222 NamedBody516_273

def NamedBody516_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody516_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody516_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody516_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody516_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1663#64)

def NamedBody516_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody516_281 : StackLang.HolProg 64 :=
.seq NamedBody516_279 NamedBody516_280

def NamedBody516_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody516_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody516_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody516_285 : StackLang.HolProg 64 :=
.seq NamedBody516_283 NamedBody516_284

def NamedBody516_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody516_287 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody516_285 NamedBody516_286

def NamedBody516_288 : StackLang.HolProg 64 :=
.seq NamedBody516_282 NamedBody516_287

def NamedBody516_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody516_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody516_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 516 11

def NamedBody516_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody516_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody516_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody516_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody516_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody516_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody516_298 : StackLang.HolProg 64 :=
.seq NamedBody516_296 NamedBody516_297

def NamedBody516_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody516_300 : StackLang.HolProg 64 :=
.seq NamedBody516_298 NamedBody516_299

def NamedBody516_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody516_302 : StackLang.HolProg 64 :=
.seq NamedBody516_300 NamedBody516_301

def NamedBody516_303 : StackLang.HolProg 64 :=
.seq NamedBody516_295 NamedBody516_302

def NamedBody516_304 : StackLang.HolProg 64 :=
.seq NamedBody516_294 NamedBody516_303

def NamedBody516_305 : StackLang.HolProg 64 :=
.seq NamedBody516_293 NamedBody516_304

def NamedBody516_306 : StackLang.HolProg 64 :=
.seq NamedBody516_292 NamedBody516_305

def NamedBody516_307 : StackLang.HolProg 64 :=
.seq NamedBody516_291 NamedBody516_306

def NamedBody516_308 : StackLang.HolProg 64 :=
.seq NamedBody516_290 NamedBody516_307

def NamedBody516_309 : StackLang.HolProg 64 :=
.seq NamedBody516_289 NamedBody516_308

def NamedBody516_310 : StackLang.HolProg 64 :=
.seq NamedBody516_288 NamedBody516_309

def NamedBody516_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody516_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody516_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody516_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody516_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody516_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody516_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody516_318 : StackLang.HolProg 64 :=
.seq NamedBody516_316 NamedBody516_317

def NamedBody516_319 : StackLang.HolProg 64 :=
.seq NamedBody516_315 NamedBody516_318

def NamedBody516_320 : StackLang.HolProg 64 :=
.seq NamedBody516_314 NamedBody516_319

def NamedBody516_321 : StackLang.HolProg 64 :=
.seq NamedBody516_313 NamedBody516_320

def NamedBody516_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody516_323 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody516_324 : StackLang.HolProg 64 :=
.seq NamedBody516_322 NamedBody516_323

def NamedBody516_325 : StackLang.HolProg 64 :=
.call (some (NamedBody516_321, 1, 516, 10)) (Sum.inl 490) (some (NamedBody516_324, 516, 11))

def NamedBody516_326 : StackLang.HolProg 64 :=
.seq NamedBody516_312 NamedBody516_325

def NamedBody516_327 : StackLang.HolProg 64 :=
.seq NamedBody516_311 NamedBody516_326

def NamedBody516_328 : StackLang.HolProg 64 :=
.seq NamedBody516_310 NamedBody516_327

def NamedBody516_329 : StackLang.HolProg 64 :=
.seq NamedBody516_281 NamedBody516_328

def NamedBody516_330 : StackLang.HolProg 64 :=
.seq NamedBody516_278 NamedBody516_329

def NamedBody516_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody516_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody516_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody516_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def NamedBody516_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody516_336 : StackLang.HolProg 64 :=
.seq NamedBody516_334 NamedBody516_335

def NamedBody516_337 : StackLang.HolProg 64 :=
.seq NamedBody516_333 NamedBody516_336

def NamedBody516_338 : StackLang.HolProg 64 :=
.seq NamedBody516_332 NamedBody516_337

def NamedBody516_339 : StackLang.HolProg 64 :=
.seq NamedBody516_331 NamedBody516_338

def NamedBody516_340 : StackLang.HolProg 64 :=
.seq NamedBody516_330 NamedBody516_339

def NamedBody516_341 : StackLang.HolProg 64 :=
.seq NamedBody516_277 NamedBody516_340

def NamedBody516_342 : StackLang.HolProg 64 :=
.seq NamedBody516_276 NamedBody516_341

def NamedBody516_343 : StackLang.HolProg 64 :=
.seq NamedBody516_275 NamedBody516_342

def NamedBody516_344 : StackLang.HolProg 64 :=
.seq NamedBody516_274 NamedBody516_343

def NamedBody516_345 : StackLang.HolProg 64 :=
.seq NamedBody516_221 NamedBody516_344

def NamedBody516_346 : StackLang.HolProg 64 :=
.seq NamedBody516_220 NamedBody516_345

def NamedBody516_347 : StackLang.HolProg 64 :=
.seq NamedBody516_219 NamedBody516_346

def NamedBody516_348 : StackLang.HolProg 64 :=
.seq NamedBody516_218 NamedBody516_347

def NamedBody516_349 : StackLang.HolProg 64 :=
.seq NamedBody516_217 NamedBody516_348

def NamedBody516_350 : StackLang.HolProg 64 :=
.seq NamedBody516_216 NamedBody516_349

def NamedBody516_351 : StackLang.HolProg 64 :=
.seq NamedBody516_215 NamedBody516_350

def NamedBody516_352 : StackLang.HolProg 64 :=
.seq NamedBody516_214 NamedBody516_351

def NamedBody516_353 : StackLang.HolProg 64 :=
.seq NamedBody516_213 NamedBody516_352

def NamedBody516_354 : StackLang.HolProg 64 :=
.seq NamedBody516_212 NamedBody516_353

def NamedBody516_355 : StackLang.HolProg 64 :=
.seq NamedBody516_211 NamedBody516_354

def NamedBody516_356 : StackLang.HolProg 64 :=
.seq NamedBody516_130 NamedBody516_355

def NamedBody516_357 : StackLang.HolProg 64 :=
.seq NamedBody516_123 NamedBody516_356

def NamedBody516_358 : StackLang.HolProg 64 :=
.seq NamedBody516_122 NamedBody516_357

def NamedBody516_359 : StackLang.HolProg 64 :=
.seq NamedBody516_121 NamedBody516_358

def NamedBody516_360 : StackLang.HolProg 64 :=
.seq NamedBody516_68 NamedBody516_359

def NamedBody516_361 : StackLang.HolProg 64 :=
.seq NamedBody516_61 NamedBody516_360

def NamedBody516_362 : StackLang.HolProg 64 :=
.seq NamedBody516_60 NamedBody516_361

def NamedBody516_363 : StackLang.HolProg 64 :=
.seq NamedBody516_7 NamedBody516_362

def NamedBody516_364 : StackLang.HolProg 64 :=
.seq NamedBody516_6 NamedBody516_363

def Named516 : Nat × StackLang.HolProg 64 := (516, NamedBody516_364)
theorem Named516_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed516 = Named516 := by
  kernel_rfl
#print axioms Named516_eq
end InitECandidate.Proofs.BackendStages
