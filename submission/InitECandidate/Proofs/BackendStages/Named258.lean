import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed258
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody258_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody258_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody258_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody258_3 : StackLang.HolProg 64 :=
.seq NamedBody258_1 NamedBody258_2

def NamedBody258_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody258_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody258_3 NamedBody258_4

def NamedBody258_6 : StackLang.HolProg 64 :=
.seq NamedBody258_0 NamedBody258_5

def NamedBody258_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody258_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody258_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody258_10 : StackLang.HolProg 64 :=
.seq NamedBody258_8 NamedBody258_9

def NamedBody258_11 : StackLang.HolProg 64 :=
.seq NamedBody258_7 NamedBody258_10

def NamedBody258_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody258_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 558#64)

def NamedBody258_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody258_15 : StackLang.HolProg 64 :=
.seq NamedBody258_13 NamedBody258_14

def NamedBody258_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody258_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody258_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody258_19 : StackLang.HolProg 64 :=
.seq NamedBody258_17 NamedBody258_18

def NamedBody258_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody258_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody258_19 NamedBody258_20

def NamedBody258_22 : StackLang.HolProg 64 :=
.seq NamedBody258_16 NamedBody258_21

def NamedBody258_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody258_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody258_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 258 3

def NamedBody258_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody258_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody258_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody258_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody258_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody258_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody258_32 : StackLang.HolProg 64 :=
.seq NamedBody258_30 NamedBody258_31

def NamedBody258_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody258_34 : StackLang.HolProg 64 :=
.seq NamedBody258_32 NamedBody258_33

def NamedBody258_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody258_36 : StackLang.HolProg 64 :=
.seq NamedBody258_34 NamedBody258_35

def NamedBody258_37 : StackLang.HolProg 64 :=
.seq NamedBody258_29 NamedBody258_36

def NamedBody258_38 : StackLang.HolProg 64 :=
.seq NamedBody258_28 NamedBody258_37

def NamedBody258_39 : StackLang.HolProg 64 :=
.seq NamedBody258_27 NamedBody258_38

def NamedBody258_40 : StackLang.HolProg 64 :=
.seq NamedBody258_26 NamedBody258_39

def NamedBody258_41 : StackLang.HolProg 64 :=
.seq NamedBody258_25 NamedBody258_40

def NamedBody258_42 : StackLang.HolProg 64 :=
.seq NamedBody258_24 NamedBody258_41

def NamedBody258_43 : StackLang.HolProg 64 :=
.seq NamedBody258_23 NamedBody258_42

def NamedBody258_44 : StackLang.HolProg 64 :=
.seq NamedBody258_22 NamedBody258_43

def NamedBody258_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody258_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody258_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody258_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody258_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody258_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody258_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody258_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody258_53 : StackLang.HolProg 64 :=
.seq NamedBody258_51 NamedBody258_52

def NamedBody258_54 : StackLang.HolProg 64 :=
.seq NamedBody258_50 NamedBody258_53

def NamedBody258_55 : StackLang.HolProg 64 :=
.seq NamedBody258_49 NamedBody258_54

def NamedBody258_56 : StackLang.HolProg 64 :=
.seq NamedBody258_48 NamedBody258_55

def NamedBody258_57 : StackLang.HolProg 64 :=
.seq NamedBody258_47 NamedBody258_56

def NamedBody258_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody258_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody258_60 : StackLang.HolProg 64 :=
.seq NamedBody258_58 NamedBody258_59

def NamedBody258_61 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody258_62 : StackLang.HolProg 64 :=
.seq NamedBody258_60 NamedBody258_61

def NamedBody258_63 : StackLang.HolProg 64 :=
.call (some (NamedBody258_57, 1, 258, 2)) (Sum.inl 235) (some (NamedBody258_62, 258, 3))

def NamedBody258_64 : StackLang.HolProg 64 :=
.seq NamedBody258_46 NamedBody258_63

def NamedBody258_65 : StackLang.HolProg 64 :=
.seq NamedBody258_45 NamedBody258_64

def NamedBody258_66 : StackLang.HolProg 64 :=
.seq NamedBody258_44 NamedBody258_65

def NamedBody258_67 : StackLang.HolProg 64 :=
.seq NamedBody258_15 NamedBody258_66

def NamedBody258_68 : StackLang.HolProg 64 :=
.seq NamedBody258_12 NamedBody258_67

def NamedBody258_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody258_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody258_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody258_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 559#64)

def NamedBody258_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody258_74 : StackLang.HolProg 64 :=
.seq NamedBody258_72 NamedBody258_73

