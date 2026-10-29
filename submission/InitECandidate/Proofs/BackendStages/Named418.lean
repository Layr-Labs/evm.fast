import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed418
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody418_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody418_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody418_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody418_3 : StackLang.HolProg 64 :=
.seq NamedBody418_1 NamedBody418_2

def NamedBody418_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody418_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody418_3 NamedBody418_4

def NamedBody418_6 : StackLang.HolProg 64 :=
.seq NamedBody418_0 NamedBody418_5

def NamedBody418_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody418_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody418_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1245#64)

def NamedBody418_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody418_11 : StackLang.HolProg 64 :=
.seq NamedBody418_9 NamedBody418_10

def NamedBody418_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody418_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody418_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody418_15 : StackLang.HolProg 64 :=
.seq NamedBody418_13 NamedBody418_14

def NamedBody418_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody418_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody418_15 NamedBody418_16

def NamedBody418_18 : StackLang.HolProg 64 :=
.seq NamedBody418_12 NamedBody418_17

def NamedBody418_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody418_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody418_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 418 3

def NamedBody418_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody418_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody418_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody418_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody418_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody418_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody418_28 : StackLang.HolProg 64 :=
.seq NamedBody418_26 NamedBody418_27

def NamedBody418_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody418_30 : StackLang.HolProg 64 :=
.seq NamedBody418_28 NamedBody418_29

def NamedBody418_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody418_32 : StackLang.HolProg 64 :=
.seq NamedBody418_30 NamedBody418_31

def NamedBody418_33 : StackLang.HolProg 64 :=
.seq NamedBody418_25 NamedBody418_32

def NamedBody418_34 : StackLang.HolProg 64 :=
.seq NamedBody418_24 NamedBody418_33

def NamedBody418_35 : StackLang.HolProg 64 :=
.seq NamedBody418_23 NamedBody418_34

def NamedBody418_36 : StackLang.HolProg 64 :=
.seq NamedBody418_22 NamedBody418_35

def NamedBody418_37 : StackLang.HolProg 64 :=
.seq NamedBody418_21 NamedBody418_36

def NamedBody418_38 : StackLang.HolProg 64 :=
.seq NamedBody418_20 NamedBody418_37

def NamedBody418_39 : StackLang.HolProg 64 :=
.seq NamedBody418_19 NamedBody418_38

def NamedBody418_40 : StackLang.HolProg 64 :=
.seq NamedBody418_18 NamedBody418_39

def NamedBody418_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody418_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody418_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody418_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody418_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody418_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody418_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody418_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody418_49 : StackLang.HolProg 64 :=
.seq NamedBody418_47 NamedBody418_48

def NamedBody418_50 : StackLang.HolProg 64 :=
.seq NamedBody418_46 NamedBody418_49

def NamedBody418_51 : StackLang.HolProg 64 :=
.seq NamedBody418_45 NamedBody418_50

def NamedBody418_52 : StackLang.HolProg 64 :=
.seq NamedBody418_44 NamedBody418_51

def NamedBody418_53 : StackLang.HolProg 64 :=
.seq NamedBody418_43 NamedBody418_52

def NamedBody418_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody418_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody418_56 : StackLang.HolProg 64 :=
.seq NamedBody418_54 NamedBody418_55

def NamedBody418_57 : StackLang.HolProg 64 :=
.call (some (NamedBody418_53, 1, 418, 2)) (Sum.inl 406) (some (NamedBody418_56, 418, 3))

def NamedBody418_58 : StackLang.HolProg 64 :=
.seq NamedBody418_42 NamedBody418_57

def NamedBody418_59 : StackLang.HolProg 64 :=
.seq NamedBody418_41 NamedBody418_58

def NamedBody418_60 : StackLang.HolProg 64 :=
.seq NamedBody418_40 NamedBody418_59

def NamedBody418_61 : StackLang.HolProg 64 :=
.seq NamedBody418_11 NamedBody418_60

