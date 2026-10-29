import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed760
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody760_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody760_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody760_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody760_3 : StackLang.HolProg 64 :=
.seq NamedBody760_1 NamedBody760_2

def NamedBody760_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody760_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody760_3 NamedBody760_4

def NamedBody760_6 : StackLang.HolProg 64 :=
.seq NamedBody760_0 NamedBody760_5

def NamedBody760_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody760_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody760_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody760_10 : StackLang.HolProg 64 :=
.seq NamedBody760_8 NamedBody760_9

def NamedBody760_11 : StackLang.HolProg 64 :=
.seq NamedBody760_7 NamedBody760_10

def NamedBody760_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody760_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3391#64)

def NamedBody760_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody760_15 : StackLang.HolProg 64 :=
.seq NamedBody760_13 NamedBody760_14

def NamedBody760_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody760_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody760_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody760_19 : StackLang.HolProg 64 :=
.seq NamedBody760_17 NamedBody760_18

def NamedBody760_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody760_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody760_19 NamedBody760_20

def NamedBody760_22 : StackLang.HolProg 64 :=
.seq NamedBody760_16 NamedBody760_21

def NamedBody760_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody760_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody760_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 760 3

def NamedBody760_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody760_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody760_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody760_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody760_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody760_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody760_32 : StackLang.HolProg 64 :=
.seq NamedBody760_30 NamedBody760_31

def NamedBody760_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody760_34 : StackLang.HolProg 64 :=
.seq NamedBody760_32 NamedBody760_33

def NamedBody760_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody760_36 : StackLang.HolProg 64 :=
.seq NamedBody760_34 NamedBody760_35

def NamedBody760_37 : StackLang.HolProg 64 :=
.seq NamedBody760_29 NamedBody760_36

def NamedBody760_38 : StackLang.HolProg 64 :=
.seq NamedBody760_28 NamedBody760_37

def NamedBody760_39 : StackLang.HolProg 64 :=
.seq NamedBody760_27 NamedBody760_38

def NamedBody760_40 : StackLang.HolProg 64 :=
.seq NamedBody760_26 NamedBody760_39

def NamedBody760_41 : StackLang.HolProg 64 :=
.seq NamedBody760_25 NamedBody760_40

def NamedBody760_42 : StackLang.HolProg 64 :=
.seq NamedBody760_24 NamedBody760_41

def NamedBody760_43 : StackLang.HolProg 64 :=
.seq NamedBody760_23 NamedBody760_42

def NamedBody760_44 : StackLang.HolProg 64 :=
.seq NamedBody760_22 NamedBody760_43

def NamedBody760_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody760_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody760_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody760_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody760_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody760_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody760_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody760_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody760_53 : StackLang.HolProg 64 :=
.seq NamedBody760_51 NamedBody760_52

def NamedBody760_54 : StackLang.HolProg 64 :=
.seq NamedBody760_50 NamedBody760_53

def NamedBody760_55 : StackLang.HolProg 64 :=
.seq NamedBody760_49 NamedBody760_54

def NamedBody760_56 : StackLang.HolProg 64 :=
.seq NamedBody760_48 NamedBody760_55

def NamedBody760_57 : StackLang.HolProg 64 :=
.seq NamedBody760_47 NamedBody760_56

def NamedBody760_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody760_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody760_60 : StackLang.HolProg 64 :=
.seq NamedBody760_58 NamedBody760_59

def NamedBody760_61 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody760_62 : StackLang.HolProg 64 :=
.seq NamedBody760_60 NamedBody760_61

def NamedBody760_63 : StackLang.HolProg 64 :=
.call (some (NamedBody760_57, 1, 760, 2)) (Sum.inl 746) (some (NamedBody760_62, 760, 3))

def NamedBody760_64 : StackLang.HolProg 64 :=
.seq NamedBody760_46 NamedBody760_63

def NamedBody760_65 : StackLang.HolProg 64 :=
.seq NamedBody760_45 NamedBody760_64

def NamedBody760_66 : StackLang.HolProg 64 :=
.seq NamedBody760_44 NamedBody760_65

def NamedBody760_67 : StackLang.HolProg 64 :=
.seq NamedBody760_15 NamedBody760_66

def NamedBody760_68 : StackLang.HolProg 64 :=
.seq NamedBody760_12 NamedBody760_67

def NamedBody760_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody760_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody760_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 288#64)))

def NamedBody760_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody760_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 288#64)))

def NamedBody760_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody760_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody760_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3392#64)

def NamedBody760_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody760_78 : StackLang.HolProg 64 :=
.seq NamedBody760_76 NamedBody760_77

def NamedBody760_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody760_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody760_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody760_82 : StackLang.HolProg 64 :=
.seq NamedBody760_80 NamedBody760_81

def NamedBody760_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody760_84 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody760_82 NamedBody760_83

