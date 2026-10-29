import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed786
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody786_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody786_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody786_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody786_3 : StackLang.HolProg 64 :=
.seq NamedBody786_1 NamedBody786_2

def NamedBody786_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody786_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody786_3 NamedBody786_4

def NamedBody786_6 : StackLang.HolProg 64 :=
.seq NamedBody786_0 NamedBody786_5

def NamedBody786_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody786_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody786_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody786_10 : StackLang.HolProg 64 :=
.seq NamedBody786_8 NamedBody786_9

def NamedBody786_11 : StackLang.HolProg 64 :=
.seq NamedBody786_7 NamedBody786_10

def NamedBody786_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody786_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3634#64)

def NamedBody786_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody786_15 : StackLang.HolProg 64 :=
.seq NamedBody786_13 NamedBody786_14

def NamedBody786_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody786_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody786_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody786_19 : StackLang.HolProg 64 :=
.seq NamedBody786_17 NamedBody786_18

def NamedBody786_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody786_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody786_19 NamedBody786_20

def NamedBody786_22 : StackLang.HolProg 64 :=
.seq NamedBody786_16 NamedBody786_21

def NamedBody786_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody786_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody786_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 786 3

def NamedBody786_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody786_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody786_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody786_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody786_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody786_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody786_32 : StackLang.HolProg 64 :=
.seq NamedBody786_30 NamedBody786_31

def NamedBody786_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody786_34 : StackLang.HolProg 64 :=
.seq NamedBody786_32 NamedBody786_33

def NamedBody786_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody786_36 : StackLang.HolProg 64 :=
.seq NamedBody786_34 NamedBody786_35

def NamedBody786_37 : StackLang.HolProg 64 :=
.seq NamedBody786_29 NamedBody786_36

def NamedBody786_38 : StackLang.HolProg 64 :=
.seq NamedBody786_28 NamedBody786_37

def NamedBody786_39 : StackLang.HolProg 64 :=
.seq NamedBody786_27 NamedBody786_38

def NamedBody786_40 : StackLang.HolProg 64 :=
.seq NamedBody786_26 NamedBody786_39

def NamedBody786_41 : StackLang.HolProg 64 :=
.seq NamedBody786_25 NamedBody786_40

def NamedBody786_42 : StackLang.HolProg 64 :=
.seq NamedBody786_24 NamedBody786_41

def NamedBody786_43 : StackLang.HolProg 64 :=
.seq NamedBody786_23 NamedBody786_42

def NamedBody786_44 : StackLang.HolProg 64 :=
.seq NamedBody786_22 NamedBody786_43

def NamedBody786_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody786_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody786_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody786_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody786_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody786_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody786_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody786_52 : StackLang.HolProg 64 :=
.seq NamedBody786_50 NamedBody786_51

def NamedBody786_53 : StackLang.HolProg 64 :=
.seq NamedBody786_49 NamedBody786_52

def NamedBody786_54 : StackLang.HolProg 64 :=
.seq NamedBody786_48 NamedBody786_53

def NamedBody786_55 : StackLang.HolProg 64 :=
.seq NamedBody786_47 NamedBody786_54

def NamedBody786_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody786_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody786_58 : StackLang.HolProg 64 :=
.seq NamedBody786_56 NamedBody786_57

def NamedBody786_59 : StackLang.HolProg 64 :=
.call (some (NamedBody786_55, 1, 786, 2)) (Sum.inl 69) (some (NamedBody786_58, 786, 3))

def NamedBody786_60 : StackLang.HolProg 64 :=
.seq NamedBody786_46 NamedBody786_59

def NamedBody786_61 : StackLang.HolProg 64 :=
.seq NamedBody786_45 NamedBody786_60

def NamedBody786_62 : StackLang.HolProg 64 :=
.seq NamedBody786_44 NamedBody786_61

def NamedBody786_63 : StackLang.HolProg 64 :=
.seq NamedBody786_15 NamedBody786_62

def NamedBody786_64 : StackLang.HolProg 64 :=
.seq NamedBody786_12 NamedBody786_63

def NamedBody786_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody786_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 96#64)

def NamedBody786_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody786_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody786_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3635#64)

def NamedBody786_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody786_71 : StackLang.HolProg 64 :=
.seq NamedBody786_69 NamedBody786_70

def NamedBody786_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody786_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody786_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody786_75 : StackLang.HolProg 64 :=
.seq NamedBody786_73 NamedBody786_74

def NamedBody786_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody786_77 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody786_75 NamedBody786_76

def NamedBody786_78 : StackLang.HolProg 64 :=
.seq NamedBody786_72 NamedBody786_77

def NamedBody786_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody786_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody786_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 786 5

def NamedBody786_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody786_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody786_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody786_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody786_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody786_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody786_88 : StackLang.HolProg 64 :=
.seq NamedBody786_86 NamedBody786_87

def NamedBody786_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody786_90 : StackLang.HolProg 64 :=
.seq NamedBody786_88 NamedBody786_89

