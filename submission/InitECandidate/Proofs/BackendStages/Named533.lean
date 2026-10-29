import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed533
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody533_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody533_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody533_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody533_3 : StackLang.HolProg 64 :=
.seq NamedBody533_1 NamedBody533_2

def NamedBody533_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody533_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody533_3 NamedBody533_4

def NamedBody533_6 : StackLang.HolProg 64 :=
.seq NamedBody533_0 NamedBody533_5

def NamedBody533_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody533_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody533_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody533_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody533_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1752#64)

def NamedBody533_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody533_13 : StackLang.HolProg 64 :=
.seq NamedBody533_11 NamedBody533_12

def NamedBody533_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody533_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody533_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody533_17 : StackLang.HolProg 64 :=
.seq NamedBody533_15 NamedBody533_16

def NamedBody533_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody533_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody533_17 NamedBody533_18

def NamedBody533_20 : StackLang.HolProg 64 :=
.seq NamedBody533_14 NamedBody533_19

def NamedBody533_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody533_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody533_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 533 3

def NamedBody533_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody533_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody533_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody533_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody533_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody533_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody533_30 : StackLang.HolProg 64 :=
.seq NamedBody533_28 NamedBody533_29

def NamedBody533_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody533_32 : StackLang.HolProg 64 :=
.seq NamedBody533_30 NamedBody533_31

def NamedBody533_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody533_34 : StackLang.HolProg 64 :=
.seq NamedBody533_32 NamedBody533_33

def NamedBody533_35 : StackLang.HolProg 64 :=
.seq NamedBody533_27 NamedBody533_34

def NamedBody533_36 : StackLang.HolProg 64 :=
.seq NamedBody533_26 NamedBody533_35

def NamedBody533_37 : StackLang.HolProg 64 :=
.seq NamedBody533_25 NamedBody533_36

def NamedBody533_38 : StackLang.HolProg 64 :=
.seq NamedBody533_24 NamedBody533_37

def NamedBody533_39 : StackLang.HolProg 64 :=
.seq NamedBody533_23 NamedBody533_38

def NamedBody533_40 : StackLang.HolProg 64 :=
.seq NamedBody533_22 NamedBody533_39

def NamedBody533_41 : StackLang.HolProg 64 :=
.seq NamedBody533_21 NamedBody533_40

def NamedBody533_42 : StackLang.HolProg 64 :=
.seq NamedBody533_20 NamedBody533_41

def NamedBody533_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody533_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody533_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody533_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody533_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody533_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody533_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody533_50 : StackLang.HolProg 64 :=
.seq NamedBody533_48 NamedBody533_49

def NamedBody533_51 : StackLang.HolProg 64 :=
.seq NamedBody533_47 NamedBody533_50

def NamedBody533_52 : StackLang.HolProg 64 :=
.seq NamedBody533_46 NamedBody533_51

def NamedBody533_53 : StackLang.HolProg 64 :=
.seq NamedBody533_45 NamedBody533_52

def NamedBody533_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody533_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody533_56 : StackLang.HolProg 64 :=
.seq NamedBody533_54 NamedBody533_55

def NamedBody533_57 : StackLang.HolProg 64 :=
.call (some (NamedBody533_53, 1, 533, 2)) (Sum.inl 470) (some (NamedBody533_56, 533, 3))

def NamedBody533_58 : StackLang.HolProg 64 :=
.seq NamedBody533_44 NamedBody533_57

def NamedBody533_59 : StackLang.HolProg 64 :=
.seq NamedBody533_43 NamedBody533_58

def NamedBody533_60 : StackLang.HolProg 64 :=
.seq NamedBody533_42 NamedBody533_59

def NamedBody533_61 : StackLang.HolProg 64 :=
.seq NamedBody533_13 NamedBody533_60

def NamedBody533_62 : StackLang.HolProg 64 :=
.seq NamedBody533_10 NamedBody533_61

def NamedBody533_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody533_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody533_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody533_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody533_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def NamedBody533_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 32#64))

def NamedBody533_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody533_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody533_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1753#64)

def NamedBody533_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody533_73 : StackLang.HolProg 64 :=
.seq NamedBody533_71 NamedBody533_72

def NamedBody533_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody533_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody533_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody533_77 : StackLang.HolProg 64 :=
.seq NamedBody533_75 NamedBody533_76

def NamedBody533_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody533_79 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody533_77 NamedBody533_78

def NamedBody533_80 : StackLang.HolProg 64 :=
.seq NamedBody533_74 NamedBody533_79

