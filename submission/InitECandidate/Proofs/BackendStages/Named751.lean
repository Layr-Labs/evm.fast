import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed751
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody751_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody751_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody751_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody751_3 : StackLang.HolProg 64 :=
.seq NamedBody751_1 NamedBody751_2

def NamedBody751_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody751_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody751_3 NamedBody751_4

def NamedBody751_6 : StackLang.HolProg 64 :=
.seq NamedBody751_0 NamedBody751_5

def NamedBody751_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody751_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody751_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody751_10 : StackLang.HolProg 64 :=
.seq NamedBody751_8 NamedBody751_9

def NamedBody751_11 : StackLang.HolProg 64 :=
.seq NamedBody751_7 NamedBody751_10

def NamedBody751_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody751_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3317#64)

def NamedBody751_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody751_15 : StackLang.HolProg 64 :=
.seq NamedBody751_13 NamedBody751_14

def NamedBody751_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody751_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody751_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody751_19 : StackLang.HolProg 64 :=
.seq NamedBody751_17 NamedBody751_18

def NamedBody751_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody751_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody751_19 NamedBody751_20

def NamedBody751_22 : StackLang.HolProg 64 :=
.seq NamedBody751_16 NamedBody751_21

def NamedBody751_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody751_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody751_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 751 3

def NamedBody751_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody751_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody751_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody751_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody751_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody751_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody751_32 : StackLang.HolProg 64 :=
.seq NamedBody751_30 NamedBody751_31

def NamedBody751_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody751_34 : StackLang.HolProg 64 :=
.seq NamedBody751_32 NamedBody751_33

def NamedBody751_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody751_36 : StackLang.HolProg 64 :=
.seq NamedBody751_34 NamedBody751_35

def NamedBody751_37 : StackLang.HolProg 64 :=
.seq NamedBody751_29 NamedBody751_36

def NamedBody751_38 : StackLang.HolProg 64 :=
.seq NamedBody751_28 NamedBody751_37

def NamedBody751_39 : StackLang.HolProg 64 :=
.seq NamedBody751_27 NamedBody751_38

def NamedBody751_40 : StackLang.HolProg 64 :=
.seq NamedBody751_26 NamedBody751_39

def NamedBody751_41 : StackLang.HolProg 64 :=
.seq NamedBody751_25 NamedBody751_40

def NamedBody751_42 : StackLang.HolProg 64 :=
.seq NamedBody751_24 NamedBody751_41

def NamedBody751_43 : StackLang.HolProg 64 :=
.seq NamedBody751_23 NamedBody751_42

def NamedBody751_44 : StackLang.HolProg 64 :=
.seq NamedBody751_22 NamedBody751_43

def NamedBody751_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody751_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody751_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody751_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody751_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody751_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody751_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody751_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody751_53 : StackLang.HolProg 64 :=
.seq NamedBody751_51 NamedBody751_52

def NamedBody751_54 : StackLang.HolProg 64 :=
.seq NamedBody751_50 NamedBody751_53

def NamedBody751_55 : StackLang.HolProg 64 :=
.seq NamedBody751_49 NamedBody751_54

def NamedBody751_56 : StackLang.HolProg 64 :=
.seq NamedBody751_48 NamedBody751_55

def NamedBody751_57 : StackLang.HolProg 64 :=
.seq NamedBody751_47 NamedBody751_56

def NamedBody751_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody751_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody751_60 : StackLang.HolProg 64 :=
.seq NamedBody751_58 NamedBody751_59

def NamedBody751_61 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody751_62 : StackLang.HolProg 64 :=
.seq NamedBody751_60 NamedBody751_61

def NamedBody751_63 : StackLang.HolProg 64 :=
.call (some (NamedBody751_57, 1, 751, 2)) (Sum.inl 736) (some (NamedBody751_62, 751, 3))

def NamedBody751_64 : StackLang.HolProg 64 :=
.seq NamedBody751_46 NamedBody751_63

def NamedBody751_65 : StackLang.HolProg 64 :=
.seq NamedBody751_45 NamedBody751_64

def NamedBody751_66 : StackLang.HolProg 64 :=
.seq NamedBody751_44 NamedBody751_65

def NamedBody751_67 : StackLang.HolProg 64 :=
.seq NamedBody751_15 NamedBody751_66

def NamedBody751_68 : StackLang.HolProg 64 :=
.seq NamedBody751_12 NamedBody751_67

def NamedBody751_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody751_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody751_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def NamedBody751_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody751_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def NamedBody751_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody751_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody751_76 : StackLang.HolProg 64 :=
.seq NamedBody751_74 NamedBody751_75

def NamedBody751_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody751_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3318#64)

def NamedBody751_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody751_80 : StackLang.HolProg 64 :=
.seq NamedBody751_78 NamedBody751_79