def NamedBody786_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody786_92 : StackLang.HolProg 64 :=
.seq NamedBody786_90 NamedBody786_91

def NamedBody786_93 : StackLang.HolProg 64 :=
.seq NamedBody786_85 NamedBody786_92

def NamedBody786_94 : StackLang.HolProg 64 :=
.seq NamedBody786_84 NamedBody786_93

def NamedBody786_95 : StackLang.HolProg 64 :=
.seq NamedBody786_83 NamedBody786_94

def NamedBody786_96 : StackLang.HolProg 64 :=
.seq NamedBody786_82 NamedBody786_95

def NamedBody786_97 : StackLang.HolProg 64 :=
.seq NamedBody786_81 NamedBody786_96

def NamedBody786_98 : StackLang.HolProg 64 :=
.seq NamedBody786_80 NamedBody786_97

def NamedBody786_99 : StackLang.HolProg 64 :=
.seq NamedBody786_79 NamedBody786_98

def NamedBody786_100 : StackLang.HolProg 64 :=
.seq NamedBody786_78 NamedBody786_99

def NamedBody786_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody786_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody786_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody786_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody786_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody786_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody786_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody786_108 : StackLang.HolProg 64 :=
.seq NamedBody786_106 NamedBody786_107

def NamedBody786_109 : StackLang.HolProg 64 :=
.seq NamedBody786_105 NamedBody786_108

def NamedBody786_110 : StackLang.HolProg 64 :=
.seq NamedBody786_104 NamedBody786_109

def NamedBody786_111 : StackLang.HolProg 64 :=
.seq NamedBody786_103 NamedBody786_110

def NamedBody786_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody786_113 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody786_114 : StackLang.HolProg 64 :=
.seq NamedBody786_112 NamedBody786_113

def NamedBody786_115 : StackLang.HolProg 64 :=
.call (some (NamedBody786_111, 1, 786, 4)) (Sum.inl 68) (some (NamedBody786_114, 786, 5))

def NamedBody786_116 : StackLang.HolProg 64 :=
.seq NamedBody786_102 NamedBody786_115

def NamedBody786_117 : StackLang.HolProg 64 :=
.seq NamedBody786_101 NamedBody786_116

def NamedBody786_118 : StackLang.HolProg 64 :=
.seq NamedBody786_100 NamedBody786_117

def NamedBody786_119 : StackLang.HolProg 64 :=
.seq NamedBody786_71 NamedBody786_118

def NamedBody786_120 : StackLang.HolProg 64 :=
.seq NamedBody786_68 NamedBody786_119

def NamedBody786_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody786_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 96#64)

def NamedBody786_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody786_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody786_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3636#64)

def NamedBody786_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody786_127 : StackLang.HolProg 64 :=
.seq NamedBody786_125 NamedBody786_126

def NamedBody786_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody786_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody786_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody786_131 : StackLang.HolProg 64 :=
.seq NamedBody786_129 NamedBody786_130

def NamedBody786_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody786_133 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody786_131 NamedBody786_132

def NamedBody786_134 : StackLang.HolProg 64 :=
.seq NamedBody786_128 NamedBody786_133

def NamedBody786_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody786_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody786_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 786 7

def NamedBody786_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody786_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody786_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody786_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody786_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody786_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody786_144 : StackLang.HolProg 64 :=
.seq NamedBody786_142 NamedBody786_143

def NamedBody786_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody786_146 : StackLang.HolProg 64 :=
.seq NamedBody786_144 NamedBody786_145

def NamedBody786_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody786_148 : StackLang.HolProg 64 :=
.seq NamedBody786_146 NamedBody786_147

def NamedBody786_149 : StackLang.HolProg 64 :=
.seq NamedBody786_141 NamedBody786_148

def NamedBody786_150 : StackLang.HolProg 64 :=
.seq NamedBody786_140 NamedBody786_149

def NamedBody786_151 : StackLang.HolProg 64 :=
.seq NamedBody786_139 NamedBody786_150

def NamedBody786_152 : StackLang.HolProg 64 :=
.seq NamedBody786_138 NamedBody786_151

def NamedBody786_153 : StackLang.HolProg 64 :=
.seq NamedBody786_137 NamedBody786_152

def NamedBody786_154 : StackLang.HolProg 64 :=
.seq NamedBody786_136 NamedBody786_153

def NamedBody786_155 : StackLang.HolProg 64 :=
.seq NamedBody786_135 NamedBody786_154

def NamedBody786_156 : StackLang.HolProg 64 :=
.seq NamedBody786_134 NamedBody786_155

def NamedBody786_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody786_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody786_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody786_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody786_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody786_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody786_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody786_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody786_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody786_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody786_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody786_168 : StackLang.HolProg 64 :=
.seq NamedBody786_166 NamedBody786_167

def NamedBody786_169 : StackLang.HolProg 64 :=
.seq NamedBody786_165 NamedBody786_168

