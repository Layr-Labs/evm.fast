import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed513
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody513_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody513_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody513_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody513_3 : StackLang.HolProg 64 :=
.seq NamedBody513_1 NamedBody513_2

def NamedBody513_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody513_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody513_3 NamedBody513_4

def NamedBody513_6 : StackLang.HolProg 64 :=
.seq NamedBody513_0 NamedBody513_5

def NamedBody513_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody513_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody513_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1644#64)

def NamedBody513_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody513_11 : StackLang.HolProg 64 :=
.seq NamedBody513_9 NamedBody513_10

def NamedBody513_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody513_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody513_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody513_15 : StackLang.HolProg 64 :=
.seq NamedBody513_13 NamedBody513_14

def NamedBody513_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody513_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody513_15 NamedBody513_16

def NamedBody513_18 : StackLang.HolProg 64 :=
.seq NamedBody513_12 NamedBody513_17

def NamedBody513_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody513_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody513_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 513 3

def NamedBody513_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody513_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody513_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody513_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody513_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody513_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody513_28 : StackLang.HolProg 64 :=
.seq NamedBody513_26 NamedBody513_27

def NamedBody513_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody513_30 : StackLang.HolProg 64 :=
.seq NamedBody513_28 NamedBody513_29

def NamedBody513_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody513_32 : StackLang.HolProg 64 :=
.seq NamedBody513_30 NamedBody513_31

def NamedBody513_33 : StackLang.HolProg 64 :=
.seq NamedBody513_25 NamedBody513_32

def NamedBody513_34 : StackLang.HolProg 64 :=
.seq NamedBody513_24 NamedBody513_33

def NamedBody513_35 : StackLang.HolProg 64 :=
.seq NamedBody513_23 NamedBody513_34

def NamedBody513_36 : StackLang.HolProg 64 :=
.seq NamedBody513_22 NamedBody513_35

def NamedBody513_37 : StackLang.HolProg 64 :=
.seq NamedBody513_21 NamedBody513_36

def NamedBody513_38 : StackLang.HolProg 64 :=
.seq NamedBody513_20 NamedBody513_37

def NamedBody513_39 : StackLang.HolProg 64 :=
.seq NamedBody513_19 NamedBody513_38

def NamedBody513_40 : StackLang.HolProg 64 :=
.seq NamedBody513_18 NamedBody513_39

def NamedBody513_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody513_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody513_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody513_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody513_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody513_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody513_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody513_48 : StackLang.HolProg 64 :=
.seq NamedBody513_46 NamedBody513_47

def NamedBody513_49 : StackLang.HolProg 64 :=
.seq NamedBody513_45 NamedBody513_48

def NamedBody513_50 : StackLang.HolProg 64 :=
.seq NamedBody513_44 NamedBody513_49

def NamedBody513_51 : StackLang.HolProg 64 :=
.seq NamedBody513_43 NamedBody513_50

def NamedBody513_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody513_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody513_54 : StackLang.HolProg 64 :=
.seq NamedBody513_52 NamedBody513_53

def NamedBody513_55 : StackLang.HolProg 64 :=
.call (some (NamedBody513_51, 1, 513, 2)) (Sum.inl 475) (some (NamedBody513_54, 513, 3))

def NamedBody513_56 : StackLang.HolProg 64 :=
.seq NamedBody513_42 NamedBody513_55

def NamedBody513_57 : StackLang.HolProg 64 :=
.seq NamedBody513_41 NamedBody513_56

def NamedBody513_58 : StackLang.HolProg 64 :=
.seq NamedBody513_40 NamedBody513_57

def NamedBody513_59 : StackLang.HolProg 64 :=
.seq NamedBody513_11 NamedBody513_58

def NamedBody513_60 : StackLang.HolProg 64 :=
.seq NamedBody513_8 NamedBody513_59

def NamedBody513_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody513_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 3#64)

def NamedBody513_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody513_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody513_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody513_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody513_67 : StackLang.HolProg 64 :=
.seq NamedBody513_65 NamedBody513_66

def NamedBody513_68 : StackLang.HolProg 64 :=
.seq NamedBody513_64 NamedBody513_67

def NamedBody513_69 : StackLang.HolProg 64 :=
.seq NamedBody513_63 NamedBody513_68

def NamedBody513_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody513_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1645#64)

