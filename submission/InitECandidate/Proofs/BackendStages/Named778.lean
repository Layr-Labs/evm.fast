import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed778
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody778_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody778_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody778_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody778_3 : StackLang.HolProg 64 :=
.seq NamedBody778_1 NamedBody778_2

def NamedBody778_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody778_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody778_3 NamedBody778_4

def NamedBody778_6 : StackLang.HolProg 64 :=
.seq NamedBody778_0 NamedBody778_5

def NamedBody778_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody778_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody778_9 : StackLang.HolProg 64 :=
.seq NamedBody778_7 NamedBody778_8

def NamedBody778_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody778_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3543#64)

def NamedBody778_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody778_13 : StackLang.HolProg 64 :=
.seq NamedBody778_11 NamedBody778_12

def NamedBody778_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody778_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody778_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody778_17 : StackLang.HolProg 64 :=
.seq NamedBody778_15 NamedBody778_16

def NamedBody778_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody778_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody778_17 NamedBody778_18

def NamedBody778_20 : StackLang.HolProg 64 :=
.seq NamedBody778_14 NamedBody778_19

def NamedBody778_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody778_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody778_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 778 3

def NamedBody778_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody778_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody778_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody778_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody778_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody778_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody778_30 : StackLang.HolProg 64 :=
.seq NamedBody778_28 NamedBody778_29

def NamedBody778_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody778_32 : StackLang.HolProg 64 :=
.seq NamedBody778_30 NamedBody778_31

def NamedBody778_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody778_34 : StackLang.HolProg 64 :=
.seq NamedBody778_32 NamedBody778_33

def NamedBody778_35 : StackLang.HolProg 64 :=
.seq NamedBody778_27 NamedBody778_34

def NamedBody778_36 : StackLang.HolProg 64 :=
.seq NamedBody778_26 NamedBody778_35

def NamedBody778_37 : StackLang.HolProg 64 :=
.seq NamedBody778_25 NamedBody778_36

def NamedBody778_38 : StackLang.HolProg 64 :=
.seq NamedBody778_24 NamedBody778_37

def NamedBody778_39 : StackLang.HolProg 64 :=
.seq NamedBody778_23 NamedBody778_38

def NamedBody778_40 : StackLang.HolProg 64 :=
.seq NamedBody778_22 NamedBody778_39

def NamedBody778_41 : StackLang.HolProg 64 :=
.seq NamedBody778_21 NamedBody778_40

def NamedBody778_42 : StackLang.HolProg 64 :=
.seq NamedBody778_20 NamedBody778_41

def NamedBody778_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody778_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody778_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody778_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody778_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody778_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody778_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody778_50 : StackLang.HolProg 64 :=
.seq NamedBody778_48 NamedBody778_49

def NamedBody778_51 : StackLang.HolProg 64 :=
.seq NamedBody778_47 NamedBody778_50

def NamedBody778_52 : StackLang.HolProg 64 :=
.seq NamedBody778_46 NamedBody778_51

def NamedBody778_53 : StackLang.HolProg 64 :=
.seq NamedBody778_45 NamedBody778_52

def NamedBody778_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody778_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody778_56 : StackLang.HolProg 64 :=
.seq NamedBody778_54 NamedBody778_55

def NamedBody778_57 : StackLang.HolProg 64 :=
.call (some (NamedBody778_53, 1, 778, 2)) (Sum.inl 731) (some (NamedBody778_56, 778, 3))

def NamedBody778_58 : StackLang.HolProg 64 :=
.seq NamedBody778_44 NamedBody778_57

def NamedBody778_59 : StackLang.HolProg 64 :=
.seq NamedBody778_43 NamedBody778_58

def NamedBody778_60 : StackLang.HolProg 64 :=
.seq NamedBody778_42 NamedBody778_59

def NamedBody778_61 : StackLang.HolProg 64 :=
.seq NamedBody778_13 NamedBody778_60

def NamedBody778_62 : StackLang.HolProg 64 :=
.seq NamedBody778_10 NamedBody778_61

def NamedBody778_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody778_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody778_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def NamedBody778_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody778_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody778_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3544#64)

def NamedBody778_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody778_70 : StackLang.HolProg 64 :=
.seq NamedBody778_68 NamedBody778_69

def NamedBody778_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody778_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody778_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody778_74 : StackLang.HolProg 64 :=
.seq NamedBody778_72 NamedBody778_73

