import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed165
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody165_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody165_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody165_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody165_3 : StackLang.HolProg 64 :=
.seq NamedBody165_1 NamedBody165_2

def NamedBody165_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody165_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody165_3 NamedBody165_4

def NamedBody165_6 : StackLang.HolProg 64 :=
.seq NamedBody165_0 NamedBody165_5

def NamedBody165_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody165_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody165_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody165_10 : StackLang.HolProg 64 :=
.seq NamedBody165_8 NamedBody165_9

def NamedBody165_11 : StackLang.HolProg 64 :=
.seq NamedBody165_7 NamedBody165_10

def NamedBody165_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody165_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 178#64)

def NamedBody165_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody165_15 : StackLang.HolProg 64 :=
.seq NamedBody165_13 NamedBody165_14

def NamedBody165_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody165_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody165_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody165_19 : StackLang.HolProg 64 :=
.seq NamedBody165_17 NamedBody165_18

def NamedBody165_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody165_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody165_19 NamedBody165_20

def NamedBody165_22 : StackLang.HolProg 64 :=
.seq NamedBody165_16 NamedBody165_21

def NamedBody165_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody165_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody165_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 165 3

def NamedBody165_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody165_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody165_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody165_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody165_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody165_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody165_32 : StackLang.HolProg 64 :=
.seq NamedBody165_30 NamedBody165_31

def NamedBody165_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody165_34 : StackLang.HolProg 64 :=
.seq NamedBody165_32 NamedBody165_33

def NamedBody165_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody165_36 : StackLang.HolProg 64 :=
.seq NamedBody165_34 NamedBody165_35

def NamedBody165_37 : StackLang.HolProg 64 :=
.seq NamedBody165_29 NamedBody165_36

def NamedBody165_38 : StackLang.HolProg 64 :=
.seq NamedBody165_28 NamedBody165_37

def NamedBody165_39 : StackLang.HolProg 64 :=
.seq NamedBody165_27 NamedBody165_38

def NamedBody165_40 : StackLang.HolProg 64 :=
.seq NamedBody165_26 NamedBody165_39

def NamedBody165_41 : StackLang.HolProg 64 :=
.seq NamedBody165_25 NamedBody165_40

def NamedBody165_42 : StackLang.HolProg 64 :=
.seq NamedBody165_24 NamedBody165_41

def NamedBody165_43 : StackLang.HolProg 64 :=
.seq NamedBody165_23 NamedBody165_42

def NamedBody165_44 : StackLang.HolProg 64 :=
.seq NamedBody165_22 NamedBody165_43

def NamedBody165_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody165_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody165_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody165_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody165_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody165_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody165_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody165_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody165_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody165_54 : StackLang.HolProg 64 :=
.seq NamedBody165_52 NamedBody165_53

def NamedBody165_55 : StackLang.HolProg 64 :=
.seq NamedBody165_51 NamedBody165_54

def NamedBody165_56 : StackLang.HolProg 64 :=
.seq NamedBody165_50 NamedBody165_55

def NamedBody165_57 : StackLang.HolProg 64 :=
.seq NamedBody165_49 NamedBody165_56

def NamedBody165_58 : StackLang.HolProg 64 :=
.seq NamedBody165_48 NamedBody165_57

def NamedBody165_59 : StackLang.HolProg 64 :=
.seq NamedBody165_47 NamedBody165_58

def NamedBody165_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody165_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody165_62 : StackLang.HolProg 64 :=
.seq NamedBody165_60 NamedBody165_61

def NamedBody165_63 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody165_64 : StackLang.HolProg 64 :=
.seq NamedBody165_62 NamedBody165_63

def NamedBody165_65 : StackLang.HolProg 64 :=
.call (some (NamedBody165_59, 1, 165, 2)) (Sum.inl 75) (some (NamedBody165_64, 165, 3))

def NamedBody165_66 : StackLang.HolProg 64 :=
.seq NamedBody165_46 NamedBody165_65

def NamedBody165_67 : StackLang.HolProg 64 :=
.seq NamedBody165_45 NamedBody165_66

def NamedBody165_68 : StackLang.HolProg 64 :=
.seq NamedBody165_44 NamedBody165_67

def NamedBody165_69 : StackLang.HolProg 64 :=
.seq NamedBody165_15 NamedBody165_68

def NamedBody165_70 : StackLang.HolProg 64 :=
.seq NamedBody165_12 NamedBody165_69

def NamedBody165_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody165_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody165_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody165_74 : StackLang.HolProg 64 :=
.seq NamedBody165_72 NamedBody165_73

def NamedBody165_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody165_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 179#64)