def NamedBody760_85 : StackLang.HolProg 64 :=
.seq NamedBody760_79 NamedBody760_84

def NamedBody760_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody760_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody760_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 760 5

def NamedBody760_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody760_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody760_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody760_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody760_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody760_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody760_95 : StackLang.HolProg 64 :=
.seq NamedBody760_93 NamedBody760_94

def NamedBody760_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody760_97 : StackLang.HolProg 64 :=
.seq NamedBody760_95 NamedBody760_96

def NamedBody760_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody760_99 : StackLang.HolProg 64 :=
.seq NamedBody760_97 NamedBody760_98

def NamedBody760_100 : StackLang.HolProg 64 :=
.seq NamedBody760_92 NamedBody760_99

def NamedBody760_101 : StackLang.HolProg 64 :=
.seq NamedBody760_91 NamedBody760_100

def NamedBody760_102 : StackLang.HolProg 64 :=
.seq NamedBody760_90 NamedBody760_101

def NamedBody760_103 : StackLang.HolProg 64 :=
.seq NamedBody760_89 NamedBody760_102

def NamedBody760_104 : StackLang.HolProg 64 :=
.seq NamedBody760_88 NamedBody760_103

def NamedBody760_105 : StackLang.HolProg 64 :=
.seq NamedBody760_87 NamedBody760_104

def NamedBody760_106 : StackLang.HolProg 64 :=
.seq NamedBody760_86 NamedBody760_105

def NamedBody760_107 : StackLang.HolProg 64 :=
.seq NamedBody760_85 NamedBody760_106

def NamedBody760_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody760_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody760_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody760_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody760_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody760_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody760_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody760_115 : StackLang.HolProg 64 :=
.seq NamedBody760_113 NamedBody760_114

def NamedBody760_116 : StackLang.HolProg 64 :=
.seq NamedBody760_112 NamedBody760_115

def NamedBody760_117 : StackLang.HolProg 64 :=
.seq NamedBody760_111 NamedBody760_116

def NamedBody760_118 : StackLang.HolProg 64 :=
.seq NamedBody760_110 NamedBody760_117

def NamedBody760_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody760_120 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody760_121 : StackLang.HolProg 64 :=
.seq NamedBody760_119 NamedBody760_120

def NamedBody760_122 : StackLang.HolProg 64 :=
.call (some (NamedBody760_118, 1, 760, 4)) (Sum.inl 751) (some (NamedBody760_121, 760, 5))

def NamedBody760_123 : StackLang.HolProg 64 :=
.seq NamedBody760_109 NamedBody760_122

def NamedBody760_124 : StackLang.HolProg 64 :=
.seq NamedBody760_108 NamedBody760_123

def NamedBody760_125 : StackLang.HolProg 64 :=
.seq NamedBody760_107 NamedBody760_124

def NamedBody760_126 : StackLang.HolProg 64 :=
.seq NamedBody760_78 NamedBody760_125

def NamedBody760_127 : StackLang.HolProg 64 :=
.seq NamedBody760_75 NamedBody760_126

def NamedBody760_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody760_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody760_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody760_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody760_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody760_133 : StackLang.HolProg 64 :=
.seq NamedBody760_131 NamedBody760_132

def NamedBody760_134 : StackLang.HolProg 64 :=
.seq NamedBody760_130 NamedBody760_133

def NamedBody760_135 : StackLang.HolProg 64 :=
.seq NamedBody760_129 NamedBody760_134

def NamedBody760_136 : StackLang.HolProg 64 :=
.seq NamedBody760_128 NamedBody760_135

def NamedBody760_137 : StackLang.HolProg 64 :=
.seq NamedBody760_127 NamedBody760_136

def NamedBody760_138 : StackLang.HolProg 64 :=
.seq NamedBody760_74 NamedBody760_137

def NamedBody760_139 : StackLang.HolProg 64 :=
.seq NamedBody760_73 NamedBody760_138

def NamedBody760_140 : StackLang.HolProg 64 :=
.seq NamedBody760_72 NamedBody760_139

def NamedBody760_141 : StackLang.HolProg 64 :=
.seq NamedBody760_71 NamedBody760_140

def NamedBody760_142 : StackLang.HolProg 64 :=
.seq NamedBody760_70 NamedBody760_141

def NamedBody760_143 : StackLang.HolProg 64 :=
.seq NamedBody760_69 NamedBody760_142

def NamedBody760_144 : StackLang.HolProg 64 :=
.seq NamedBody760_68 NamedBody760_143

def NamedBody760_145 : StackLang.HolProg 64 :=
.seq NamedBody760_11 NamedBody760_144

def NamedBody760_146 : StackLang.HolProg 64 :=
.seq NamedBody760_6 NamedBody760_145

def Named760 : Nat × StackLang.HolProg 64 := (760, NamedBody760_146)
theorem Named760_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed760 = Named760 := by
  kernel_rfl
#print axioms Named760_eq
end InitECandidate.Proofs.BackendStages
