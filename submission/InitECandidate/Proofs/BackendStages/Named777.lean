import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed777
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody777_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody777_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody777_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody777_3 : StackLang.HolProg 64 :=
.seq NamedBody777_1 NamedBody777_2

def NamedBody777_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody777_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody777_3 NamedBody777_4

def NamedBody777_6 : StackLang.HolProg 64 :=
.seq NamedBody777_0 NamedBody777_5

def NamedBody777_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody777_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody777_9 : StackLang.HolProg 64 :=
.seq NamedBody777_7 NamedBody777_8

def NamedBody777_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody777_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3538#64)

def NamedBody777_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody777_13 : StackLang.HolProg 64 :=
.seq NamedBody777_11 NamedBody777_12

def NamedBody777_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody777_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody777_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody777_17 : StackLang.HolProg 64 :=
.seq NamedBody777_15 NamedBody777_16

def NamedBody777_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody777_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody777_17 NamedBody777_18

def NamedBody777_20 : StackLang.HolProg 64 :=
.seq NamedBody777_14 NamedBody777_19

def NamedBody777_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody777_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody777_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 777 3

def NamedBody777_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody777_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody777_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody777_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody777_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody777_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody777_30 : StackLang.HolProg 64 :=
.seq NamedBody777_28 NamedBody777_29

def NamedBody777_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody777_32 : StackLang.HolProg 64 :=
.seq NamedBody777_30 NamedBody777_31

def NamedBody777_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody777_34 : StackLang.HolProg 64 :=
.seq NamedBody777_32 NamedBody777_33

def NamedBody777_35 : StackLang.HolProg 64 :=
.seq NamedBody777_27 NamedBody777_34

def NamedBody777_36 : StackLang.HolProg 64 :=
.seq NamedBody777_26 NamedBody777_35

def NamedBody777_37 : StackLang.HolProg 64 :=
.seq NamedBody777_25 NamedBody777_36

def NamedBody777_38 : StackLang.HolProg 64 :=
.seq NamedBody777_24 NamedBody777_37

def NamedBody777_39 : StackLang.HolProg 64 :=
.seq NamedBody777_23 NamedBody777_38

def NamedBody777_40 : StackLang.HolProg 64 :=
.seq NamedBody777_22 NamedBody777_39

def NamedBody777_41 : StackLang.HolProg 64 :=
.seq NamedBody777_21 NamedBody777_40

def NamedBody777_42 : StackLang.HolProg 64 :=
.seq NamedBody777_20 NamedBody777_41

def NamedBody777_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody777_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody777_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody777_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody777_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody777_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody777_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody777_50 : StackLang.HolProg 64 :=
.seq NamedBody777_48 NamedBody777_49

def NamedBody777_51 : StackLang.HolProg 64 :=
.seq NamedBody777_47 NamedBody777_50

def NamedBody777_52 : StackLang.HolProg 64 :=
.seq NamedBody777_46 NamedBody777_51

def NamedBody777_53 : StackLang.HolProg 64 :=
.seq NamedBody777_45 NamedBody777_52

def NamedBody777_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody777_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody777_56 : StackLang.HolProg 64 :=
.seq NamedBody777_54 NamedBody777_55

def NamedBody777_57 : StackLang.HolProg 64 :=
.call (some (NamedBody777_53, 1, 777, 2)) (Sum.inl 69) (some (NamedBody777_56, 777, 3))

def NamedBody777_58 : StackLang.HolProg 64 :=
.seq NamedBody777_44 NamedBody777_57

def NamedBody777_59 : StackLang.HolProg 64 :=
.seq NamedBody777_43 NamedBody777_58

def NamedBody777_60 : StackLang.HolProg 64 :=
.seq NamedBody777_42 NamedBody777_59

def NamedBody777_61 : StackLang.HolProg 64 :=
.seq NamedBody777_13 NamedBody777_60

def NamedBody777_62 : StackLang.HolProg 64 :=
.seq NamedBody777_10 NamedBody777_61

def NamedBody777_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody777_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 144#64)

def NamedBody777_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody777_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody777_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3539#64)

def NamedBody777_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody777_69 : StackLang.HolProg 64 :=
.seq NamedBody777_67 NamedBody777_68

def NamedBody777_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody777_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody777_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody777_73 : StackLang.HolProg 64 :=
.seq NamedBody777_71 NamedBody777_72