def NamedBody418_62 : StackLang.HolProg 64 :=
.seq NamedBody418_8 NamedBody418_61

def NamedBody418_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody418_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody418_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody418_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody418_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody418_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody418_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody418_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 11

def NamedBody418_71 : StackLang.HolProg 64 :=
.seq NamedBody418_69 NamedBody418_70

def NamedBody418_72 : StackLang.HolProg 64 :=
.seq NamedBody418_68 NamedBody418_71

def NamedBody418_73 : StackLang.HolProg 64 :=
.seq NamedBody418_67 NamedBody418_72

def NamedBody418_74 : StackLang.HolProg 64 :=
.seq NamedBody418_66 NamedBody418_73

def NamedBody418_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody418_76 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody418_74 NamedBody418_75

def NamedBody418_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody418_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody418_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody418_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody418_81 : StackLang.HolProg 64 :=
.seq NamedBody418_79 NamedBody418_80

def NamedBody418_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody418_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1246#64)

def NamedBody418_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody418_85 : StackLang.HolProg 64 :=
.seq NamedBody418_83 NamedBody418_84

def NamedBody418_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody418_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody418_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody418_89 : StackLang.HolProg 64 :=
.seq NamedBody418_87 NamedBody418_88

def NamedBody418_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody418_91 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody418_89 NamedBody418_90

def NamedBody418_92 : StackLang.HolProg 64 :=
.seq NamedBody418_86 NamedBody418_91

def NamedBody418_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody418_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody418_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 418 5

def NamedBody418_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody418_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody418_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody418_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody418_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody418_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody418_102 : StackLang.HolProg 64 :=
.seq NamedBody418_100 NamedBody418_101

def NamedBody418_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody418_104 : StackLang.HolProg 64 :=
.seq NamedBody418_102 NamedBody418_103

def NamedBody418_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody418_106 : StackLang.HolProg 64 :=
.seq NamedBody418_104 NamedBody418_105

def NamedBody418_107 : StackLang.HolProg 64 :=
.seq NamedBody418_99 NamedBody418_106

def NamedBody418_108 : StackLang.HolProg 64 :=
.seq NamedBody418_98 NamedBody418_107

def NamedBody418_109 : StackLang.HolProg 64 :=
.seq NamedBody418_97 NamedBody418_108

def NamedBody418_110 : StackLang.HolProg 64 :=
.seq NamedBody418_96 NamedBody418_109

def NamedBody418_111 : StackLang.HolProg 64 :=
.seq NamedBody418_95 NamedBody418_110

def NamedBody418_112 : StackLang.HolProg 64 :=
.seq NamedBody418_94 NamedBody418_111

def NamedBody418_113 : StackLang.HolProg 64 :=
.seq NamedBody418_93 NamedBody418_112

def NamedBody418_114 : StackLang.HolProg 64 :=
.seq NamedBody418_92 NamedBody418_113

def NamedBody418_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody418_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody418_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody418_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody418_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody418_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody418_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody418_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody418_123 : StackLang.HolProg 64 :=
.seq NamedBody418_121 NamedBody418_122

def NamedBody418_124 : StackLang.HolProg 64 :=
.seq NamedBody418_120 NamedBody418_123

def NamedBody418_125 : StackLang.HolProg 64 :=
.seq NamedBody418_119 NamedBody418_124

def NamedBody418_126 : StackLang.HolProg 64 :=
.seq NamedBody418_118 NamedBody418_125

def NamedBody418_127 : StackLang.HolProg 64 :=
.seq NamedBody418_117 NamedBody418_126

def NamedBody418_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody418_129 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody418_130 : StackLang.HolProg 64 :=
.seq NamedBody418_128 NamedBody418_129

def NamedBody418_131 : StackLang.HolProg 64 :=
.call (some (NamedBody418_127, 1, 418, 4)) (Sum.inl 416) (some (NamedBody418_130, 418, 5))

