import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed487
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody487_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody487_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody487_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody487_3 : StackLang.HolProg 64 :=
.seq NamedBody487_1 NamedBody487_2

def NamedBody487_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody487_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody487_3 NamedBody487_4

def NamedBody487_6 : StackLang.HolProg 64 :=
.seq NamedBody487_0 NamedBody487_5

def NamedBody487_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody487_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 176#64)

def NamedBody487_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody487_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody487_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1525#64)

def NamedBody487_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody487_13 : StackLang.HolProg 64 :=
.seq NamedBody487_11 NamedBody487_12

def NamedBody487_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody487_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody487_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody487_17 : StackLang.HolProg 64 :=
.seq NamedBody487_15 NamedBody487_16

def NamedBody487_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody487_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody487_17 NamedBody487_18

def NamedBody487_20 : StackLang.HolProg 64 :=
.seq NamedBody487_14 NamedBody487_19

def NamedBody487_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody487_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody487_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 487 3

def NamedBody487_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody487_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody487_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody487_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody487_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody487_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody487_30 : StackLang.HolProg 64 :=
.seq NamedBody487_28 NamedBody487_29

def NamedBody487_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody487_32 : StackLang.HolProg 64 :=
.seq NamedBody487_30 NamedBody487_31

def NamedBody487_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody487_34 : StackLang.HolProg 64 :=
.seq NamedBody487_32 NamedBody487_33

def NamedBody487_35 : StackLang.HolProg 64 :=
.seq NamedBody487_27 NamedBody487_34

def NamedBody487_36 : StackLang.HolProg 64 :=
.seq NamedBody487_26 NamedBody487_35

def NamedBody487_37 : StackLang.HolProg 64 :=
.seq NamedBody487_25 NamedBody487_36

def NamedBody487_38 : StackLang.HolProg 64 :=
.seq NamedBody487_24 NamedBody487_37

def NamedBody487_39 : StackLang.HolProg 64 :=
.seq NamedBody487_23 NamedBody487_38

def NamedBody487_40 : StackLang.HolProg 64 :=
.seq NamedBody487_22 NamedBody487_39

def NamedBody487_41 : StackLang.HolProg 64 :=
.seq NamedBody487_21 NamedBody487_40

def NamedBody487_42 : StackLang.HolProg 64 :=
.seq NamedBody487_20 NamedBody487_41

def NamedBody487_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody487_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody487_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody487_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody487_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody487_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody487_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody487_50 : StackLang.HolProg 64 :=
.seq NamedBody487_48 NamedBody487_49

def NamedBody487_51 : StackLang.HolProg 64 :=
.seq NamedBody487_47 NamedBody487_50

def NamedBody487_52 : StackLang.HolProg 64 :=
.seq NamedBody487_46 NamedBody487_51

def NamedBody487_53 : StackLang.HolProg 64 :=
.seq NamedBody487_45 NamedBody487_52

def NamedBody487_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody487_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody487_56 : StackLang.HolProg 64 :=
.seq NamedBody487_54 NamedBody487_55

def NamedBody487_57 : StackLang.HolProg 64 :=
.call (some (NamedBody487_53, 1, 487, 2)) (Sum.inl 68) (some (NamedBody487_56, 487, 3))

def NamedBody487_58 : StackLang.HolProg 64 :=
.seq NamedBody487_44 NamedBody487_57

def NamedBody487_59 : StackLang.HolProg 64 :=
.seq NamedBody487_43 NamedBody487_58

def NamedBody487_60 : StackLang.HolProg 64 :=
.seq NamedBody487_42 NamedBody487_59

def NamedBody487_61 : StackLang.HolProg 64 :=
.seq NamedBody487_13 NamedBody487_60

def NamedBody487_62 : StackLang.HolProg 64 :=
.seq NamedBody487_10 NamedBody487_61

def NamedBody487_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody487_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody487_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 176#64)

def NamedBody487_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody487_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody487_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1526#64)

def NamedBody487_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody487_70 : StackLang.HolProg 64 :=
.seq NamedBody487_68 NamedBody487_69

def NamedBody487_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody487_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody487_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody487_74 : StackLang.HolProg 64 :=
.seq NamedBody487_72 NamedBody487_73

def NamedBody487_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody487_76 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody487_74 NamedBody487_75

def NamedBody487_77 : StackLang.HolProg 64 :=
.seq NamedBody487_71 NamedBody487_76

def NamedBody487_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody487_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody487_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 487 5

def NamedBody487_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody487_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody487_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody487_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody487_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody487_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody487_87 : StackLang.HolProg 64 :=
.seq NamedBody487_85 NamedBody487_86