def NamedBody533_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody533_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody533_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 533 5

def NamedBody533_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody533_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody533_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody533_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody533_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody533_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody533_90 : StackLang.HolProg 64 :=
.seq NamedBody533_88 NamedBody533_89

def NamedBody533_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody533_92 : StackLang.HolProg 64 :=
.seq NamedBody533_90 NamedBody533_91

def NamedBody533_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody533_94 : StackLang.HolProg 64 :=
.seq NamedBody533_92 NamedBody533_93

def NamedBody533_95 : StackLang.HolProg 64 :=
.seq NamedBody533_87 NamedBody533_94

def NamedBody533_96 : StackLang.HolProg 64 :=
.seq NamedBody533_86 NamedBody533_95

def NamedBody533_97 : StackLang.HolProg 64 :=
.seq NamedBody533_85 NamedBody533_96

def NamedBody533_98 : StackLang.HolProg 64 :=
.seq NamedBody533_84 NamedBody533_97

def NamedBody533_99 : StackLang.HolProg 64 :=
.seq NamedBody533_83 NamedBody533_98

def NamedBody533_100 : StackLang.HolProg 64 :=
.seq NamedBody533_82 NamedBody533_99

def NamedBody533_101 : StackLang.HolProg 64 :=
.seq NamedBody533_81 NamedBody533_100

def NamedBody533_102 : StackLang.HolProg 64 :=
.seq NamedBody533_80 NamedBody533_101

def NamedBody533_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody533_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody533_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody533_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody533_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody533_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody533_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody533_110 : StackLang.HolProg 64 :=
.seq NamedBody533_108 NamedBody533_109

def NamedBody533_111 : StackLang.HolProg 64 :=
.seq NamedBody533_107 NamedBody533_110

def NamedBody533_112 : StackLang.HolProg 64 :=
.seq NamedBody533_106 NamedBody533_111

def NamedBody533_113 : StackLang.HolProg 64 :=
.seq NamedBody533_105 NamedBody533_112

def NamedBody533_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody533_115 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody533_116 : StackLang.HolProg 64 :=
.seq NamedBody533_114 NamedBody533_115

def NamedBody533_117 : StackLang.HolProg 64 :=
.call (some (NamedBody533_113, 1, 533, 4)) (Sum.inl 477) (some (NamedBody533_116, 533, 5))

def NamedBody533_118 : StackLang.HolProg 64 :=
.seq NamedBody533_104 NamedBody533_117

def NamedBody533_119 : StackLang.HolProg 64 :=
.seq NamedBody533_103 NamedBody533_118

def NamedBody533_120 : StackLang.HolProg 64 :=
.seq NamedBody533_102 NamedBody533_119

def NamedBody533_121 : StackLang.HolProg 64 :=
.seq NamedBody533_73 NamedBody533_120

def NamedBody533_122 : StackLang.HolProg 64 :=
.seq NamedBody533_70 NamedBody533_121

def NamedBody533_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody533_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody533_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody533_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody533_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1754#64)

def NamedBody533_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody533_129 : StackLang.HolProg 64 :=
.seq NamedBody533_127 NamedBody533_128

def NamedBody533_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody533_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody533_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody533_133 : StackLang.HolProg 64 :=
.seq NamedBody533_131 NamedBody533_132

def NamedBody533_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody533_135 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody533_133 NamedBody533_134

def NamedBody533_136 : StackLang.HolProg 64 :=
.seq NamedBody533_130 NamedBody533_135

def NamedBody533_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody533_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody533_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 533 7

def NamedBody533_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody533_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody533_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody533_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody533_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody533_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody533_146 : StackLang.HolProg 64 :=
.seq NamedBody533_144 NamedBody533_145

def NamedBody533_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody533_148 : StackLang.HolProg 64 :=
.seq NamedBody533_146 NamedBody533_147

def NamedBody533_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody533_150 : StackLang.HolProg 64 :=
.seq NamedBody533_148 NamedBody533_149

def NamedBody533_151 : StackLang.HolProg 64 :=
.seq NamedBody533_143 NamedBody533_150

def NamedBody533_152 : StackLang.HolProg 64 :=
.seq NamedBody533_142 NamedBody533_151

def NamedBody533_153 : StackLang.HolProg 64 :=
.seq NamedBody533_141 NamedBody533_152

def NamedBody533_154 : StackLang.HolProg 64 :=
.seq NamedBody533_140 NamedBody533_153

def NamedBody533_155 : StackLang.HolProg 64 :=
.seq NamedBody533_139 NamedBody533_154

