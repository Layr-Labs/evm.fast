import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed406
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody406_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody406_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody406_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody406_3 : StackLang.HolProg 64 :=
.seq NamedBody406_1 NamedBody406_2

def NamedBody406_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody406_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody406_3 NamedBody406_4

def NamedBody406_6 : StackLang.HolProg 64 :=
.seq NamedBody406_0 NamedBody406_5

def NamedBody406_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody406_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody406_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody406_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody406_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551432#64))

def NamedBody406_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 8#64))

def NamedBody406_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody406_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 1#64)

def NamedBody406_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody406_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody406_17 : StackLang.HolProg 64 :=
.seq NamedBody406_15 NamedBody406_16

def NamedBody406_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody406_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1208#64)

def NamedBody406_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody406_21 : StackLang.HolProg 64 :=
.seq NamedBody406_19 NamedBody406_20

def NamedBody406_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody406_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody406_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody406_25 : StackLang.HolProg 64 :=
.seq NamedBody406_23 NamedBody406_24

def NamedBody406_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody406_27 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody406_25 NamedBody406_26

def NamedBody406_28 : StackLang.HolProg 64 :=
.seq NamedBody406_22 NamedBody406_27

def NamedBody406_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody406_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody406_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 406 3

def NamedBody406_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody406_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody406_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody406_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody406_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody406_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody406_38 : StackLang.HolProg 64 :=
.seq NamedBody406_36 NamedBody406_37

def NamedBody406_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody406_40 : StackLang.HolProg 64 :=
.seq NamedBody406_38 NamedBody406_39

def NamedBody406_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody406_42 : StackLang.HolProg 64 :=
.seq NamedBody406_40 NamedBody406_41

def NamedBody406_43 : StackLang.HolProg 64 :=
.seq NamedBody406_35 NamedBody406_42

def NamedBody406_44 : StackLang.HolProg 64 :=
.seq NamedBody406_34 NamedBody406_43

def NamedBody406_45 : StackLang.HolProg 64 :=
.seq NamedBody406_33 NamedBody406_44

def NamedBody406_46 : StackLang.HolProg 64 :=
.seq NamedBody406_32 NamedBody406_45

def NamedBody406_47 : StackLang.HolProg 64 :=
.seq NamedBody406_31 NamedBody406_46

def NamedBody406_48 : StackLang.HolProg 64 :=
.seq NamedBody406_30 NamedBody406_47

def NamedBody406_49 : StackLang.HolProg 64 :=
.seq NamedBody406_29 NamedBody406_48

def NamedBody406_50 : StackLang.HolProg 64 :=
.seq NamedBody406_28 NamedBody406_49

def NamedBody406_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody406_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody406_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody406_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody406_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody406_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody406_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody406_58 : StackLang.HolProg 64 :=
.seq NamedBody406_56 NamedBody406_57

def NamedBody406_59 : StackLang.HolProg 64 :=
.seq NamedBody406_55 NamedBody406_58

def NamedBody406_60 : StackLang.HolProg 64 :=
.seq NamedBody406_54 NamedBody406_59

def NamedBody406_61 : StackLang.HolProg 64 :=
.seq NamedBody406_53 NamedBody406_60

def NamedBody406_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody406_63 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody406_64 : StackLang.HolProg 64 :=
.seq NamedBody406_62 NamedBody406_63

def NamedBody406_65 : StackLang.HolProg 64 :=
.call (some (NamedBody406_61, 1, 406, 2)) (Sum.inl 192) (some (NamedBody406_64, 406, 3))

def NamedBody406_66 : StackLang.HolProg 64 :=
.seq NamedBody406_52 NamedBody406_65

def NamedBody406_67 : StackLang.HolProg 64 :=
.seq NamedBody406_51 NamedBody406_66

def NamedBody406_68 : StackLang.HolProg 64 :=
.seq NamedBody406_50 NamedBody406_67

def NamedBody406_69 : StackLang.HolProg 64 :=
.seq NamedBody406_21 NamedBody406_68