def NamedBody786_170 : StackLang.HolProg 64 :=
.seq NamedBody786_164 NamedBody786_169

def NamedBody786_171 : StackLang.HolProg 64 :=
.seq NamedBody786_163 NamedBody786_170

def NamedBody786_172 : StackLang.HolProg 64 :=
.seq NamedBody786_162 NamedBody786_171

def NamedBody786_173 : StackLang.HolProg 64 :=
.seq NamedBody786_161 NamedBody786_172

def NamedBody786_174 : StackLang.HolProg 64 :=
.seq NamedBody786_160 NamedBody786_173

def NamedBody786_175 : StackLang.HolProg 64 :=
.seq NamedBody786_159 NamedBody786_174

def NamedBody786_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody786_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody786_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody786_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody786_180 : StackLang.HolProg 64 :=
.seq NamedBody786_178 NamedBody786_179

def NamedBody786_181 : StackLang.HolProg 64 :=
.seq NamedBody786_177 NamedBody786_180

def NamedBody786_182 : StackLang.HolProg 64 :=
.seq NamedBody786_176 NamedBody786_181

def NamedBody786_183 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody786_184 : StackLang.HolProg 64 :=
.seq NamedBody786_182 NamedBody786_183

def NamedBody786_185 : StackLang.HolProg 64 :=
.call (some (NamedBody786_175, 1, 786, 6)) (Sum.inl 68) (some (NamedBody786_184, 786, 7))

def NamedBody786_186 : StackLang.HolProg 64 :=
.seq NamedBody786_158 NamedBody786_185

def NamedBody786_187 : StackLang.HolProg 64 :=
.seq NamedBody786_157 NamedBody786_186

def NamedBody786_188 : StackLang.HolProg 64 :=
.seq NamedBody786_156 NamedBody786_187

def NamedBody786_189 : StackLang.HolProg 64 :=
.seq NamedBody786_127 NamedBody786_188

def NamedBody786_190 : StackLang.HolProg 64 :=
.seq NamedBody786_124 NamedBody786_189

def NamedBody786_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody786_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody786_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody786_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody786_195 : StackLang.HolProg 64 :=
.seq NamedBody786_193 NamedBody786_194

def NamedBody786_196 : StackLang.HolProg 64 :=
.seq NamedBody786_192 NamedBody786_195

def NamedBody786_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody786_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3637#64)

def NamedBody786_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody786_200 : StackLang.HolProg 64 :=
.seq NamedBody786_198 NamedBody786_199

def NamedBody786_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody786_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody786_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody786_204 : StackLang.HolProg 64 :=
.seq NamedBody786_202 NamedBody786_203

def NamedBody786_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody786_206 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody786_204 NamedBody786_205

def NamedBody786_207 : StackLang.HolProg 64 :=
.seq NamedBody786_201 NamedBody786_206

def NamedBody786_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody786_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody786_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 786 9

def NamedBody786_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody786_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody786_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody786_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody786_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody786_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody786_217 : StackLang.HolProg 64 :=
.seq NamedBody786_215 NamedBody786_216

def NamedBody786_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody786_219 : StackLang.HolProg 64 :=
.seq NamedBody786_217 NamedBody786_218

def NamedBody786_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody786_221 : StackLang.HolProg 64 :=
.seq NamedBody786_219 NamedBody786_220

def NamedBody786_222 : StackLang.HolProg 64 :=
.seq NamedBody786_214 NamedBody786_221

def NamedBody786_223 : StackLang.HolProg 64 :=
.seq NamedBody786_213 NamedBody786_222

def NamedBody786_224 : StackLang.HolProg 64 :=
.seq NamedBody786_212 NamedBody786_223

def NamedBody786_225 : StackLang.HolProg 64 :=
.seq NamedBody786_211 NamedBody786_224

def NamedBody786_226 : StackLang.HolProg 64 :=
.seq NamedBody786_210 NamedBody786_225

def NamedBody786_227 : StackLang.HolProg 64 :=
.seq NamedBody786_209 NamedBody786_226

def NamedBody786_228 : StackLang.HolProg 64 :=
.seq NamedBody786_208 NamedBody786_227

def NamedBody786_229 : StackLang.HolProg 64 :=
.seq NamedBody786_207 NamedBody786_228

def NamedBody786_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody786_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody786_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody786_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody786_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody786_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody786_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody786_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody786_238 : StackLang.HolProg 64 :=
.seq NamedBody786_236 NamedBody786_237

def NamedBody786_239 : StackLang.HolProg 64 :=
.seq NamedBody786_235 NamedBody786_238

def NamedBody786_240 : StackLang.HolProg 64 :=
.seq NamedBody786_234 NamedBody786_239

def NamedBody786_241 : StackLang.HolProg 64 :=
.seq NamedBody786_233 NamedBody786_240

def NamedBody786_242 : StackLang.HolProg 64 :=
.seq NamedBody786_232 NamedBody786_241