def NamedBody777_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody777_75 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody777_73 NamedBody777_74

def NamedBody777_76 : StackLang.HolProg 64 :=
.seq NamedBody777_70 NamedBody777_75

def NamedBody777_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody777_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody777_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 777 5

def NamedBody777_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody777_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody777_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody777_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody777_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody777_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody777_86 : StackLang.HolProg 64 :=
.seq NamedBody777_84 NamedBody777_85

def NamedBody777_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody777_88 : StackLang.HolProg 64 :=
.seq NamedBody777_86 NamedBody777_87

def NamedBody777_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody777_90 : StackLang.HolProg 64 :=
.seq NamedBody777_88 NamedBody777_89

def NamedBody777_91 : StackLang.HolProg 64 :=
.seq NamedBody777_83 NamedBody777_90

def NamedBody777_92 : StackLang.HolProg 64 :=
.seq NamedBody777_82 NamedBody777_91

def NamedBody777_93 : StackLang.HolProg 64 :=
.seq NamedBody777_81 NamedBody777_92

def NamedBody777_94 : StackLang.HolProg 64 :=
.seq NamedBody777_80 NamedBody777_93

def NamedBody777_95 : StackLang.HolProg 64 :=
.seq NamedBody777_79 NamedBody777_94

def NamedBody777_96 : StackLang.HolProg 64 :=
.seq NamedBody777_78 NamedBody777_95

def NamedBody777_97 : StackLang.HolProg 64 :=
.seq NamedBody777_77 NamedBody777_96

def NamedBody777_98 : StackLang.HolProg 64 :=
.seq NamedBody777_76 NamedBody777_97

def NamedBody777_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody777_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody777_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody777_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody777_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody777_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody777_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody777_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody777_107 : StackLang.HolProg 64 :=
.seq NamedBody777_105 NamedBody777_106

def NamedBody777_108 : StackLang.HolProg 64 :=
.seq NamedBody777_104 NamedBody777_107

def NamedBody777_109 : StackLang.HolProg 64 :=
.seq NamedBody777_103 NamedBody777_108

def NamedBody777_110 : StackLang.HolProg 64 :=
.seq NamedBody777_102 NamedBody777_109

def NamedBody777_111 : StackLang.HolProg 64 :=
.seq NamedBody777_101 NamedBody777_110

def NamedBody777_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody777_113 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody777_114 : StackLang.HolProg 64 :=
.seq NamedBody777_112 NamedBody777_113

def NamedBody777_115 : StackLang.HolProg 64 :=
.call (some (NamedBody777_111, 1, 777, 4)) (Sum.inl 68) (some (NamedBody777_114, 777, 5))

def NamedBody777_116 : StackLang.HolProg 64 :=
.seq NamedBody777_100 NamedBody777_115

def NamedBody777_117 : StackLang.HolProg 64 :=
.seq NamedBody777_99 NamedBody777_116

def NamedBody777_118 : StackLang.HolProg 64 :=
.seq NamedBody777_98 NamedBody777_117

def NamedBody777_119 : StackLang.HolProg 64 :=
.seq NamedBody777_69 NamedBody777_118

def NamedBody777_120 : StackLang.HolProg 64 :=
.seq NamedBody777_66 NamedBody777_119

def NamedBody777_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody777_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody777_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody777_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody777_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody777_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551224#64))

def NamedBody777_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1344#64)))

def NamedBody777_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 4#64)

def NamedBody777_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody777_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody777_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3540#64)

def NamedBody777_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody777_133 : StackLang.HolProg 64 :=
.seq NamedBody777_131 NamedBody777_132

def NamedBody777_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody777_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody777_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody777_137 : StackLang.HolProg 64 :=
.seq NamedBody777_135 NamedBody777_136

def NamedBody777_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody777_139 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody777_137 NamedBody777_138

def NamedBody777_140 : StackLang.HolProg 64 :=
.seq NamedBody777_134 NamedBody777_139

def NamedBody777_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody777_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody777_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 777 7

def NamedBody777_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody777_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody777_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody777_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody777_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody777_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody777_150 : StackLang.HolProg 64 :=
.seq NamedBody777_148 NamedBody777_149

def NamedBody777_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody777_152 : StackLang.HolProg 64 :=
.seq NamedBody777_150 NamedBody777_151

def NamedBody777_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody777_154 : StackLang.HolProg 64 :=
.seq NamedBody777_152 NamedBody777_153

