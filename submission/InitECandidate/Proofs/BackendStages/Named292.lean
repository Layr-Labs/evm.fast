import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed292
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody292_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody292_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody292_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody292_3 : StackLang.HolProg 64 :=
.seq NamedBody292_1 NamedBody292_2

def NamedBody292_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody292_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody292_3 NamedBody292_4

def NamedBody292_6 : StackLang.HolProg 64 :=
.seq NamedBody292_0 NamedBody292_5

def NamedBody292_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody292_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody292_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody292_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody292_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody292_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody292_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody292_14 : StackLang.HolProg 64 :=
.seq NamedBody292_12 NamedBody292_13

def NamedBody292_15 : StackLang.HolProg 64 :=
.seq NamedBody292_11 NamedBody292_14

def NamedBody292_16 : StackLang.HolProg 64 :=
.seq NamedBody292_10 NamedBody292_15

def NamedBody292_17 : StackLang.HolProg 64 :=
.seq NamedBody292_9 NamedBody292_16

def NamedBody292_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody292_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 794#64)

def NamedBody292_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody292_21 : StackLang.HolProg 64 :=
.seq NamedBody292_19 NamedBody292_20

def NamedBody292_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody292_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody292_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody292_25 : StackLang.HolProg 64 :=
.seq NamedBody292_23 NamedBody292_24

def NamedBody292_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody292_27 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody292_25 NamedBody292_26

def NamedBody292_28 : StackLang.HolProg 64 :=
.seq NamedBody292_22 NamedBody292_27

def NamedBody292_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody292_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody292_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 292 3

def NamedBody292_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody292_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody292_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody292_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody292_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody292_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody292_38 : StackLang.HolProg 64 :=
.seq NamedBody292_36 NamedBody292_37

def NamedBody292_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody292_40 : StackLang.HolProg 64 :=
.seq NamedBody292_38 NamedBody292_39

def NamedBody292_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody292_42 : StackLang.HolProg 64 :=
.seq NamedBody292_40 NamedBody292_41

def NamedBody292_43 : StackLang.HolProg 64 :=
.seq NamedBody292_35 NamedBody292_42

def NamedBody292_44 : StackLang.HolProg 64 :=
.seq NamedBody292_34 NamedBody292_43

def NamedBody292_45 : StackLang.HolProg 64 :=
.seq NamedBody292_33 NamedBody292_44

def NamedBody292_46 : StackLang.HolProg 64 :=
.seq NamedBody292_32 NamedBody292_45

def NamedBody292_47 : StackLang.HolProg 64 :=
.seq NamedBody292_31 NamedBody292_46

def NamedBody292_48 : StackLang.HolProg 64 :=
.seq NamedBody292_30 NamedBody292_47

def NamedBody292_49 : StackLang.HolProg 64 :=
.seq NamedBody292_29 NamedBody292_48

def NamedBody292_50 : StackLang.HolProg 64 :=
.seq NamedBody292_28 NamedBody292_49

def NamedBody292_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody292_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody292_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody292_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody292_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody292_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody292_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody292_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody292_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody292_60 : StackLang.HolProg 64 :=
.seq NamedBody292_58 NamedBody292_59

def NamedBody292_61 : StackLang.HolProg 64 :=
.seq NamedBody292_57 NamedBody292_60

def NamedBody292_62 : StackLang.HolProg 64 :=
.seq NamedBody292_56 NamedBody292_61

def NamedBody292_63 : StackLang.HolProg 64 :=
.seq NamedBody292_55 NamedBody292_62

def NamedBody292_64 : StackLang.HolProg 64 :=
.seq NamedBody292_54 NamedBody292_63

def NamedBody292_65 : StackLang.HolProg 64 :=
.seq NamedBody292_53 NamedBody292_64

def NamedBody292_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody292_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody292_68 : StackLang.HolProg 64 :=
.seq NamedBody292_66 NamedBody292_67

def NamedBody292_69 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody292_70 : StackLang.HolProg 64 :=
.seq NamedBody292_68 NamedBody292_69

def NamedBody292_71 : StackLang.HolProg 64 :=
.call (some (NamedBody292_65, 1, 292, 2)) (Sum.inl 68) (some (NamedBody292_70, 292, 3))

def NamedBody292_72 : StackLang.HolProg 64 :=
.seq NamedBody292_52 NamedBody292_71

def NamedBody292_73 : StackLang.HolProg 64 :=
.seq NamedBody292_51 NamedBody292_72

def NamedBody292_74 : StackLang.HolProg 64 :=
.seq NamedBody292_50 NamedBody292_73

def NamedBody292_75 : StackLang.HolProg 64 :=
.seq NamedBody292_21 NamedBody292_74

def NamedBody292_76 : StackLang.HolProg 64 :=
.seq NamedBody292_18 NamedBody292_75

def NamedBody292_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody292_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody292_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody292_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody292_81 : StackLang.HolProg 64 :=
.seq NamedBody292_79 NamedBody292_80

def NamedBody292_82 : StackLang.HolProg 64 :=
.seq NamedBody292_78 NamedBody292_81