def NamedBody258_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody258_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody258_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody258_78 : StackLang.HolProg 64 :=
.seq NamedBody258_76 NamedBody258_77

def NamedBody258_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody258_80 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody258_78 NamedBody258_79

def NamedBody258_81 : StackLang.HolProg 64 :=
.seq NamedBody258_75 NamedBody258_80

def NamedBody258_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody258_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody258_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 258 5

def NamedBody258_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody258_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody258_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody258_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody258_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody258_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody258_91 : StackLang.HolProg 64 :=
.seq NamedBody258_89 NamedBody258_90

def NamedBody258_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody258_93 : StackLang.HolProg 64 :=
.seq NamedBody258_91 NamedBody258_92

def NamedBody258_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody258_95 : StackLang.HolProg 64 :=
.seq NamedBody258_93 NamedBody258_94

def NamedBody258_96 : StackLang.HolProg 64 :=
.seq NamedBody258_88 NamedBody258_95

def NamedBody258_97 : StackLang.HolProg 64 :=
.seq NamedBody258_87 NamedBody258_96

def NamedBody258_98 : StackLang.HolProg 64 :=
.seq NamedBody258_86 NamedBody258_97

def NamedBody258_99 : StackLang.HolProg 64 :=
.seq NamedBody258_85 NamedBody258_98

def NamedBody258_100 : StackLang.HolProg 64 :=
.seq NamedBody258_84 NamedBody258_99

def NamedBody258_101 : StackLang.HolProg 64 :=
.seq NamedBody258_83 NamedBody258_100

def NamedBody258_102 : StackLang.HolProg 64 :=
.seq NamedBody258_82 NamedBody258_101

def NamedBody258_103 : StackLang.HolProg 64 :=
.seq NamedBody258_81 NamedBody258_102

def NamedBody258_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody258_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody258_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody258_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody258_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody258_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody258_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody258_111 : StackLang.HolProg 64 :=
.seq NamedBody258_109 NamedBody258_110

def NamedBody258_112 : StackLang.HolProg 64 :=
.seq NamedBody258_108 NamedBody258_111

def NamedBody258_113 : StackLang.HolProg 64 :=
.seq NamedBody258_107 NamedBody258_112

def NamedBody258_114 : StackLang.HolProg 64 :=
.seq NamedBody258_106 NamedBody258_113

def NamedBody258_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody258_116 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody258_117 : StackLang.HolProg 64 :=
.seq NamedBody258_115 NamedBody258_116

def NamedBody258_118 : StackLang.HolProg 64 :=
.call (some (NamedBody258_114, 1, 258, 4)) (Sum.inl 236) (some (NamedBody258_117, 258, 5))

def NamedBody258_119 : StackLang.HolProg 64 :=
.seq NamedBody258_105 NamedBody258_118

def NamedBody258_120 : StackLang.HolProg 64 :=
.seq NamedBody258_104 NamedBody258_119

def NamedBody258_121 : StackLang.HolProg 64 :=
.seq NamedBody258_103 NamedBody258_120

def NamedBody258_122 : StackLang.HolProg 64 :=
.seq NamedBody258_74 NamedBody258_121

def NamedBody258_123 : StackLang.HolProg 64 :=
.seq NamedBody258_71 NamedBody258_122

def NamedBody258_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody258_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody258_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody258_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody258_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody258_129 : StackLang.HolProg 64 :=
.seq NamedBody258_127 NamedBody258_128

def NamedBody258_130 : StackLang.HolProg 64 :=
.seq NamedBody258_126 NamedBody258_129

def NamedBody258_131 : StackLang.HolProg 64 :=
.seq NamedBody258_125 NamedBody258_130

def NamedBody258_132 : StackLang.HolProg 64 :=
.seq NamedBody258_124 NamedBody258_131

def NamedBody258_133 : StackLang.HolProg 64 :=
.seq NamedBody258_123 NamedBody258_132

def NamedBody258_134 : StackLang.HolProg 64 :=
.seq NamedBody258_70 NamedBody258_133

def NamedBody258_135 : StackLang.HolProg 64 :=
.seq NamedBody258_69 NamedBody258_134

def NamedBody258_136 : StackLang.HolProg 64 :=
.seq NamedBody258_68 NamedBody258_135

def NamedBody258_137 : StackLang.HolProg 64 :=
.seq NamedBody258_11 NamedBody258_136

def NamedBody258_138 : StackLang.HolProg 64 :=
.seq NamedBody258_6 NamedBody258_137

def Named258 : Nat × StackLang.HolProg 64 := (258, NamedBody258_138)
theorem Named258_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed258 = Named258 := by
  kernel_rfl
#print axioms Named258_eq
end InitECandidate.Proofs.BackendStages