def NamedBody777_155 : StackLang.HolProg 64 :=
.seq NamedBody777_147 NamedBody777_154

def NamedBody777_156 : StackLang.HolProg 64 :=
.seq NamedBody777_146 NamedBody777_155

def NamedBody777_157 : StackLang.HolProg 64 :=
.seq NamedBody777_145 NamedBody777_156

def NamedBody777_158 : StackLang.HolProg 64 :=
.seq NamedBody777_144 NamedBody777_157

def NamedBody777_159 : StackLang.HolProg 64 :=
.seq NamedBody777_143 NamedBody777_158

def NamedBody777_160 : StackLang.HolProg 64 :=
.seq NamedBody777_142 NamedBody777_159

def NamedBody777_161 : StackLang.HolProg 64 :=
.seq NamedBody777_141 NamedBody777_160

def NamedBody777_162 : StackLang.HolProg 64 :=
.seq NamedBody777_140 NamedBody777_161

def NamedBody777_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody777_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody777_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody777_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody777_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody777_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody777_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody777_170 : StackLang.HolProg 64 :=
.seq NamedBody777_168 NamedBody777_169

def NamedBody777_171 : StackLang.HolProg 64 :=
.seq NamedBody777_167 NamedBody777_170

def NamedBody777_172 : StackLang.HolProg 64 :=
.seq NamedBody777_166 NamedBody777_171

def NamedBody777_173 : StackLang.HolProg 64 :=
.seq NamedBody777_165 NamedBody777_172

def NamedBody777_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody777_175 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody777_176 : StackLang.HolProg 64 :=
.seq NamedBody777_174 NamedBody777_175

def NamedBody777_177 : StackLang.HolProg 64 :=
.call (some (NamedBody777_173, 1, 777, 6)) (Sum.inl 772) (some (NamedBody777_176, 777, 7))

def NamedBody777_178 : StackLang.HolProg 64 :=
.seq NamedBody777_164 NamedBody777_177

def NamedBody777_179 : StackLang.HolProg 64 :=
.seq NamedBody777_163 NamedBody777_178

def NamedBody777_180 : StackLang.HolProg 64 :=
.seq NamedBody777_162 NamedBody777_179

def NamedBody777_181 : StackLang.HolProg 64 :=
.seq NamedBody777_133 NamedBody777_180

def NamedBody777_182 : StackLang.HolProg 64 :=
.seq NamedBody777_130 NamedBody777_181

def NamedBody777_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody777_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody777_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody777_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3541#64)

def NamedBody777_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody777_188 : StackLang.HolProg 64 :=
.seq NamedBody777_186 NamedBody777_187

def NamedBody777_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody777_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody777_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody777_192 : StackLang.HolProg 64 :=
.seq NamedBody777_190 NamedBody777_191

def NamedBody777_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody777_194 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody777_192 NamedBody777_193

def NamedBody777_195 : StackLang.HolProg 64 :=
.seq NamedBody777_189 NamedBody777_194

def NamedBody777_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody777_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody777_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 777 9

def NamedBody777_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody777_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody777_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody777_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody777_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody777_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody777_205 : StackLang.HolProg 64 :=
.seq NamedBody777_203 NamedBody777_204

def NamedBody777_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody777_207 : StackLang.HolProg 64 :=
.seq NamedBody777_205 NamedBody777_206

def NamedBody777_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody777_209 : StackLang.HolProg 64 :=
.seq NamedBody777_207 NamedBody777_208

def NamedBody777_210 : StackLang.HolProg 64 :=
.seq NamedBody777_202 NamedBody777_209

def NamedBody777_211 : StackLang.HolProg 64 :=
.seq NamedBody777_201 NamedBody777_210

def NamedBody777_212 : StackLang.HolProg 64 :=
.seq NamedBody777_200 NamedBody777_211

def NamedBody777_213 : StackLang.HolProg 64 :=
.seq NamedBody777_199 NamedBody777_212

def NamedBody777_214 : StackLang.HolProg 64 :=
.seq NamedBody777_198 NamedBody777_213

def NamedBody777_215 : StackLang.HolProg 64 :=
.seq NamedBody777_197 NamedBody777_214

def NamedBody777_216 : StackLang.HolProg 64 :=
.seq NamedBody777_196 NamedBody777_215

def NamedBody777_217 : StackLang.HolProg 64 :=
.seq NamedBody777_195 NamedBody777_216

