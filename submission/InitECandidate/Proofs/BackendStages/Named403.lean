import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed403
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody403_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody403_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody403_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody403_3 : StackLang.HolProg 64 :=
.seq NamedBody403_1 NamedBody403_2

def NamedBody403_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody403_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody403_3 NamedBody403_4

def NamedBody403_6 : StackLang.HolProg 64 :=
.seq NamedBody403_0 NamedBody403_5

def NamedBody403_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody403_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody403_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1200#64)

def NamedBody403_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody403_11 : StackLang.HolProg 64 :=
.seq NamedBody403_9 NamedBody403_10

def NamedBody403_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody403_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody403_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody403_15 : StackLang.HolProg 64 :=
.seq NamedBody403_13 NamedBody403_14

def NamedBody403_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody403_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody403_15 NamedBody403_16

def NamedBody403_18 : StackLang.HolProg 64 :=
.seq NamedBody403_12 NamedBody403_17

def NamedBody403_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody403_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody403_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 403 3

def NamedBody403_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody403_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody403_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody403_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody403_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody403_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody403_28 : StackLang.HolProg 64 :=
.seq NamedBody403_26 NamedBody403_27

def NamedBody403_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody403_30 : StackLang.HolProg 64 :=
.seq NamedBody403_28 NamedBody403_29

def NamedBody403_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody403_32 : StackLang.HolProg 64 :=
.seq NamedBody403_30 NamedBody403_31

def NamedBody403_33 : StackLang.HolProg 64 :=
.seq NamedBody403_25 NamedBody403_32

def NamedBody403_34 : StackLang.HolProg 64 :=
.seq NamedBody403_24 NamedBody403_33

def NamedBody403_35 : StackLang.HolProg 64 :=
.seq NamedBody403_23 NamedBody403_34

def NamedBody403_36 : StackLang.HolProg 64 :=
.seq NamedBody403_22 NamedBody403_35

def NamedBody403_37 : StackLang.HolProg 64 :=
.seq NamedBody403_21 NamedBody403_36

def NamedBody403_38 : StackLang.HolProg 64 :=
.seq NamedBody403_20 NamedBody403_37

def NamedBody403_39 : StackLang.HolProg 64 :=
.seq NamedBody403_19 NamedBody403_38

def NamedBody403_40 : StackLang.HolProg 64 :=
.seq NamedBody403_18 NamedBody403_39

def NamedBody403_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody403_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody403_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody403_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody403_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody403_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody403_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody403_48 : StackLang.HolProg 64 :=
.seq NamedBody403_46 NamedBody403_47

def NamedBody403_49 : StackLang.HolProg 64 :=
.seq NamedBody403_45 NamedBody403_48

def NamedBody403_50 : StackLang.HolProg 64 :=
.seq NamedBody403_44 NamedBody403_49

def NamedBody403_51 : StackLang.HolProg 64 :=
.seq NamedBody403_43 NamedBody403_50

def NamedBody403_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody403_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody403_54 : StackLang.HolProg 64 :=
.seq NamedBody403_52 NamedBody403_53

def NamedBody403_55 : StackLang.HolProg 64 :=
.call (some (NamedBody403_51, 1, 403, 2)) (Sum.inl 399) (some (NamedBody403_54, 403, 3))

def NamedBody403_56 : StackLang.HolProg 64 :=
.seq NamedBody403_42 NamedBody403_55

def NamedBody403_57 : StackLang.HolProg 64 :=
.seq NamedBody403_41 NamedBody403_56

def NamedBody403_58 : StackLang.HolProg 64 :=
.seq NamedBody403_40 NamedBody403_57

def NamedBody403_59 : StackLang.HolProg 64 :=
.seq NamedBody403_11 NamedBody403_58

def NamedBody403_60 : StackLang.HolProg 64 :=
.seq NamedBody403_8 NamedBody403_59

def NamedBody403_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody403_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody403_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody403_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody403_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody403_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551488#64))

def NamedBody403_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 32#64)

def NamedBody403_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody403_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody403_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1201#64)

def NamedBody403_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody403_72 : StackLang.HolProg 64 :=
.seq NamedBody403_70 NamedBody403_71

def NamedBody403_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody403_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody403_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody403_76 : StackLang.HolProg 64 :=
.seq NamedBody403_74 NamedBody403_75

def NamedBody403_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody403_78 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody403_76 NamedBody403_77

def NamedBody403_79 : StackLang.HolProg 64 :=
.seq NamedBody403_73 NamedBody403_78

def NamedBody403_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody403_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody403_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 403 5

def NamedBody403_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody403_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody403_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody403_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody403_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody403_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody403_89 : StackLang.HolProg 64 :=
.seq NamedBody403_87 NamedBody403_88

def NamedBody403_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody403_91 : StackLang.HolProg 64 :=
.seq NamedBody403_89 NamedBody403_90

def NamedBody403_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody403_93 : StackLang.HolProg 64 :=
.seq NamedBody403_91 NamedBody403_92

def NamedBody403_94 : StackLang.HolProg 64 :=
.seq NamedBody403_86 NamedBody403_93

def NamedBody403_95 : StackLang.HolProg 64 :=
.seq NamedBody403_85 NamedBody403_94

def NamedBody403_96 : StackLang.HolProg 64 :=
.seq NamedBody403_84 NamedBody403_95

def NamedBody403_97 : StackLang.HolProg 64 :=
.seq NamedBody403_83 NamedBody403_96