def NamedBody418_132 : StackLang.HolProg 64 :=
.seq NamedBody418_116 NamedBody418_131

def NamedBody418_133 : StackLang.HolProg 64 :=
.seq NamedBody418_115 NamedBody418_132

def NamedBody418_134 : StackLang.HolProg 64 :=
.seq NamedBody418_114 NamedBody418_133

def NamedBody418_135 : StackLang.HolProg 64 :=
.seq NamedBody418_85 NamedBody418_134

def NamedBody418_136 : StackLang.HolProg 64 :=
.seq NamedBody418_82 NamedBody418_135

def NamedBody418_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody418_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody418_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody418_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody418_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody418_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody418_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody418_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 11

def NamedBody418_145 : StackLang.HolProg 64 :=
.seq NamedBody418_143 NamedBody418_144

def NamedBody418_146 : StackLang.HolProg 64 :=
.seq NamedBody418_142 NamedBody418_145

def NamedBody418_147 : StackLang.HolProg 64 :=
.seq NamedBody418_141 NamedBody418_146

def NamedBody418_148 : StackLang.HolProg 64 :=
.seq NamedBody418_140 NamedBody418_147

def NamedBody418_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody418_150 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody418_148 NamedBody418_149

def NamedBody418_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody418_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody418_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody418_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody418_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody418_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 11

def NamedBody418_157 : StackLang.HolProg 64 :=
.seq NamedBody418_155 NamedBody418_156

def NamedBody418_158 : StackLang.HolProg 64 :=
.seq NamedBody418_154 NamedBody418_157

def NamedBody418_159 : StackLang.HolProg 64 :=
.seq NamedBody418_153 NamedBody418_158

def NamedBody418_160 : StackLang.HolProg 64 :=
.seq NamedBody418_152 NamedBody418_159

def NamedBody418_161 : StackLang.HolProg 64 :=
.seq NamedBody418_151 NamedBody418_160

def NamedBody418_162 : StackLang.HolProg 64 :=
.seq NamedBody418_150 NamedBody418_161

def NamedBody418_163 : StackLang.HolProg 64 :=
.seq NamedBody418_139 NamedBody418_162

def NamedBody418_164 : StackLang.HolProg 64 :=
.seq NamedBody418_138 NamedBody418_163

def NamedBody418_165 : StackLang.HolProg 64 :=
.seq NamedBody418_137 NamedBody418_164

def NamedBody418_166 : StackLang.HolProg 64 :=
.seq NamedBody418_136 NamedBody418_165

def NamedBody418_167 : StackLang.HolProg 64 :=
.seq NamedBody418_81 NamedBody418_166

def NamedBody418_168 : StackLang.HolProg 64 :=
.seq NamedBody418_78 NamedBody418_167

def NamedBody418_169 : StackLang.HolProg 64 :=
.seq NamedBody418_77 NamedBody418_168

def NamedBody418_170 : StackLang.HolProg 64 :=
.seq NamedBody418_76 NamedBody418_169

def NamedBody418_171 : StackLang.HolProg 64 :=
.seq NamedBody418_65 NamedBody418_170

def NamedBody418_172 : StackLang.HolProg 64 :=
.seq NamedBody418_64 NamedBody418_171

def NamedBody418_173 : StackLang.HolProg 64 :=
.seq NamedBody418_63 NamedBody418_172

def NamedBody418_174 : StackLang.HolProg 64 :=
.seq NamedBody418_62 NamedBody418_173

def NamedBody418_175 : StackLang.HolProg 64 :=
.seq NamedBody418_7 NamedBody418_174

def NamedBody418_176 : StackLang.HolProg 64 :=
.seq NamedBody418_6 NamedBody418_175

def Named418 : Nat × StackLang.HolProg 64 := (418, NamedBody418_176)
theorem Named418_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed418 = Named418 := by
  kernel_rfl
#print axioms Named418_eq
end InitECandidate.Proofs.BackendStages
