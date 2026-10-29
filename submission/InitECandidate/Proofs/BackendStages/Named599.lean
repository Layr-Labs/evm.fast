import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed599
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody599_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody599_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody599_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody599_3 : StackLang.HolProg 64 :=
.seq NamedBody599_1 NamedBody599_2

def NamedBody599_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody599_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody599_3 NamedBody599_4

def NamedBody599_6 : StackLang.HolProg 64 :=
.seq NamedBody599_0 NamedBody599_5

def NamedBody599_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody599_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody599_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody599_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody599_11 : StackLang.HolProg 64 :=
.seq NamedBody599_9 NamedBody599_10

def NamedBody599_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody599_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2273#64)

def NamedBody599_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody599_15 : StackLang.HolProg 64 :=
.seq NamedBody599_13 NamedBody599_14

def NamedBody599_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody599_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody599_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody599_19 : StackLang.HolProg 64 :=
.seq NamedBody599_17 NamedBody599_18

def NamedBody599_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody599_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody599_19 NamedBody599_20

def NamedBody599_22 : StackLang.HolProg 64 :=
.seq NamedBody599_16 NamedBody599_21

def NamedBody599_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody599_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody599_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 599 5

def NamedBody599_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody599_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody599_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody599_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody599_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody599_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody599_32 : StackLang.HolProg 64 :=
.seq NamedBody599_30 NamedBody599_31

def NamedBody599_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody599_34 : StackLang.HolProg 64 :=
.seq NamedBody599_32 NamedBody599_33

def NamedBody599_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody599_36 : StackLang.HolProg 64 :=
.seq NamedBody599_34 NamedBody599_35

def NamedBody599_37 : StackLang.HolProg 64 :=
.seq NamedBody599_29 NamedBody599_36

def NamedBody599_38 : StackLang.HolProg 64 :=
.seq NamedBody599_28 NamedBody599_37

def NamedBody599_39 : StackLang.HolProg 64 :=
.seq NamedBody599_27 NamedBody599_38

def NamedBody599_40 : StackLang.HolProg 64 :=
.seq NamedBody599_26 NamedBody599_39

def NamedBody599_41 : StackLang.HolProg 64 :=
.seq NamedBody599_25 NamedBody599_40

def NamedBody599_42 : StackLang.HolProg 64 :=
.seq NamedBody599_24 NamedBody599_41

def NamedBody599_43 : StackLang.HolProg 64 :=
.seq NamedBody599_23 NamedBody599_42

def NamedBody599_44 : StackLang.HolProg 64 :=
.seq NamedBody599_22 NamedBody599_43

def NamedBody599_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody599_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody599_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody599_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody599_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody599_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody599_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody599_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody599_53 : StackLang.HolProg 64 :=
.seq NamedBody599_51 NamedBody599_52

def NamedBody599_54 : StackLang.HolProg 64 :=
.seq NamedBody599_50 NamedBody599_53

def NamedBody599_55 : StackLang.HolProg 64 :=
.seq NamedBody599_49 NamedBody599_54

def NamedBody599_56 : StackLang.HolProg 64 :=
.seq NamedBody599_48 NamedBody599_55

def NamedBody599_57 : StackLang.HolProg 64 :=
.seq NamedBody599_47 NamedBody599_56

def NamedBody599_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody599_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody599_60 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody599_61 : StackLang.HolProg 64 :=
.seq NamedBody599_59 NamedBody599_60

def NamedBody599_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody599_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody599_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody599_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody599_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2274#64)

def NamedBody599_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody599_68 : StackLang.HolProg 64 :=
.seq NamedBody599_66 NamedBody599_67

def NamedBody599_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody599_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody599_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody599_72 : StackLang.HolProg 64 :=
.seq NamedBody599_70 NamedBody599_71

def NamedBody599_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody599_74 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody599_72 NamedBody599_73

def NamedBody599_75 : StackLang.HolProg 64 :=
.seq NamedBody599_69 NamedBody599_74

