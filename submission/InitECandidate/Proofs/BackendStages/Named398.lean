import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed398
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody398_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody398_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody398_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody398_3 : StackLang.HolProg 64 :=
.seq NamedBody398_1 NamedBody398_2

def NamedBody398_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody398_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody398_3 NamedBody398_4

def NamedBody398_6 : StackLang.HolProg 64 :=
.seq NamedBody398_0 NamedBody398_5

def NamedBody398_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody398_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody398_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1181#64)

def NamedBody398_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody398_11 : StackLang.HolProg 64 :=
.seq NamedBody398_9 NamedBody398_10

def NamedBody398_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody398_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody398_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody398_15 : StackLang.HolProg 64 :=
.seq NamedBody398_13 NamedBody398_14

def NamedBody398_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody398_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody398_15 NamedBody398_16

def NamedBody398_18 : StackLang.HolProg 64 :=
.seq NamedBody398_12 NamedBody398_17

def NamedBody398_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody398_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody398_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 398 3

def NamedBody398_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody398_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody398_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody398_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody398_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody398_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody398_28 : StackLang.HolProg 64 :=
.seq NamedBody398_26 NamedBody398_27

def NamedBody398_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody398_30 : StackLang.HolProg 64 :=
.seq NamedBody398_28 NamedBody398_29

def NamedBody398_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody398_32 : StackLang.HolProg 64 :=
.seq NamedBody398_30 NamedBody398_31

def NamedBody398_33 : StackLang.HolProg 64 :=
.seq NamedBody398_25 NamedBody398_32

def NamedBody398_34 : StackLang.HolProg 64 :=
.seq NamedBody398_24 NamedBody398_33

def NamedBody398_35 : StackLang.HolProg 64 :=
.seq NamedBody398_23 NamedBody398_34

def NamedBody398_36 : StackLang.HolProg 64 :=
.seq NamedBody398_22 NamedBody398_35

def NamedBody398_37 : StackLang.HolProg 64 :=
.seq NamedBody398_21 NamedBody398_36

def NamedBody398_38 : StackLang.HolProg 64 :=
.seq NamedBody398_20 NamedBody398_37

def NamedBody398_39 : StackLang.HolProg 64 :=
.seq NamedBody398_19 NamedBody398_38

def NamedBody398_40 : StackLang.HolProg 64 :=
.seq NamedBody398_18 NamedBody398_39

def NamedBody398_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody398_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody398_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody398_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody398_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody398_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody398_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody398_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody398_49 : StackLang.HolProg 64 :=
.seq NamedBody398_47 NamedBody398_48

def NamedBody398_50 : StackLang.HolProg 64 :=
.seq NamedBody398_46 NamedBody398_49

def NamedBody398_51 : StackLang.HolProg 64 :=
.seq NamedBody398_45 NamedBody398_50

def NamedBody398_52 : StackLang.HolProg 64 :=
.seq NamedBody398_44 NamedBody398_51

def NamedBody398_53 : StackLang.HolProg 64 :=
.seq NamedBody398_43 NamedBody398_52

def NamedBody398_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody398_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody398_56 : StackLang.HolProg 64 :=
.seq NamedBody398_54 NamedBody398_55

def NamedBody398_57 : StackLang.HolProg 64 :=
.call (some (NamedBody398_53, 1, 398, 2)) (Sum.inl 397) (some (NamedBody398_56, 398, 3))

def NamedBody398_58 : StackLang.HolProg 64 :=
.seq NamedBody398_42 NamedBody398_57

def NamedBody398_59 : StackLang.HolProg 64 :=
.seq NamedBody398_41 NamedBody398_58

def NamedBody398_60 : StackLang.HolProg 64 :=
.seq NamedBody398_40 NamedBody398_59

def NamedBody398_61 : StackLang.HolProg 64 :=
.seq NamedBody398_11 NamedBody398_60

def NamedBody398_62 : StackLang.HolProg 64 :=
.seq NamedBody398_8 NamedBody398_61

def NamedBody398_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody398_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody398_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody398_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody398_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody398_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody398_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody398_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 13

def NamedBody398_71 : StackLang.HolProg 64 :=
.seq NamedBody398_69 NamedBody398_70

def NamedBody398_72 : StackLang.HolProg 64 :=
.seq NamedBody398_68 NamedBody398_71

def NamedBody398_73 : StackLang.HolProg 64 :=
.seq NamedBody398_67 NamedBody398_72

def NamedBody398_74 : StackLang.HolProg 64 :=
.seq NamedBody398_66 NamedBody398_73

def NamedBody398_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody398_76 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody398_74 NamedBody398_75

def NamedBody398_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody398_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody398_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 56#64)

def NamedBody398_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody398_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody398_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody398_83 : StackLang.HolProg 64 :=
.seq NamedBody398_81 NamedBody398_82

def NamedBody398_84 : StackLang.HolProg 64 :=
.seq NamedBody398_80 NamedBody398_83

def NamedBody398_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody398_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1182#64)