def NamedBody751_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody751_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody751_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody751_84 : StackLang.HolProg 64 :=
.seq NamedBody751_82 NamedBody751_83

def NamedBody751_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody751_86 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody751_84 NamedBody751_85

def NamedBody751_87 : StackLang.HolProg 64 :=
.seq NamedBody751_81 NamedBody751_86

def NamedBody751_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody751_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody751_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 751 5

def NamedBody751_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody751_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody751_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody751_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody751_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody751_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody751_97 : StackLang.HolProg 64 :=
.seq NamedBody751_95 NamedBody751_96

def NamedBody751_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody751_99 : StackLang.HolProg 64 :=
.seq NamedBody751_97 NamedBody751_98

def NamedBody751_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody751_101 : StackLang.HolProg 64 :=
.seq NamedBody751_99 NamedBody751_100

def NamedBody751_102 : StackLang.HolProg 64 :=
.seq NamedBody751_94 NamedBody751_101

def NamedBody751_103 : StackLang.HolProg 64 :=
.seq NamedBody751_93 NamedBody751_102

def NamedBody751_104 : StackLang.HolProg 64 :=
.seq NamedBody751_92 NamedBody751_103

def NamedBody751_105 : StackLang.HolProg 64 :=
.seq NamedBody751_91 NamedBody751_104

def NamedBody751_106 : StackLang.HolProg 64 :=
.seq NamedBody751_90 NamedBody751_105

def NamedBody751_107 : StackLang.HolProg 64 :=
.seq NamedBody751_89 NamedBody751_106

def NamedBody751_108 : StackLang.HolProg 64 :=
.seq NamedBody751_88 NamedBody751_107

def NamedBody751_109 : StackLang.HolProg 64 :=
.seq NamedBody751_87 NamedBody751_108

def NamedBody751_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody751_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody751_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody751_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody751_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody751_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody751_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody751_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody751_118 : StackLang.HolProg 64 :=
.seq NamedBody751_116 NamedBody751_117

def NamedBody751_119 : StackLang.HolProg 64 :=
.seq NamedBody751_115 NamedBody751_118

def NamedBody751_120 : StackLang.HolProg 64 :=
.seq NamedBody751_114 NamedBody751_119

def NamedBody751_121 : StackLang.HolProg 64 :=
.seq NamedBody751_113 NamedBody751_120

def NamedBody751_122 : StackLang.HolProg 64 :=
.seq NamedBody751_112 NamedBody751_121

def NamedBody751_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody751_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody751_125 : StackLang.HolProg 64 :=
.seq NamedBody751_123 NamedBody751_124

def NamedBody751_126 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody751_127 : StackLang.HolProg 64 :=
.seq NamedBody751_125 NamedBody751_126

def NamedBody751_128 : StackLang.HolProg 64 :=
.call (some (NamedBody751_122, 1, 751, 4)) (Sum.inl 736) (some (NamedBody751_127, 751, 5))

def NamedBody751_129 : StackLang.HolProg 64 :=
.seq NamedBody751_111 NamedBody751_128

def NamedBody751_130 : StackLang.HolProg 64 :=
.seq NamedBody751_110 NamedBody751_129

def NamedBody751_131 : StackLang.HolProg 64 :=
.seq NamedBody751_109 NamedBody751_130

def NamedBody751_132 : StackLang.HolProg 64 :=
.seq NamedBody751_80 NamedBody751_131

def NamedBody751_133 : StackLang.HolProg 64 :=
.seq NamedBody751_77 NamedBody751_132

def NamedBody751_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody751_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody751_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def NamedBody751_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody751_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def NamedBody751_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody751_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody751_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3319#64)

def NamedBody751_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody751_143 : StackLang.HolProg 64 :=
.seq NamedBody751_141 NamedBody751_142

def NamedBody751_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody751_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody751_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody751_147 : StackLang.HolProg 64 :=
.seq NamedBody751_145 NamedBody751_146

def NamedBody751_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody751_149 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody751_147 NamedBody751_148

def NamedBody751_150 : StackLang.HolProg 64 :=
.seq NamedBody751_144 NamedBody751_149

def NamedBody751_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody751_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody751_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 751 7

def NamedBody751_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody751_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody751_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody751_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody751_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody751_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody751_160 : StackLang.HolProg 64 :=
.seq NamedBody751_158 NamedBody751_159

def NamedBody751_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody751_162 : StackLang.HolProg 64 :=
.seq NamedBody751_160 NamedBody751_161

def NamedBody751_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody751_164 : StackLang.HolProg 64 :=
.seq NamedBody751_162 NamedBody751_163

def NamedBody751_165 : StackLang.HolProg 64 :=
.seq NamedBody751_157 NamedBody751_164

def NamedBody751_166 : StackLang.HolProg 64 :=
.seq NamedBody751_156 NamedBody751_165

