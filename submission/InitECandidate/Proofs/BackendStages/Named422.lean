import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed422
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody422_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody422_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody422_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody422_3 : StackLang.HolProg 64 :=
.seq NamedBody422_1 NamedBody422_2

def NamedBody422_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody422_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody422_3 NamedBody422_4

def NamedBody422_6 : StackLang.HolProg 64 :=
.seq NamedBody422_0 NamedBody422_5

def NamedBody422_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody422_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody422_9 : StackLang.HolProg 64 :=
.seq NamedBody422_7 NamedBody422_8

def NamedBody422_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody422_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1259#64)

def NamedBody422_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody422_13 : StackLang.HolProg 64 :=
.seq NamedBody422_11 NamedBody422_12

def NamedBody422_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody422_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody422_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody422_17 : StackLang.HolProg 64 :=
.seq NamedBody422_15 NamedBody422_16

def NamedBody422_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody422_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody422_17 NamedBody422_18

def NamedBody422_20 : StackLang.HolProg 64 :=
.seq NamedBody422_14 NamedBody422_19

def NamedBody422_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody422_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody422_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 422 3

def NamedBody422_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody422_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody422_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody422_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody422_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody422_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody422_30 : StackLang.HolProg 64 :=
.seq NamedBody422_28 NamedBody422_29

def NamedBody422_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody422_32 : StackLang.HolProg 64 :=
.seq NamedBody422_30 NamedBody422_31

def NamedBody422_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody422_34 : StackLang.HolProg 64 :=
.seq NamedBody422_32 NamedBody422_33

def NamedBody422_35 : StackLang.HolProg 64 :=
.seq NamedBody422_27 NamedBody422_34

def NamedBody422_36 : StackLang.HolProg 64 :=
.seq NamedBody422_26 NamedBody422_35

def NamedBody422_37 : StackLang.HolProg 64 :=
.seq NamedBody422_25 NamedBody422_36

def NamedBody422_38 : StackLang.HolProg 64 :=
.seq NamedBody422_24 NamedBody422_37

def NamedBody422_39 : StackLang.HolProg 64 :=
.seq NamedBody422_23 NamedBody422_38

def NamedBody422_40 : StackLang.HolProg 64 :=
.seq NamedBody422_22 NamedBody422_39

def NamedBody422_41 : StackLang.HolProg 64 :=
.seq NamedBody422_21 NamedBody422_40

def NamedBody422_42 : StackLang.HolProg 64 :=
.seq NamedBody422_20 NamedBody422_41

def NamedBody422_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody422_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody422_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody422_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody422_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody422_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody422_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody422_50 : StackLang.HolProg 64 :=
.seq NamedBody422_48 NamedBody422_49

def NamedBody422_51 : StackLang.HolProg 64 :=
.seq NamedBody422_47 NamedBody422_50

def NamedBody422_52 : StackLang.HolProg 64 :=
.seq NamedBody422_46 NamedBody422_51

def NamedBody422_53 : StackLang.HolProg 64 :=
.seq NamedBody422_45 NamedBody422_52

def NamedBody422_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody422_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody422_56 : StackLang.HolProg 64 :=
.seq NamedBody422_54 NamedBody422_55

def NamedBody422_57 : StackLang.HolProg 64 :=
.call (some (NamedBody422_53, 1, 422, 2)) (Sum.inl 421) (some (NamedBody422_56, 422, 3))

def NamedBody422_58 : StackLang.HolProg 64 :=
.seq NamedBody422_44 NamedBody422_57

def NamedBody422_59 : StackLang.HolProg 64 :=
.seq NamedBody422_43 NamedBody422_58

def NamedBody422_60 : StackLang.HolProg 64 :=
.seq NamedBody422_42 NamedBody422_59

def NamedBody422_61 : StackLang.HolProg 64 :=
.seq NamedBody422_13 NamedBody422_60

def NamedBody422_62 : StackLang.HolProg 64 :=
.seq NamedBody422_10 NamedBody422_61

def NamedBody422_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody422_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody422_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 1#64)

def NamedBody422_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody422_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody422_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1260#64)

def NamedBody422_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody422_70 : StackLang.HolProg 64 :=
.seq NamedBody422_68 NamedBody422_69

def NamedBody422_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody422_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody422_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody422_74 : StackLang.HolProg 64 :=
.seq NamedBody422_72 NamedBody422_73

def NamedBody422_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody422_76 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody422_74 NamedBody422_75

def NamedBody422_77 : StackLang.HolProg 64 :=
.seq NamedBody422_71 NamedBody422_76