def NamedBody165_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody165_78 : StackLang.HolProg 64 :=
.seq NamedBody165_76 NamedBody165_77

def NamedBody165_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody165_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody165_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody165_82 : StackLang.HolProg 64 :=
.seq NamedBody165_80 NamedBody165_81

def NamedBody165_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody165_84 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody165_82 NamedBody165_83

def NamedBody165_85 : StackLang.HolProg 64 :=
.seq NamedBody165_79 NamedBody165_84

def NamedBody165_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody165_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody165_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 165 7

def NamedBody165_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody165_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody165_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody165_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody165_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody165_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody165_95 : StackLang.HolProg 64 :=
.seq NamedBody165_93 NamedBody165_94

def NamedBody165_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody165_97 : StackLang.HolProg 64 :=
.seq NamedBody165_95 NamedBody165_96

def NamedBody165_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody165_99 : StackLang.HolProg 64 :=
.seq NamedBody165_97 NamedBody165_98

def NamedBody165_100 : StackLang.HolProg 64 :=
.seq NamedBody165_92 NamedBody165_99

def NamedBody165_101 : StackLang.HolProg 64 :=
.seq NamedBody165_91 NamedBody165_100

def NamedBody165_102 : StackLang.HolProg 64 :=
.seq NamedBody165_90 NamedBody165_101

def NamedBody165_103 : StackLang.HolProg 64 :=
.seq NamedBody165_89 NamedBody165_102

def NamedBody165_104 : StackLang.HolProg 64 :=
.seq NamedBody165_88 NamedBody165_103

def NamedBody165_105 : StackLang.HolProg 64 :=
.seq NamedBody165_87 NamedBody165_104

def NamedBody165_106 : StackLang.HolProg 64 :=
.seq NamedBody165_86 NamedBody165_105

def NamedBody165_107 : StackLang.HolProg 64 :=
.seq NamedBody165_85 NamedBody165_106

def NamedBody165_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody165_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody165_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody165_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody165_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody165_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody165_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody165_115 : StackLang.HolProg 64 :=
.seq NamedBody165_113 NamedBody165_114

def NamedBody165_116 : StackLang.HolProg 64 :=
.seq NamedBody165_112 NamedBody165_115

def NamedBody165_117 : StackLang.HolProg 64 :=
.seq NamedBody165_111 NamedBody165_116

def NamedBody165_118 : StackLang.HolProg 64 :=
.seq NamedBody165_110 NamedBody165_117

def NamedBody165_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody165_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody165_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody165_122 : StackLang.HolProg 64 :=
.seq NamedBody165_120 NamedBody165_121

def NamedBody165_123 : StackLang.HolProg 64 :=
.seq NamedBody165_119 NamedBody165_122

def NamedBody165_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody165_125 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody165_126 : StackLang.HolProg 64 :=
.seq NamedBody165_124 NamedBody165_125

def NamedBody165_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody165_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody165_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody165_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody165_131 : StackLang.HolProg 64 :=
.seq NamedBody165_129 NamedBody165_130

def NamedBody165_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody165_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 180#64)

def NamedBody165_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody165_135 : StackLang.HolProg 64 :=
.seq NamedBody165_133 NamedBody165_134

def NamedBody165_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody165_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody165_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody165_139 : StackLang.HolProg 64 :=
.seq NamedBody165_137 NamedBody165_138

def NamedBody165_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody165_141 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody165_139 NamedBody165_140

def NamedBody165_142 : StackLang.HolProg 64 :=
.seq NamedBody165_136 NamedBody165_141

def NamedBody165_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody165_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody165_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 165 6

def NamedBody165_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody165_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody165_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody165_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody165_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody165_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody165_152 : StackLang.HolProg 64 :=
.seq NamedBody165_150 NamedBody165_151

def NamedBody165_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody165_154 : StackLang.HolProg 64 :=
.seq NamedBody165_152 NamedBody165_153

def NamedBody165_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody165_156 : StackLang.HolProg 64 :=
.seq NamedBody165_154 NamedBody165_155

def NamedBody165_157 : StackLang.HolProg 64 :=
.seq NamedBody165_149 NamedBody165_156

def NamedBody165_158 : StackLang.HolProg 64 :=
.seq NamedBody165_148 NamedBody165_157

def NamedBody165_159 : StackLang.HolProg 64 :=
.seq NamedBody165_147 NamedBody165_158

def NamedBody165_160 : StackLang.HolProg 64 :=
.seq NamedBody165_146 NamedBody165_159

def NamedBody165_161 : StackLang.HolProg 64 :=
.seq NamedBody165_145 NamedBody165_160

def NamedBody165_162 : StackLang.HolProg 64 :=
.seq NamedBody165_144 NamedBody165_161