def NamedBody786_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody786_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody786_245 : StackLang.HolProg 64 :=
.seq NamedBody786_243 NamedBody786_244

def NamedBody786_246 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody786_247 : StackLang.HolProg 64 :=
.seq NamedBody786_245 NamedBody786_246

def NamedBody786_248 : StackLang.HolProg 64 :=
.call (some (NamedBody786_242, 1, 786, 8)) (Sum.inl 740) (some (NamedBody786_247, 786, 9))

def NamedBody786_249 : StackLang.HolProg 64 :=
.seq NamedBody786_231 NamedBody786_248

def NamedBody786_250 : StackLang.HolProg 64 :=
.seq NamedBody786_230 NamedBody786_249

def NamedBody786_251 : StackLang.HolProg 64 :=
.seq NamedBody786_229 NamedBody786_250

def NamedBody786_252 : StackLang.HolProg 64 :=
.seq NamedBody786_200 NamedBody786_251

def NamedBody786_253 : StackLang.HolProg 64 :=
.seq NamedBody786_197 NamedBody786_252

def NamedBody786_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody786_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody786_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody786_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody786_258 : StackLang.HolProg 64 :=
.seq NamedBody786_256 NamedBody786_257

def NamedBody786_259 : StackLang.HolProg 64 :=
.seq NamedBody786_255 NamedBody786_258

def NamedBody786_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody786_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3638#64)

def NamedBody786_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody786_263 : StackLang.HolProg 64 :=
.seq NamedBody786_261 NamedBody786_262

def NamedBody786_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody786_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody786_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody786_267 : StackLang.HolProg 64 :=
.seq NamedBody786_265 NamedBody786_266

def NamedBody786_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody786_269 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody786_267 NamedBody786_268

def NamedBody786_270 : StackLang.HolProg 64 :=
.seq NamedBody786_264 NamedBody786_269

def NamedBody786_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody786_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody786_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 786 11

def NamedBody786_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody786_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody786_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody786_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody786_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody786_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody786_280 : StackLang.HolProg 64 :=
.seq NamedBody786_278 NamedBody786_279

def NamedBody786_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody786_282 : StackLang.HolProg 64 :=
.seq NamedBody786_280 NamedBody786_281

def NamedBody786_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody786_284 : StackLang.HolProg 64 :=
.seq NamedBody786_282 NamedBody786_283

def NamedBody786_285 : StackLang.HolProg 64 :=
.seq NamedBody786_277 NamedBody786_284

def NamedBody786_286 : StackLang.HolProg 64 :=
.seq NamedBody786_276 NamedBody786_285

def NamedBody786_287 : StackLang.HolProg 64 :=
.seq NamedBody786_275 NamedBody786_286

def NamedBody786_288 : StackLang.HolProg 64 :=
.seq NamedBody786_274 NamedBody786_287

def NamedBody786_289 : StackLang.HolProg 64 :=
.seq NamedBody786_273 NamedBody786_288

def NamedBody786_290 : StackLang.HolProg 64 :=
.seq NamedBody786_272 NamedBody786_289

def NamedBody786_291 : StackLang.HolProg 64 :=
.seq NamedBody786_271 NamedBody786_290

def NamedBody786_292 : StackLang.HolProg 64 :=
.seq NamedBody786_270 NamedBody786_291

def NamedBody786_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody786_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody786_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody786_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody786_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody786_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody786_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody786_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody786_301 : StackLang.HolProg 64 :=
.seq NamedBody786_299 NamedBody786_300

def NamedBody786_302 : StackLang.HolProg 64 :=
.seq NamedBody786_298 NamedBody786_301

def NamedBody786_303 : StackLang.HolProg 64 :=
.seq NamedBody786_297 NamedBody786_302

def NamedBody786_304 : StackLang.HolProg 64 :=
.seq NamedBody786_296 NamedBody786_303

def NamedBody786_305 : StackLang.HolProg 64 :=
.seq NamedBody786_295 NamedBody786_304

def NamedBody786_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody786_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody786_308 : StackLang.HolProg 64 :=
.seq NamedBody786_306 NamedBody786_307

def NamedBody786_309 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody786_310 : StackLang.HolProg 64 :=
.seq NamedBody786_308 NamedBody786_309

def NamedBody786_311 : StackLang.HolProg 64 :=
.call (some (NamedBody786_305, 1, 786, 10)) (Sum.inl 740) (some (NamedBody786_310, 786, 11))

def NamedBody786_312 : StackLang.HolProg 64 :=
.seq NamedBody786_294 NamedBody786_311

def NamedBody786_313 : StackLang.HolProg 64 :=
.seq NamedBody786_293 NamedBody786_312

def NamedBody786_314 : StackLang.HolProg 64 :=
.seq NamedBody786_292 NamedBody786_313

def NamedBody786_315 : StackLang.HolProg 64 :=
.seq NamedBody786_263 NamedBody786_314

def NamedBody786_316 : StackLang.HolProg 64 :=
.seq NamedBody786_260 NamedBody786_315