def NamedBody599_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody599_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody599_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 599 4

def NamedBody599_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody599_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody599_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody599_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody599_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody599_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody599_85 : StackLang.HolProg 64 :=
.seq NamedBody599_83 NamedBody599_84

def NamedBody599_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody599_87 : StackLang.HolProg 64 :=
.seq NamedBody599_85 NamedBody599_86

def NamedBody599_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody599_89 : StackLang.HolProg 64 :=
.seq NamedBody599_87 NamedBody599_88

def NamedBody599_90 : StackLang.HolProg 64 :=
.seq NamedBody599_82 NamedBody599_89

def NamedBody599_91 : StackLang.HolProg 64 :=
.seq NamedBody599_81 NamedBody599_90

def NamedBody599_92 : StackLang.HolProg 64 :=
.seq NamedBody599_80 NamedBody599_91

def NamedBody599_93 : StackLang.HolProg 64 :=
.seq NamedBody599_79 NamedBody599_92

def NamedBody599_94 : StackLang.HolProg 64 :=
.seq NamedBody599_78 NamedBody599_93

def NamedBody599_95 : StackLang.HolProg 64 :=
.seq NamedBody599_77 NamedBody599_94

def NamedBody599_96 : StackLang.HolProg 64 :=
.seq NamedBody599_76 NamedBody599_95

def NamedBody599_97 : StackLang.HolProg 64 :=
.seq NamedBody599_75 NamedBody599_96

def NamedBody599_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody599_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody599_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody599_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody599_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody599_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody599_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody599_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody599_106 : StackLang.HolProg 64 :=
.seq NamedBody599_104 NamedBody599_105

def NamedBody599_107 : StackLang.HolProg 64 :=
.seq NamedBody599_103 NamedBody599_106

def NamedBody599_108 : StackLang.HolProg 64 :=
.seq NamedBody599_102 NamedBody599_107

def NamedBody599_109 : StackLang.HolProg 64 :=
.seq NamedBody599_101 NamedBody599_108

def NamedBody599_110 : StackLang.HolProg 64 :=
.seq NamedBody599_100 NamedBody599_109

def NamedBody599_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody599_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody599_113 : StackLang.HolProg 64 :=
.seq NamedBody599_111 NamedBody599_112

def NamedBody599_114 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody599_115 : StackLang.HolProg 64 :=
.seq NamedBody599_113 NamedBody599_114

def NamedBody599_116 : StackLang.HolProg 64 :=
.call (some (NamedBody599_110, 1, 599, 3)) (Sum.inl 597) (some (NamedBody599_115, 599, 4))

def NamedBody599_117 : StackLang.HolProg 64 :=
.seq NamedBody599_99 NamedBody599_116

def NamedBody599_118 : StackLang.HolProg 64 :=
.seq NamedBody599_98 NamedBody599_117

def NamedBody599_119 : StackLang.HolProg 64 :=
.seq NamedBody599_97 NamedBody599_118

def NamedBody599_120 : StackLang.HolProg 64 :=
.seq NamedBody599_68 NamedBody599_119

def NamedBody599_121 : StackLang.HolProg 64 :=
.seq NamedBody599_65 NamedBody599_120

def NamedBody599_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody599_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody599_124 : StackLang.HolProg 64 :=
.seq NamedBody599_122 NamedBody599_123

def NamedBody599_125 : StackLang.HolProg 64 :=
.seq NamedBody599_121 NamedBody599_124

def NamedBody599_126 : StackLang.HolProg 64 :=
.seq NamedBody599_64 NamedBody599_125

def NamedBody599_127 : StackLang.HolProg 64 :=
.seq NamedBody599_63 NamedBody599_126

def NamedBody599_128 : StackLang.HolProg 64 :=
.seq NamedBody599_62 NamedBody599_127

def NamedBody599_129 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64) NamedBody599_61 NamedBody599_128

def NamedBody599_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody599_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody599_132 : StackLang.HolProg 64 :=
.seq NamedBody599_130 NamedBody599_131

