import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed190
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody190_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody190_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody190_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody190_3 : StackLang.HolProg 64 :=
.seq NamedBody190_1 NamedBody190_2

def NamedBody190_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody190_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody190_3 NamedBody190_4

def NamedBody190_6 : StackLang.HolProg 64 :=
.seq NamedBody190_0 NamedBody190_5

def NamedBody190_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody190_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody190_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody190_10 : StackLang.HolProg 64 :=
.seq NamedBody190_8 NamedBody190_9

def NamedBody190_11 : StackLang.HolProg 64 :=
.seq NamedBody190_7 NamedBody190_10

def NamedBody190_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody190_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 218#64)

def NamedBody190_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody190_15 : StackLang.HolProg 64 :=
.seq NamedBody190_13 NamedBody190_14

def NamedBody190_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody190_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody190_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody190_19 : StackLang.HolProg 64 :=
.seq NamedBody190_17 NamedBody190_18

def NamedBody190_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody190_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody190_19 NamedBody190_20

def NamedBody190_22 : StackLang.HolProg 64 :=
.seq NamedBody190_16 NamedBody190_21

def NamedBody190_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody190_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody190_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 190 3

def NamedBody190_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody190_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody190_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody190_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody190_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody190_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody190_32 : StackLang.HolProg 64 :=
.seq NamedBody190_30 NamedBody190_31

def NamedBody190_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody190_34 : StackLang.HolProg 64 :=
.seq NamedBody190_32 NamedBody190_33

def NamedBody190_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody190_36 : StackLang.HolProg 64 :=
.seq NamedBody190_34 NamedBody190_35

def NamedBody190_37 : StackLang.HolProg 64 :=
.seq NamedBody190_29 NamedBody190_36

def NamedBody190_38 : StackLang.HolProg 64 :=
.seq NamedBody190_28 NamedBody190_37

def NamedBody190_39 : StackLang.HolProg 64 :=
.seq NamedBody190_27 NamedBody190_38

def NamedBody190_40 : StackLang.HolProg 64 :=
.seq NamedBody190_26 NamedBody190_39

def NamedBody190_41 : StackLang.HolProg 64 :=
.seq NamedBody190_25 NamedBody190_40

def NamedBody190_42 : StackLang.HolProg 64 :=
.seq NamedBody190_24 NamedBody190_41

def NamedBody190_43 : StackLang.HolProg 64 :=
.seq NamedBody190_23 NamedBody190_42

def NamedBody190_44 : StackLang.HolProg 64 :=
.seq NamedBody190_22 NamedBody190_43

def NamedBody190_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody190_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody190_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody190_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody190_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody190_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody190_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody190_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody190_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody190_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody190_55 : StackLang.HolProg 64 :=
.seq NamedBody190_53 NamedBody190_54

def NamedBody190_56 : StackLang.HolProg 64 :=
.seq NamedBody190_52 NamedBody190_55

def NamedBody190_57 : StackLang.HolProg 64 :=
.seq NamedBody190_51 NamedBody190_56

def NamedBody190_58 : StackLang.HolProg 64 :=
.seq NamedBody190_50 NamedBody190_57

def NamedBody190_59 : StackLang.HolProg 64 :=
.seq NamedBody190_49 NamedBody190_58

def NamedBody190_60 : StackLang.HolProg 64 :=
.seq NamedBody190_48 NamedBody190_59

def NamedBody190_61 : StackLang.HolProg 64 :=
.seq NamedBody190_47 NamedBody190_60

def NamedBody190_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody190_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody190_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody190_65 : StackLang.HolProg 64 :=
.seq NamedBody190_63 NamedBody190_64

def NamedBody190_66 : StackLang.HolProg 64 :=
.seq NamedBody190_62 NamedBody190_65

def NamedBody190_67 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody190_68 : StackLang.HolProg 64 :=
.seq NamedBody190_66 NamedBody190_67

def NamedBody190_69 : StackLang.HolProg 64 :=
.call (some (NamedBody190_61, 1, 190, 2)) (Sum.inl 188) (some (NamedBody190_68, 190, 3))

def NamedBody190_70 : StackLang.HolProg 64 :=
.seq NamedBody190_46 NamedBody190_69

def NamedBody190_71 : StackLang.HolProg 64 :=
.seq NamedBody190_45 NamedBody190_70

