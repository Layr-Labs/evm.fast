import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed555
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody555_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody555_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody555_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody555_3 : StackLang.HolProg 64 :=
.seq NamedBody555_1 NamedBody555_2

def NamedBody555_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody555_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody555_3 NamedBody555_4

def NamedBody555_6 : StackLang.HolProg 64 :=
.seq NamedBody555_0 NamedBody555_5

def NamedBody555_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody555_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody555_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody555_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody555_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1887#64)

def NamedBody555_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody555_13 : StackLang.HolProg 64 :=
.seq NamedBody555_11 NamedBody555_12

def NamedBody555_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody555_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody555_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody555_17 : StackLang.HolProg 64 :=
.seq NamedBody555_15 NamedBody555_16

def NamedBody555_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody555_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody555_17 NamedBody555_18

def NamedBody555_20 : StackLang.HolProg 64 :=
.seq NamedBody555_14 NamedBody555_19

def NamedBody555_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody555_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody555_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 555 3

def NamedBody555_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody555_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody555_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody555_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody555_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody555_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody555_30 : StackLang.HolProg 64 :=
.seq NamedBody555_28 NamedBody555_29

def NamedBody555_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody555_32 : StackLang.HolProg 64 :=
.seq NamedBody555_30 NamedBody555_31

def NamedBody555_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody555_34 : StackLang.HolProg 64 :=
.seq NamedBody555_32 NamedBody555_33

def NamedBody555_35 : StackLang.HolProg 64 :=
.seq NamedBody555_27 NamedBody555_34

def NamedBody555_36 : StackLang.HolProg 64 :=
.seq NamedBody555_26 NamedBody555_35

def NamedBody555_37 : StackLang.HolProg 64 :=
.seq NamedBody555_25 NamedBody555_36

def NamedBody555_38 : StackLang.HolProg 64 :=
.seq NamedBody555_24 NamedBody555_37

def NamedBody555_39 : StackLang.HolProg 64 :=
.seq NamedBody555_23 NamedBody555_38

def NamedBody555_40 : StackLang.HolProg 64 :=
.seq NamedBody555_22 NamedBody555_39

def NamedBody555_41 : StackLang.HolProg 64 :=
.seq NamedBody555_21 NamedBody555_40

def NamedBody555_42 : StackLang.HolProg 64 :=
.seq NamedBody555_20 NamedBody555_41

def NamedBody555_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody555_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody555_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody555_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody555_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody555_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody555_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody555_50 : StackLang.HolProg 64 :=
.seq NamedBody555_48 NamedBody555_49

def NamedBody555_51 : StackLang.HolProg 64 :=
.seq NamedBody555_47 NamedBody555_50

def NamedBody555_52 : StackLang.HolProg 64 :=
.seq NamedBody555_46 NamedBody555_51

def NamedBody555_53 : StackLang.HolProg 64 :=
.seq NamedBody555_45 NamedBody555_52

def NamedBody555_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody555_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody555_56 : StackLang.HolProg 64 :=
.seq NamedBody555_54 NamedBody555_55

def NamedBody555_57 : StackLang.HolProg 64 :=
.call (some (NamedBody555_53, 1, 555, 2)) (Sum.inl 470) (some (NamedBody555_56, 555, 3))

def NamedBody555_58 : StackLang.HolProg 64 :=
.seq NamedBody555_44 NamedBody555_57

def NamedBody555_59 : StackLang.HolProg 64 :=
.seq NamedBody555_43 NamedBody555_58

def NamedBody555_60 : StackLang.HolProg 64 :=
.seq NamedBody555_42 NamedBody555_59

def NamedBody555_61 : StackLang.HolProg 64 :=
.seq NamedBody555_13 NamedBody555_60

def NamedBody555_62 : StackLang.HolProg 64 :=
.seq NamedBody555_10 NamedBody555_61

def NamedBody555_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody555_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody555_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody555_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody555_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def NamedBody555_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 112#64))

def NamedBody555_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def NamedBody555_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody555_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def NamedBody555_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody555_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody555_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1888#64)

def NamedBody555_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody555_76 : StackLang.HolProg 64 :=
.seq NamedBody555_74 NamedBody555_75

def NamedBody555_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody555_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody555_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody555_80 : StackLang.HolProg 64 :=
.seq NamedBody555_78 NamedBody555_79

def NamedBody555_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody555_82 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody555_80 NamedBody555_81

