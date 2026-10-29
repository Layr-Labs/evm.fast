import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed440
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody440_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody440_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody440_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody440_3 : StackLang.HolProg 64 :=
.seq NamedBody440_1 NamedBody440_2

def NamedBody440_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody440_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody440_3 NamedBody440_4

def NamedBody440_6 : StackLang.HolProg 64 :=
.seq NamedBody440_0 NamedBody440_5

def NamedBody440_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody440_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 8#64))

def NamedBody440_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody440_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 0#64))

def NamedBody440_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody440_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody440_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody440_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody440_15 : StackLang.HolProg 64 :=
.seq NamedBody440_13 NamedBody440_14

def NamedBody440_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody440_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody440_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody440_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody440_20 : StackLang.HolProg 64 :=
.seq NamedBody440_18 NamedBody440_19

def NamedBody440_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 12 1 1 11))

def NamedBody440_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody440_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody440_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def NamedBody440_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 29
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody440_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody440_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody440_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody440_29 : StackLang.HolProg 64 :=
.seq NamedBody440_27 NamedBody440_28

def NamedBody440_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 12 1 1 11))

def NamedBody440_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody440_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody440_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody440_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody440_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 7

def NamedBody440_36 : StackLang.HolProg 64 :=
.seq NamedBody440_34 NamedBody440_35

def NamedBody440_37 : StackLang.HolProg 64 :=
.seq NamedBody440_33 NamedBody440_36

def NamedBody440_38 : StackLang.HolProg 64 :=
.seq NamedBody440_32 NamedBody440_37

def NamedBody440_39 : StackLang.HolProg 64 :=
.seq NamedBody440_31 NamedBody440_38

def NamedBody440_40 : StackLang.HolProg 64 :=
.seq NamedBody440_30 NamedBody440_39

def NamedBody440_41 : StackLang.HolProg 64 :=
.seq NamedBody440_29 NamedBody440_40

def NamedBody440_42 : StackLang.HolProg 64 :=
.seq NamedBody440_26 NamedBody440_41

def NamedBody440_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody440_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 28 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody440_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 27 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody440_46 : StackLang.HolProg 64 :=
.seq NamedBody440_44 NamedBody440_45

def NamedBody440_47 : StackLang.HolProg 64 :=
.seq NamedBody440_43 NamedBody440_46

def NamedBody440_48 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 29) NamedBody440_42 NamedBody440_47

def NamedBody440_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody440_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody440_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody440_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody440_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 28
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 28)))

def NamedBody440_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 27
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 27)))

def NamedBody440_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 29
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody440_56 : StackLang.HolProg 64 :=
.seq NamedBody440_54 NamedBody440_55

def NamedBody440_57 : StackLang.HolProg 64 :=
.seq NamedBody440_53 NamedBody440_56

def NamedBody440_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def NamedBody440_59 : StackLang.HolProg 64 :=
.seq NamedBody440_57 NamedBody440_58

def NamedBody440_60 : StackLang.HolProg 64 :=
.seq NamedBody440_52 NamedBody440_59

def NamedBody440_61 : StackLang.HolProg 64 :=
.seq NamedBody440_51 NamedBody440_60

def NamedBody440_62 : StackLang.HolProg 64 :=
.seq NamedBody440_50 NamedBody440_61

def NamedBody440_63 : StackLang.HolProg 64 :=
.seq NamedBody440_49 NamedBody440_62

def NamedBody440_64 : StackLang.HolProg 64 :=
.seq NamedBody440_48 NamedBody440_63

def NamedBody440_65 : StackLang.HolProg 64 :=
.seq NamedBody440_25 NamedBody440_64

def NamedBody440_66 : StackLang.HolProg 64 :=
.seq NamedBody440_24 NamedBody440_65

def NamedBody440_67 : StackLang.HolProg 64 :=
.seq NamedBody440_23 NamedBody440_66

def NamedBody440_68 : StackLang.HolProg 64 :=
.seq NamedBody440_22 NamedBody440_67

def NamedBody440_69 : StackLang.HolProg 64 :=
.seq NamedBody440_21 NamedBody440_68

def NamedBody440_70 : StackLang.HolProg 64 :=
.seq NamedBody440_20 NamedBody440_69

def NamedBody440_71 : StackLang.HolProg 64 :=
.seq NamedBody440_17 NamedBody440_70

def NamedBody440_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody440_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody440_74 : StackLang.HolProg 64 :=
.seq NamedBody440_72 NamedBody440_73

def NamedBody440_75 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9) NamedBody440_71 NamedBody440_74

def NamedBody440_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody440_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody440_78 : StackLang.HolProg 64 :=
.seq NamedBody440_76 NamedBody440_77

def NamedBody440_79 : StackLang.HolProg 64 :=
.seq NamedBody440_75 NamedBody440_78

def NamedBody440_80 : StackLang.HolProg 64 :=
.seq NamedBody440_16 NamedBody440_79

def NamedBody440_81 : StackLang.HolProg 64 :=
.loop NamedBody440_80

def NamedBody440_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody440_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def NamedBody440_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody440_85 : StackLang.HolProg 64 :=
.seq NamedBody440_83 NamedBody440_84

def NamedBody440_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody440_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1331#64)

def NamedBody440_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody440_89 : StackLang.HolProg 64 :=
.seq NamedBody440_87 NamedBody440_88

def NamedBody440_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody440_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody440_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody440_93 : StackLang.HolProg 64 :=
.seq NamedBody440_91 NamedBody440_92

def NamedBody440_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody440_95 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody440_93 NamedBody440_94

def NamedBody440_96 : StackLang.HolProg 64 :=
.seq NamedBody440_90 NamedBody440_95

