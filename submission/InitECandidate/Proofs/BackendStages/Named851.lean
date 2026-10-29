import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed851
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody851_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody851_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody851_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody851_3 : StackLang.HolProg 64 :=
.seq NamedBody851_1 NamedBody851_2

def NamedBody851_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody851_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody851_3 NamedBody851_4

def NamedBody851_6 : StackLang.HolProg 64 :=
.seq NamedBody851_0 NamedBody851_5

def NamedBody851_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody851_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody851_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody851_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody851_11 : StackLang.HolProg 64 :=
.seq NamedBody851_9 NamedBody851_10

def NamedBody851_12 : StackLang.HolProg 64 :=
.seq NamedBody851_8 NamedBody851_11

def NamedBody851_13 : StackLang.HolProg 64 :=
.seq NamedBody851_7 NamedBody851_12

def NamedBody851_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody851_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4307#64)

def NamedBody851_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody851_17 : StackLang.HolProg 64 :=
.seq NamedBody851_15 NamedBody851_16

def NamedBody851_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody851_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody851_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody851_21 : StackLang.HolProg 64 :=
.seq NamedBody851_19 NamedBody851_20

def NamedBody851_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody851_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody851_21 NamedBody851_22

def NamedBody851_24 : StackLang.HolProg 64 :=
.seq NamedBody851_18 NamedBody851_23

def NamedBody851_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody851_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody851_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 851 3

def NamedBody851_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody851_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody851_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody851_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody851_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody851_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody851_34 : StackLang.HolProg 64 :=
.seq NamedBody851_32 NamedBody851_33

def NamedBody851_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody851_36 : StackLang.HolProg 64 :=
.seq NamedBody851_34 NamedBody851_35

def NamedBody851_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody851_38 : StackLang.HolProg 64 :=
.seq NamedBody851_36 NamedBody851_37

def NamedBody851_39 : StackLang.HolProg 64 :=
.seq NamedBody851_31 NamedBody851_38

def NamedBody851_40 : StackLang.HolProg 64 :=
.seq NamedBody851_30 NamedBody851_39

def NamedBody851_41 : StackLang.HolProg 64 :=
.seq NamedBody851_29 NamedBody851_40

def NamedBody851_42 : StackLang.HolProg 64 :=
.seq NamedBody851_28 NamedBody851_41

def NamedBody851_43 : StackLang.HolProg 64 :=
.seq NamedBody851_27 NamedBody851_42

def NamedBody851_44 : StackLang.HolProg 64 :=
.seq NamedBody851_26 NamedBody851_43

def NamedBody851_45 : StackLang.HolProg 64 :=
.seq NamedBody851_25 NamedBody851_44

def NamedBody851_46 : StackLang.HolProg 64 :=
.seq NamedBody851_24 NamedBody851_45

def NamedBody851_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody851_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody851_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody851_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody851_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody851_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody851_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody851_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody851_55 : StackLang.HolProg 64 :=
.seq NamedBody851_53 NamedBody851_54

def NamedBody851_56 : StackLang.HolProg 64 :=
.seq NamedBody851_52 NamedBody851_55

def NamedBody851_57 : StackLang.HolProg 64 :=
.seq NamedBody851_51 NamedBody851_56

def NamedBody851_58 : StackLang.HolProg 64 :=
.seq NamedBody851_50 NamedBody851_57

def NamedBody851_59 : StackLang.HolProg 64 :=
.seq NamedBody851_49 NamedBody851_58

def NamedBody851_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody851_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody851_62 : StackLang.HolProg 64 :=
.seq NamedBody851_60 NamedBody851_61

def NamedBody851_63 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody851_64 : StackLang.HolProg 64 :=
.seq NamedBody851_62 NamedBody851_63

def NamedBody851_65 : StackLang.HolProg 64 :=
.call (some (NamedBody851_59, 1, 851, 2)) (Sum.inl 88) (some (NamedBody851_64, 851, 3))

def NamedBody851_66 : StackLang.HolProg 64 :=
.seq NamedBody851_48 NamedBody851_65

def NamedBody851_67 : StackLang.HolProg 64 :=
.seq NamedBody851_47 NamedBody851_66

def NamedBody851_68 : StackLang.HolProg 64 :=
.seq NamedBody851_46 NamedBody851_67

def NamedBody851_69 : StackLang.HolProg 64 :=
.seq NamedBody851_17 NamedBody851_68

def NamedBody851_70 : StackLang.HolProg 64 :=
.seq NamedBody851_14 NamedBody851_69

def NamedBody851_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody851_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody851_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def NamedBody851_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody851_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody851_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4308#64)