def NamedBody555_83 : StackLang.HolProg 64 :=
.seq NamedBody555_77 NamedBody555_82

def NamedBody555_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody555_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody555_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 555 5

def NamedBody555_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody555_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody555_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody555_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody555_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody555_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody555_93 : StackLang.HolProg 64 :=
.seq NamedBody555_91 NamedBody555_92

def NamedBody555_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody555_95 : StackLang.HolProg 64 :=
.seq NamedBody555_93 NamedBody555_94

def NamedBody555_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody555_97 : StackLang.HolProg 64 :=
.seq NamedBody555_95 NamedBody555_96

def NamedBody555_98 : StackLang.HolProg 64 :=
.seq NamedBody555_90 NamedBody555_97

def NamedBody555_99 : StackLang.HolProg 64 :=
.seq NamedBody555_89 NamedBody555_98

def NamedBody555_100 : StackLang.HolProg 64 :=
.seq NamedBody555_88 NamedBody555_99

def NamedBody555_101 : StackLang.HolProg 64 :=
.seq NamedBody555_87 NamedBody555_100

def NamedBody555_102 : StackLang.HolProg 64 :=
.seq NamedBody555_86 NamedBody555_101

def NamedBody555_103 : StackLang.HolProg 64 :=
.seq NamedBody555_85 NamedBody555_102

def NamedBody555_104 : StackLang.HolProg 64 :=
.seq NamedBody555_84 NamedBody555_103

def NamedBody555_105 : StackLang.HolProg 64 :=
.seq NamedBody555_83 NamedBody555_104

def NamedBody555_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody555_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody555_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody555_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody555_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody555_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody555_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody555_113 : StackLang.HolProg 64 :=
.seq NamedBody555_111 NamedBody555_112

def NamedBody555_114 : StackLang.HolProg 64 :=
.seq NamedBody555_110 NamedBody555_113

def NamedBody555_115 : StackLang.HolProg 64 :=
.seq NamedBody555_109 NamedBody555_114

def NamedBody555_116 : StackLang.HolProg 64 :=
.seq NamedBody555_108 NamedBody555_115

def NamedBody555_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody555_118 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody555_119 : StackLang.HolProg 64 :=
.seq NamedBody555_117 NamedBody555_118

def NamedBody555_120 : StackLang.HolProg 64 :=
.call (some (NamedBody555_116, 1, 555, 4)) (Sum.inl 467) (some (NamedBody555_119, 555, 5))

def NamedBody555_121 : StackLang.HolProg 64 :=
.seq NamedBody555_107 NamedBody555_120

def NamedBody555_122 : StackLang.HolProg 64 :=
.seq NamedBody555_106 NamedBody555_121

def NamedBody555_123 : StackLang.HolProg 64 :=
.seq NamedBody555_105 NamedBody555_122

def NamedBody555_124 : StackLang.HolProg 64 :=
.seq NamedBody555_76 NamedBody555_123

def NamedBody555_125 : StackLang.HolProg 64 :=
.seq NamedBody555_73 NamedBody555_124

def NamedBody555_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody555_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody555_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody555_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1889#64)

def NamedBody555_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody555_131 : StackLang.HolProg 64 :=
.seq NamedBody555_129 NamedBody555_130

def NamedBody555_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody555_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody555_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody555_135 : StackLang.HolProg 64 :=
.seq NamedBody555_133 NamedBody555_134

def NamedBody555_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody555_137 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody555_135 NamedBody555_136

def NamedBody555_138 : StackLang.HolProg 64 :=
.seq NamedBody555_132 NamedBody555_137

def NamedBody555_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody555_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody555_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 555 7

def NamedBody555_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody555_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody555_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody555_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody555_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody555_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody555_148 : StackLang.HolProg 64 :=
.seq NamedBody555_146 NamedBody555_147

def NamedBody555_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody555_150 : StackLang.HolProg 64 :=
.seq NamedBody555_148 NamedBody555_149

def NamedBody555_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody555_152 : StackLang.HolProg 64 :=
.seq NamedBody555_150 NamedBody555_151

def NamedBody555_153 : StackLang.HolProg 64 :=
.seq NamedBody555_145 NamedBody555_152

def NamedBody555_154 : StackLang.HolProg 64 :=
.seq NamedBody555_144 NamedBody555_153

def NamedBody555_155 : StackLang.HolProg 64 :=
.seq NamedBody555_143 NamedBody555_154