def NamedBody406_70 : StackLang.HolProg 64 :=
.seq NamedBody406_18 NamedBody406_69

def NamedBody406_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody406_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody406_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody406_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody406_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551432#64))

def NamedBody406_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def NamedBody406_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody406_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody406_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1209#64)

def NamedBody406_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody406_81 : StackLang.HolProg 64 :=
.seq NamedBody406_79 NamedBody406_80

def NamedBody406_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody406_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody406_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody406_85 : StackLang.HolProg 64 :=
.seq NamedBody406_83 NamedBody406_84

def NamedBody406_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody406_87 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody406_85 NamedBody406_86

def NamedBody406_88 : StackLang.HolProg 64 :=
.seq NamedBody406_82 NamedBody406_87

def NamedBody406_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody406_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody406_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 406 5

def NamedBody406_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody406_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody406_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody406_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody406_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody406_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody406_98 : StackLang.HolProg 64 :=
.seq NamedBody406_96 NamedBody406_97

def NamedBody406_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody406_100 : StackLang.HolProg 64 :=
.seq NamedBody406_98 NamedBody406_99

def NamedBody406_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody406_102 : StackLang.HolProg 64 :=
.seq NamedBody406_100 NamedBody406_101

def NamedBody406_103 : StackLang.HolProg 64 :=
.seq NamedBody406_95 NamedBody406_102

def NamedBody406_104 : StackLang.HolProg 64 :=
.seq NamedBody406_94 NamedBody406_103

def NamedBody406_105 : StackLang.HolProg 64 :=
.seq NamedBody406_93 NamedBody406_104

def NamedBody406_106 : StackLang.HolProg 64 :=
.seq NamedBody406_92 NamedBody406_105

def NamedBody406_107 : StackLang.HolProg 64 :=
.seq NamedBody406_91 NamedBody406_106

def NamedBody406_108 : StackLang.HolProg 64 :=
.seq NamedBody406_90 NamedBody406_107

def NamedBody406_109 : StackLang.HolProg 64 :=
.seq NamedBody406_89 NamedBody406_108

def NamedBody406_110 : StackLang.HolProg 64 :=
.seq NamedBody406_88 NamedBody406_109

def NamedBody406_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody406_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody406_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody406_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody406_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody406_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody406_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody406_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody406_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody406_120 : StackLang.HolProg 64 :=
.seq NamedBody406_118 NamedBody406_119

def NamedBody406_121 : StackLang.HolProg 64 :=
.seq NamedBody406_117 NamedBody406_120

def NamedBody406_122 : StackLang.HolProg 64 :=
.seq NamedBody406_116 NamedBody406_121

def NamedBody406_123 : StackLang.HolProg 64 :=
.seq NamedBody406_115 NamedBody406_122

def NamedBody406_124 : StackLang.HolProg 64 :=
.seq NamedBody406_114 NamedBody406_123

def NamedBody406_125 : StackLang.HolProg 64 :=
.seq NamedBody406_113 NamedBody406_124

def NamedBody406_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody406_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody406_128 : StackLang.HolProg 64 :=
.seq NamedBody406_126 NamedBody406_127

def NamedBody406_129 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody406_130 : StackLang.HolProg 64 :=
.seq NamedBody406_128 NamedBody406_129

def NamedBody406_131 : StackLang.HolProg 64 :=
.call (some (NamedBody406_125, 1, 406, 4)) (Sum.inl 186) (some (NamedBody406_130, 406, 5))

def NamedBody406_132 : StackLang.HolProg 64 :=
.seq NamedBody406_112 NamedBody406_131

def NamedBody406_133 : StackLang.HolProg 64 :=
.seq NamedBody406_111 NamedBody406_132

def NamedBody406_134 : StackLang.HolProg 64 :=
.seq NamedBody406_110 NamedBody406_133

def NamedBody406_135 : StackLang.HolProg 64 :=
.seq NamedBody406_81 NamedBody406_134

def NamedBody406_136 : StackLang.HolProg 64 :=
.seq NamedBody406_78 NamedBody406_135