def NamedBody398_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody398_88 : StackLang.HolProg 64 :=
.seq NamedBody398_86 NamedBody398_87

def NamedBody398_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody398_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody398_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody398_92 : StackLang.HolProg 64 :=
.seq NamedBody398_90 NamedBody398_91

def NamedBody398_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody398_94 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody398_92 NamedBody398_93

def NamedBody398_95 : StackLang.HolProg 64 :=
.seq NamedBody398_89 NamedBody398_94

def NamedBody398_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody398_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody398_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 398 5

def NamedBody398_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody398_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody398_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody398_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody398_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody398_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody398_105 : StackLang.HolProg 64 :=
.seq NamedBody398_103 NamedBody398_104

def NamedBody398_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody398_107 : StackLang.HolProg 64 :=
.seq NamedBody398_105 NamedBody398_106

def NamedBody398_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody398_109 : StackLang.HolProg 64 :=
.seq NamedBody398_107 NamedBody398_108

def NamedBody398_110 : StackLang.HolProg 64 :=
.seq NamedBody398_102 NamedBody398_109

def NamedBody398_111 : StackLang.HolProg 64 :=
.seq NamedBody398_101 NamedBody398_110

def NamedBody398_112 : StackLang.HolProg 64 :=
.seq NamedBody398_100 NamedBody398_111

def NamedBody398_113 : StackLang.HolProg 64 :=
.seq NamedBody398_99 NamedBody398_112

def NamedBody398_114 : StackLang.HolProg 64 :=
.seq NamedBody398_98 NamedBody398_113

def NamedBody398_115 : StackLang.HolProg 64 :=
.seq NamedBody398_97 NamedBody398_114

def NamedBody398_116 : StackLang.HolProg 64 :=
.seq NamedBody398_96 NamedBody398_115

def NamedBody398_117 : StackLang.HolProg 64 :=
.seq NamedBody398_95 NamedBody398_116

def NamedBody398_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody398_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody398_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody398_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody398_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody398_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody398_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody398_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody398_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody398_127 : StackLang.HolProg 64 :=
.seq NamedBody398_125 NamedBody398_126

def NamedBody398_128 : StackLang.HolProg 64 :=
.seq NamedBody398_124 NamedBody398_127

def NamedBody398_129 : StackLang.HolProg 64 :=
.seq NamedBody398_123 NamedBody398_128

def NamedBody398_130 : StackLang.HolProg 64 :=
.seq NamedBody398_122 NamedBody398_129

def NamedBody398_131 : StackLang.HolProg 64 :=
.seq NamedBody398_121 NamedBody398_130

def NamedBody398_132 : StackLang.HolProg 64 :=
.seq NamedBody398_120 NamedBody398_131

def NamedBody398_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody398_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody398_135 : StackLang.HolProg 64 :=
.seq NamedBody398_133 NamedBody398_134

def NamedBody398_136 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody398_137 : StackLang.HolProg 64 :=
.seq NamedBody398_135 NamedBody398_136

def NamedBody398_138 : StackLang.HolProg 64 :=
.call (some (NamedBody398_132, 1, 398, 4)) (Sum.inl 68) (some (NamedBody398_137, 398, 5))

def NamedBody398_139 : StackLang.HolProg 64 :=
.seq NamedBody398_119 NamedBody398_138

def NamedBody398_140 : StackLang.HolProg 64 :=
.seq NamedBody398_118 NamedBody398_139

def NamedBody398_141 : StackLang.HolProg 64 :=
.seq NamedBody398_117 NamedBody398_140

def NamedBody398_142 : StackLang.HolProg 64 :=
.seq NamedBody398_88 NamedBody398_141

def NamedBody398_143 : StackLang.HolProg 64 :=
.seq NamedBody398_85 NamedBody398_142

def NamedBody398_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody398_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody398_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody398_147 : StackLang.HolProg 64 :=
.seq NamedBody398_145 NamedBody398_146

def NamedBody398_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody398_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1183#64)

def NamedBody398_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody398_151 : StackLang.HolProg 64 :=
.seq NamedBody398_149 NamedBody398_150

def NamedBody398_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody398_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody398_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody398_155 : StackLang.HolProg 64 :=
.seq NamedBody398_153 NamedBody398_154

def NamedBody398_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody398_157 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody398_155 NamedBody398_156

def NamedBody398_158 : StackLang.HolProg 64 :=
.seq NamedBody398_152 NamedBody398_157

def NamedBody398_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody398_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody398_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 398 7

def NamedBody398_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody398_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody398_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody398_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody398_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody398_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody398_168 : StackLang.HolProg 64 :=
.seq NamedBody398_166 NamedBody398_167

def NamedBody398_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody398_170 : StackLang.HolProg 64 :=
.seq NamedBody398_168 NamedBody398_169

def NamedBody398_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody398_172 : StackLang.HolProg 64 :=
.seq NamedBody398_170 NamedBody398_171

