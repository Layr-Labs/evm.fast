import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed528
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody528_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody528_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody528_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody528_3 : StackLang.HolProg 64 :=
.seq NamedBody528_1 NamedBody528_2

def NamedBody528_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody528_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody528_3 NamedBody528_4

def NamedBody528_6 : StackLang.HolProg 64 :=
.seq NamedBody528_0 NamedBody528_5

def NamedBody528_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody528_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody528_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody528_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody528_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1730#64)

def NamedBody528_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody528_13 : StackLang.HolProg 64 :=
.seq NamedBody528_11 NamedBody528_12

def NamedBody528_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody528_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody528_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody528_17 : StackLang.HolProg 64 :=
.seq NamedBody528_15 NamedBody528_16

def NamedBody528_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody528_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody528_17 NamedBody528_18

def NamedBody528_20 : StackLang.HolProg 64 :=
.seq NamedBody528_14 NamedBody528_19

def NamedBody528_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody528_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody528_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 528 3

def NamedBody528_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody528_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody528_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody528_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody528_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody528_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody528_30 : StackLang.HolProg 64 :=
.seq NamedBody528_28 NamedBody528_29

def NamedBody528_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody528_32 : StackLang.HolProg 64 :=
.seq NamedBody528_30 NamedBody528_31

def NamedBody528_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody528_34 : StackLang.HolProg 64 :=
.seq NamedBody528_32 NamedBody528_33

def NamedBody528_35 : StackLang.HolProg 64 :=
.seq NamedBody528_27 NamedBody528_34

def NamedBody528_36 : StackLang.HolProg 64 :=
.seq NamedBody528_26 NamedBody528_35

def NamedBody528_37 : StackLang.HolProg 64 :=
.seq NamedBody528_25 NamedBody528_36

def NamedBody528_38 : StackLang.HolProg 64 :=
.seq NamedBody528_24 NamedBody528_37

def NamedBody528_39 : StackLang.HolProg 64 :=
.seq NamedBody528_23 NamedBody528_38

def NamedBody528_40 : StackLang.HolProg 64 :=
.seq NamedBody528_22 NamedBody528_39

def NamedBody528_41 : StackLang.HolProg 64 :=
.seq NamedBody528_21 NamedBody528_40

def NamedBody528_42 : StackLang.HolProg 64 :=
.seq NamedBody528_20 NamedBody528_41

def NamedBody528_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody528_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody528_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody528_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody528_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody528_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody528_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody528_50 : StackLang.HolProg 64 :=
.seq NamedBody528_48 NamedBody528_49

def NamedBody528_51 : StackLang.HolProg 64 :=
.seq NamedBody528_47 NamedBody528_50

def NamedBody528_52 : StackLang.HolProg 64 :=
.seq NamedBody528_46 NamedBody528_51

def NamedBody528_53 : StackLang.HolProg 64 :=
.seq NamedBody528_45 NamedBody528_52

def NamedBody528_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody528_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody528_56 : StackLang.HolProg 64 :=
.seq NamedBody528_54 NamedBody528_55

def NamedBody528_57 : StackLang.HolProg 64 :=
.call (some (NamedBody528_53, 1, 528, 2)) (Sum.inl 470) (some (NamedBody528_56, 528, 3))

def NamedBody528_58 : StackLang.HolProg 64 :=
.seq NamedBody528_44 NamedBody528_57

def NamedBody528_59 : StackLang.HolProg 64 :=
.seq NamedBody528_43 NamedBody528_58

def NamedBody528_60 : StackLang.HolProg 64 :=
.seq NamedBody528_42 NamedBody528_59

def NamedBody528_61 : StackLang.HolProg 64 :=
.seq NamedBody528_13 NamedBody528_60

def NamedBody528_62 : StackLang.HolProg 64 :=
.seq NamedBody528_10 NamedBody528_61

def NamedBody528_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody528_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody528_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody528_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody528_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def NamedBody528_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 64#64))

def NamedBody528_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody528_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody528_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1731#64)

def NamedBody528_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody528_73 : StackLang.HolProg 64 :=
.seq NamedBody528_71 NamedBody528_72

def NamedBody528_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody528_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody528_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody528_77 : StackLang.HolProg 64 :=
.seq NamedBody528_75 NamedBody528_76

def NamedBody528_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody528_79 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody528_77 NamedBody528_78

def NamedBody528_80 : StackLang.HolProg 64 :=
.seq NamedBody528_74 NamedBody528_79

def NamedBody528_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody528_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody528_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 528 5

