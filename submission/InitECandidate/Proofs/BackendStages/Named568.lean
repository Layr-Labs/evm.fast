import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed568
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody568_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody568_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody568_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody568_3 : StackLang.HolProg 64 :=
.seq NamedBody568_1 NamedBody568_2

def NamedBody568_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody568_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody568_3 NamedBody568_4

def NamedBody568_6 : StackLang.HolProg 64 :=
.seq NamedBody568_0 NamedBody568_5

def NamedBody568_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody568_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody568_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody568_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody568_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1960#64)

def NamedBody568_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody568_13 : StackLang.HolProg 64 :=
.seq NamedBody568_11 NamedBody568_12

def NamedBody568_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody568_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody568_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody568_17 : StackLang.HolProg 64 :=
.seq NamedBody568_15 NamedBody568_16

def NamedBody568_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody568_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody568_17 NamedBody568_18

def NamedBody568_20 : StackLang.HolProg 64 :=
.seq NamedBody568_14 NamedBody568_19

def NamedBody568_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody568_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody568_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 568 3

def NamedBody568_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody568_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody568_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody568_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody568_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody568_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody568_30 : StackLang.HolProg 64 :=
.seq NamedBody568_28 NamedBody568_29

def NamedBody568_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody568_32 : StackLang.HolProg 64 :=
.seq NamedBody568_30 NamedBody568_31

def NamedBody568_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody568_34 : StackLang.HolProg 64 :=
.seq NamedBody568_32 NamedBody568_33

def NamedBody568_35 : StackLang.HolProg 64 :=
.seq NamedBody568_27 NamedBody568_34

def NamedBody568_36 : StackLang.HolProg 64 :=
.seq NamedBody568_26 NamedBody568_35

def NamedBody568_37 : StackLang.HolProg 64 :=
.seq NamedBody568_25 NamedBody568_36

def NamedBody568_38 : StackLang.HolProg 64 :=
.seq NamedBody568_24 NamedBody568_37

def NamedBody568_39 : StackLang.HolProg 64 :=
.seq NamedBody568_23 NamedBody568_38

def NamedBody568_40 : StackLang.HolProg 64 :=
.seq NamedBody568_22 NamedBody568_39

def NamedBody568_41 : StackLang.HolProg 64 :=
.seq NamedBody568_21 NamedBody568_40

def NamedBody568_42 : StackLang.HolProg 64 :=
.seq NamedBody568_20 NamedBody568_41

def NamedBody568_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody568_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody568_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody568_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody568_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody568_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody568_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody568_50 : StackLang.HolProg 64 :=
.seq NamedBody568_48 NamedBody568_49

def NamedBody568_51 : StackLang.HolProg 64 :=
.seq NamedBody568_47 NamedBody568_50

def NamedBody568_52 : StackLang.HolProg 64 :=
.seq NamedBody568_46 NamedBody568_51

def NamedBody568_53 : StackLang.HolProg 64 :=
.seq NamedBody568_45 NamedBody568_52

def NamedBody568_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody568_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody568_56 : StackLang.HolProg 64 :=
.seq NamedBody568_54 NamedBody568_55

def NamedBody568_57 : StackLang.HolProg 64 :=
.call (some (NamedBody568_53, 1, 568, 2)) (Sum.inl 470) (some (NamedBody568_56, 568, 3))

def NamedBody568_58 : StackLang.HolProg 64 :=
.seq NamedBody568_44 NamedBody568_57

def NamedBody568_59 : StackLang.HolProg 64 :=
.seq NamedBody568_43 NamedBody568_58

def NamedBody568_60 : StackLang.HolProg 64 :=
.seq NamedBody568_42 NamedBody568_59

def NamedBody568_61 : StackLang.HolProg 64 :=
.seq NamedBody568_13 NamedBody568_60

def NamedBody568_62 : StackLang.HolProg 64 :=
.seq NamedBody568_10 NamedBody568_61

def NamedBody568_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody568_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody568_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody568_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody568_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def NamedBody568_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 152#64))

def NamedBody568_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody568_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody568_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1961#64)

def NamedBody568_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody568_73 : StackLang.HolProg 64 :=
.seq NamedBody568_71 NamedBody568_72

def NamedBody568_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody568_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody568_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody568_77 : StackLang.HolProg 64 :=
.seq NamedBody568_75 NamedBody568_76

def NamedBody568_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody568_79 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody568_77 NamedBody568_78

def NamedBody568_80 : StackLang.HolProg 64 :=
.seq NamedBody568_74 NamedBody568_79