def NamedBody533_156 : StackLang.HolProg 64 :=
.seq NamedBody533_138 NamedBody533_155

def NamedBody533_157 : StackLang.HolProg 64 :=
.seq NamedBody533_137 NamedBody533_156

def NamedBody533_158 : StackLang.HolProg 64 :=
.seq NamedBody533_136 NamedBody533_157

def NamedBody533_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody533_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody533_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody533_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody533_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody533_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody533_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody533_166 : StackLang.HolProg 64 :=
.seq NamedBody533_164 NamedBody533_165

def NamedBody533_167 : StackLang.HolProg 64 :=
.seq NamedBody533_163 NamedBody533_166

def NamedBody533_168 : StackLang.HolProg 64 :=
.seq NamedBody533_162 NamedBody533_167

def NamedBody533_169 : StackLang.HolProg 64 :=
.seq NamedBody533_161 NamedBody533_168

def NamedBody533_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody533_171 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody533_172 : StackLang.HolProg 64 :=
.seq NamedBody533_170 NamedBody533_171

def NamedBody533_173 : StackLang.HolProg 64 :=
.call (some (NamedBody533_169, 1, 533, 6)) (Sum.inl 490) (some (NamedBody533_172, 533, 7))

def NamedBody533_174 : StackLang.HolProg 64 :=
.seq NamedBody533_160 NamedBody533_173

def NamedBody533_175 : StackLang.HolProg 64 :=
.seq NamedBody533_159 NamedBody533_174

def NamedBody533_176 : StackLang.HolProg 64 :=
.seq NamedBody533_158 NamedBody533_175

def NamedBody533_177 : StackLang.HolProg 64 :=
.seq NamedBody533_129 NamedBody533_176

def NamedBody533_178 : StackLang.HolProg 64 :=
.seq NamedBody533_126 NamedBody533_177

def NamedBody533_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody533_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody533_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody533_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody533_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody533_184 : StackLang.HolProg 64 :=
.seq NamedBody533_182 NamedBody533_183

def NamedBody533_185 : StackLang.HolProg 64 :=
.seq NamedBody533_181 NamedBody533_184

def NamedBody533_186 : StackLang.HolProg 64 :=
.seq NamedBody533_180 NamedBody533_185

def NamedBody533_187 : StackLang.HolProg 64 :=
.seq NamedBody533_179 NamedBody533_186

def NamedBody533_188 : StackLang.HolProg 64 :=
.seq NamedBody533_178 NamedBody533_187

def NamedBody533_189 : StackLang.HolProg 64 :=
.seq NamedBody533_125 NamedBody533_188

def NamedBody533_190 : StackLang.HolProg 64 :=
.seq NamedBody533_124 NamedBody533_189

def NamedBody533_191 : StackLang.HolProg 64 :=
.seq NamedBody533_123 NamedBody533_190

def NamedBody533_192 : StackLang.HolProg 64 :=
.seq NamedBody533_122 NamedBody533_191

def NamedBody533_193 : StackLang.HolProg 64 :=
.seq NamedBody533_69 NamedBody533_192

def NamedBody533_194 : StackLang.HolProg 64 :=
.seq NamedBody533_68 NamedBody533_193

def NamedBody533_195 : StackLang.HolProg 64 :=
.seq NamedBody533_67 NamedBody533_194

def NamedBody533_196 : StackLang.HolProg 64 :=
.seq NamedBody533_66 NamedBody533_195

def NamedBody533_197 : StackLang.HolProg 64 :=
.seq NamedBody533_65 NamedBody533_196

def NamedBody533_198 : StackLang.HolProg 64 :=
.seq NamedBody533_64 NamedBody533_197

def NamedBody533_199 : StackLang.HolProg 64 :=
.seq NamedBody533_63 NamedBody533_198

def NamedBody533_200 : StackLang.HolProg 64 :=
.seq NamedBody533_62 NamedBody533_199

def NamedBody533_201 : StackLang.HolProg 64 :=
.seq NamedBody533_9 NamedBody533_200

def NamedBody533_202 : StackLang.HolProg 64 :=
.seq NamedBody533_8 NamedBody533_201

def NamedBody533_203 : StackLang.HolProg 64 :=
.seq NamedBody533_7 NamedBody533_202

def NamedBody533_204 : StackLang.HolProg 64 :=
.seq NamedBody533_6 NamedBody533_203

def Named533 : Nat × StackLang.HolProg 64 := (533, NamedBody533_204)
theorem Named533_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed533 = Named533 := by
  kernel_rfl
#print axioms Named533_eq
end InitECandidate.Proofs.BackendStages