def NamedBody406_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody406_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody406_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody406_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody406_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody406_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody406_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 13

def NamedBody406_144 : StackLang.HolProg 64 :=
.seq NamedBody406_142 NamedBody406_143

def NamedBody406_145 : StackLang.HolProg 64 :=
.seq NamedBody406_141 NamedBody406_144

def NamedBody406_146 : StackLang.HolProg 64 :=
.seq NamedBody406_140 NamedBody406_145

def NamedBody406_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody406_148 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody406_146 NamedBody406_147

def NamedBody406_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody406_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody406_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody406_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody406_153 : StackLang.HolProg 64 :=
.seq NamedBody406_151 NamedBody406_152

def NamedBody406_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody406_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1210#64)

def NamedBody406_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody406_157 : StackLang.HolProg 64 :=
.seq NamedBody406_155 NamedBody406_156

def NamedBody406_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody406_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody406_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody406_161 : StackLang.HolProg 64 :=
.seq NamedBody406_159 NamedBody406_160

def NamedBody406_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody406_163 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody406_161 NamedBody406_162

def NamedBody406_164 : StackLang.HolProg 64 :=
.seq NamedBody406_158 NamedBody406_163

def NamedBody406_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody406_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody406_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 406 7

def NamedBody406_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody406_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody406_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody406_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody406_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody406_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody406_174 : StackLang.HolProg 64 :=
.seq NamedBody406_172 NamedBody406_173

def NamedBody406_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody406_176 : StackLang.HolProg 64 :=
.seq NamedBody406_174 NamedBody406_175

def NamedBody406_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody406_178 : StackLang.HolProg 64 :=
.seq NamedBody406_176 NamedBody406_177

def NamedBody406_179 : StackLang.HolProg 64 :=
.seq NamedBody406_171 NamedBody406_178

def NamedBody406_180 : StackLang.HolProg 64 :=
.seq NamedBody406_170 NamedBody406_179

def NamedBody406_181 : StackLang.HolProg 64 :=
.seq NamedBody406_169 NamedBody406_180

def NamedBody406_182 : StackLang.HolProg 64 :=
.seq NamedBody406_168 NamedBody406_181

def NamedBody406_183 : StackLang.HolProg 64 :=
.seq NamedBody406_167 NamedBody406_182

def NamedBody406_184 : StackLang.HolProg 64 :=
.seq NamedBody406_166 NamedBody406_183

def NamedBody406_185 : StackLang.HolProg 64 :=
.seq NamedBody406_165 NamedBody406_184

def NamedBody406_186 : StackLang.HolProg 64 :=
.seq NamedBody406_164 NamedBody406_185

def NamedBody406_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody406_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody406_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody406_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody406_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody406_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody406_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody406_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody406_195 : StackLang.HolProg 64 :=
.seq NamedBody406_193 NamedBody406_194

def NamedBody406_196 : StackLang.HolProg 64 :=
.seq NamedBody406_192 NamedBody406_195

def NamedBody406_197 : StackLang.HolProg 64 :=
.seq NamedBody406_191 NamedBody406_196

def NamedBody406_198 : StackLang.HolProg 64 :=
.seq NamedBody406_190 NamedBody406_197

def NamedBody406_199 : StackLang.HolProg 64 :=
.seq NamedBody406_189 NamedBody406_198

def NamedBody406_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody406_201 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody406_202 : StackLang.HolProg 64 :=
.seq NamedBody406_200 NamedBody406_201

def NamedBody406_203 : StackLang.HolProg 64 :=
.call (some (NamedBody406_199, 1, 406, 6)) (Sum.inl 404) (some (NamedBody406_202, 406, 7))

def NamedBody406_204 : StackLang.HolProg 64 :=
.seq NamedBody406_188 NamedBody406_203

def NamedBody406_205 : StackLang.HolProg 64 :=
.seq NamedBody406_187 NamedBody406_204

def NamedBody406_206 : StackLang.HolProg 64 :=
.seq NamedBody406_186 NamedBody406_205