def NamedBody786_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody786_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody786_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody786_320 : StackLang.HolProg 64 :=
.seq NamedBody786_318 NamedBody786_319

def NamedBody786_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody786_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3639#64)

def NamedBody786_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody786_324 : StackLang.HolProg 64 :=
.seq NamedBody786_322 NamedBody786_323

def NamedBody786_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody786_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody786_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody786_328 : StackLang.HolProg 64 :=
.seq NamedBody786_326 NamedBody786_327

def NamedBody786_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody786_330 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody786_328 NamedBody786_329

def NamedBody786_331 : StackLang.HolProg 64 :=
.seq NamedBody786_325 NamedBody786_330

def NamedBody786_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody786_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody786_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 786 13

def NamedBody786_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody786_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody786_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody786_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody786_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody786_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody786_341 : StackLang.HolProg 64 :=
.seq NamedBody786_339 NamedBody786_340

def NamedBody786_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody786_343 : StackLang.HolProg 64 :=
.seq NamedBody786_341 NamedBody786_342

def NamedBody786_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody786_345 : StackLang.HolProg 64 :=
.seq NamedBody786_343 NamedBody786_344

def NamedBody786_346 : StackLang.HolProg 64 :=
.seq NamedBody786_338 NamedBody786_345

def NamedBody786_347 : StackLang.HolProg 64 :=
.seq NamedBody786_337 NamedBody786_346

def NamedBody786_348 : StackLang.HolProg 64 :=
.seq NamedBody786_336 NamedBody786_347

def NamedBody786_349 : StackLang.HolProg 64 :=
.seq NamedBody786_335 NamedBody786_348

def NamedBody786_350 : StackLang.HolProg 64 :=
.seq NamedBody786_334 NamedBody786_349

def NamedBody786_351 : StackLang.HolProg 64 :=
.seq NamedBody786_333 NamedBody786_350

def NamedBody786_352 : StackLang.HolProg 64 :=
.seq NamedBody786_332 NamedBody786_351

def NamedBody786_353 : StackLang.HolProg 64 :=
.seq NamedBody786_331 NamedBody786_352

def NamedBody786_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody786_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody786_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody786_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody786_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody786_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody786_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody786_361 : StackLang.HolProg 64 :=
.seq NamedBody786_359 NamedBody786_360

def NamedBody786_362 : StackLang.HolProg 64 :=
.seq NamedBody786_358 NamedBody786_361

def NamedBody786_363 : StackLang.HolProg 64 :=
.seq NamedBody786_357 NamedBody786_362

def NamedBody786_364 : StackLang.HolProg 64 :=
.seq NamedBody786_356 NamedBody786_363

def NamedBody786_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody786_366 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody786_367 : StackLang.HolProg 64 :=
.seq NamedBody786_365 NamedBody786_366

def NamedBody786_368 : StackLang.HolProg 64 :=
.call (some (NamedBody786_364, 1, 786, 12)) (Sum.inl 739) (some (NamedBody786_367, 786, 13))

def NamedBody786_369 : StackLang.HolProg 64 :=
.seq NamedBody786_355 NamedBody786_368

def NamedBody786_370 : StackLang.HolProg 64 :=
.seq NamedBody786_354 NamedBody786_369

def NamedBody786_371 : StackLang.HolProg 64 :=
.seq NamedBody786_353 NamedBody786_370

def NamedBody786_372 : StackLang.HolProg 64 :=
.seq NamedBody786_324 NamedBody786_371

def NamedBody786_373 : StackLang.HolProg 64 :=
.seq NamedBody786_321 NamedBody786_372

def NamedBody786_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody786_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody786_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody786_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody786_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody786_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551224#64))

def NamedBody786_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 288#64)))

def NamedBody786_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody786_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody786_383 : StackLang.HolProg 64 :=
.seq NamedBody786_381 NamedBody786_382

def NamedBody786_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody786_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3640#64)

def NamedBody786_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody786_387 : StackLang.HolProg 64 :=
.seq NamedBody786_385 NamedBody786_386

def NamedBody786_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody786_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody786_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody786_391 : StackLang.HolProg 64 :=
.seq NamedBody786_389 NamedBody786_390

def NamedBody786_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody786_393 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody786_391 NamedBody786_392

def NamedBody786_394 : StackLang.HolProg 64 :=
.seq NamedBody786_388 NamedBody786_393

def NamedBody786_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody786_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody786_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 786 15

def NamedBody786_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody786_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody786_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody786_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody786_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody786_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody786_404 : StackLang.HolProg 64 :=
.seq NamedBody786_402 NamedBody786_403

def NamedBody786_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody786_406 : StackLang.HolProg 64 :=
.seq NamedBody786_404 NamedBody786_405

def NamedBody786_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody786_408 : StackLang.HolProg 64 :=
.seq NamedBody786_406 NamedBody786_407

def NamedBody786_409 : StackLang.HolProg 64 :=
.seq NamedBody786_401 NamedBody786_408