def NamedBody851_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody851_78 : StackLang.HolProg 64 :=
.seq NamedBody851_76 NamedBody851_77

def NamedBody851_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody851_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody851_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody851_82 : StackLang.HolProg 64 :=
.seq NamedBody851_80 NamedBody851_81

def NamedBody851_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody851_84 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody851_82 NamedBody851_83

def NamedBody851_85 : StackLang.HolProg 64 :=
.seq NamedBody851_79 NamedBody851_84

def NamedBody851_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody851_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody851_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 851 5

def NamedBody851_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody851_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody851_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody851_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody851_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody851_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody851_95 : StackLang.HolProg 64 :=
.seq NamedBody851_93 NamedBody851_94

def NamedBody851_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody851_97 : StackLang.HolProg 64 :=
.seq NamedBody851_95 NamedBody851_96

def NamedBody851_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody851_99 : StackLang.HolProg 64 :=
.seq NamedBody851_97 NamedBody851_98

def NamedBody851_100 : StackLang.HolProg 64 :=
.seq NamedBody851_92 NamedBody851_99

def NamedBody851_101 : StackLang.HolProg 64 :=
.seq NamedBody851_91 NamedBody851_100

def NamedBody851_102 : StackLang.HolProg 64 :=
.seq NamedBody851_90 NamedBody851_101

def NamedBody851_103 : StackLang.HolProg 64 :=
.seq NamedBody851_89 NamedBody851_102

def NamedBody851_104 : StackLang.HolProg 64 :=
.seq NamedBody851_88 NamedBody851_103

def NamedBody851_105 : StackLang.HolProg 64 :=
.seq NamedBody851_87 NamedBody851_104

def NamedBody851_106 : StackLang.HolProg 64 :=
.seq NamedBody851_86 NamedBody851_105

def NamedBody851_107 : StackLang.HolProg 64 :=
.seq NamedBody851_85 NamedBody851_106

def NamedBody851_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody851_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody851_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody851_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody851_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody851_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody851_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody851_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody851_116 : StackLang.HolProg 64 :=
.seq NamedBody851_114 NamedBody851_115

def NamedBody851_117 : StackLang.HolProg 64 :=
.seq NamedBody851_113 NamedBody851_116

def NamedBody851_118 : StackLang.HolProg 64 :=
.seq NamedBody851_112 NamedBody851_117

def NamedBody851_119 : StackLang.HolProg 64 :=
.seq NamedBody851_111 NamedBody851_118

def NamedBody851_120 : StackLang.HolProg 64 :=
.seq NamedBody851_110 NamedBody851_119

def NamedBody851_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody851_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody851_123 : StackLang.HolProg 64 :=
.seq NamedBody851_121 NamedBody851_122

def NamedBody851_124 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody851_125 : StackLang.HolProg 64 :=
.seq NamedBody851_123 NamedBody851_124

def NamedBody851_126 : StackLang.HolProg 64 :=
.call (some (NamedBody851_120, 1, 851, 4)) (Sum.inl 89) (some (NamedBody851_125, 851, 5))

def NamedBody851_127 : StackLang.HolProg 64 :=
.seq NamedBody851_109 NamedBody851_126

def NamedBody851_128 : StackLang.HolProg 64 :=
.seq NamedBody851_108 NamedBody851_127

def NamedBody851_129 : StackLang.HolProg 64 :=
.seq NamedBody851_107 NamedBody851_128

def NamedBody851_130 : StackLang.HolProg 64 :=
.seq NamedBody851_78 NamedBody851_129

def NamedBody851_131 : StackLang.HolProg 64 :=
.seq NamedBody851_75 NamedBody851_130

def NamedBody851_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody851_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody851_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 12#64)))

def NamedBody851_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody851_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody851_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4309#64)

def NamedBody851_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody851_139 : StackLang.HolProg 64 :=
.seq NamedBody851_137 NamedBody851_138

def NamedBody851_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody851_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody851_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody851_143 : StackLang.HolProg 64 :=
.seq NamedBody851_141 NamedBody851_142

def NamedBody851_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody851_145 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody851_143 NamedBody851_144

def NamedBody851_146 : StackLang.HolProg 64 :=
.seq NamedBody851_140 NamedBody851_145

def NamedBody851_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody851_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody851_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 851 7

def NamedBody851_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody851_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody851_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody851_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody851_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody851_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody851_156 : StackLang.HolProg 64 :=
.seq NamedBody851_154 NamedBody851_155

def NamedBody851_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody851_158 : StackLang.HolProg 64 :=
.seq NamedBody851_156 NamedBody851_157

def NamedBody851_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody851_160 : StackLang.HolProg 64 :=
.seq NamedBody851_158 NamedBody851_159