def NamedBody751_167 : StackLang.HolProg 64 :=
.seq NamedBody751_155 NamedBody751_166

def NamedBody751_168 : StackLang.HolProg 64 :=
.seq NamedBody751_154 NamedBody751_167

def NamedBody751_169 : StackLang.HolProg 64 :=
.seq NamedBody751_153 NamedBody751_168

def NamedBody751_170 : StackLang.HolProg 64 :=
.seq NamedBody751_152 NamedBody751_169

def NamedBody751_171 : StackLang.HolProg 64 :=
.seq NamedBody751_151 NamedBody751_170

def NamedBody751_172 : StackLang.HolProg 64 :=
.seq NamedBody751_150 NamedBody751_171

def NamedBody751_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody751_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody751_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody751_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody751_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody751_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody751_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody751_180 : StackLang.HolProg 64 :=
.seq NamedBody751_178 NamedBody751_179

def NamedBody751_181 : StackLang.HolProg 64 :=
.seq NamedBody751_177 NamedBody751_180

def NamedBody751_182 : StackLang.HolProg 64 :=
.seq NamedBody751_176 NamedBody751_181

def NamedBody751_183 : StackLang.HolProg 64 :=
.seq NamedBody751_175 NamedBody751_182

def NamedBody751_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody751_185 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody751_186 : StackLang.HolProg 64 :=
.seq NamedBody751_184 NamedBody751_185

def NamedBody751_187 : StackLang.HolProg 64 :=
.call (some (NamedBody751_183, 1, 751, 6)) (Sum.inl 736) (some (NamedBody751_186, 751, 7))

def NamedBody751_188 : StackLang.HolProg 64 :=
.seq NamedBody751_174 NamedBody751_187

def NamedBody751_189 : StackLang.HolProg 64 :=
.seq NamedBody751_173 NamedBody751_188

def NamedBody751_190 : StackLang.HolProg 64 :=
.seq NamedBody751_172 NamedBody751_189

def NamedBody751_191 : StackLang.HolProg 64 :=
.seq NamedBody751_143 NamedBody751_190

def NamedBody751_192 : StackLang.HolProg 64 :=
.seq NamedBody751_140 NamedBody751_191

def NamedBody751_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody751_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody751_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody751_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody751_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody751_198 : StackLang.HolProg 64 :=
.seq NamedBody751_196 NamedBody751_197

def NamedBody751_199 : StackLang.HolProg 64 :=
.seq NamedBody751_195 NamedBody751_198

def NamedBody751_200 : StackLang.HolProg 64 :=
.seq NamedBody751_194 NamedBody751_199

def NamedBody751_201 : StackLang.HolProg 64 :=
.seq NamedBody751_193 NamedBody751_200

def NamedBody751_202 : StackLang.HolProg 64 :=
.seq NamedBody751_192 NamedBody751_201

def NamedBody751_203 : StackLang.HolProg 64 :=
.seq NamedBody751_139 NamedBody751_202

def NamedBody751_204 : StackLang.HolProg 64 :=
.seq NamedBody751_138 NamedBody751_203

def NamedBody751_205 : StackLang.HolProg 64 :=
.seq NamedBody751_137 NamedBody751_204

def NamedBody751_206 : StackLang.HolProg 64 :=
.seq NamedBody751_136 NamedBody751_205

def NamedBody751_207 : StackLang.HolProg 64 :=
.seq NamedBody751_135 NamedBody751_206

def NamedBody751_208 : StackLang.HolProg 64 :=
.seq NamedBody751_134 NamedBody751_207

def NamedBody751_209 : StackLang.HolProg 64 :=
.seq NamedBody751_133 NamedBody751_208

def NamedBody751_210 : StackLang.HolProg 64 :=
.seq NamedBody751_76 NamedBody751_209

def NamedBody751_211 : StackLang.HolProg 64 :=
.seq NamedBody751_73 NamedBody751_210

def NamedBody751_212 : StackLang.HolProg 64 :=
.seq NamedBody751_72 NamedBody751_211

def NamedBody751_213 : StackLang.HolProg 64 :=
.seq NamedBody751_71 NamedBody751_212

def NamedBody751_214 : StackLang.HolProg 64 :=
.seq NamedBody751_70 NamedBody751_213

def NamedBody751_215 : StackLang.HolProg 64 :=
.seq NamedBody751_69 NamedBody751_214

def NamedBody751_216 : StackLang.HolProg 64 :=
.seq NamedBody751_68 NamedBody751_215

def NamedBody751_217 : StackLang.HolProg 64 :=
.seq NamedBody751_11 NamedBody751_216

def NamedBody751_218 : StackLang.HolProg 64 :=
.seq NamedBody751_6 NamedBody751_217

def Named751 : Nat × StackLang.HolProg 64 := (751, NamedBody751_218)
theorem Named751_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed751 = Named751 := by
  kernel_rfl
#print axioms Named751_eq
end InitECandidate.Proofs.BackendStages