def NamedBody568_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody568_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody568_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 568 5

def NamedBody568_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody568_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody568_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody568_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody568_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody568_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody568_90 : StackLang.HolProg 64 :=
.seq NamedBody568_88 NamedBody568_89

def NamedBody568_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody568_92 : StackLang.HolProg 64 :=
.seq NamedBody568_90 NamedBody568_91

def NamedBody568_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody568_94 : StackLang.HolProg 64 :=
.seq NamedBody568_92 NamedBody568_93

def NamedBody568_95 : StackLang.HolProg 64 :=
.seq NamedBody568_87 NamedBody568_94

def NamedBody568_96 : StackLang.HolProg 64 :=
.seq NamedBody568_86 NamedBody568_95

def NamedBody568_97 : StackLang.HolProg 64 :=
.seq NamedBody568_85 NamedBody568_96

def NamedBody568_98 : StackLang.HolProg 64 :=
.seq NamedBody568_84 NamedBody568_97

def NamedBody568_99 : StackLang.HolProg 64 :=
.seq NamedBody568_83 NamedBody568_98

def NamedBody568_100 : StackLang.HolProg 64 :=
.seq NamedBody568_82 NamedBody568_99

def NamedBody568_101 : StackLang.HolProg 64 :=
.seq NamedBody568_81 NamedBody568_100

def NamedBody568_102 : StackLang.HolProg 64 :=
.seq NamedBody568_80 NamedBody568_101

def NamedBody568_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody568_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody568_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody568_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody568_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody568_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody568_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody568_110 : StackLang.HolProg 64 :=
.seq NamedBody568_108 NamedBody568_109

def NamedBody568_111 : StackLang.HolProg 64 :=
.seq NamedBody568_107 NamedBody568_110

def NamedBody568_112 : StackLang.HolProg 64 :=
.seq NamedBody568_106 NamedBody568_111

def NamedBody568_113 : StackLang.HolProg 64 :=
.seq NamedBody568_105 NamedBody568_112

def NamedBody568_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody568_115 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody568_116 : StackLang.HolProg 64 :=
.seq NamedBody568_114 NamedBody568_115

def NamedBody568_117 : StackLang.HolProg 64 :=
.call (some (NamedBody568_113, 1, 568, 4)) (Sum.inl 477) (some (NamedBody568_116, 568, 5))

def NamedBody568_118 : StackLang.HolProg 64 :=
.seq NamedBody568_104 NamedBody568_117

def NamedBody568_119 : StackLang.HolProg 64 :=
.seq NamedBody568_103 NamedBody568_118

def NamedBody568_120 : StackLang.HolProg 64 :=
.seq NamedBody568_102 NamedBody568_119

def NamedBody568_121 : StackLang.HolProg 64 :=
.seq NamedBody568_73 NamedBody568_120

def NamedBody568_122 : StackLang.HolProg 64 :=
.seq NamedBody568_70 NamedBody568_121

def NamedBody568_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody568_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody568_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody568_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody568_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1962#64)

def NamedBody568_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody568_129 : StackLang.HolProg 64 :=
.seq NamedBody568_127 NamedBody568_128

def NamedBody568_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody568_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody568_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody568_133 : StackLang.HolProg 64 :=
.seq NamedBody568_131 NamedBody568_132

def NamedBody568_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody568_135 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody568_133 NamedBody568_134

def NamedBody568_136 : StackLang.HolProg 64 :=
.seq NamedBody568_130 NamedBody568_135

def NamedBody568_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody568_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody568_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 568 7

def NamedBody568_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody568_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody568_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody568_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody568_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody568_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody568_146 : StackLang.HolProg 64 :=
.seq NamedBody568_144 NamedBody568_145

def NamedBody568_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody568_148 : StackLang.HolProg 64 :=
.seq NamedBody568_146 NamedBody568_147

def NamedBody568_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody568_150 : StackLang.HolProg 64 :=
.seq NamedBody568_148 NamedBody568_149

def NamedBody568_151 : StackLang.HolProg 64 :=
.seq NamedBody568_143 NamedBody568_150

def NamedBody568_152 : StackLang.HolProg 64 :=
.seq NamedBody568_142 NamedBody568_151

def NamedBody568_153 : StackLang.HolProg 64 :=
.seq NamedBody568_141 NamedBody568_152

def NamedBody568_154 : StackLang.HolProg 64 :=
.seq NamedBody568_140 NamedBody568_153

def NamedBody568_155 : StackLang.HolProg 64 :=
.seq NamedBody568_139 NamedBody568_154