def NamedBody165_163 : StackLang.HolProg 64 :=
.seq NamedBody165_143 NamedBody165_162

def NamedBody165_164 : StackLang.HolProg 64 :=
.seq NamedBody165_142 NamedBody165_163

def NamedBody165_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody165_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody165_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody165_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody165_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody165_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody165_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody165_172 : StackLang.HolProg 64 :=
.seq NamedBody165_170 NamedBody165_171

def NamedBody165_173 : StackLang.HolProg 64 :=
.seq NamedBody165_169 NamedBody165_172

def NamedBody165_174 : StackLang.HolProg 64 :=
.seq NamedBody165_168 NamedBody165_173

def NamedBody165_175 : StackLang.HolProg 64 :=
.seq NamedBody165_167 NamedBody165_174

def NamedBody165_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody165_177 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody165_178 : StackLang.HolProg 64 :=
.seq NamedBody165_176 NamedBody165_177

def NamedBody165_179 : StackLang.HolProg 64 :=
.call (some (NamedBody165_175, 1, 165, 5)) (Sum.inl 76) (some (NamedBody165_178, 165, 6))

def NamedBody165_180 : StackLang.HolProg 64 :=
.seq NamedBody165_166 NamedBody165_179

def NamedBody165_181 : StackLang.HolProg 64 :=
.seq NamedBody165_165 NamedBody165_180

def NamedBody165_182 : StackLang.HolProg 64 :=
.seq NamedBody165_164 NamedBody165_181

def NamedBody165_183 : StackLang.HolProg 64 :=
.seq NamedBody165_135 NamedBody165_182

def NamedBody165_184 : StackLang.HolProg 64 :=
.seq NamedBody165_132 NamedBody165_183

def NamedBody165_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody165_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody165_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody165_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody165_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody165_190 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody165_191 : StackLang.HolProg 64 :=
.seq NamedBody165_189 NamedBody165_190

def NamedBody165_192 : StackLang.HolProg 64 :=
.seq NamedBody165_188 NamedBody165_191

def NamedBody165_193 : StackLang.HolProg 64 :=
.seq NamedBody165_187 NamedBody165_192

def NamedBody165_194 : StackLang.HolProg 64 :=
.seq NamedBody165_186 NamedBody165_193

def NamedBody165_195 : StackLang.HolProg 64 :=
.seq NamedBody165_185 NamedBody165_194

def NamedBody165_196 : StackLang.HolProg 64 :=
.seq NamedBody165_184 NamedBody165_195

def NamedBody165_197 : StackLang.HolProg 64 :=
.seq NamedBody165_131 NamedBody165_196

def NamedBody165_198 : StackLang.HolProg 64 :=
.seq NamedBody165_128 NamedBody165_197

def NamedBody165_199 : StackLang.HolProg 64 :=
.seq NamedBody165_127 NamedBody165_198

def NamedBody165_200 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64) NamedBody165_126 NamedBody165_199

def NamedBody165_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody165_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody165_203 : StackLang.HolProg 64 :=
.seq NamedBody165_201 NamedBody165_202

def NamedBody165_204 : StackLang.HolProg 64 :=
.seq NamedBody165_200 NamedBody165_203

def NamedBody165_205 : StackLang.HolProg 64 :=
.seq NamedBody165_123 NamedBody165_204

def NamedBody165_206 : StackLang.HolProg 64 :=
.call (some (NamedBody165_118, 1, 165, 4)) (Sum.inl 164) (some (NamedBody165_205, 165, 7))

def NamedBody165_207 : StackLang.HolProg 64 :=
.seq NamedBody165_109 NamedBody165_206

def NamedBody165_208 : StackLang.HolProg 64 :=
.seq NamedBody165_108 NamedBody165_207

def NamedBody165_209 : StackLang.HolProg 64 :=
.seq NamedBody165_107 NamedBody165_208

def NamedBody165_210 : StackLang.HolProg 64 :=
.seq NamedBody165_78 NamedBody165_209

def NamedBody165_211 : StackLang.HolProg 64 :=
.seq NamedBody165_75 NamedBody165_210

def NamedBody165_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody165_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody165_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody165_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 181#64)

def NamedBody165_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody165_217 : StackLang.HolProg 64 :=
.seq NamedBody165_215 NamedBody165_216

def NamedBody165_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody165_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody165_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody165_221 : StackLang.HolProg 64 :=
.seq NamedBody165_219 NamedBody165_220

def NamedBody165_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody165_223 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody165_221 NamedBody165_222

def NamedBody165_224 : StackLang.HolProg 64 :=
.seq NamedBody165_218 NamedBody165_223

def NamedBody165_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody165_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody165_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 165 9