def NamedBody778_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody778_76 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody778_74 NamedBody778_75

def NamedBody778_77 : StackLang.HolProg 64 :=
.seq NamedBody778_71 NamedBody778_76

def NamedBody778_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody778_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody778_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 778 5

def NamedBody778_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody778_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody778_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody778_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody778_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody778_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody778_87 : StackLang.HolProg 64 :=
.seq NamedBody778_85 NamedBody778_86

def NamedBody778_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody778_89 : StackLang.HolProg 64 :=
.seq NamedBody778_87 NamedBody778_88

def NamedBody778_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody778_91 : StackLang.HolProg 64 :=
.seq NamedBody778_89 NamedBody778_90

def NamedBody778_92 : StackLang.HolProg 64 :=
.seq NamedBody778_84 NamedBody778_91

def NamedBody778_93 : StackLang.HolProg 64 :=
.seq NamedBody778_83 NamedBody778_92

def NamedBody778_94 : StackLang.HolProg 64 :=
.seq NamedBody778_82 NamedBody778_93

def NamedBody778_95 : StackLang.HolProg 64 :=
.seq NamedBody778_81 NamedBody778_94

def NamedBody778_96 : StackLang.HolProg 64 :=
.seq NamedBody778_80 NamedBody778_95

def NamedBody778_97 : StackLang.HolProg 64 :=
.seq NamedBody778_79 NamedBody778_96

def NamedBody778_98 : StackLang.HolProg 64 :=
.seq NamedBody778_78 NamedBody778_97

def NamedBody778_99 : StackLang.HolProg 64 :=
.seq NamedBody778_77 NamedBody778_98

def NamedBody778_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody778_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody778_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody778_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody778_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody778_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody778_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody778_107 : StackLang.HolProg 64 :=
.seq NamedBody778_105 NamedBody778_106

def NamedBody778_108 : StackLang.HolProg 64 :=
.seq NamedBody778_104 NamedBody778_107

def NamedBody778_109 : StackLang.HolProg 64 :=
.seq NamedBody778_103 NamedBody778_108

def NamedBody778_110 : StackLang.HolProg 64 :=
.seq NamedBody778_102 NamedBody778_109

def NamedBody778_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody778_112 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody778_113 : StackLang.HolProg 64 :=
.seq NamedBody778_111 NamedBody778_112

def NamedBody778_114 : StackLang.HolProg 64 :=
.call (some (NamedBody778_110, 1, 778, 4)) (Sum.inl 731) (some (NamedBody778_113, 778, 5))

def NamedBody778_115 : StackLang.HolProg 64 :=
.seq NamedBody778_101 NamedBody778_114

def NamedBody778_116 : StackLang.HolProg 64 :=
.seq NamedBody778_100 NamedBody778_115

def NamedBody778_117 : StackLang.HolProg 64 :=
.seq NamedBody778_99 NamedBody778_116

def NamedBody778_118 : StackLang.HolProg 64 :=
.seq NamedBody778_70 NamedBody778_117

def NamedBody778_119 : StackLang.HolProg 64 :=
.seq NamedBody778_67 NamedBody778_118

def NamedBody778_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody778_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody778_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def NamedBody778_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody778_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody778_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3545#64)

def NamedBody778_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody778_127 : StackLang.HolProg 64 :=
.seq NamedBody778_125 NamedBody778_126

def NamedBody778_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody778_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody778_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody778_131 : StackLang.HolProg 64 :=
.seq NamedBody778_129 NamedBody778_130

def NamedBody778_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody778_133 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody778_131 NamedBody778_132

def NamedBody778_134 : StackLang.HolProg 64 :=
.seq NamedBody778_128 NamedBody778_133

def NamedBody778_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody778_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody778_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 778 7

def NamedBody778_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody778_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody778_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody778_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody778_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody778_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody778_144 : StackLang.HolProg 64 :=
.seq NamedBody778_142 NamedBody778_143

def NamedBody778_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody778_146 : StackLang.HolProg 64 :=
.seq NamedBody778_144 NamedBody778_145

def NamedBody778_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody778_148 : StackLang.HolProg 64 :=
.seq NamedBody778_146 NamedBody778_147

def NamedBody778_149 : StackLang.HolProg 64 :=
.seq NamedBody778_141 NamedBody778_148

def NamedBody778_150 : StackLang.HolProg 64 :=
.seq NamedBody778_140 NamedBody778_149