def NamedBody190_72 : StackLang.HolProg 64 :=
.seq NamedBody190_44 NamedBody190_71

def NamedBody190_73 : StackLang.HolProg 64 :=
.seq NamedBody190_15 NamedBody190_72

def NamedBody190_74 : StackLang.HolProg 64 :=
.seq NamedBody190_12 NamedBody190_73

def NamedBody190_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody190_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody190_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 40#64))

def NamedBody190_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody190_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 12 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def NamedBody190_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody190_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody190_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody190_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody190_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody190_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody190_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody190_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def NamedBody190_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody190_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 0#64))

def NamedBody190_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody190_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody190_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def NamedBody190_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody190_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 0#64))

def NamedBody190_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody190_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody190_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody190_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody190_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody190_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody190_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 13

def NamedBody190_102 : StackLang.HolProg 64 :=
.seq NamedBody190_100 NamedBody190_101

def NamedBody190_103 : StackLang.HolProg 64 :=
.seq NamedBody190_99 NamedBody190_102

def NamedBody190_104 : StackLang.HolProg 64 :=
.seq NamedBody190_98 NamedBody190_103

def NamedBody190_105 : StackLang.HolProg 64 :=
.seq NamedBody190_97 NamedBody190_104

def NamedBody190_106 : StackLang.HolProg 64 :=
.seq NamedBody190_96 NamedBody190_105

def NamedBody190_107 : StackLang.HolProg 64 :=
.seq NamedBody190_95 NamedBody190_106

def NamedBody190_108 : StackLang.HolProg 64 :=
.seq NamedBody190_94 NamedBody190_107

def NamedBody190_109 : StackLang.HolProg 64 :=
.seq NamedBody190_93 NamedBody190_108

def NamedBody190_110 : StackLang.HolProg 64 :=
.seq NamedBody190_92 NamedBody190_109

def NamedBody190_111 : StackLang.HolProg 64 :=
.seq NamedBody190_91 NamedBody190_110

def NamedBody190_112 : StackLang.HolProg 64 :=
.seq NamedBody190_90 NamedBody190_111

def NamedBody190_113 : StackLang.HolProg 64 :=
.seq NamedBody190_89 NamedBody190_112

def NamedBody190_114 : StackLang.HolProg 64 :=
.seq NamedBody190_88 NamedBody190_113

def NamedBody190_115 : StackLang.HolProg 64 :=
.seq NamedBody190_87 NamedBody190_114

def NamedBody190_116 : StackLang.HolProg 64 :=
.seq NamedBody190_86 NamedBody190_115

def NamedBody190_117 : StackLang.HolProg 64 :=
.seq NamedBody190_85 NamedBody190_116

def NamedBody190_118 : StackLang.HolProg 64 :=
.seq NamedBody190_84 NamedBody190_117

def NamedBody190_119 : StackLang.HolProg 64 :=
.seq NamedBody190_83 NamedBody190_118

def NamedBody190_120 : StackLang.HolProg 64 :=
.seq NamedBody190_82 NamedBody190_119

def NamedBody190_121 : StackLang.HolProg 64 :=
.seq NamedBody190_81 NamedBody190_120

def NamedBody190_122 : StackLang.HolProg 64 :=
.seq NamedBody190_80 NamedBody190_121

def NamedBody190_123 : StackLang.HolProg 64 :=
.seq NamedBody190_79 NamedBody190_122

def NamedBody190_124 : StackLang.HolProg 64 :=
.seq NamedBody190_78 NamedBody190_123

def NamedBody190_125 : StackLang.HolProg 64 :=
.seq NamedBody190_77 NamedBody190_124

def NamedBody190_126 : StackLang.HolProg 64 :=
.seq NamedBody190_76 NamedBody190_125

def NamedBody190_127 : StackLang.HolProg 64 :=
.seq NamedBody190_75 NamedBody190_126

def NamedBody190_128 : StackLang.HolProg 64 :=
.seq NamedBody190_74 NamedBody190_127

def NamedBody190_129 : StackLang.HolProg 64 :=
.seq NamedBody190_11 NamedBody190_128

def NamedBody190_130 : StackLang.HolProg 64 :=
.seq NamedBody190_6 NamedBody190_129

def Named190 : Nat × StackLang.HolProg 64 := (190, NamedBody190_130)
theorem Named190_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed190 = Named190 := by
  kernel_rfl
#print axioms Named190_eq
end InitECandidate.Proofs.BackendStages