def NamedBody786_410 : StackLang.HolProg 64 :=
.seq NamedBody786_400 NamedBody786_409

def NamedBody786_411 : StackLang.HolProg 64 :=
.seq NamedBody786_399 NamedBody786_410

def NamedBody786_412 : StackLang.HolProg 64 :=
.seq NamedBody786_398 NamedBody786_411

def NamedBody786_413 : StackLang.HolProg 64 :=
.seq NamedBody786_397 NamedBody786_412

def NamedBody786_414 : StackLang.HolProg 64 :=
.seq NamedBody786_396 NamedBody786_413

def NamedBody786_415 : StackLang.HolProg 64 :=
.seq NamedBody786_395 NamedBody786_414

def NamedBody786_416 : StackLang.HolProg 64 :=
.seq NamedBody786_394 NamedBody786_415

def NamedBody786_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody786_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody786_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody786_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody786_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody786_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody786_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody786_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody786_425 : StackLang.HolProg 64 :=
.seq NamedBody786_423 NamedBody786_424

def NamedBody786_426 : StackLang.HolProg 64 :=
.seq NamedBody786_422 NamedBody786_425

def NamedBody786_427 : StackLang.HolProg 64 :=
.seq NamedBody786_421 NamedBody786_426

def NamedBody786_428 : StackLang.HolProg 64 :=
.seq NamedBody786_420 NamedBody786_427

def NamedBody786_429 : StackLang.HolProg 64 :=
.seq NamedBody786_419 NamedBody786_428

def NamedBody786_430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody786_431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody786_432 : StackLang.HolProg 64 :=
.seq NamedBody786_430 NamedBody786_431

def NamedBody786_433 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody786_434 : StackLang.HolProg 64 :=
.seq NamedBody786_432 NamedBody786_433

def NamedBody786_435 : StackLang.HolProg 64 :=
.call (some (NamedBody786_429, 1, 786, 14)) (Sum.inl 734) (some (NamedBody786_434, 786, 15))

def NamedBody786_436 : StackLang.HolProg 64 :=
.seq NamedBody786_418 NamedBody786_435

def NamedBody786_437 : StackLang.HolProg 64 :=
.seq NamedBody786_417 NamedBody786_436

def NamedBody786_438 : StackLang.HolProg 64 :=
.seq NamedBody786_416 NamedBody786_437

def NamedBody786_439 : StackLang.HolProg 64 :=
.seq NamedBody786_387 NamedBody786_438

def NamedBody786_440 : StackLang.HolProg 64 :=
.seq NamedBody786_384 NamedBody786_439

def NamedBody786_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody786_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody786_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody786_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3641#64)

def NamedBody786_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody786_446 : StackLang.HolProg 64 :=
.seq NamedBody786_444 NamedBody786_445

def NamedBody786_447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody786_448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody786_449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody786_450 : StackLang.HolProg 64 :=
.seq NamedBody786_448 NamedBody786_449

def NamedBody786_451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody786_452 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody786_450 NamedBody786_451

def NamedBody786_453 : StackLang.HolProg 64 :=
.seq NamedBody786_447 NamedBody786_452

def NamedBody786_454 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody786_455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody786_456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 786 17

def NamedBody786_457 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody786_458 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody786_459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody786_460 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody786_461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody786_462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody786_463 : StackLang.HolProg 64 :=
.seq NamedBody786_461 NamedBody786_462

def NamedBody786_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody786_465 : StackLang.HolProg 64 :=
.seq NamedBody786_463 NamedBody786_464

def NamedBody786_466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody786_467 : StackLang.HolProg 64 :=
.seq NamedBody786_465 NamedBody786_466

def NamedBody786_468 : StackLang.HolProg 64 :=
.seq NamedBody786_460 NamedBody786_467

def NamedBody786_469 : StackLang.HolProg 64 :=
.seq NamedBody786_459 NamedBody786_468

def NamedBody786_470 : StackLang.HolProg 64 :=
.seq NamedBody786_458 NamedBody786_469

def NamedBody786_471 : StackLang.HolProg 64 :=
.seq NamedBody786_457 NamedBody786_470

def NamedBody786_472 : StackLang.HolProg 64 :=
.seq NamedBody786_456 NamedBody786_471

def NamedBody786_473 : StackLang.HolProg 64 :=
.seq NamedBody786_455 NamedBody786_472

def NamedBody786_474 : StackLang.HolProg 64 :=
.seq NamedBody786_454 NamedBody786_473

def NamedBody786_475 : StackLang.HolProg 64 :=
.seq NamedBody786_453 NamedBody786_474

def NamedBody786_476 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody786_477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody786_478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody786_479 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody786_480 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody786_481 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody786_482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody786_483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody786_484 : StackLang.HolProg 64 :=
.seq NamedBody786_482 NamedBody786_483

def NamedBody786_485 : StackLang.HolProg 64 :=
.seq NamedBody786_481 NamedBody786_484