def NamedBody513_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody513_73 : StackLang.HolProg 64 :=
.seq NamedBody513_71 NamedBody513_72

def NamedBody513_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody513_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody513_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody513_77 : StackLang.HolProg 64 :=
.seq NamedBody513_75 NamedBody513_76

def NamedBody513_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody513_79 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody513_77 NamedBody513_78

def NamedBody513_80 : StackLang.HolProg 64 :=
.seq NamedBody513_74 NamedBody513_79

def NamedBody513_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody513_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody513_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 513 5

def NamedBody513_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody513_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody513_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody513_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody513_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody513_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody513_90 : StackLang.HolProg 64 :=
.seq NamedBody513_88 NamedBody513_89

def NamedBody513_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody513_92 : StackLang.HolProg 64 :=
.seq NamedBody513_90 NamedBody513_91

def NamedBody513_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody513_94 : StackLang.HolProg 64 :=
.seq NamedBody513_92 NamedBody513_93

def NamedBody513_95 : StackLang.HolProg 64 :=
.seq NamedBody513_87 NamedBody513_94

def NamedBody513_96 : StackLang.HolProg 64 :=
.seq NamedBody513_86 NamedBody513_95

def NamedBody513_97 : StackLang.HolProg 64 :=
.seq NamedBody513_85 NamedBody513_96

def NamedBody513_98 : StackLang.HolProg 64 :=
.seq NamedBody513_84 NamedBody513_97

def NamedBody513_99 : StackLang.HolProg 64 :=
.seq NamedBody513_83 NamedBody513_98

def NamedBody513_100 : StackLang.HolProg 64 :=
.seq NamedBody513_82 NamedBody513_99

def NamedBody513_101 : StackLang.HolProg 64 :=
.seq NamedBody513_81 NamedBody513_100

def NamedBody513_102 : StackLang.HolProg 64 :=
.seq NamedBody513_80 NamedBody513_101

def NamedBody513_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody513_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody513_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody513_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody513_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody513_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody513_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody513_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody513_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody513_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody513_113 : StackLang.HolProg 64 :=
.seq NamedBody513_111 NamedBody513_112

def NamedBody513_114 : StackLang.HolProg 64 :=
.seq NamedBody513_110 NamedBody513_113

def NamedBody513_115 : StackLang.HolProg 64 :=
.seq NamedBody513_109 NamedBody513_114

def NamedBody513_116 : StackLang.HolProg 64 :=
.seq NamedBody513_108 NamedBody513_115

def NamedBody513_117 : StackLang.HolProg 64 :=
.seq NamedBody513_107 NamedBody513_116

def NamedBody513_118 : StackLang.HolProg 64 :=
.seq NamedBody513_106 NamedBody513_117

def NamedBody513_119 : StackLang.HolProg 64 :=
.seq NamedBody513_105 NamedBody513_118

def NamedBody513_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody513_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody513_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody513_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody513_124 : StackLang.HolProg 64 :=
.seq NamedBody513_122 NamedBody513_123

def NamedBody513_125 : StackLang.HolProg 64 :=
.seq NamedBody513_121 NamedBody513_124

def NamedBody513_126 : StackLang.HolProg 64 :=
.seq NamedBody513_120 NamedBody513_125

def NamedBody513_127 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody513_128 : StackLang.HolProg 64 :=
.seq NamedBody513_126 NamedBody513_127

def NamedBody513_129 : StackLang.HolProg 64 :=
.call (some (NamedBody513_119, 1, 513, 4)) (Sum.inl 470) (some (NamedBody513_128, 513, 5))

def NamedBody513_130 : StackLang.HolProg 64 :=
.seq NamedBody513_104 NamedBody513_129

def NamedBody513_131 : StackLang.HolProg 64 :=
.seq NamedBody513_103 NamedBody513_130

def NamedBody513_132 : StackLang.HolProg 64 :=
.seq NamedBody513_102 NamedBody513_131

def NamedBody513_133 : StackLang.HolProg 64 :=
.seq NamedBody513_73 NamedBody513_132

def NamedBody513_134 : StackLang.HolProg 64 :=
.seq NamedBody513_70 NamedBody513_133

def NamedBody513_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody513_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody513_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody513_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1646#64)

def NamedBody513_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody513_140 : StackLang.HolProg 64 :=
.seq NamedBody513_138 NamedBody513_139