def NamedBody777_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody777_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody777_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody777_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody777_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody777_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody777_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody777_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody777_226 : StackLang.HolProg 64 :=
.seq NamedBody777_224 NamedBody777_225

def NamedBody777_227 : StackLang.HolProg 64 :=
.seq NamedBody777_223 NamedBody777_226

def NamedBody777_228 : StackLang.HolProg 64 :=
.seq NamedBody777_222 NamedBody777_227

def NamedBody777_229 : StackLang.HolProg 64 :=
.seq NamedBody777_221 NamedBody777_228

def NamedBody777_230 : StackLang.HolProg 64 :=
.seq NamedBody777_220 NamedBody777_229

def NamedBody777_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody777_232 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody777_233 : StackLang.HolProg 64 :=
.seq NamedBody777_231 NamedBody777_232

def NamedBody777_234 : StackLang.HolProg 64 :=
.call (some (NamedBody777_230, 1, 777, 8)) (Sum.inl 767) (some (NamedBody777_233, 777, 9))

def NamedBody777_235 : StackLang.HolProg 64 :=
.seq NamedBody777_219 NamedBody777_234

def NamedBody777_236 : StackLang.HolProg 64 :=
.seq NamedBody777_218 NamedBody777_235

def NamedBody777_237 : StackLang.HolProg 64 :=
.seq NamedBody777_217 NamedBody777_236

def NamedBody777_238 : StackLang.HolProg 64 :=
.seq NamedBody777_188 NamedBody777_237

def NamedBody777_239 : StackLang.HolProg 64 :=
.seq NamedBody777_185 NamedBody777_238

def NamedBody777_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody777_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody777_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody777_243 : StackLang.HolProg 64 :=
.seq NamedBody777_241 NamedBody777_242

def NamedBody777_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody777_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3542#64)

def NamedBody777_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody777_247 : StackLang.HolProg 64 :=
.seq NamedBody777_245 NamedBody777_246

def NamedBody777_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody777_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody777_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody777_251 : StackLang.HolProg 64 :=
.seq NamedBody777_249 NamedBody777_250

def NamedBody777_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody777_253 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody777_251 NamedBody777_252

def NamedBody777_254 : StackLang.HolProg 64 :=
.seq NamedBody777_248 NamedBody777_253

def NamedBody777_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody777_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody777_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 777 11

def NamedBody777_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody777_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody777_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody777_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody777_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody777_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody777_264 : StackLang.HolProg 64 :=
.seq NamedBody777_262 NamedBody777_263

def NamedBody777_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody777_266 : StackLang.HolProg 64 :=
.seq NamedBody777_264 NamedBody777_265

def NamedBody777_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody777_268 : StackLang.HolProg 64 :=
.seq NamedBody777_266 NamedBody777_267

def NamedBody777_269 : StackLang.HolProg 64 :=
.seq NamedBody777_261 NamedBody777_268

def NamedBody777_270 : StackLang.HolProg 64 :=
.seq NamedBody777_260 NamedBody777_269

def NamedBody777_271 : StackLang.HolProg 64 :=
.seq NamedBody777_259 NamedBody777_270

def NamedBody777_272 : StackLang.HolProg 64 :=
.seq NamedBody777_258 NamedBody777_271

def NamedBody777_273 : StackLang.HolProg 64 :=
.seq NamedBody777_257 NamedBody777_272

def NamedBody777_274 : StackLang.HolProg 64 :=
.seq NamedBody777_256 NamedBody777_273

def NamedBody777_275 : StackLang.HolProg 64 :=
.seq NamedBody777_255 NamedBody777_274

def NamedBody777_276 : StackLang.HolProg 64 :=
.seq NamedBody777_254 NamedBody777_275

def NamedBody777_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody777_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody777_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody777_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody777_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody777_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody777_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody777_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody777_285 : StackLang.HolProg 64 :=
.seq NamedBody777_283 NamedBody777_284

def NamedBody777_286 : StackLang.HolProg 64 :=
.seq NamedBody777_282 NamedBody777_285

def NamedBody777_287 : StackLang.HolProg 64 :=
.seq NamedBody777_281 NamedBody777_286

def NamedBody777_288 : StackLang.HolProg 64 :=
.seq NamedBody777_280 NamedBody777_287

def NamedBody777_289 : StackLang.HolProg 64 :=
.seq NamedBody777_279 NamedBody777_288