def NamedBody786_486 : StackLang.HolProg 64 :=
.seq NamedBody786_480 NamedBody786_485

def NamedBody786_487 : StackLang.HolProg 64 :=
.seq NamedBody786_479 NamedBody786_486

def NamedBody786_488 : StackLang.HolProg 64 :=
.seq NamedBody786_478 NamedBody786_487

def NamedBody786_489 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody786_490 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody786_491 : StackLang.HolProg 64 :=
.seq NamedBody786_489 NamedBody786_490

def NamedBody786_492 : StackLang.HolProg 64 :=
.call (some (NamedBody786_488, 1, 786, 16)) (Sum.inl 733) (some (NamedBody786_491, 786, 17))

def NamedBody786_493 : StackLang.HolProg 64 :=
.seq NamedBody786_477 NamedBody786_492

def NamedBody786_494 : StackLang.HolProg 64 :=
.seq NamedBody786_476 NamedBody786_493

def NamedBody786_495 : StackLang.HolProg 64 :=
.seq NamedBody786_475 NamedBody786_494

def NamedBody786_496 : StackLang.HolProg 64 :=
.seq NamedBody786_446 NamedBody786_495

def NamedBody786_497 : StackLang.HolProg 64 :=
.seq NamedBody786_443 NamedBody786_496

def NamedBody786_498 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody786_499 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody786_500 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody786_501 : StackLang.HolProg 64 :=
.seq NamedBody786_499 NamedBody786_500

def NamedBody786_502 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody786_503 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3642#64)

def NamedBody786_504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody786_505 : StackLang.HolProg 64 :=
.seq NamedBody786_503 NamedBody786_504

def NamedBody786_506 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody786_507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody786_508 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody786_509 : StackLang.HolProg 64 :=
.seq NamedBody786_507 NamedBody786_508

def NamedBody786_510 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody786_511 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody786_509 NamedBody786_510

def NamedBody786_512 : StackLang.HolProg 64 :=
.seq NamedBody786_506 NamedBody786_511

def NamedBody786_513 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody786_514 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody786_515 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 786 19

def NamedBody786_516 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody786_517 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody786_518 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody786_519 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody786_520 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody786_521 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody786_522 : StackLang.HolProg 64 :=
.seq NamedBody786_520 NamedBody786_521

def NamedBody786_523 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody786_524 : StackLang.HolProg 64 :=
.seq NamedBody786_522 NamedBody786_523

def NamedBody786_525 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody786_526 : StackLang.HolProg 64 :=
.seq NamedBody786_524 NamedBody786_525

def NamedBody786_527 : StackLang.HolProg 64 :=
.seq NamedBody786_519 NamedBody786_526

def NamedBody786_528 : StackLang.HolProg 64 :=
.seq NamedBody786_518 NamedBody786_527

def NamedBody786_529 : StackLang.HolProg 64 :=
.seq NamedBody786_517 NamedBody786_528

def NamedBody786_530 : StackLang.HolProg 64 :=
.seq NamedBody786_516 NamedBody786_529

def NamedBody786_531 : StackLang.HolProg 64 :=
.seq NamedBody786_515 NamedBody786_530

def NamedBody786_532 : StackLang.HolProg 64 :=
.seq NamedBody786_514 NamedBody786_531

def NamedBody786_533 : StackLang.HolProg 64 :=
.seq NamedBody786_513 NamedBody786_532

def NamedBody786_534 : StackLang.HolProg 64 :=
.seq NamedBody786_512 NamedBody786_533

def NamedBody786_535 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody786_536 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody786_537 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody786_538 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody786_539 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody786_540 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody786_541 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody786_542 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody786_543 : StackLang.HolProg 64 :=
.seq NamedBody786_541 NamedBody786_542

def NamedBody786_544 : StackLang.HolProg 64 :=
.seq NamedBody786_540 NamedBody786_543

def NamedBody786_545 : StackLang.HolProg 64 :=
.seq NamedBody786_539 NamedBody786_544

def NamedBody786_546 : StackLang.HolProg 64 :=
.seq NamedBody786_538 NamedBody786_545

def NamedBody786_547 : StackLang.HolProg 64 :=
.seq NamedBody786_537 NamedBody786_546

def NamedBody786_548 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody786_549 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody786_550 : StackLang.HolProg 64 :=
.seq NamedBody786_548 NamedBody786_549

def NamedBody786_551 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody786_552 : StackLang.HolProg 64 :=
.seq NamedBody786_550 NamedBody786_551

def NamedBody786_553 : StackLang.HolProg 64 :=
.call (some (NamedBody786_547, 1, 786, 18)) (Sum.inl 70) (some (NamedBody786_552, 786, 19))

def NamedBody786_554 : StackLang.HolProg 64 :=
.seq NamedBody786_536 NamedBody786_553

def NamedBody786_555 : StackLang.HolProg 64 :=
.seq NamedBody786_535 NamedBody786_554

def NamedBody786_556 : StackLang.HolProg 64 :=
.seq NamedBody786_534 NamedBody786_555