def NamedBody513_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody513_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody513_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody513_144 : StackLang.HolProg 64 :=
.seq NamedBody513_142 NamedBody513_143

def NamedBody513_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody513_146 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody513_144 NamedBody513_145

def NamedBody513_147 : StackLang.HolProg 64 :=
.seq NamedBody513_141 NamedBody513_146

def NamedBody513_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody513_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody513_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 513 7

def NamedBody513_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody513_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody513_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody513_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody513_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody513_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody513_157 : StackLang.HolProg 64 :=
.seq NamedBody513_155 NamedBody513_156

def NamedBody513_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody513_159 : StackLang.HolProg 64 :=
.seq NamedBody513_157 NamedBody513_158

def NamedBody513_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody513_161 : StackLang.HolProg 64 :=
.seq NamedBody513_159 NamedBody513_160

def NamedBody513_162 : StackLang.HolProg 64 :=
.seq NamedBody513_154 NamedBody513_161

def NamedBody513_163 : StackLang.HolProg 64 :=
.seq NamedBody513_153 NamedBody513_162

def NamedBody513_164 : StackLang.HolProg 64 :=
.seq NamedBody513_152 NamedBody513_163

def NamedBody513_165 : StackLang.HolProg 64 :=
.seq NamedBody513_151 NamedBody513_164

def NamedBody513_166 : StackLang.HolProg 64 :=
.seq NamedBody513_150 NamedBody513_165

def NamedBody513_167 : StackLang.HolProg 64 :=
.seq NamedBody513_149 NamedBody513_166

def NamedBody513_168 : StackLang.HolProg 64 :=
.seq NamedBody513_148 NamedBody513_167

def NamedBody513_169 : StackLang.HolProg 64 :=
.seq NamedBody513_147 NamedBody513_168

def NamedBody513_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody513_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody513_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody513_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody513_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody513_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody513_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody513_177 : StackLang.HolProg 64 :=
.seq NamedBody513_175 NamedBody513_176

def NamedBody513_178 : StackLang.HolProg 64 :=
.seq NamedBody513_174 NamedBody513_177

def NamedBody513_179 : StackLang.HolProg 64 :=
.seq NamedBody513_173 NamedBody513_178

def NamedBody513_180 : StackLang.HolProg 64 :=
.seq NamedBody513_172 NamedBody513_179

def NamedBody513_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody513_182 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody513_183 : StackLang.HolProg 64 :=
.seq NamedBody513_181 NamedBody513_182

def NamedBody513_184 : StackLang.HolProg 64 :=
.call (some (NamedBody513_180, 1, 513, 6)) (Sum.inl 102) (some (NamedBody513_183, 513, 7))

def NamedBody513_185 : StackLang.HolProg 64 :=
.seq NamedBody513_171 NamedBody513_184

def NamedBody513_186 : StackLang.HolProg 64 :=
.seq NamedBody513_170 NamedBody513_185

def NamedBody513_187 : StackLang.HolProg 64 :=
.seq NamedBody513_169 NamedBody513_186

def NamedBody513_188 : StackLang.HolProg 64 :=
.seq NamedBody513_140 NamedBody513_187

def NamedBody513_189 : StackLang.HolProg 64 :=
.seq NamedBody513_137 NamedBody513_188

def NamedBody513_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody513_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody513_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody513_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1647#64)

def NamedBody513_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody513_195 : StackLang.HolProg 64 :=
.seq NamedBody513_193 NamedBody513_194

def NamedBody513_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody513_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody513_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody513_199 : StackLang.HolProg 64 :=
.seq NamedBody513_197 NamedBody513_198

def NamedBody513_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody513_201 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody513_199 NamedBody513_200

def NamedBody513_202 : StackLang.HolProg 64 :=
.seq NamedBody513_196 NamedBody513_201

def NamedBody513_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody513_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody513_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 513 9

def NamedBody513_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody513_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody513_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody513_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody513_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody513_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody513_212 : StackLang.HolProg 64 :=
.seq NamedBody513_210 NamedBody513_211

def NamedBody513_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody513_214 : StackLang.HolProg 64 :=
.seq NamedBody513_212 NamedBody513_213

def NamedBody513_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody513_216 : StackLang.HolProg 64 :=
.seq NamedBody513_214 NamedBody513_215