def NamedBody528_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody528_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody528_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody528_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody528_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody528_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody528_90 : StackLang.HolProg 64 :=
.seq NamedBody528_88 NamedBody528_89

def NamedBody528_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody528_92 : StackLang.HolProg 64 :=
.seq NamedBody528_90 NamedBody528_91

def NamedBody528_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody528_94 : StackLang.HolProg 64 :=
.seq NamedBody528_92 NamedBody528_93

def NamedBody528_95 : StackLang.HolProg 64 :=
.seq NamedBody528_87 NamedBody528_94

def NamedBody528_96 : StackLang.HolProg 64 :=
.seq NamedBody528_86 NamedBody528_95

def NamedBody528_97 : StackLang.HolProg 64 :=
.seq NamedBody528_85 NamedBody528_96

def NamedBody528_98 : StackLang.HolProg 64 :=
.seq NamedBody528_84 NamedBody528_97

def NamedBody528_99 : StackLang.HolProg 64 :=
.seq NamedBody528_83 NamedBody528_98

def NamedBody528_100 : StackLang.HolProg 64 :=
.seq NamedBody528_82 NamedBody528_99

def NamedBody528_101 : StackLang.HolProg 64 :=
.seq NamedBody528_81 NamedBody528_100

def NamedBody528_102 : StackLang.HolProg 64 :=
.seq NamedBody528_80 NamedBody528_101

def NamedBody528_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody528_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody528_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody528_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody528_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody528_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody528_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody528_110 : StackLang.HolProg 64 :=
.seq NamedBody528_108 NamedBody528_109

def NamedBody528_111 : StackLang.HolProg 64 :=
.seq NamedBody528_107 NamedBody528_110

def NamedBody528_112 : StackLang.HolProg 64 :=
.seq NamedBody528_106 NamedBody528_111

def NamedBody528_113 : StackLang.HolProg 64 :=
.seq NamedBody528_105 NamedBody528_112

def NamedBody528_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody528_115 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody528_116 : StackLang.HolProg 64 :=
.seq NamedBody528_114 NamedBody528_115

def NamedBody528_117 : StackLang.HolProg 64 :=
.call (some (NamedBody528_113, 1, 528, 4)) (Sum.inl 477) (some (NamedBody528_116, 528, 5))

def NamedBody528_118 : StackLang.HolProg 64 :=
.seq NamedBody528_104 NamedBody528_117

def NamedBody528_119 : StackLang.HolProg 64 :=
.seq NamedBody528_103 NamedBody528_118

def NamedBody528_120 : StackLang.HolProg 64 :=
.seq NamedBody528_102 NamedBody528_119

def NamedBody528_121 : StackLang.HolProg 64 :=
.seq NamedBody528_73 NamedBody528_120

def NamedBody528_122 : StackLang.HolProg 64 :=
.seq NamedBody528_70 NamedBody528_121

def NamedBody528_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody528_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody528_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody528_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody528_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1732#64)

def NamedBody528_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody528_129 : StackLang.HolProg 64 :=
.seq NamedBody528_127 NamedBody528_128

def NamedBody528_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody528_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody528_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody528_133 : StackLang.HolProg 64 :=
.seq NamedBody528_131 NamedBody528_132

def NamedBody528_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody528_135 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody528_133 NamedBody528_134

def NamedBody528_136 : StackLang.HolProg 64 :=
.seq NamedBody528_130 NamedBody528_135

def NamedBody528_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody528_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody528_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 528 7

def NamedBody528_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody528_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody528_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody528_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody528_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody528_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody528_146 : StackLang.HolProg 64 :=
.seq NamedBody528_144 NamedBody528_145

def NamedBody528_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody528_148 : StackLang.HolProg 64 :=
.seq NamedBody528_146 NamedBody528_147

def NamedBody528_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody528_150 : StackLang.HolProg 64 :=
.seq NamedBody528_148 NamedBody528_149

def NamedBody528_151 : StackLang.HolProg 64 :=
.seq NamedBody528_143 NamedBody528_150

def NamedBody528_152 : StackLang.HolProg 64 :=
.seq NamedBody528_142 NamedBody528_151

def NamedBody528_153 : StackLang.HolProg 64 :=
.seq NamedBody528_141 NamedBody528_152

def NamedBody528_154 : StackLang.HolProg 64 :=
.seq NamedBody528_140 NamedBody528_153

def NamedBody528_155 : StackLang.HolProg 64 :=
.seq NamedBody528_139 NamedBody528_154