def NamedBody292_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody292_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 795#64)

def NamedBody292_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody292_86 : StackLang.HolProg 64 :=
.seq NamedBody292_84 NamedBody292_85

def NamedBody292_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody292_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody292_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody292_90 : StackLang.HolProg 64 :=
.seq NamedBody292_88 NamedBody292_89

def NamedBody292_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody292_92 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody292_90 NamedBody292_91

def NamedBody292_93 : StackLang.HolProg 64 :=
.seq NamedBody292_87 NamedBody292_92

def NamedBody292_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody292_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody292_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 292 5

def NamedBody292_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody292_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody292_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody292_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody292_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody292_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody292_103 : StackLang.HolProg 64 :=
.seq NamedBody292_101 NamedBody292_102

def NamedBody292_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody292_105 : StackLang.HolProg 64 :=
.seq NamedBody292_103 NamedBody292_104

def NamedBody292_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody292_107 : StackLang.HolProg 64 :=
.seq NamedBody292_105 NamedBody292_106

def NamedBody292_108 : StackLang.HolProg 64 :=
.seq NamedBody292_100 NamedBody292_107

def NamedBody292_109 : StackLang.HolProg 64 :=
.seq NamedBody292_99 NamedBody292_108

def NamedBody292_110 : StackLang.HolProg 64 :=
.seq NamedBody292_98 NamedBody292_109

def NamedBody292_111 : StackLang.HolProg 64 :=
.seq NamedBody292_97 NamedBody292_110

def NamedBody292_112 : StackLang.HolProg 64 :=
.seq NamedBody292_96 NamedBody292_111

def NamedBody292_113 : StackLang.HolProg 64 :=
.seq NamedBody292_95 NamedBody292_112

def NamedBody292_114 : StackLang.HolProg 64 :=
.seq NamedBody292_94 NamedBody292_113

def NamedBody292_115 : StackLang.HolProg 64 :=
.seq NamedBody292_93 NamedBody292_114

def NamedBody292_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody292_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody292_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody292_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody292_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody292_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody292_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody292_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody292_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody292_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody292_126 : StackLang.HolProg 64 :=
.seq NamedBody292_124 NamedBody292_125

def NamedBody292_127 : StackLang.HolProg 64 :=
.seq NamedBody292_123 NamedBody292_126

def NamedBody292_128 : StackLang.HolProg 64 :=
.seq NamedBody292_122 NamedBody292_127

def NamedBody292_129 : StackLang.HolProg 64 :=
.seq NamedBody292_121 NamedBody292_128

def NamedBody292_130 : StackLang.HolProg 64 :=
.seq NamedBody292_120 NamedBody292_129

def NamedBody292_131 : StackLang.HolProg 64 :=
.seq NamedBody292_119 NamedBody292_130

def NamedBody292_132 : StackLang.HolProg 64 :=
.seq NamedBody292_118 NamedBody292_131

def NamedBody292_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody292_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody292_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody292_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody292_137 : StackLang.HolProg 64 :=
.seq NamedBody292_135 NamedBody292_136

def NamedBody292_138 : StackLang.HolProg 64 :=
.seq NamedBody292_134 NamedBody292_137

def NamedBody292_139 : StackLang.HolProg 64 :=
.seq NamedBody292_133 NamedBody292_138

def NamedBody292_140 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody292_141 : StackLang.HolProg 64 :=
.seq NamedBody292_139 NamedBody292_140

def NamedBody292_142 : StackLang.HolProg 64 :=
.call (some (NamedBody292_132, 1, 292, 4)) (Sum.inl 77) (some (NamedBody292_141, 292, 5))

def NamedBody292_143 : StackLang.HolProg 64 :=
.seq NamedBody292_117 NamedBody292_142

def NamedBody292_144 : StackLang.HolProg 64 :=
.seq NamedBody292_116 NamedBody292_143

def NamedBody292_145 : StackLang.HolProg 64 :=
.seq NamedBody292_115 NamedBody292_144

def NamedBody292_146 : StackLang.HolProg 64 :=
.seq NamedBody292_86 NamedBody292_145

def NamedBody292_147 : StackLang.HolProg 64 :=
.seq NamedBody292_83 NamedBody292_146

def NamedBody292_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody292_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody292_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody292_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody292_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody292_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 796#64)

def NamedBody292_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody292_155 : StackLang.HolProg 64 :=
.seq NamedBody292_153 NamedBody292_154

def NamedBody292_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody292_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody292_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody292_159 : StackLang.HolProg 64 :=
.seq NamedBody292_157 NamedBody292_158

def NamedBody292_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody292_161 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody292_159 NamedBody292_160

def NamedBody292_162 : StackLang.HolProg 64 :=
.seq NamedBody292_156 NamedBody292_161

def NamedBody292_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody292_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody292_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 292 7

def NamedBody292_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody292_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody292_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody292_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody292_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody292_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody292_172 : StackLang.HolProg 64 :=
.seq NamedBody292_170 NamedBody292_171