def NamedBody513_217 : StackLang.HolProg 64 :=
.seq NamedBody513_209 NamedBody513_216

def NamedBody513_218 : StackLang.HolProg 64 :=
.seq NamedBody513_208 NamedBody513_217

def NamedBody513_219 : StackLang.HolProg 64 :=
.seq NamedBody513_207 NamedBody513_218

def NamedBody513_220 : StackLang.HolProg 64 :=
.seq NamedBody513_206 NamedBody513_219

def NamedBody513_221 : StackLang.HolProg 64 :=
.seq NamedBody513_205 NamedBody513_220

def NamedBody513_222 : StackLang.HolProg 64 :=
.seq NamedBody513_204 NamedBody513_221

def NamedBody513_223 : StackLang.HolProg 64 :=
.seq NamedBody513_203 NamedBody513_222

def NamedBody513_224 : StackLang.HolProg 64 :=
.seq NamedBody513_202 NamedBody513_223

def NamedBody513_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody513_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody513_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody513_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody513_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody513_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody513_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody513_232 : StackLang.HolProg 64 :=
.seq NamedBody513_230 NamedBody513_231

def NamedBody513_233 : StackLang.HolProg 64 :=
.seq NamedBody513_229 NamedBody513_232

def NamedBody513_234 : StackLang.HolProg 64 :=
.seq NamedBody513_228 NamedBody513_233

def NamedBody513_235 : StackLang.HolProg 64 :=
.seq NamedBody513_227 NamedBody513_234

def NamedBody513_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody513_237 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody513_238 : StackLang.HolProg 64 :=
.seq NamedBody513_236 NamedBody513_237

def NamedBody513_239 : StackLang.HolProg 64 :=
.call (some (NamedBody513_235, 1, 513, 8)) (Sum.inl 478) (some (NamedBody513_238, 513, 9))

def NamedBody513_240 : StackLang.HolProg 64 :=
.seq NamedBody513_226 NamedBody513_239

def NamedBody513_241 : StackLang.HolProg 64 :=
.seq NamedBody513_225 NamedBody513_240

def NamedBody513_242 : StackLang.HolProg 64 :=
.seq NamedBody513_224 NamedBody513_241

def NamedBody513_243 : StackLang.HolProg 64 :=
.seq NamedBody513_195 NamedBody513_242

def NamedBody513_244 : StackLang.HolProg 64 :=
.seq NamedBody513_192 NamedBody513_243

def NamedBody513_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody513_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody513_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody513_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody513_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1648#64)

def NamedBody513_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody513_251 : StackLang.HolProg 64 :=
.seq NamedBody513_249 NamedBody513_250

def NamedBody513_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody513_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody513_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody513_255 : StackLang.HolProg 64 :=
.seq NamedBody513_253 NamedBody513_254

def NamedBody513_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody513_257 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody513_255 NamedBody513_256

def NamedBody513_258 : StackLang.HolProg 64 :=
.seq NamedBody513_252 NamedBody513_257

def NamedBody513_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody513_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody513_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 513 11

def NamedBody513_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody513_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody513_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody513_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody513_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody513_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody513_268 : StackLang.HolProg 64 :=
.seq NamedBody513_266 NamedBody513_267

def NamedBody513_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody513_270 : StackLang.HolProg 64 :=
.seq NamedBody513_268 NamedBody513_269

def NamedBody513_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody513_272 : StackLang.HolProg 64 :=
.seq NamedBody513_270 NamedBody513_271

def NamedBody513_273 : StackLang.HolProg 64 :=
.seq NamedBody513_265 NamedBody513_272

def NamedBody513_274 : StackLang.HolProg 64 :=
.seq NamedBody513_264 NamedBody513_273

def NamedBody513_275 : StackLang.HolProg 64 :=
.seq NamedBody513_263 NamedBody513_274

def NamedBody513_276 : StackLang.HolProg 64 :=
.seq NamedBody513_262 NamedBody513_275

def NamedBody513_277 : StackLang.HolProg 64 :=
.seq NamedBody513_261 NamedBody513_276

def NamedBody513_278 : StackLang.HolProg 64 :=
.seq NamedBody513_260 NamedBody513_277

def NamedBody513_279 : StackLang.HolProg 64 :=
.seq NamedBody513_259 NamedBody513_278