def NamedBody398_173 : StackLang.HolProg 64 :=
.seq NamedBody398_165 NamedBody398_172

def NamedBody398_174 : StackLang.HolProg 64 :=
.seq NamedBody398_164 NamedBody398_173

def NamedBody398_175 : StackLang.HolProg 64 :=
.seq NamedBody398_163 NamedBody398_174

def NamedBody398_176 : StackLang.HolProg 64 :=
.seq NamedBody398_162 NamedBody398_175

def NamedBody398_177 : StackLang.HolProg 64 :=
.seq NamedBody398_161 NamedBody398_176

def NamedBody398_178 : StackLang.HolProg 64 :=
.seq NamedBody398_160 NamedBody398_177

def NamedBody398_179 : StackLang.HolProg 64 :=
.seq NamedBody398_159 NamedBody398_178

def NamedBody398_180 : StackLang.HolProg 64 :=
.seq NamedBody398_158 NamedBody398_179

def NamedBody398_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody398_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody398_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody398_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody398_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody398_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody398_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody398_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody398_189 : StackLang.HolProg 64 :=
.seq NamedBody398_187 NamedBody398_188

def NamedBody398_190 : StackLang.HolProg 64 :=
.seq NamedBody398_186 NamedBody398_189

def NamedBody398_191 : StackLang.HolProg 64 :=
.seq NamedBody398_185 NamedBody398_190

def NamedBody398_192 : StackLang.HolProg 64 :=
.seq NamedBody398_184 NamedBody398_191

def NamedBody398_193 : StackLang.HolProg 64 :=
.seq NamedBody398_183 NamedBody398_192

def NamedBody398_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody398_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody398_196 : StackLang.HolProg 64 :=
.seq NamedBody398_194 NamedBody398_195

def NamedBody398_197 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody398_198 : StackLang.HolProg 64 :=
.seq NamedBody398_196 NamedBody398_197

def NamedBody398_199 : StackLang.HolProg 64 :=
.call (some (NamedBody398_193, 1, 398, 6)) (Sum.inl 333) (some (NamedBody398_198, 398, 7))

def NamedBody398_200 : StackLang.HolProg 64 :=
.seq NamedBody398_182 NamedBody398_199

def NamedBody398_201 : StackLang.HolProg 64 :=
.seq NamedBody398_181 NamedBody398_200

def NamedBody398_202 : StackLang.HolProg 64 :=
.seq NamedBody398_180 NamedBody398_201

def NamedBody398_203 : StackLang.HolProg 64 :=
.seq NamedBody398_151 NamedBody398_202

def NamedBody398_204 : StackLang.HolProg 64 :=
.seq NamedBody398_148 NamedBody398_203

def NamedBody398_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody398_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody398_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody398_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody398_209 : StackLang.HolProg 64 :=
.seq NamedBody398_207 NamedBody398_208

def NamedBody398_210 : StackLang.HolProg 64 :=
.seq NamedBody398_206 NamedBody398_209

def NamedBody398_211 : StackLang.HolProg 64 :=
.seq NamedBody398_205 NamedBody398_210

def NamedBody398_212 : StackLang.HolProg 64 :=
.seq NamedBody398_204 NamedBody398_211

def NamedBody398_213 : StackLang.HolProg 64 :=
.seq NamedBody398_147 NamedBody398_212

def NamedBody398_214 : StackLang.HolProg 64 :=
.seq NamedBody398_144 NamedBody398_213

def NamedBody398_215 : StackLang.HolProg 64 :=
.seq NamedBody398_143 NamedBody398_214

def NamedBody398_216 : StackLang.HolProg 64 :=
.seq NamedBody398_84 NamedBody398_215

def NamedBody398_217 : StackLang.HolProg 64 :=
.seq NamedBody398_79 NamedBody398_216

def NamedBody398_218 : StackLang.HolProg 64 :=
.seq NamedBody398_78 NamedBody398_217

def NamedBody398_219 : StackLang.HolProg 64 :=
.seq NamedBody398_77 NamedBody398_218

def NamedBody398_220 : StackLang.HolProg 64 :=
.seq NamedBody398_76 NamedBody398_219

def NamedBody398_221 : StackLang.HolProg 64 :=
.seq NamedBody398_65 NamedBody398_220

def NamedBody398_222 : StackLang.HolProg 64 :=
.seq NamedBody398_64 NamedBody398_221

def NamedBody398_223 : StackLang.HolProg 64 :=
.seq NamedBody398_63 NamedBody398_222

def NamedBody398_224 : StackLang.HolProg 64 :=
.seq NamedBody398_62 NamedBody398_223

def NamedBody398_225 : StackLang.HolProg 64 :=
.seq NamedBody398_7 NamedBody398_224

def NamedBody398_226 : StackLang.HolProg 64 :=
.seq NamedBody398_6 NamedBody398_225

def Named398 : Nat × StackLang.HolProg 64 := (398, NamedBody398_226)
theorem Named398_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed398 = Named398 := by
  kernel_rfl
#print axioms Named398_eq
end InitECandidate.Proofs.BackendStages