def NamedBody777_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody777_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody777_292 : StackLang.HolProg 64 :=
.seq NamedBody777_290 NamedBody777_291

def NamedBody777_293 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody777_294 : StackLang.HolProg 64 :=
.seq NamedBody777_292 NamedBody777_293

def NamedBody777_295 : StackLang.HolProg 64 :=
.call (some (NamedBody777_289, 1, 777, 10)) (Sum.inl 70) (some (NamedBody777_294, 777, 11))

def NamedBody777_296 : StackLang.HolProg 64 :=
.seq NamedBody777_278 NamedBody777_295

def NamedBody777_297 : StackLang.HolProg 64 :=
.seq NamedBody777_277 NamedBody777_296

def NamedBody777_298 : StackLang.HolProg 64 :=
.seq NamedBody777_276 NamedBody777_297

def NamedBody777_299 : StackLang.HolProg 64 :=
.seq NamedBody777_247 NamedBody777_298

def NamedBody777_300 : StackLang.HolProg 64 :=
.seq NamedBody777_244 NamedBody777_299

def NamedBody777_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody777_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody777_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody777_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody777_305 : StackLang.HolProg 64 :=
.seq NamedBody777_303 NamedBody777_304

def NamedBody777_306 : StackLang.HolProg 64 :=
.seq NamedBody777_302 NamedBody777_305

def NamedBody777_307 : StackLang.HolProg 64 :=
.seq NamedBody777_301 NamedBody777_306

def NamedBody777_308 : StackLang.HolProg 64 :=
.seq NamedBody777_300 NamedBody777_307

def NamedBody777_309 : StackLang.HolProg 64 :=
.seq NamedBody777_243 NamedBody777_308

def NamedBody777_310 : StackLang.HolProg 64 :=
.seq NamedBody777_240 NamedBody777_309

def NamedBody777_311 : StackLang.HolProg 64 :=
.seq NamedBody777_239 NamedBody777_310

def NamedBody777_312 : StackLang.HolProg 64 :=
.seq NamedBody777_184 NamedBody777_311

def NamedBody777_313 : StackLang.HolProg 64 :=
.seq NamedBody777_183 NamedBody777_312

def NamedBody777_314 : StackLang.HolProg 64 :=
.seq NamedBody777_182 NamedBody777_313

def NamedBody777_315 : StackLang.HolProg 64 :=
.seq NamedBody777_129 NamedBody777_314

def NamedBody777_316 : StackLang.HolProg 64 :=
.seq NamedBody777_128 NamedBody777_315

def NamedBody777_317 : StackLang.HolProg 64 :=
.seq NamedBody777_127 NamedBody777_316

def NamedBody777_318 : StackLang.HolProg 64 :=
.seq NamedBody777_126 NamedBody777_317

def NamedBody777_319 : StackLang.HolProg 64 :=
.seq NamedBody777_125 NamedBody777_318

def NamedBody777_320 : StackLang.HolProg 64 :=
.seq NamedBody777_124 NamedBody777_319

def NamedBody777_321 : StackLang.HolProg 64 :=
.seq NamedBody777_123 NamedBody777_320

def NamedBody777_322 : StackLang.HolProg 64 :=
.seq NamedBody777_122 NamedBody777_321

def NamedBody777_323 : StackLang.HolProg 64 :=
.seq NamedBody777_121 NamedBody777_322

def NamedBody777_324 : StackLang.HolProg 64 :=
.seq NamedBody777_120 NamedBody777_323

def NamedBody777_325 : StackLang.HolProg 64 :=
.seq NamedBody777_65 NamedBody777_324

def NamedBody777_326 : StackLang.HolProg 64 :=
.seq NamedBody777_64 NamedBody777_325

def NamedBody777_327 : StackLang.HolProg 64 :=
.seq NamedBody777_63 NamedBody777_326

def NamedBody777_328 : StackLang.HolProg 64 :=
.seq NamedBody777_62 NamedBody777_327

def NamedBody777_329 : StackLang.HolProg 64 :=
.seq NamedBody777_9 NamedBody777_328

def NamedBody777_330 : StackLang.HolProg 64 :=
.seq NamedBody777_6 NamedBody777_329

def Named777 : Nat × StackLang.HolProg 64 := (777, NamedBody777_330)
theorem Named777_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed777 = Named777 := by
  kernel_rfl
#print axioms Named777_eq
end InitECandidate.Proofs.BackendStages