def NamedBody851_161 : StackLang.HolProg 64 :=
.seq NamedBody851_153 NamedBody851_160

def NamedBody851_162 : StackLang.HolProg 64 :=
.seq NamedBody851_152 NamedBody851_161

def NamedBody851_163 : StackLang.HolProg 64 :=
.seq NamedBody851_151 NamedBody851_162

def NamedBody851_164 : StackLang.HolProg 64 :=
.seq NamedBody851_150 NamedBody851_163

def NamedBody851_165 : StackLang.HolProg 64 :=
.seq NamedBody851_149 NamedBody851_164

def NamedBody851_166 : StackLang.HolProg 64 :=
.seq NamedBody851_148 NamedBody851_165

def NamedBody851_167 : StackLang.HolProg 64 :=
.seq NamedBody851_147 NamedBody851_166

def NamedBody851_168 : StackLang.HolProg 64 :=
.seq NamedBody851_146 NamedBody851_167

def NamedBody851_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody851_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody851_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody851_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody851_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody851_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody851_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody851_176 : StackLang.HolProg 64 :=
.seq NamedBody851_174 NamedBody851_175

def NamedBody851_177 : StackLang.HolProg 64 :=
.seq NamedBody851_173 NamedBody851_176

def NamedBody851_178 : StackLang.HolProg 64 :=
.seq NamedBody851_172 NamedBody851_177

def NamedBody851_179 : StackLang.HolProg 64 :=
.seq NamedBody851_171 NamedBody851_178

def NamedBody851_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody851_181 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody851_182 : StackLang.HolProg 64 :=
.seq NamedBody851_180 NamedBody851_181

def NamedBody851_183 : StackLang.HolProg 64 :=
.call (some (NamedBody851_179, 1, 851, 6)) (Sum.inl 89) (some (NamedBody851_182, 851, 7))

def NamedBody851_184 : StackLang.HolProg 64 :=
.seq NamedBody851_170 NamedBody851_183

def NamedBody851_185 : StackLang.HolProg 64 :=
.seq NamedBody851_169 NamedBody851_184

def NamedBody851_186 : StackLang.HolProg 64 :=
.seq NamedBody851_168 NamedBody851_185

def NamedBody851_187 : StackLang.HolProg 64 :=
.seq NamedBody851_139 NamedBody851_186

def NamedBody851_188 : StackLang.HolProg 64 :=
.seq NamedBody851_136 NamedBody851_187

def NamedBody851_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody851_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody851_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody851_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody851_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody851_194 : StackLang.HolProg 64 :=
.seq NamedBody851_192 NamedBody851_193

def NamedBody851_195 : StackLang.HolProg 64 :=
.seq NamedBody851_191 NamedBody851_194

def NamedBody851_196 : StackLang.HolProg 64 :=
.seq NamedBody851_190 NamedBody851_195

def NamedBody851_197 : StackLang.HolProg 64 :=
.seq NamedBody851_189 NamedBody851_196

def NamedBody851_198 : StackLang.HolProg 64 :=
.seq NamedBody851_188 NamedBody851_197

def NamedBody851_199 : StackLang.HolProg 64 :=
.seq NamedBody851_135 NamedBody851_198

def NamedBody851_200 : StackLang.HolProg 64 :=
.seq NamedBody851_134 NamedBody851_199

def NamedBody851_201 : StackLang.HolProg 64 :=
.seq NamedBody851_133 NamedBody851_200

def NamedBody851_202 : StackLang.HolProg 64 :=
.seq NamedBody851_132 NamedBody851_201

def NamedBody851_203 : StackLang.HolProg 64 :=
.seq NamedBody851_131 NamedBody851_202

def NamedBody851_204 : StackLang.HolProg 64 :=
.seq NamedBody851_74 NamedBody851_203

def NamedBody851_205 : StackLang.HolProg 64 :=
.seq NamedBody851_73 NamedBody851_204

def NamedBody851_206 : StackLang.HolProg 64 :=
.seq NamedBody851_72 NamedBody851_205

def NamedBody851_207 : StackLang.HolProg 64 :=
.seq NamedBody851_71 NamedBody851_206

def NamedBody851_208 : StackLang.HolProg 64 :=
.seq NamedBody851_70 NamedBody851_207

def NamedBody851_209 : StackLang.HolProg 64 :=
.seq NamedBody851_13 NamedBody851_208

def NamedBody851_210 : StackLang.HolProg 64 :=
.seq NamedBody851_6 NamedBody851_209

def Named851 : Nat × StackLang.HolProg 64 := (851, NamedBody851_210)
theorem Named851_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed851 = Named851 := by
  kernel_rfl
#print axioms Named851_eq
end InitECandidate.Proofs.BackendStages