def NamedBody786_557 : StackLang.HolProg 64 :=
.seq NamedBody786_505 NamedBody786_556

def NamedBody786_558 : StackLang.HolProg 64 :=
.seq NamedBody786_502 NamedBody786_557

def NamedBody786_559 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody786_560 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody786_561 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody786_562 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody786_563 : StackLang.HolProg 64 :=
.seq NamedBody786_561 NamedBody786_562

def NamedBody786_564 : StackLang.HolProg 64 :=
.seq NamedBody786_560 NamedBody786_563

def NamedBody786_565 : StackLang.HolProg 64 :=
.seq NamedBody786_559 NamedBody786_564

def NamedBody786_566 : StackLang.HolProg 64 :=
.seq NamedBody786_558 NamedBody786_565

def NamedBody786_567 : StackLang.HolProg 64 :=
.seq NamedBody786_501 NamedBody786_566

def NamedBody786_568 : StackLang.HolProg 64 :=
.seq NamedBody786_498 NamedBody786_567

def NamedBody786_569 : StackLang.HolProg 64 :=
.seq NamedBody786_497 NamedBody786_568

def NamedBody786_570 : StackLang.HolProg 64 :=
.seq NamedBody786_442 NamedBody786_569

def NamedBody786_571 : StackLang.HolProg 64 :=
.seq NamedBody786_441 NamedBody786_570

def NamedBody786_572 : StackLang.HolProg 64 :=
.seq NamedBody786_440 NamedBody786_571

def NamedBody786_573 : StackLang.HolProg 64 :=
.seq NamedBody786_383 NamedBody786_572

def NamedBody786_574 : StackLang.HolProg 64 :=
.seq NamedBody786_380 NamedBody786_573

def NamedBody786_575 : StackLang.HolProg 64 :=
.seq NamedBody786_379 NamedBody786_574

def NamedBody786_576 : StackLang.HolProg 64 :=
.seq NamedBody786_378 NamedBody786_575

def NamedBody786_577 : StackLang.HolProg 64 :=
.seq NamedBody786_377 NamedBody786_576

def NamedBody786_578 : StackLang.HolProg 64 :=
.seq NamedBody786_376 NamedBody786_577

def NamedBody786_579 : StackLang.HolProg 64 :=
.seq NamedBody786_375 NamedBody786_578

def NamedBody786_580 : StackLang.HolProg 64 :=
.seq NamedBody786_374 NamedBody786_579

def NamedBody786_581 : StackLang.HolProg 64 :=
.seq NamedBody786_373 NamedBody786_580

def NamedBody786_582 : StackLang.HolProg 64 :=
.seq NamedBody786_320 NamedBody786_581

def NamedBody786_583 : StackLang.HolProg 64 :=
.seq NamedBody786_317 NamedBody786_582

def NamedBody786_584 : StackLang.HolProg 64 :=
.seq NamedBody786_316 NamedBody786_583

def NamedBody786_585 : StackLang.HolProg 64 :=
.seq NamedBody786_259 NamedBody786_584

def NamedBody786_586 : StackLang.HolProg 64 :=
.seq NamedBody786_254 NamedBody786_585

def NamedBody786_587 : StackLang.HolProg 64 :=
.seq NamedBody786_253 NamedBody786_586

def NamedBody786_588 : StackLang.HolProg 64 :=
.seq NamedBody786_196 NamedBody786_587

def NamedBody786_589 : StackLang.HolProg 64 :=
.seq NamedBody786_191 NamedBody786_588

def NamedBody786_590 : StackLang.HolProg 64 :=
.seq NamedBody786_190 NamedBody786_589

def NamedBody786_591 : StackLang.HolProg 64 :=
.seq NamedBody786_123 NamedBody786_590

def NamedBody786_592 : StackLang.HolProg 64 :=
.seq NamedBody786_122 NamedBody786_591

def NamedBody786_593 : StackLang.HolProg 64 :=
.seq NamedBody786_121 NamedBody786_592

def NamedBody786_594 : StackLang.HolProg 64 :=
.seq NamedBody786_120 NamedBody786_593

def NamedBody786_595 : StackLang.HolProg 64 :=
.seq NamedBody786_67 NamedBody786_594

def NamedBody786_596 : StackLang.HolProg 64 :=
.seq NamedBody786_66 NamedBody786_595

def NamedBody786_597 : StackLang.HolProg 64 :=
.seq NamedBody786_65 NamedBody786_596

def NamedBody786_598 : StackLang.HolProg 64 :=
.seq NamedBody786_64 NamedBody786_597

def NamedBody786_599 : StackLang.HolProg 64 :=
.seq NamedBody786_11 NamedBody786_598

def NamedBody786_600 : StackLang.HolProg 64 :=
.seq NamedBody786_6 NamedBody786_599

def Named786 : Nat × StackLang.HolProg 64 := (786, NamedBody786_600)
theorem Named786_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed786 = Named786 := by
  kernel_rfl
#print axioms Named786_eq
end InitECandidate.Proofs.BackendStages