def NamedBody487_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody487_89 : StackLang.HolProg 64 :=
.seq NamedBody487_87 NamedBody487_88

def NamedBody487_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody487_91 : StackLang.HolProg 64 :=
.seq NamedBody487_89 NamedBody487_90

def NamedBody487_92 : StackLang.HolProg 64 :=
.seq NamedBody487_84 NamedBody487_91

def NamedBody487_93 : StackLang.HolProg 64 :=
.seq NamedBody487_83 NamedBody487_92

def NamedBody487_94 : StackLang.HolProg 64 :=
.seq NamedBody487_82 NamedBody487_93

def NamedBody487_95 : StackLang.HolProg 64 :=
.seq NamedBody487_81 NamedBody487_94

def NamedBody487_96 : StackLang.HolProg 64 :=
.seq NamedBody487_80 NamedBody487_95

def NamedBody487_97 : StackLang.HolProg 64 :=
.seq NamedBody487_79 NamedBody487_96

def NamedBody487_98 : StackLang.HolProg 64 :=
.seq NamedBody487_78 NamedBody487_97

def NamedBody487_99 : StackLang.HolProg 64 :=
.seq NamedBody487_77 NamedBody487_98

def NamedBody487_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody487_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody487_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody487_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody487_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody487_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody487_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody487_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody487_108 : StackLang.HolProg 64 :=
.seq NamedBody487_106 NamedBody487_107

def NamedBody487_109 : StackLang.HolProg 64 :=
.seq NamedBody487_105 NamedBody487_108

def NamedBody487_110 : StackLang.HolProg 64 :=
.seq NamedBody487_104 NamedBody487_109

def NamedBody487_111 : StackLang.HolProg 64 :=
.seq NamedBody487_103 NamedBody487_110

def NamedBody487_112 : StackLang.HolProg 64 :=
.seq NamedBody487_102 NamedBody487_111

def NamedBody487_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody487_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody487_115 : StackLang.HolProg 64 :=
.seq NamedBody487_113 NamedBody487_114

def NamedBody487_116 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody487_117 : StackLang.HolProg 64 :=
.seq NamedBody487_115 NamedBody487_116

def NamedBody487_118 : StackLang.HolProg 64 :=
.call (some (NamedBody487_112, 1, 487, 4)) (Sum.inl 78) (some (NamedBody487_117, 487, 5))

def NamedBody487_119 : StackLang.HolProg 64 :=
.seq NamedBody487_101 NamedBody487_118

def NamedBody487_120 : StackLang.HolProg 64 :=
.seq NamedBody487_100 NamedBody487_119

def NamedBody487_121 : StackLang.HolProg 64 :=
.seq NamedBody487_99 NamedBody487_120

def NamedBody487_122 : StackLang.HolProg 64 :=
.seq NamedBody487_70 NamedBody487_121

def NamedBody487_123 : StackLang.HolProg 64 :=
.seq NamedBody487_67 NamedBody487_122

def NamedBody487_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody487_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody487_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody487_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody487_128 : StackLang.HolProg 64 :=
.seq NamedBody487_126 NamedBody487_127

def NamedBody487_129 : StackLang.HolProg 64 :=
.seq NamedBody487_125 NamedBody487_128

def NamedBody487_130 : StackLang.HolProg 64 :=
.seq NamedBody487_124 NamedBody487_129

def NamedBody487_131 : StackLang.HolProg 64 :=
.seq NamedBody487_123 NamedBody487_130

def NamedBody487_132 : StackLang.HolProg 64 :=
.seq NamedBody487_66 NamedBody487_131

def NamedBody487_133 : StackLang.HolProg 64 :=
.seq NamedBody487_65 NamedBody487_132

def NamedBody487_134 : StackLang.HolProg 64 :=
.seq NamedBody487_64 NamedBody487_133

def NamedBody487_135 : StackLang.HolProg 64 :=
.seq NamedBody487_63 NamedBody487_134

def NamedBody487_136 : StackLang.HolProg 64 :=
.seq NamedBody487_62 NamedBody487_135

def NamedBody487_137 : StackLang.HolProg 64 :=
.seq NamedBody487_9 NamedBody487_136

def NamedBody487_138 : StackLang.HolProg 64 :=
.seq NamedBody487_8 NamedBody487_137

def NamedBody487_139 : StackLang.HolProg 64 :=
.seq NamedBody487_7 NamedBody487_138

def NamedBody487_140 : StackLang.HolProg 64 :=
.seq NamedBody487_6 NamedBody487_139

def Named487 : Nat × StackLang.HolProg 64 := (487, NamedBody487_140)
theorem Named487_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed487 = Named487 := by
  kernel_rfl
#print axioms Named487_eq
end InitECandidate.Proofs.BackendStages