def NamedBody599_133 : StackLang.HolProg 64 :=
.seq NamedBody599_129 NamedBody599_132

def NamedBody599_134 : StackLang.HolProg 64 :=
.seq NamedBody599_58 NamedBody599_133

def NamedBody599_135 : StackLang.HolProg 64 :=
.call (some (NamedBody599_57, 1, 599, 2)) (Sum.inl 598) (some (NamedBody599_134, 599, 5))

def NamedBody599_136 : StackLang.HolProg 64 :=
.seq NamedBody599_46 NamedBody599_135

def NamedBody599_137 : StackLang.HolProg 64 :=
.seq NamedBody599_45 NamedBody599_136

def NamedBody599_138 : StackLang.HolProg 64 :=
.seq NamedBody599_44 NamedBody599_137

def NamedBody599_139 : StackLang.HolProg 64 :=
.seq NamedBody599_15 NamedBody599_138

def NamedBody599_140 : StackLang.HolProg 64 :=
.seq NamedBody599_12 NamedBody599_139

def NamedBody599_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody599_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody599_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody599_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody599_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody599_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody599_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody599_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551328#64))

def NamedBody599_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody599_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 1#64)

def NamedBody599_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody599_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody599_153 : StackLang.HolProg 64 :=
.seq NamedBody599_151 NamedBody599_152

def NamedBody599_154 : StackLang.HolProg 64 :=
.seq NamedBody599_150 NamedBody599_153

def NamedBody599_155 : StackLang.HolProg 64 :=
.seq NamedBody599_149 NamedBody599_154

def NamedBody599_156 : StackLang.HolProg 64 :=
.seq NamedBody599_148 NamedBody599_155

def NamedBody599_157 : StackLang.HolProg 64 :=
.seq NamedBody599_147 NamedBody599_156

def NamedBody599_158 : StackLang.HolProg 64 :=
.seq NamedBody599_146 NamedBody599_157

def NamedBody599_159 : StackLang.HolProg 64 :=
.seq NamedBody599_145 NamedBody599_158

def NamedBody599_160 : StackLang.HolProg 64 :=
.seq NamedBody599_144 NamedBody599_159

def NamedBody599_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody599_162 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody599_160 NamedBody599_161

def NamedBody599_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody599_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody599_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody599_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody599_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody599_168 : StackLang.HolProg 64 :=
.seq NamedBody599_166 NamedBody599_167

def NamedBody599_169 : StackLang.HolProg 64 :=
.seq NamedBody599_165 NamedBody599_168

def NamedBody599_170 : StackLang.HolProg 64 :=
.seq NamedBody599_164 NamedBody599_169

def NamedBody599_171 : StackLang.HolProg 64 :=
.seq NamedBody599_163 NamedBody599_170

def NamedBody599_172 : StackLang.HolProg 64 :=
.seq NamedBody599_162 NamedBody599_171

def NamedBody599_173 : StackLang.HolProg 64 :=
.seq NamedBody599_143 NamedBody599_172

def NamedBody599_174 : StackLang.HolProg 64 :=
.seq NamedBody599_142 NamedBody599_173

def NamedBody599_175 : StackLang.HolProg 64 :=
.seq NamedBody599_141 NamedBody599_174

def NamedBody599_176 : StackLang.HolProg 64 :=
.seq NamedBody599_140 NamedBody599_175

def NamedBody599_177 : StackLang.HolProg 64 :=
.seq NamedBody599_11 NamedBody599_176

def NamedBody599_178 : StackLang.HolProg 64 :=
.seq NamedBody599_8 NamedBody599_177

def NamedBody599_179 : StackLang.HolProg 64 :=
.seq NamedBody599_7 NamedBody599_178

def NamedBody599_180 : StackLang.HolProg 64 :=
.seq NamedBody599_6 NamedBody599_179

def Named599 : Nat × StackLang.HolProg 64 := (599, NamedBody599_180)
theorem Named599_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed599 = Named599 := by
  kernel_rfl
#print axioms Named599_eq
end InitECandidate.Proofs.BackendStages