def NamedBody778_151 : StackLang.HolProg 64 :=
.seq NamedBody778_139 NamedBody778_150

def NamedBody778_152 : StackLang.HolProg 64 :=
.seq NamedBody778_138 NamedBody778_151

def NamedBody778_153 : StackLang.HolProg 64 :=
.seq NamedBody778_137 NamedBody778_152

def NamedBody778_154 : StackLang.HolProg 64 :=
.seq NamedBody778_136 NamedBody778_153

def NamedBody778_155 : StackLang.HolProg 64 :=
.seq NamedBody778_135 NamedBody778_154

def NamedBody778_156 : StackLang.HolProg 64 :=
.seq NamedBody778_134 NamedBody778_155

def NamedBody778_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody778_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody778_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody778_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody778_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody778_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody778_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody778_164 : StackLang.HolProg 64 :=
.seq NamedBody778_162 NamedBody778_163

def NamedBody778_165 : StackLang.HolProg 64 :=
.seq NamedBody778_161 NamedBody778_164

def NamedBody778_166 : StackLang.HolProg 64 :=
.seq NamedBody778_160 NamedBody778_165

def NamedBody778_167 : StackLang.HolProg 64 :=
.seq NamedBody778_159 NamedBody778_166

def NamedBody778_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody778_169 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody778_170 : StackLang.HolProg 64 :=
.seq NamedBody778_168 NamedBody778_169

def NamedBody778_171 : StackLang.HolProg 64 :=
.call (some (NamedBody778_167, 1, 778, 6)) (Sum.inl 730) (some (NamedBody778_170, 778, 7))

def NamedBody778_172 : StackLang.HolProg 64 :=
.seq NamedBody778_158 NamedBody778_171

def NamedBody778_173 : StackLang.HolProg 64 :=
.seq NamedBody778_157 NamedBody778_172

def NamedBody778_174 : StackLang.HolProg 64 :=
.seq NamedBody778_156 NamedBody778_173

def NamedBody778_175 : StackLang.HolProg 64 :=
.seq NamedBody778_127 NamedBody778_174

def NamedBody778_176 : StackLang.HolProg 64 :=
.seq NamedBody778_124 NamedBody778_175

def NamedBody778_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody778_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody778_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody778_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody778_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody778_182 : StackLang.HolProg 64 :=
.seq NamedBody778_180 NamedBody778_181

def NamedBody778_183 : StackLang.HolProg 64 :=
.seq NamedBody778_179 NamedBody778_182

def NamedBody778_184 : StackLang.HolProg 64 :=
.seq NamedBody778_178 NamedBody778_183

def NamedBody778_185 : StackLang.HolProg 64 :=
.seq NamedBody778_177 NamedBody778_184

def NamedBody778_186 : StackLang.HolProg 64 :=
.seq NamedBody778_176 NamedBody778_185

def NamedBody778_187 : StackLang.HolProg 64 :=
.seq NamedBody778_123 NamedBody778_186

def NamedBody778_188 : StackLang.HolProg 64 :=
.seq NamedBody778_122 NamedBody778_187

def NamedBody778_189 : StackLang.HolProg 64 :=
.seq NamedBody778_121 NamedBody778_188

def NamedBody778_190 : StackLang.HolProg 64 :=
.seq NamedBody778_120 NamedBody778_189

def NamedBody778_191 : StackLang.HolProg 64 :=
.seq NamedBody778_119 NamedBody778_190

def NamedBody778_192 : StackLang.HolProg 64 :=
.seq NamedBody778_66 NamedBody778_191

def NamedBody778_193 : StackLang.HolProg 64 :=
.seq NamedBody778_65 NamedBody778_192

def NamedBody778_194 : StackLang.HolProg 64 :=
.seq NamedBody778_64 NamedBody778_193

def NamedBody778_195 : StackLang.HolProg 64 :=
.seq NamedBody778_63 NamedBody778_194

def NamedBody778_196 : StackLang.HolProg 64 :=
.seq NamedBody778_62 NamedBody778_195

def NamedBody778_197 : StackLang.HolProg 64 :=
.seq NamedBody778_9 NamedBody778_196

def NamedBody778_198 : StackLang.HolProg 64 :=
.seq NamedBody778_6 NamedBody778_197

def Named778 : Nat × StackLang.HolProg 64 := (778, NamedBody778_198)
theorem Named778_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed778 = Named778 := by
  kernel_rfl
#print axioms Named778_eq
end InitECandidate.Proofs.BackendStages