def NamedBody406_207 : StackLang.HolProg 64 :=
.seq NamedBody406_157 NamedBody406_206

def NamedBody406_208 : StackLang.HolProg 64 :=
.seq NamedBody406_154 NamedBody406_207

def NamedBody406_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody406_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody406_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody406_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody406_213 : StackLang.HolProg 64 :=
.seq NamedBody406_211 NamedBody406_212

def NamedBody406_214 : StackLang.HolProg 64 :=
.seq NamedBody406_210 NamedBody406_213

def NamedBody406_215 : StackLang.HolProg 64 :=
.seq NamedBody406_209 NamedBody406_214

def NamedBody406_216 : StackLang.HolProg 64 :=
.seq NamedBody406_208 NamedBody406_215

def NamedBody406_217 : StackLang.HolProg 64 :=
.seq NamedBody406_153 NamedBody406_216

def NamedBody406_218 : StackLang.HolProg 64 :=
.seq NamedBody406_150 NamedBody406_217

def NamedBody406_219 : StackLang.HolProg 64 :=
.seq NamedBody406_149 NamedBody406_218

def NamedBody406_220 : StackLang.HolProg 64 :=
.seq NamedBody406_148 NamedBody406_219

def NamedBody406_221 : StackLang.HolProg 64 :=
.seq NamedBody406_139 NamedBody406_220

def NamedBody406_222 : StackLang.HolProg 64 :=
.seq NamedBody406_138 NamedBody406_221

def NamedBody406_223 : StackLang.HolProg 64 :=
.seq NamedBody406_137 NamedBody406_222

def NamedBody406_224 : StackLang.HolProg 64 :=
.seq NamedBody406_136 NamedBody406_223

def NamedBody406_225 : StackLang.HolProg 64 :=
.seq NamedBody406_77 NamedBody406_224

def NamedBody406_226 : StackLang.HolProg 64 :=
.seq NamedBody406_76 NamedBody406_225

def NamedBody406_227 : StackLang.HolProg 64 :=
.seq NamedBody406_75 NamedBody406_226

def NamedBody406_228 : StackLang.HolProg 64 :=
.seq NamedBody406_74 NamedBody406_227

def NamedBody406_229 : StackLang.HolProg 64 :=
.seq NamedBody406_73 NamedBody406_228

def NamedBody406_230 : StackLang.HolProg 64 :=
.seq NamedBody406_72 NamedBody406_229

def NamedBody406_231 : StackLang.HolProg 64 :=
.seq NamedBody406_71 NamedBody406_230

def NamedBody406_232 : StackLang.HolProg 64 :=
.seq NamedBody406_70 NamedBody406_231

def NamedBody406_233 : StackLang.HolProg 64 :=
.seq NamedBody406_17 NamedBody406_232

def NamedBody406_234 : StackLang.HolProg 64 :=
.seq NamedBody406_14 NamedBody406_233

def NamedBody406_235 : StackLang.HolProg 64 :=
.seq NamedBody406_13 NamedBody406_234

def NamedBody406_236 : StackLang.HolProg 64 :=
.seq NamedBody406_12 NamedBody406_235

def NamedBody406_237 : StackLang.HolProg 64 :=
.seq NamedBody406_11 NamedBody406_236

def NamedBody406_238 : StackLang.HolProg 64 :=
.seq NamedBody406_10 NamedBody406_237

def NamedBody406_239 : StackLang.HolProg 64 :=
.seq NamedBody406_9 NamedBody406_238

def NamedBody406_240 : StackLang.HolProg 64 :=
.seq NamedBody406_8 NamedBody406_239

def NamedBody406_241 : StackLang.HolProg 64 :=
.seq NamedBody406_7 NamedBody406_240

def NamedBody406_242 : StackLang.HolProg 64 :=
.seq NamedBody406_6 NamedBody406_241

def Named406 : Nat × StackLang.HolProg 64 := (406, NamedBody406_242)
theorem Named406_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed406 = Named406 := by
  kernel_rfl
#print axioms Named406_eq
end InitECandidate.Proofs.BackendStages