def NamedBody568_156 : StackLang.HolProg 64 :=
.seq NamedBody568_138 NamedBody568_155

def NamedBody568_157 : StackLang.HolProg 64 :=
.seq NamedBody568_137 NamedBody568_156

def NamedBody568_158 : StackLang.HolProg 64 :=
.seq NamedBody568_136 NamedBody568_157

def NamedBody568_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody568_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody568_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody568_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody568_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody568_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody568_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody568_166 : StackLang.HolProg 64 :=
.seq NamedBody568_164 NamedBody568_165

def NamedBody568_167 : StackLang.HolProg 64 :=
.seq NamedBody568_163 NamedBody568_166

def NamedBody568_168 : StackLang.HolProg 64 :=
.seq NamedBody568_162 NamedBody568_167

def NamedBody568_169 : StackLang.HolProg 64 :=
.seq NamedBody568_161 NamedBody568_168

def NamedBody568_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody568_171 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody568_172 : StackLang.HolProg 64 :=
.seq NamedBody568_170 NamedBody568_171

def NamedBody568_173 : StackLang.HolProg 64 :=
.call (some (NamedBody568_169, 1, 568, 6)) (Sum.inl 490) (some (NamedBody568_172, 568, 7))

def NamedBody568_174 : StackLang.HolProg 64 :=
.seq NamedBody568_160 NamedBody568_173

def NamedBody568_175 : StackLang.HolProg 64 :=
.seq NamedBody568_159 NamedBody568_174

def NamedBody568_176 : StackLang.HolProg 64 :=
.seq NamedBody568_158 NamedBody568_175

def NamedBody568_177 : StackLang.HolProg 64 :=
.seq NamedBody568_129 NamedBody568_176

def NamedBody568_178 : StackLang.HolProg 64 :=
.seq NamedBody568_126 NamedBody568_177

def NamedBody568_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody568_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody568_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody568_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody568_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody568_184 : StackLang.HolProg 64 :=
.seq NamedBody568_182 NamedBody568_183

def NamedBody568_185 : StackLang.HolProg 64 :=
.seq NamedBody568_181 NamedBody568_184

def NamedBody568_186 : StackLang.HolProg 64 :=
.seq NamedBody568_180 NamedBody568_185

def NamedBody568_187 : StackLang.HolProg 64 :=
.seq NamedBody568_179 NamedBody568_186

def NamedBody568_188 : StackLang.HolProg 64 :=
.seq NamedBody568_178 NamedBody568_187

def NamedBody568_189 : StackLang.HolProg 64 :=
.seq NamedBody568_125 NamedBody568_188

def NamedBody568_190 : StackLang.HolProg 64 :=
.seq NamedBody568_124 NamedBody568_189

def NamedBody568_191 : StackLang.HolProg 64 :=
.seq NamedBody568_123 NamedBody568_190

def NamedBody568_192 : StackLang.HolProg 64 :=
.seq NamedBody568_122 NamedBody568_191

def NamedBody568_193 : StackLang.HolProg 64 :=
.seq NamedBody568_69 NamedBody568_192

def NamedBody568_194 : StackLang.HolProg 64 :=
.seq NamedBody568_68 NamedBody568_193

def NamedBody568_195 : StackLang.HolProg 64 :=
.seq NamedBody568_67 NamedBody568_194

def NamedBody568_196 : StackLang.HolProg 64 :=
.seq NamedBody568_66 NamedBody568_195

def NamedBody568_197 : StackLang.HolProg 64 :=
.seq NamedBody568_65 NamedBody568_196

def NamedBody568_198 : StackLang.HolProg 64 :=
.seq NamedBody568_64 NamedBody568_197

def NamedBody568_199 : StackLang.HolProg 64 :=
.seq NamedBody568_63 NamedBody568_198

def NamedBody568_200 : StackLang.HolProg 64 :=
.seq NamedBody568_62 NamedBody568_199

def NamedBody568_201 : StackLang.HolProg 64 :=
.seq NamedBody568_9 NamedBody568_200

def NamedBody568_202 : StackLang.HolProg 64 :=
.seq NamedBody568_8 NamedBody568_201

def NamedBody568_203 : StackLang.HolProg 64 :=
.seq NamedBody568_7 NamedBody568_202

def NamedBody568_204 : StackLang.HolProg 64 :=
.seq NamedBody568_6 NamedBody568_203

def Named568 : Nat × StackLang.HolProg 64 := (568, NamedBody568_204)
theorem Named568_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed568 = Named568 := by
  kernel_rfl
#print axioms Named568_eq
end InitECandidate.Proofs.BackendStages