def NamedBody165_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody165_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody165_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody165_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody165_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody165_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody165_234 : StackLang.HolProg 64 :=
.seq NamedBody165_232 NamedBody165_233

def NamedBody165_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody165_236 : StackLang.HolProg 64 :=
.seq NamedBody165_234 NamedBody165_235

def NamedBody165_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody165_238 : StackLang.HolProg 64 :=
.seq NamedBody165_236 NamedBody165_237

def NamedBody165_239 : StackLang.HolProg 64 :=
.seq NamedBody165_231 NamedBody165_238

def NamedBody165_240 : StackLang.HolProg 64 :=
.seq NamedBody165_230 NamedBody165_239

def NamedBody165_241 : StackLang.HolProg 64 :=
.seq NamedBody165_229 NamedBody165_240

def NamedBody165_242 : StackLang.HolProg 64 :=
.seq NamedBody165_228 NamedBody165_241

def NamedBody165_243 : StackLang.HolProg 64 :=
.seq NamedBody165_227 NamedBody165_242

def NamedBody165_244 : StackLang.HolProg 64 :=
.seq NamedBody165_226 NamedBody165_243

def NamedBody165_245 : StackLang.HolProg 64 :=
.seq NamedBody165_225 NamedBody165_244

def NamedBody165_246 : StackLang.HolProg 64 :=
.seq NamedBody165_224 NamedBody165_245

def NamedBody165_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody165_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody165_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody165_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody165_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody165_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody165_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody165_254 : StackLang.HolProg 64 :=
.seq NamedBody165_252 NamedBody165_253

def NamedBody165_255 : StackLang.HolProg 64 :=
.seq NamedBody165_251 NamedBody165_254

def NamedBody165_256 : StackLang.HolProg 64 :=
.seq NamedBody165_250 NamedBody165_255

def NamedBody165_257 : StackLang.HolProg 64 :=
.seq NamedBody165_249 NamedBody165_256

def NamedBody165_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody165_259 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody165_260 : StackLang.HolProg 64 :=
.seq NamedBody165_258 NamedBody165_259

def NamedBody165_261 : StackLang.HolProg 64 :=
.call (some (NamedBody165_257, 1, 165, 8)) (Sum.inl 76) (some (NamedBody165_260, 165, 9))

def NamedBody165_262 : StackLang.HolProg 64 :=
.seq NamedBody165_248 NamedBody165_261

def NamedBody165_263 : StackLang.HolProg 64 :=
.seq NamedBody165_247 NamedBody165_262

def NamedBody165_264 : StackLang.HolProg 64 :=
.seq NamedBody165_246 NamedBody165_263

def NamedBody165_265 : StackLang.HolProg 64 :=
.seq NamedBody165_217 NamedBody165_264

def NamedBody165_266 : StackLang.HolProg 64 :=
.seq NamedBody165_214 NamedBody165_265

def NamedBody165_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody165_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody165_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody165_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody165_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody165_272 : StackLang.HolProg 64 :=
.seq NamedBody165_270 NamedBody165_271

def NamedBody165_273 : StackLang.HolProg 64 :=
.seq NamedBody165_269 NamedBody165_272

def NamedBody165_274 : StackLang.HolProg 64 :=
.seq NamedBody165_268 NamedBody165_273

def NamedBody165_275 : StackLang.HolProg 64 :=
.seq NamedBody165_267 NamedBody165_274

def NamedBody165_276 : StackLang.HolProg 64 :=
.seq NamedBody165_266 NamedBody165_275

def NamedBody165_277 : StackLang.HolProg 64 :=
.seq NamedBody165_213 NamedBody165_276

def NamedBody165_278 : StackLang.HolProg 64 :=
.seq NamedBody165_212 NamedBody165_277

def NamedBody165_279 : StackLang.HolProg 64 :=
.seq NamedBody165_211 NamedBody165_278

def NamedBody165_280 : StackLang.HolProg 64 :=
.seq NamedBody165_74 NamedBody165_279

def NamedBody165_281 : StackLang.HolProg 64 :=
.seq NamedBody165_71 NamedBody165_280

def NamedBody165_282 : StackLang.HolProg 64 :=
.seq NamedBody165_70 NamedBody165_281

def NamedBody165_283 : StackLang.HolProg 64 :=
.seq NamedBody165_11 NamedBody165_282

def NamedBody165_284 : StackLang.HolProg 64 :=
.seq NamedBody165_6 NamedBody165_283

def Named165 : Nat × StackLang.HolProg 64 := (165, NamedBody165_284)
theorem Named165_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed165 = Named165 := by
  kernel_rfl
#print axioms Named165_eq
end InitECandidate.Proofs.BackendStages