def NamedBody555_156 : StackLang.HolProg 64 :=
.seq NamedBody555_142 NamedBody555_155

def NamedBody555_157 : StackLang.HolProg 64 :=
.seq NamedBody555_141 NamedBody555_156

def NamedBody555_158 : StackLang.HolProg 64 :=
.seq NamedBody555_140 NamedBody555_157

def NamedBody555_159 : StackLang.HolProg 64 :=
.seq NamedBody555_139 NamedBody555_158

def NamedBody555_160 : StackLang.HolProg 64 :=
.seq NamedBody555_138 NamedBody555_159

def NamedBody555_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody555_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody555_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody555_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody555_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody555_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody555_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody555_168 : StackLang.HolProg 64 :=
.seq NamedBody555_166 NamedBody555_167

def NamedBody555_169 : StackLang.HolProg 64 :=
.seq NamedBody555_165 NamedBody555_168

def NamedBody555_170 : StackLang.HolProg 64 :=
.seq NamedBody555_164 NamedBody555_169

def NamedBody555_171 : StackLang.HolProg 64 :=
.seq NamedBody555_163 NamedBody555_170

def NamedBody555_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody555_173 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody555_174 : StackLang.HolProg 64 :=
.seq NamedBody555_172 NamedBody555_173

def NamedBody555_175 : StackLang.HolProg 64 :=
.call (some (NamedBody555_171, 1, 555, 6)) (Sum.inl 476) (some (NamedBody555_174, 555, 7))

def NamedBody555_176 : StackLang.HolProg 64 :=
.seq NamedBody555_162 NamedBody555_175

def NamedBody555_177 : StackLang.HolProg 64 :=
.seq NamedBody555_161 NamedBody555_176

def NamedBody555_178 : StackLang.HolProg 64 :=
.seq NamedBody555_160 NamedBody555_177

def NamedBody555_179 : StackLang.HolProg 64 :=
.seq NamedBody555_131 NamedBody555_178

def NamedBody555_180 : StackLang.HolProg 64 :=
.seq NamedBody555_128 NamedBody555_179

def NamedBody555_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody555_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody555_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody555_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody555_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1890#64)

def NamedBody555_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody555_187 : StackLang.HolProg 64 :=
.seq NamedBody555_185 NamedBody555_186

def NamedBody555_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody555_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody555_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody555_191 : StackLang.HolProg 64 :=
.seq NamedBody555_189 NamedBody555_190

def NamedBody555_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody555_193 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody555_191 NamedBody555_192

def NamedBody555_194 : StackLang.HolProg 64 :=
.seq NamedBody555_188 NamedBody555_193

def NamedBody555_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody555_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody555_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 555 9

def NamedBody555_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody555_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody555_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody555_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody555_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody555_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody555_204 : StackLang.HolProg 64 :=
.seq NamedBody555_202 NamedBody555_203

def NamedBody555_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody555_206 : StackLang.HolProg 64 :=
.seq NamedBody555_204 NamedBody555_205

def NamedBody555_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody555_208 : StackLang.HolProg 64 :=
.seq NamedBody555_206 NamedBody555_207

def NamedBody555_209 : StackLang.HolProg 64 :=
.seq NamedBody555_201 NamedBody555_208

def NamedBody555_210 : StackLang.HolProg 64 :=
.seq NamedBody555_200 NamedBody555_209

def NamedBody555_211 : StackLang.HolProg 64 :=
.seq NamedBody555_199 NamedBody555_210

def NamedBody555_212 : StackLang.HolProg 64 :=
.seq NamedBody555_198 NamedBody555_211

def NamedBody555_213 : StackLang.HolProg 64 :=
.seq NamedBody555_197 NamedBody555_212

def NamedBody555_214 : StackLang.HolProg 64 :=
.seq NamedBody555_196 NamedBody555_213

def NamedBody555_215 : StackLang.HolProg 64 :=
.seq NamedBody555_195 NamedBody555_214

def NamedBody555_216 : StackLang.HolProg 64 :=
.seq NamedBody555_194 NamedBody555_215

def NamedBody555_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody555_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody555_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody555_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody555_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody555_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody555_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody555_224 : StackLang.HolProg 64 :=
.seq NamedBody555_222 NamedBody555_223

def NamedBody555_225 : StackLang.HolProg 64 :=
.seq NamedBody555_221 NamedBody555_224

def NamedBody555_226 : StackLang.HolProg 64 :=
.seq NamedBody555_220 NamedBody555_225