def NamedBody528_156 : StackLang.HolProg 64 :=
.seq NamedBody528_138 NamedBody528_155

def NamedBody528_157 : StackLang.HolProg 64 :=
.seq NamedBody528_137 NamedBody528_156

def NamedBody528_158 : StackLang.HolProg 64 :=
.seq NamedBody528_136 NamedBody528_157

def NamedBody528_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody528_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody528_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody528_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody528_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody528_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody528_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody528_166 : StackLang.HolProg 64 :=
.seq NamedBody528_164 NamedBody528_165

def NamedBody528_167 : StackLang.HolProg 64 :=
.seq NamedBody528_163 NamedBody528_166

def NamedBody528_168 : StackLang.HolProg 64 :=
.seq NamedBody528_162 NamedBody528_167

def NamedBody528_169 : StackLang.HolProg 64 :=
.seq NamedBody528_161 NamedBody528_168

def NamedBody528_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody528_171 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody528_172 : StackLang.HolProg 64 :=
.seq NamedBody528_170 NamedBody528_171

def NamedBody528_173 : StackLang.HolProg 64 :=
.call (some (NamedBody528_169, 1, 528, 6)) (Sum.inl 490) (some (NamedBody528_172, 528, 7))

def NamedBody528_174 : StackLang.HolProg 64 :=
.seq NamedBody528_160 NamedBody528_173

def NamedBody528_175 : StackLang.HolProg 64 :=
.seq NamedBody528_159 NamedBody528_174

def NamedBody528_176 : StackLang.HolProg 64 :=
.seq NamedBody528_158 NamedBody528_175

def NamedBody528_177 : StackLang.HolProg 64 :=
.seq NamedBody528_129 NamedBody528_176

def NamedBody528_178 : StackLang.HolProg 64 :=
.seq NamedBody528_126 NamedBody528_177

def NamedBody528_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody528_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody528_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody528_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody528_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody528_184 : StackLang.HolProg 64 :=
.seq NamedBody528_182 NamedBody528_183

def NamedBody528_185 : StackLang.HolProg 64 :=
.seq NamedBody528_181 NamedBody528_184

def NamedBody528_186 : StackLang.HolProg 64 :=
.seq NamedBody528_180 NamedBody528_185

def NamedBody528_187 : StackLang.HolProg 64 :=
.seq NamedBody528_179 NamedBody528_186

def NamedBody528_188 : StackLang.HolProg 64 :=
.seq NamedBody528_178 NamedBody528_187

def NamedBody528_189 : StackLang.HolProg 64 :=
.seq NamedBody528_125 NamedBody528_188

def NamedBody528_190 : StackLang.HolProg 64 :=
.seq NamedBody528_124 NamedBody528_189

def NamedBody528_191 : StackLang.HolProg 64 :=
.seq NamedBody528_123 NamedBody528_190

def NamedBody528_192 : StackLang.HolProg 64 :=
.seq NamedBody528_122 NamedBody528_191

def NamedBody528_193 : StackLang.HolProg 64 :=
.seq NamedBody528_69 NamedBody528_192

def NamedBody528_194 : StackLang.HolProg 64 :=
.seq NamedBody528_68 NamedBody528_193

def NamedBody528_195 : StackLang.HolProg 64 :=
.seq NamedBody528_67 NamedBody528_194

def NamedBody528_196 : StackLang.HolProg 64 :=
.seq NamedBody528_66 NamedBody528_195

def NamedBody528_197 : StackLang.HolProg 64 :=
.seq NamedBody528_65 NamedBody528_196

def NamedBody528_198 : StackLang.HolProg 64 :=
.seq NamedBody528_64 NamedBody528_197

def NamedBody528_199 : StackLang.HolProg 64 :=
.seq NamedBody528_63 NamedBody528_198

def NamedBody528_200 : StackLang.HolProg 64 :=
.seq NamedBody528_62 NamedBody528_199

def NamedBody528_201 : StackLang.HolProg 64 :=
.seq NamedBody528_9 NamedBody528_200

def NamedBody528_202 : StackLang.HolProg 64 :=
.seq NamedBody528_8 NamedBody528_201

def NamedBody528_203 : StackLang.HolProg 64 :=
.seq NamedBody528_7 NamedBody528_202

def NamedBody528_204 : StackLang.HolProg 64 :=
.seq NamedBody528_6 NamedBody528_203

def Named528 : Nat × StackLang.HolProg 64 := (528, NamedBody528_204)
theorem Named528_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed528 = Named528 := by
  kernel_rfl
#print axioms Named528_eq
end InitECandidate.Proofs.BackendStages