def NamedBody292_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody292_174 : StackLang.HolProg 64 :=
.seq NamedBody292_172 NamedBody292_173

def NamedBody292_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody292_176 : StackLang.HolProg 64 :=
.seq NamedBody292_174 NamedBody292_175

def NamedBody292_177 : StackLang.HolProg 64 :=
.seq NamedBody292_169 NamedBody292_176

def NamedBody292_178 : StackLang.HolProg 64 :=
.seq NamedBody292_168 NamedBody292_177

def NamedBody292_179 : StackLang.HolProg 64 :=
.seq NamedBody292_167 NamedBody292_178

def NamedBody292_180 : StackLang.HolProg 64 :=
.seq NamedBody292_166 NamedBody292_179

def NamedBody292_181 : StackLang.HolProg 64 :=
.seq NamedBody292_165 NamedBody292_180

def NamedBody292_182 : StackLang.HolProg 64 :=
.seq NamedBody292_164 NamedBody292_181

def NamedBody292_183 : StackLang.HolProg 64 :=
.seq NamedBody292_163 NamedBody292_182

def NamedBody292_184 : StackLang.HolProg 64 :=
.seq NamedBody292_162 NamedBody292_183

def NamedBody292_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody292_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody292_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody292_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody292_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody292_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody292_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody292_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody292_193 : StackLang.HolProg 64 :=
.seq NamedBody292_191 NamedBody292_192

def NamedBody292_194 : StackLang.HolProg 64 :=
.seq NamedBody292_190 NamedBody292_193

def NamedBody292_195 : StackLang.HolProg 64 :=
.seq NamedBody292_189 NamedBody292_194

def NamedBody292_196 : StackLang.HolProg 64 :=
.seq NamedBody292_188 NamedBody292_195

def NamedBody292_197 : StackLang.HolProg 64 :=
.seq NamedBody292_187 NamedBody292_196

def NamedBody292_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody292_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody292_200 : StackLang.HolProg 64 :=
.seq NamedBody292_198 NamedBody292_199

def NamedBody292_201 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody292_202 : StackLang.HolProg 64 :=
.seq NamedBody292_200 NamedBody292_201

def NamedBody292_203 : StackLang.HolProg 64 :=
.call (some (NamedBody292_197, 1, 292, 6)) (Sum.inl 77) (some (NamedBody292_202, 292, 7))

def NamedBody292_204 : StackLang.HolProg 64 :=
.seq NamedBody292_186 NamedBody292_203

def NamedBody292_205 : StackLang.HolProg 64 :=
.seq NamedBody292_185 NamedBody292_204

def NamedBody292_206 : StackLang.HolProg 64 :=
.seq NamedBody292_184 NamedBody292_205

def NamedBody292_207 : StackLang.HolProg 64 :=
.seq NamedBody292_155 NamedBody292_206

def NamedBody292_208 : StackLang.HolProg 64 :=
.seq NamedBody292_152 NamedBody292_207

def NamedBody292_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody292_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody292_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody292_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody292_213 : StackLang.HolProg 64 :=
.seq NamedBody292_211 NamedBody292_212

def NamedBody292_214 : StackLang.HolProg 64 :=
.seq NamedBody292_210 NamedBody292_213

def NamedBody292_215 : StackLang.HolProg 64 :=
.seq NamedBody292_209 NamedBody292_214

def NamedBody292_216 : StackLang.HolProg 64 :=
.seq NamedBody292_208 NamedBody292_215

def NamedBody292_217 : StackLang.HolProg 64 :=
.seq NamedBody292_151 NamedBody292_216

def NamedBody292_218 : StackLang.HolProg 64 :=
.seq NamedBody292_150 NamedBody292_217

def NamedBody292_219 : StackLang.HolProg 64 :=
.seq NamedBody292_149 NamedBody292_218

def NamedBody292_220 : StackLang.HolProg 64 :=
.seq NamedBody292_148 NamedBody292_219

def NamedBody292_221 : StackLang.HolProg 64 :=
.seq NamedBody292_147 NamedBody292_220

def NamedBody292_222 : StackLang.HolProg 64 :=
.seq NamedBody292_82 NamedBody292_221

def NamedBody292_223 : StackLang.HolProg 64 :=
.seq NamedBody292_77 NamedBody292_222

def NamedBody292_224 : StackLang.HolProg 64 :=
.seq NamedBody292_76 NamedBody292_223

def NamedBody292_225 : StackLang.HolProg 64 :=
.seq NamedBody292_17 NamedBody292_224

def NamedBody292_226 : StackLang.HolProg 64 :=
.seq NamedBody292_8 NamedBody292_225

def NamedBody292_227 : StackLang.HolProg 64 :=
.seq NamedBody292_7 NamedBody292_226

def NamedBody292_228 : StackLang.HolProg 64 :=
.seq NamedBody292_6 NamedBody292_227

def Named292 : Nat × StackLang.HolProg 64 := (292, NamedBody292_228)
theorem Named292_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed292 = Named292 := by
  kernel_rfl
#print axioms Named292_eq
end InitECandidate.Proofs.BackendStages
