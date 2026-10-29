import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed417
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody417_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody417_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody417_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody417_3 : StackLang.HolProg 64 :=
.seq NamedBody417_1 NamedBody417_2

def NamedBody417_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody417_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody417_3 NamedBody417_4

def NamedBody417_6 : StackLang.HolProg 64 :=
.seq NamedBody417_0 NamedBody417_5

def NamedBody417_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody417_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody417_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1243#64)

def NamedBody417_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody417_11 : StackLang.HolProg 64 :=
.seq NamedBody417_9 NamedBody417_10

def NamedBody417_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody417_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody417_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody417_15 : StackLang.HolProg 64 :=
.seq NamedBody417_13 NamedBody417_14

def NamedBody417_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody417_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody417_15 NamedBody417_16

def NamedBody417_18 : StackLang.HolProg 64 :=
.seq NamedBody417_12 NamedBody417_17

def NamedBody417_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody417_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody417_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 417 3

def NamedBody417_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody417_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody417_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody417_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody417_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody417_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody417_28 : StackLang.HolProg 64 :=
.seq NamedBody417_26 NamedBody417_27

def NamedBody417_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody417_30 : StackLang.HolProg 64 :=
.seq NamedBody417_28 NamedBody417_29

def NamedBody417_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody417_32 : StackLang.HolProg 64 :=
.seq NamedBody417_30 NamedBody417_31

def NamedBody417_33 : StackLang.HolProg 64 :=
.seq NamedBody417_25 NamedBody417_32

def NamedBody417_34 : StackLang.HolProg 64 :=
.seq NamedBody417_24 NamedBody417_33

def NamedBody417_35 : StackLang.HolProg 64 :=
.seq NamedBody417_23 NamedBody417_34

def NamedBody417_36 : StackLang.HolProg 64 :=
.seq NamedBody417_22 NamedBody417_35

def NamedBody417_37 : StackLang.HolProg 64 :=
.seq NamedBody417_21 NamedBody417_36

def NamedBody417_38 : StackLang.HolProg 64 :=
.seq NamedBody417_20 NamedBody417_37

def NamedBody417_39 : StackLang.HolProg 64 :=
.seq NamedBody417_19 NamedBody417_38

def NamedBody417_40 : StackLang.HolProg 64 :=
.seq NamedBody417_18 NamedBody417_39

def NamedBody417_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody417_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody417_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody417_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody417_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody417_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody417_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody417_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody417_49 : StackLang.HolProg 64 :=
.seq NamedBody417_47 NamedBody417_48

def NamedBody417_50 : StackLang.HolProg 64 :=
.seq NamedBody417_46 NamedBody417_49

def NamedBody417_51 : StackLang.HolProg 64 :=
.seq NamedBody417_45 NamedBody417_50

def NamedBody417_52 : StackLang.HolProg 64 :=
.seq NamedBody417_44 NamedBody417_51

def NamedBody417_53 : StackLang.HolProg 64 :=
.seq NamedBody417_43 NamedBody417_52

def NamedBody417_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody417_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody417_56 : StackLang.HolProg 64 :=
.seq NamedBody417_54 NamedBody417_55

def NamedBody417_57 : StackLang.HolProg 64 :=
.call (some (NamedBody417_53, 1, 417, 2)) (Sum.inl 406) (some (NamedBody417_56, 417, 3))

def NamedBody417_58 : StackLang.HolProg 64 :=
.seq NamedBody417_42 NamedBody417_57

def NamedBody417_59 : StackLang.HolProg 64 :=
.seq NamedBody417_41 NamedBody417_58

def NamedBody417_60 : StackLang.HolProg 64 :=
.seq NamedBody417_40 NamedBody417_59

def NamedBody417_61 : StackLang.HolProg 64 :=
.seq NamedBody417_11 NamedBody417_60

def NamedBody417_62 : StackLang.HolProg 64 :=
.seq NamedBody417_8 NamedBody417_61

def NamedBody417_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody417_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody417_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody417_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody417_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody417_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody417_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody417_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 11

def NamedBody417_71 : StackLang.HolProg 64 :=
.seq NamedBody417_69 NamedBody417_70

def NamedBody417_72 : StackLang.HolProg 64 :=
.seq NamedBody417_68 NamedBody417_71

def NamedBody417_73 : StackLang.HolProg 64 :=
.seq NamedBody417_67 NamedBody417_72

def NamedBody417_74 : StackLang.HolProg 64 :=
.seq NamedBody417_66 NamedBody417_73

def NamedBody417_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody417_76 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody417_74 NamedBody417_75

def NamedBody417_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody417_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody417_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody417_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody417_81 : StackLang.HolProg 64 :=
.seq NamedBody417_79 NamedBody417_80

def NamedBody417_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody417_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1244#64)

def NamedBody417_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody417_85 : StackLang.HolProg 64 :=
.seq NamedBody417_83 NamedBody417_84

def NamedBody417_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody417_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody417_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody417_89 : StackLang.HolProg 64 :=
.seq NamedBody417_87 NamedBody417_88