def NamedBody513_280 : StackLang.HolProg 64 :=
.seq NamedBody513_258 NamedBody513_279

def NamedBody513_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody513_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody513_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody513_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody513_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody513_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody513_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody513_288 : StackLang.HolProg 64 :=
.seq NamedBody513_286 NamedBody513_287

def NamedBody513_289 : StackLang.HolProg 64 :=
.seq NamedBody513_285 NamedBody513_288

def NamedBody513_290 : StackLang.HolProg 64 :=
.seq NamedBody513_284 NamedBody513_289

def NamedBody513_291 : StackLang.HolProg 64 :=
.seq NamedBody513_283 NamedBody513_290

def NamedBody513_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody513_293 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody513_294 : StackLang.HolProg 64 :=
.seq NamedBody513_292 NamedBody513_293

def NamedBody513_295 : StackLang.HolProg 64 :=
.call (some (NamedBody513_291, 1, 513, 10)) (Sum.inl 490) (some (NamedBody513_294, 513, 11))

def NamedBody513_296 : StackLang.HolProg 64 :=
.seq NamedBody513_282 NamedBody513_295

def NamedBody513_297 : StackLang.HolProg 64 :=
.seq NamedBody513_281 NamedBody513_296

def NamedBody513_298 : StackLang.HolProg 64 :=
.seq NamedBody513_280 NamedBody513_297

def NamedBody513_299 : StackLang.HolProg 64 :=
.seq NamedBody513_251 NamedBody513_298

def NamedBody513_300 : StackLang.HolProg 64 :=
.seq NamedBody513_248 NamedBody513_299

def NamedBody513_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody513_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody513_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody513_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody513_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody513_306 : StackLang.HolProg 64 :=
.seq NamedBody513_304 NamedBody513_305

def NamedBody513_307 : StackLang.HolProg 64 :=
.seq NamedBody513_303 NamedBody513_306

def NamedBody513_308 : StackLang.HolProg 64 :=
.seq NamedBody513_302 NamedBody513_307

def NamedBody513_309 : StackLang.HolProg 64 :=
.seq NamedBody513_301 NamedBody513_308

def NamedBody513_310 : StackLang.HolProg 64 :=
.seq NamedBody513_300 NamedBody513_309

def NamedBody513_311 : StackLang.HolProg 64 :=
.seq NamedBody513_247 NamedBody513_310

def NamedBody513_312 : StackLang.HolProg 64 :=
.seq NamedBody513_246 NamedBody513_311

def NamedBody513_313 : StackLang.HolProg 64 :=
.seq NamedBody513_245 NamedBody513_312

def NamedBody513_314 : StackLang.HolProg 64 :=
.seq NamedBody513_244 NamedBody513_313

def NamedBody513_315 : StackLang.HolProg 64 :=
.seq NamedBody513_191 NamedBody513_314

def NamedBody513_316 : StackLang.HolProg 64 :=
.seq NamedBody513_190 NamedBody513_315

def NamedBody513_317 : StackLang.HolProg 64 :=
.seq NamedBody513_189 NamedBody513_316

def NamedBody513_318 : StackLang.HolProg 64 :=
.seq NamedBody513_136 NamedBody513_317

def NamedBody513_319 : StackLang.HolProg 64 :=
.seq NamedBody513_135 NamedBody513_318

def NamedBody513_320 : StackLang.HolProg 64 :=
.seq NamedBody513_134 NamedBody513_319

def NamedBody513_321 : StackLang.HolProg 64 :=
.seq NamedBody513_69 NamedBody513_320

def NamedBody513_322 : StackLang.HolProg 64 :=
.seq NamedBody513_62 NamedBody513_321

def NamedBody513_323 : StackLang.HolProg 64 :=
.seq NamedBody513_61 NamedBody513_322

def NamedBody513_324 : StackLang.HolProg 64 :=
.seq NamedBody513_60 NamedBody513_323

def NamedBody513_325 : StackLang.HolProg 64 :=
.seq NamedBody513_7 NamedBody513_324

def NamedBody513_326 : StackLang.HolProg 64 :=
.seq NamedBody513_6 NamedBody513_325

def Named513 : Nat × StackLang.HolProg 64 := (513, NamedBody513_326)
theorem Named513_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed513 = Named513 := by
  kernel_rfl
#print axioms Named513_eq
end InitECandidate.Proofs.BackendStages