def NamedBody555_227 : StackLang.HolProg 64 :=
.seq NamedBody555_219 NamedBody555_226

def NamedBody555_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody555_229 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody555_230 : StackLang.HolProg 64 :=
.seq NamedBody555_228 NamedBody555_229

def NamedBody555_231 : StackLang.HolProg 64 :=
.call (some (NamedBody555_227, 1, 555, 8)) (Sum.inl 490) (some (NamedBody555_230, 555, 9))

def NamedBody555_232 : StackLang.HolProg 64 :=
.seq NamedBody555_218 NamedBody555_231

def NamedBody555_233 : StackLang.HolProg 64 :=
.seq NamedBody555_217 NamedBody555_232

def NamedBody555_234 : StackLang.HolProg 64 :=
.seq NamedBody555_216 NamedBody555_233

def NamedBody555_235 : StackLang.HolProg 64 :=
.seq NamedBody555_187 NamedBody555_234

def NamedBody555_236 : StackLang.HolProg 64 :=
.seq NamedBody555_184 NamedBody555_235

def NamedBody555_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody555_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody555_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody555_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody555_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody555_242 : StackLang.HolProg 64 :=
.seq NamedBody555_240 NamedBody555_241

def NamedBody555_243 : StackLang.HolProg 64 :=
.seq NamedBody555_239 NamedBody555_242

def NamedBody555_244 : StackLang.HolProg 64 :=
.seq NamedBody555_238 NamedBody555_243

def NamedBody555_245 : StackLang.HolProg 64 :=
.seq NamedBody555_237 NamedBody555_244

def NamedBody555_246 : StackLang.HolProg 64 :=
.seq NamedBody555_236 NamedBody555_245

def NamedBody555_247 : StackLang.HolProg 64 :=
.seq NamedBody555_183 NamedBody555_246

def NamedBody555_248 : StackLang.HolProg 64 :=
.seq NamedBody555_182 NamedBody555_247

def NamedBody555_249 : StackLang.HolProg 64 :=
.seq NamedBody555_181 NamedBody555_248

def NamedBody555_250 : StackLang.HolProg 64 :=
.seq NamedBody555_180 NamedBody555_249

def NamedBody555_251 : StackLang.HolProg 64 :=
.seq NamedBody555_127 NamedBody555_250

def NamedBody555_252 : StackLang.HolProg 64 :=
.seq NamedBody555_126 NamedBody555_251

def NamedBody555_253 : StackLang.HolProg 64 :=
.seq NamedBody555_125 NamedBody555_252

def NamedBody555_254 : StackLang.HolProg 64 :=
.seq NamedBody555_72 NamedBody555_253

def NamedBody555_255 : StackLang.HolProg 64 :=
.seq NamedBody555_71 NamedBody555_254

def NamedBody555_256 : StackLang.HolProg 64 :=
.seq NamedBody555_70 NamedBody555_255

def NamedBody555_257 : StackLang.HolProg 64 :=
.seq NamedBody555_69 NamedBody555_256

def NamedBody555_258 : StackLang.HolProg 64 :=
.seq NamedBody555_68 NamedBody555_257

def NamedBody555_259 : StackLang.HolProg 64 :=
.seq NamedBody555_67 NamedBody555_258

def NamedBody555_260 : StackLang.HolProg 64 :=
.seq NamedBody555_66 NamedBody555_259

def NamedBody555_261 : StackLang.HolProg 64 :=
.seq NamedBody555_65 NamedBody555_260

def NamedBody555_262 : StackLang.HolProg 64 :=
.seq NamedBody555_64 NamedBody555_261

def NamedBody555_263 : StackLang.HolProg 64 :=
.seq NamedBody555_63 NamedBody555_262

def NamedBody555_264 : StackLang.HolProg 64 :=
.seq NamedBody555_62 NamedBody555_263

def NamedBody555_265 : StackLang.HolProg 64 :=
.seq NamedBody555_9 NamedBody555_264

def NamedBody555_266 : StackLang.HolProg 64 :=
.seq NamedBody555_8 NamedBody555_265

def NamedBody555_267 : StackLang.HolProg 64 :=
.seq NamedBody555_7 NamedBody555_266

def NamedBody555_268 : StackLang.HolProg 64 :=
.seq NamedBody555_6 NamedBody555_267

def Named555 : Nat × StackLang.HolProg 64 := (555, NamedBody555_268)
theorem Named555_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed555 = Named555 := by
  kernel_rfl
#print axioms Named555_eq
end InitECandidate.Proofs.BackendStages