def NamedBody403_98 : StackLang.HolProg 64 :=
.seq NamedBody403_82 NamedBody403_97

def NamedBody403_99 : StackLang.HolProg 64 :=
.seq NamedBody403_81 NamedBody403_98

def NamedBody403_100 : StackLang.HolProg 64 :=
.seq NamedBody403_80 NamedBody403_99

def NamedBody403_101 : StackLang.HolProg 64 :=
.seq NamedBody403_79 NamedBody403_100

def NamedBody403_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody403_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody403_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody403_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody403_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody403_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody403_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody403_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody403_110 : StackLang.HolProg 64 :=
.seq NamedBody403_108 NamedBody403_109

def NamedBody403_111 : StackLang.HolProg 64 :=
.seq NamedBody403_107 NamedBody403_110

def NamedBody403_112 : StackLang.HolProg 64 :=
.seq NamedBody403_106 NamedBody403_111

def NamedBody403_113 : StackLang.HolProg 64 :=
.seq NamedBody403_105 NamedBody403_112

def NamedBody403_114 : StackLang.HolProg 64 :=
.seq NamedBody403_104 NamedBody403_113

def NamedBody403_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody403_116 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody403_117 : StackLang.HolProg 64 :=
.seq NamedBody403_115 NamedBody403_116

def NamedBody403_118 : StackLang.HolProg 64 :=
.call (some (NamedBody403_114, 1, 403, 4)) (Sum.inl 79) (some (NamedBody403_117, 403, 5))

def NamedBody403_119 : StackLang.HolProg 64 :=
.seq NamedBody403_103 NamedBody403_118

def NamedBody403_120 : StackLang.HolProg 64 :=
.seq NamedBody403_102 NamedBody403_119

def NamedBody403_121 : StackLang.HolProg 64 :=
.seq NamedBody403_101 NamedBody403_120

def NamedBody403_122 : StackLang.HolProg 64 :=
.seq NamedBody403_72 NamedBody403_121

def NamedBody403_123 : StackLang.HolProg 64 :=
.seq NamedBody403_69 NamedBody403_122

def NamedBody403_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody403_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody403_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody403_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody403_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody403_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody403_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody403_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 11

def NamedBody403_132 : StackLang.HolProg 64 :=
.seq NamedBody403_130 NamedBody403_131

def NamedBody403_133 : StackLang.HolProg 64 :=
.seq NamedBody403_129 NamedBody403_132

def NamedBody403_134 : StackLang.HolProg 64 :=
.seq NamedBody403_128 NamedBody403_133

def NamedBody403_135 : StackLang.HolProg 64 :=
.seq NamedBody403_127 NamedBody403_134

def NamedBody403_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody403_137 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody403_135 NamedBody403_136

def NamedBody403_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody403_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody403_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody403_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody403_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody403_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 11

def NamedBody403_144 : StackLang.HolProg 64 :=
.seq NamedBody403_142 NamedBody403_143

def NamedBody403_145 : StackLang.HolProg 64 :=
.seq NamedBody403_141 NamedBody403_144

def NamedBody403_146 : StackLang.HolProg 64 :=
.seq NamedBody403_140 NamedBody403_145

def NamedBody403_147 : StackLang.HolProg 64 :=
.seq NamedBody403_139 NamedBody403_146

def NamedBody403_148 : StackLang.HolProg 64 :=
.seq NamedBody403_138 NamedBody403_147

def NamedBody403_149 : StackLang.HolProg 64 :=
.seq NamedBody403_137 NamedBody403_148

def NamedBody403_150 : StackLang.HolProg 64 :=
.seq NamedBody403_126 NamedBody403_149

def NamedBody403_151 : StackLang.HolProg 64 :=
.seq NamedBody403_125 NamedBody403_150

def NamedBody403_152 : StackLang.HolProg 64 :=
.seq NamedBody403_124 NamedBody403_151

def NamedBody403_153 : StackLang.HolProg 64 :=
.seq NamedBody403_123 NamedBody403_152

def NamedBody403_154 : StackLang.HolProg 64 :=
.seq NamedBody403_68 NamedBody403_153

def NamedBody403_155 : StackLang.HolProg 64 :=
.seq NamedBody403_67 NamedBody403_154

def NamedBody403_156 : StackLang.HolProg 64 :=
.seq NamedBody403_66 NamedBody403_155

def NamedBody403_157 : StackLang.HolProg 64 :=
.seq NamedBody403_65 NamedBody403_156

def NamedBody403_158 : StackLang.HolProg 64 :=
.seq NamedBody403_64 NamedBody403_157

def NamedBody403_159 : StackLang.HolProg 64 :=
.seq NamedBody403_63 NamedBody403_158

def NamedBody403_160 : StackLang.HolProg 64 :=
.seq NamedBody403_62 NamedBody403_159

def NamedBody403_161 : StackLang.HolProg 64 :=
.seq NamedBody403_61 NamedBody403_160

def NamedBody403_162 : StackLang.HolProg 64 :=
.seq NamedBody403_60 NamedBody403_161

def NamedBody403_163 : StackLang.HolProg 64 :=
.seq NamedBody403_7 NamedBody403_162

def NamedBody403_164 : StackLang.HolProg 64 :=
.seq NamedBody403_6 NamedBody403_163

def Named403 : Nat × StackLang.HolProg 64 := (403, NamedBody403_164)
theorem Named403_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed403 = Named403 := by
  kernel_rfl
#print axioms Named403_eq
end InitECandidate.Proofs.BackendStages