def NamedBody440_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody440_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody440_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 440 3

def NamedBody440_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody440_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody440_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody440_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody440_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody440_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody440_106 : StackLang.HolProg 64 :=
.seq NamedBody440_104 NamedBody440_105

def NamedBody440_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody440_108 : StackLang.HolProg 64 :=
.seq NamedBody440_106 NamedBody440_107

def NamedBody440_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody440_110 : StackLang.HolProg 64 :=
.seq NamedBody440_108 NamedBody440_109

def NamedBody440_111 : StackLang.HolProg 64 :=
.seq NamedBody440_103 NamedBody440_110

def NamedBody440_112 : StackLang.HolProg 64 :=
.seq NamedBody440_102 NamedBody440_111

def NamedBody440_113 : StackLang.HolProg 64 :=
.seq NamedBody440_101 NamedBody440_112

def NamedBody440_114 : StackLang.HolProg 64 :=
.seq NamedBody440_100 NamedBody440_113

def NamedBody440_115 : StackLang.HolProg 64 :=
.seq NamedBody440_99 NamedBody440_114

def NamedBody440_116 : StackLang.HolProg 64 :=
.seq NamedBody440_98 NamedBody440_115

def NamedBody440_117 : StackLang.HolProg 64 :=
.seq NamedBody440_97 NamedBody440_116

def NamedBody440_118 : StackLang.HolProg 64 :=
.seq NamedBody440_96 NamedBody440_117

def NamedBody440_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody440_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody440_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody440_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody440_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody440_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody440_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody440_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody440_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody440_128 : StackLang.HolProg 64 :=
.seq NamedBody440_126 NamedBody440_127

def NamedBody440_129 : StackLang.HolProg 64 :=
.seq NamedBody440_125 NamedBody440_128

def NamedBody440_130 : StackLang.HolProg 64 :=
.seq NamedBody440_124 NamedBody440_129

def NamedBody440_131 : StackLang.HolProg 64 :=
.seq NamedBody440_123 NamedBody440_130

def NamedBody440_132 : StackLang.HolProg 64 :=
.seq NamedBody440_122 NamedBody440_131

def NamedBody440_133 : StackLang.HolProg 64 :=
.seq NamedBody440_121 NamedBody440_132

def NamedBody440_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody440_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody440_136 : StackLang.HolProg 64 :=
.seq NamedBody440_134 NamedBody440_135

def NamedBody440_137 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody440_138 : StackLang.HolProg 64 :=
.seq NamedBody440_136 NamedBody440_137

def NamedBody440_139 : StackLang.HolProg 64 :=
.call (some (NamedBody440_133, 1, 440, 2)) (Sum.inl 437) (some (NamedBody440_138, 440, 3))

def NamedBody440_140 : StackLang.HolProg 64 :=
.seq NamedBody440_120 NamedBody440_139

def NamedBody440_141 : StackLang.HolProg 64 :=
.seq NamedBody440_119 NamedBody440_140

def NamedBody440_142 : StackLang.HolProg 64 :=
.seq NamedBody440_118 NamedBody440_141

def NamedBody440_143 : StackLang.HolProg 64 :=
.seq NamedBody440_89 NamedBody440_142

def NamedBody440_144 : StackLang.HolProg 64 :=
.seq NamedBody440_86 NamedBody440_143

def NamedBody440_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody440_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody440_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def NamedBody440_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody440_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody440_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 12

def NamedBody440_151 : StackLang.HolProg 64 :=
.seq NamedBody440_149 NamedBody440_150

def NamedBody440_152 : StackLang.HolProg 64 :=
.seq NamedBody440_148 NamedBody440_151

def NamedBody440_153 : StackLang.HolProg 64 :=
.seq NamedBody440_147 NamedBody440_152

def NamedBody440_154 : StackLang.HolProg 64 :=
.seq NamedBody440_146 NamedBody440_153

def NamedBody440_155 : StackLang.HolProg 64 :=
.seq NamedBody440_145 NamedBody440_154

def NamedBody440_156 : StackLang.HolProg 64 :=
.seq NamedBody440_144 NamedBody440_155

def NamedBody440_157 : StackLang.HolProg 64 :=
.seq NamedBody440_85 NamedBody440_156

def NamedBody440_158 : StackLang.HolProg 64 :=
.seq NamedBody440_82 NamedBody440_157

def NamedBody440_159 : StackLang.HolProg 64 :=
.seq NamedBody440_81 NamedBody440_158

def NamedBody440_160 : StackLang.HolProg 64 :=
.seq NamedBody440_15 NamedBody440_159

def NamedBody440_161 : StackLang.HolProg 64 :=
.seq NamedBody440_12 NamedBody440_160

def NamedBody440_162 : StackLang.HolProg 64 :=
.seq NamedBody440_11 NamedBody440_161

def NamedBody440_163 : StackLang.HolProg 64 :=
.seq NamedBody440_10 NamedBody440_162

def NamedBody440_164 : StackLang.HolProg 64 :=
.seq NamedBody440_9 NamedBody440_163

def NamedBody440_165 : StackLang.HolProg 64 :=
.seq NamedBody440_8 NamedBody440_164

def NamedBody440_166 : StackLang.HolProg 64 :=
.seq NamedBody440_7 NamedBody440_165

def NamedBody440_167 : StackLang.HolProg 64 :=
.seq NamedBody440_6 NamedBody440_166

def Named440 : Nat × StackLang.HolProg 64 := (440, NamedBody440_167)
theorem Named440_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed440 = Named440 := by
  kernel_rfl
#print axioms Named440_eq
end InitECandidate.Proofs.BackendStages