def NamedBody417_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody417_91 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody417_89 NamedBody417_90

def NamedBody417_92 : StackLang.HolProg 64 :=
.seq NamedBody417_86 NamedBody417_91

def NamedBody417_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody417_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody417_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 417 5

def NamedBody417_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody417_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody417_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody417_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody417_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody417_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody417_102 : StackLang.HolProg 64 :=
.seq NamedBody417_100 NamedBody417_101

def NamedBody417_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody417_104 : StackLang.HolProg 64 :=
.seq NamedBody417_102 NamedBody417_103

def NamedBody417_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody417_106 : StackLang.HolProg 64 :=
.seq NamedBody417_104 NamedBody417_105

def NamedBody417_107 : StackLang.HolProg 64 :=
.seq NamedBody417_99 NamedBody417_106

def NamedBody417_108 : StackLang.HolProg 64 :=
.seq NamedBody417_98 NamedBody417_107

def NamedBody417_109 : StackLang.HolProg 64 :=
.seq NamedBody417_97 NamedBody417_108

def NamedBody417_110 : StackLang.HolProg 64 :=
.seq NamedBody417_96 NamedBody417_109

def NamedBody417_111 : StackLang.HolProg 64 :=
.seq NamedBody417_95 NamedBody417_110

def NamedBody417_112 : StackLang.HolProg 64 :=
.seq NamedBody417_94 NamedBody417_111

def NamedBody417_113 : StackLang.HolProg 64 :=
.seq NamedBody417_93 NamedBody417_112

def NamedBody417_114 : StackLang.HolProg 64 :=
.seq NamedBody417_92 NamedBody417_113

def NamedBody417_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody417_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody417_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody417_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody417_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody417_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody417_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody417_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody417_123 : StackLang.HolProg 64 :=
.seq NamedBody417_121 NamedBody417_122

def NamedBody417_124 : StackLang.HolProg 64 :=
.seq NamedBody417_120 NamedBody417_123

def NamedBody417_125 : StackLang.HolProg 64 :=
.seq NamedBody417_119 NamedBody417_124

def NamedBody417_126 : StackLang.HolProg 64 :=
.seq NamedBody417_118 NamedBody417_125

def NamedBody417_127 : StackLang.HolProg 64 :=
.seq NamedBody417_117 NamedBody417_126

def NamedBody417_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody417_129 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody417_130 : StackLang.HolProg 64 :=
.seq NamedBody417_128 NamedBody417_129

def NamedBody417_131 : StackLang.HolProg 64 :=
.call (some (NamedBody417_127, 1, 417, 4)) (Sum.inl 416) (some (NamedBody417_130, 417, 5))

def NamedBody417_132 : StackLang.HolProg 64 :=
.seq NamedBody417_116 NamedBody417_131

def NamedBody417_133 : StackLang.HolProg 64 :=
.seq NamedBody417_115 NamedBody417_132

def NamedBody417_134 : StackLang.HolProg 64 :=
.seq NamedBody417_114 NamedBody417_133

def NamedBody417_135 : StackLang.HolProg 64 :=
.seq NamedBody417_85 NamedBody417_134

def NamedBody417_136 : StackLang.HolProg 64 :=
.seq NamedBody417_82 NamedBody417_135

def NamedBody417_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody417_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody417_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody417_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody417_141 : StackLang.HolProg 64 :=
.seq NamedBody417_139 NamedBody417_140

def NamedBody417_142 : StackLang.HolProg 64 :=
.seq NamedBody417_138 NamedBody417_141

def NamedBody417_143 : StackLang.HolProg 64 :=
.seq NamedBody417_137 NamedBody417_142

def NamedBody417_144 : StackLang.HolProg 64 :=
.seq NamedBody417_136 NamedBody417_143

def NamedBody417_145 : StackLang.HolProg 64 :=
.seq NamedBody417_81 NamedBody417_144

def NamedBody417_146 : StackLang.HolProg 64 :=
.seq NamedBody417_78 NamedBody417_145

def NamedBody417_147 : StackLang.HolProg 64 :=
.seq NamedBody417_77 NamedBody417_146

def NamedBody417_148 : StackLang.HolProg 64 :=
.seq NamedBody417_76 NamedBody417_147

def NamedBody417_149 : StackLang.HolProg 64 :=
.seq NamedBody417_65 NamedBody417_148

def NamedBody417_150 : StackLang.HolProg 64 :=
.seq NamedBody417_64 NamedBody417_149

def NamedBody417_151 : StackLang.HolProg 64 :=
.seq NamedBody417_63 NamedBody417_150

def NamedBody417_152 : StackLang.HolProg 64 :=
.seq NamedBody417_62 NamedBody417_151

def NamedBody417_153 : StackLang.HolProg 64 :=
.seq NamedBody417_7 NamedBody417_152

def NamedBody417_154 : StackLang.HolProg 64 :=
.seq NamedBody417_6 NamedBody417_153

def Named417 : Nat × StackLang.HolProg 64 := (417, NamedBody417_154)
theorem Named417_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed417 = Named417 := by
  kernel_rfl
#print axioms Named417_eq
end InitECandidate.Proofs.BackendStages