def NamedBody422_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody422_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody422_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 422 5

def NamedBody422_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody422_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody422_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody422_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody422_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody422_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody422_87 : StackLang.HolProg 64 :=
.seq NamedBody422_85 NamedBody422_86

def NamedBody422_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody422_89 : StackLang.HolProg 64 :=
.seq NamedBody422_87 NamedBody422_88

def NamedBody422_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody422_91 : StackLang.HolProg 64 :=
.seq NamedBody422_89 NamedBody422_90

def NamedBody422_92 : StackLang.HolProg 64 :=
.seq NamedBody422_84 NamedBody422_91

def NamedBody422_93 : StackLang.HolProg 64 :=
.seq NamedBody422_83 NamedBody422_92

def NamedBody422_94 : StackLang.HolProg 64 :=
.seq NamedBody422_82 NamedBody422_93

def NamedBody422_95 : StackLang.HolProg 64 :=
.seq NamedBody422_81 NamedBody422_94

def NamedBody422_96 : StackLang.HolProg 64 :=
.seq NamedBody422_80 NamedBody422_95

def NamedBody422_97 : StackLang.HolProg 64 :=
.seq NamedBody422_79 NamedBody422_96

def NamedBody422_98 : StackLang.HolProg 64 :=
.seq NamedBody422_78 NamedBody422_97

def NamedBody422_99 : StackLang.HolProg 64 :=
.seq NamedBody422_77 NamedBody422_98

def NamedBody422_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody422_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody422_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody422_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody422_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody422_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody422_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody422_107 : StackLang.HolProg 64 :=
.seq NamedBody422_105 NamedBody422_106

def NamedBody422_108 : StackLang.HolProg 64 :=
.seq NamedBody422_104 NamedBody422_107

def NamedBody422_109 : StackLang.HolProg 64 :=
.seq NamedBody422_103 NamedBody422_108

def NamedBody422_110 : StackLang.HolProg 64 :=
.seq NamedBody422_102 NamedBody422_109

def NamedBody422_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody422_112 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody422_113 : StackLang.HolProg 64 :=
.seq NamedBody422_111 NamedBody422_112

def NamedBody422_114 : StackLang.HolProg 64 :=
.call (some (NamedBody422_110, 1, 422, 4)) (Sum.inl 419) (some (NamedBody422_113, 422, 5))

def NamedBody422_115 : StackLang.HolProg 64 :=
.seq NamedBody422_101 NamedBody422_114

def NamedBody422_116 : StackLang.HolProg 64 :=
.seq NamedBody422_100 NamedBody422_115

def NamedBody422_117 : StackLang.HolProg 64 :=
.seq NamedBody422_99 NamedBody422_116

def NamedBody422_118 : StackLang.HolProg 64 :=
.seq NamedBody422_70 NamedBody422_117

def NamedBody422_119 : StackLang.HolProg 64 :=
.seq NamedBody422_67 NamedBody422_118

def NamedBody422_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody422_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody422_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody422_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody422_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody422_125 : StackLang.HolProg 64 :=
.seq NamedBody422_123 NamedBody422_124

def NamedBody422_126 : StackLang.HolProg 64 :=
.seq NamedBody422_122 NamedBody422_125

def NamedBody422_127 : StackLang.HolProg 64 :=
.seq NamedBody422_121 NamedBody422_126

def NamedBody422_128 : StackLang.HolProg 64 :=
.seq NamedBody422_120 NamedBody422_127

def NamedBody422_129 : StackLang.HolProg 64 :=
.seq NamedBody422_119 NamedBody422_128

def NamedBody422_130 : StackLang.HolProg 64 :=
.seq NamedBody422_66 NamedBody422_129

def NamedBody422_131 : StackLang.HolProg 64 :=
.seq NamedBody422_65 NamedBody422_130

def NamedBody422_132 : StackLang.HolProg 64 :=
.seq NamedBody422_64 NamedBody422_131

def NamedBody422_133 : StackLang.HolProg 64 :=
.seq NamedBody422_63 NamedBody422_132

def NamedBody422_134 : StackLang.HolProg 64 :=
.seq NamedBody422_62 NamedBody422_133

def NamedBody422_135 : StackLang.HolProg 64 :=
.seq NamedBody422_9 NamedBody422_134

def NamedBody422_136 : StackLang.HolProg 64 :=
.seq NamedBody422_6 NamedBody422_135

def Named422 : Nat × StackLang.HolProg 64 := (422, NamedBody422_136)
theorem Named422_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed422 = Named422 := by
  kernel_rfl
#print axioms Named422_eq
end InitECandidate.Proofs.BackendStages
