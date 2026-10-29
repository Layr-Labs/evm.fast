import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed804
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody804_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody804_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody804_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody804_3 : StackLang.HolProg 64 :=
.seq NamedBody804_1 NamedBody804_2

def NamedBody804_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody804_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody804_3 NamedBody804_4

def NamedBody804_6 : StackLang.HolProg 64 :=
.seq NamedBody804_0 NamedBody804_5

def NamedBody804_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody804_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody804_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody804_10 : StackLang.HolProg 64 :=
.seq NamedBody804_8 NamedBody804_9

def NamedBody804_11 : StackLang.HolProg 64 :=
.seq NamedBody804_7 NamedBody804_10

def NamedBody804_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody804_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3927#64)

def NamedBody804_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody804_15 : StackLang.HolProg 64 :=
.seq NamedBody804_13 NamedBody804_14

def NamedBody804_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody804_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody804_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody804_19 : StackLang.HolProg 64 :=
.seq NamedBody804_17 NamedBody804_18

def NamedBody804_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody804_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody804_19 NamedBody804_20

def NamedBody804_22 : StackLang.HolProg 64 :=
.seq NamedBody804_16 NamedBody804_21

def NamedBody804_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody804_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody804_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 804 3

def NamedBody804_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody804_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody804_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody804_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody804_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody804_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody804_32 : StackLang.HolProg 64 :=
.seq NamedBody804_30 NamedBody804_31

def NamedBody804_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody804_34 : StackLang.HolProg 64 :=
.seq NamedBody804_32 NamedBody804_33

def NamedBody804_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody804_36 : StackLang.HolProg 64 :=
.seq NamedBody804_34 NamedBody804_35

def NamedBody804_37 : StackLang.HolProg 64 :=
.seq NamedBody804_29 NamedBody804_36

def NamedBody804_38 : StackLang.HolProg 64 :=
.seq NamedBody804_28 NamedBody804_37

def NamedBody804_39 : StackLang.HolProg 64 :=
.seq NamedBody804_27 NamedBody804_38

def NamedBody804_40 : StackLang.HolProg 64 :=
.seq NamedBody804_26 NamedBody804_39

def NamedBody804_41 : StackLang.HolProg 64 :=
.seq NamedBody804_25 NamedBody804_40

def NamedBody804_42 : StackLang.HolProg 64 :=
.seq NamedBody804_24 NamedBody804_41

def NamedBody804_43 : StackLang.HolProg 64 :=
.seq NamedBody804_23 NamedBody804_42

def NamedBody804_44 : StackLang.HolProg 64 :=
.seq NamedBody804_22 NamedBody804_43

def NamedBody804_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody804_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody804_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody804_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody804_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody804_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody804_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody804_52 : StackLang.HolProg 64 :=
.seq NamedBody804_50 NamedBody804_51

def NamedBody804_53 : StackLang.HolProg 64 :=
.seq NamedBody804_49 NamedBody804_52

def NamedBody804_54 : StackLang.HolProg 64 :=
.seq NamedBody804_48 NamedBody804_53

def NamedBody804_55 : StackLang.HolProg 64 :=
.seq NamedBody804_47 NamedBody804_54

def NamedBody804_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody804_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody804_58 : StackLang.HolProg 64 :=
.seq NamedBody804_56 NamedBody804_57

def NamedBody804_59 : StackLang.HolProg 64 :=
.call (some (NamedBody804_55, 1, 804, 2)) (Sum.inl 69) (some (NamedBody804_58, 804, 3))

def NamedBody804_60 : StackLang.HolProg 64 :=
.seq NamedBody804_46 NamedBody804_59

def NamedBody804_61 : StackLang.HolProg 64 :=
.seq NamedBody804_45 NamedBody804_60

def NamedBody804_62 : StackLang.HolProg 64 :=
.seq NamedBody804_44 NamedBody804_61

def NamedBody804_63 : StackLang.HolProg 64 :=
.seq NamedBody804_15 NamedBody804_62

def NamedBody804_64 : StackLang.HolProg 64 :=
.seq NamedBody804_12 NamedBody804_63

def NamedBody804_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody804_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 288#64)

def NamedBody804_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody804_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody804_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3928#64)

def NamedBody804_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody804_71 : StackLang.HolProg 64 :=
.seq NamedBody804_69 NamedBody804_70

def NamedBody804_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody804_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody804_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody804_75 : StackLang.HolProg 64 :=
.seq NamedBody804_73 NamedBody804_74

def NamedBody804_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody804_77 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody804_75 NamedBody804_76

def NamedBody804_78 : StackLang.HolProg 64 :=
.seq NamedBody804_72 NamedBody804_77

def NamedBody804_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody804_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody804_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 804 5

def NamedBody804_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody804_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody804_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody804_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody804_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody804_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody804_88 : StackLang.HolProg 64 :=
.seq NamedBody804_86 NamedBody804_87

def NamedBody804_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody804_90 : StackLang.HolProg 64 :=
.seq NamedBody804_88 NamedBody804_89

def NamedBody804_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody804_92 : StackLang.HolProg 64 :=
.seq NamedBody804_90 NamedBody804_91

def NamedBody804_93 : StackLang.HolProg 64 :=
.seq NamedBody804_85 NamedBody804_92

def NamedBody804_94 : StackLang.HolProg 64 :=
.seq NamedBody804_84 NamedBody804_93

def NamedBody804_95 : StackLang.HolProg 64 :=
.seq NamedBody804_83 NamedBody804_94

def NamedBody804_96 : StackLang.HolProg 64 :=
.seq NamedBody804_82 NamedBody804_95

def NamedBody804_97 : StackLang.HolProg 64 :=
.seq NamedBody804_81 NamedBody804_96

def NamedBody804_98 : StackLang.HolProg 64 :=
.seq NamedBody804_80 NamedBody804_97

def NamedBody804_99 : StackLang.HolProg 64 :=
.seq NamedBody804_79 NamedBody804_98

def NamedBody804_100 : StackLang.HolProg 64 :=
.seq NamedBody804_78 NamedBody804_99

def NamedBody804_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody804_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody804_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody804_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody804_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody804_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody804_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody804_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody804_109 : StackLang.HolProg 64 :=
.seq NamedBody804_107 NamedBody804_108

def NamedBody804_110 : StackLang.HolProg 64 :=
.seq NamedBody804_106 NamedBody804_109

def NamedBody804_111 : StackLang.HolProg 64 :=
.seq NamedBody804_105 NamedBody804_110

def NamedBody804_112 : StackLang.HolProg 64 :=
.seq NamedBody804_104 NamedBody804_111

def NamedBody804_113 : StackLang.HolProg 64 :=
.seq NamedBody804_103 NamedBody804_112

def NamedBody804_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody804_115 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody804_116 : StackLang.HolProg 64 :=
.seq NamedBody804_114 NamedBody804_115

def NamedBody804_117 : StackLang.HolProg 64 :=
.call (some (NamedBody804_113, 1, 804, 4)) (Sum.inl 68) (some (NamedBody804_116, 804, 5))

def NamedBody804_118 : StackLang.HolProg 64 :=
.seq NamedBody804_102 NamedBody804_117

def NamedBody804_119 : StackLang.HolProg 64 :=
.seq NamedBody804_101 NamedBody804_118

def NamedBody804_120 : StackLang.HolProg 64 :=
.seq NamedBody804_100 NamedBody804_119

def NamedBody804_121 : StackLang.HolProg 64 :=
.seq NamedBody804_71 NamedBody804_120

def NamedBody804_122 : StackLang.HolProg 64 :=
.seq NamedBody804_68 NamedBody804_121

def NamedBody804_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody804_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody804_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody804_126 : StackLang.HolProg 64 :=
.seq NamedBody804_124 NamedBody804_125

def NamedBody804_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody804_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3929#64)

def NamedBody804_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody804_130 : StackLang.HolProg 64 :=
.seq NamedBody804_128 NamedBody804_129

def NamedBody804_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody804_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody804_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody804_134 : StackLang.HolProg 64 :=
.seq NamedBody804_132 NamedBody804_133

def NamedBody804_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody804_136 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody804_134 NamedBody804_135

def NamedBody804_137 : StackLang.HolProg 64 :=
.seq NamedBody804_131 NamedBody804_136

def NamedBody804_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody804_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody804_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 804 7

def NamedBody804_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody804_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody804_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody804_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody804_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody804_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody804_147 : StackLang.HolProg 64 :=
.seq NamedBody804_145 NamedBody804_146

def NamedBody804_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody804_149 : StackLang.HolProg 64 :=
.seq NamedBody804_147 NamedBody804_148

def NamedBody804_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody804_151 : StackLang.HolProg 64 :=
.seq NamedBody804_149 NamedBody804_150

def NamedBody804_152 : StackLang.HolProg 64 :=
.seq NamedBody804_144 NamedBody804_151

def NamedBody804_153 : StackLang.HolProg 64 :=
.seq NamedBody804_143 NamedBody804_152

def NamedBody804_154 : StackLang.HolProg 64 :=
.seq NamedBody804_142 NamedBody804_153

def NamedBody804_155 : StackLang.HolProg 64 :=
.seq NamedBody804_141 NamedBody804_154

def NamedBody804_156 : StackLang.HolProg 64 :=
.seq NamedBody804_140 NamedBody804_155

def NamedBody804_157 : StackLang.HolProg 64 :=
.seq NamedBody804_139 NamedBody804_156

def NamedBody804_158 : StackLang.HolProg 64 :=
.seq NamedBody804_138 NamedBody804_157

def NamedBody804_159 : StackLang.HolProg 64 :=
.seq NamedBody804_137 NamedBody804_158

def NamedBody804_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody804_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody804_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody804_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody804_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody804_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody804_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody804_167 : StackLang.HolProg 64 :=
.seq NamedBody804_165 NamedBody804_166

def NamedBody804_168 : StackLang.HolProg 64 :=
.seq NamedBody804_164 NamedBody804_167

def NamedBody804_169 : StackLang.HolProg 64 :=
.seq NamedBody804_163 NamedBody804_168

def NamedBody804_170 : StackLang.HolProg 64 :=
.seq NamedBody804_162 NamedBody804_169

def NamedBody804_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody804_172 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody804_173 : StackLang.HolProg 64 :=
.seq NamedBody804_171 NamedBody804_172

def NamedBody804_174 : StackLang.HolProg 64 :=
.call (some (NamedBody804_170, 1, 804, 6)) (Sum.inl 801) (some (NamedBody804_173, 804, 7))

def NamedBody804_175 : StackLang.HolProg 64 :=
.seq NamedBody804_161 NamedBody804_174

def NamedBody804_176 : StackLang.HolProg 64 :=
.seq NamedBody804_160 NamedBody804_175

def NamedBody804_177 : StackLang.HolProg 64 :=
.seq NamedBody804_159 NamedBody804_176

def NamedBody804_178 : StackLang.HolProg 64 :=
.seq NamedBody804_130 NamedBody804_177

def NamedBody804_179 : StackLang.HolProg 64 :=
.seq NamedBody804_127 NamedBody804_178

def NamedBody804_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody804_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody804_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody804_183 : StackLang.HolProg 64 :=
.seq NamedBody804_181 NamedBody804_182

def NamedBody804_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody804_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3930#64)

def NamedBody804_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody804_187 : StackLang.HolProg 64 :=
.seq NamedBody804_185 NamedBody804_186

def NamedBody804_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody804_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody804_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody804_191 : StackLang.HolProg 64 :=
.seq NamedBody804_189 NamedBody804_190

def NamedBody804_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody804_193 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody804_191 NamedBody804_192

def NamedBody804_194 : StackLang.HolProg 64 :=
.seq NamedBody804_188 NamedBody804_193

def NamedBody804_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody804_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody804_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 804 9

def NamedBody804_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody804_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody804_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody804_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody804_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody804_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody804_204 : StackLang.HolProg 64 :=
.seq NamedBody804_202 NamedBody804_203

def NamedBody804_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody804_206 : StackLang.HolProg 64 :=
.seq NamedBody804_204 NamedBody804_205

def NamedBody804_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody804_208 : StackLang.HolProg 64 :=
.seq NamedBody804_206 NamedBody804_207

def NamedBody804_209 : StackLang.HolProg 64 :=
.seq NamedBody804_201 NamedBody804_208

def NamedBody804_210 : StackLang.HolProg 64 :=
.seq NamedBody804_200 NamedBody804_209

def NamedBody804_211 : StackLang.HolProg 64 :=
.seq NamedBody804_199 NamedBody804_210

def NamedBody804_212 : StackLang.HolProg 64 :=
.seq NamedBody804_198 NamedBody804_211

def NamedBody804_213 : StackLang.HolProg 64 :=
.seq NamedBody804_197 NamedBody804_212

def NamedBody804_214 : StackLang.HolProg 64 :=
.seq NamedBody804_196 NamedBody804_213

def NamedBody804_215 : StackLang.HolProg 64 :=
.seq NamedBody804_195 NamedBody804_214

def NamedBody804_216 : StackLang.HolProg 64 :=
.seq NamedBody804_194 NamedBody804_215

def NamedBody804_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody804_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody804_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody804_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody804_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody804_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody804_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody804_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody804_225 : StackLang.HolProg 64 :=
.seq NamedBody804_223 NamedBody804_224

def NamedBody804_226 : StackLang.HolProg 64 :=
.seq NamedBody804_222 NamedBody804_225

def NamedBody804_227 : StackLang.HolProg 64 :=
.seq NamedBody804_221 NamedBody804_226

def NamedBody804_228 : StackLang.HolProg 64 :=
.seq NamedBody804_220 NamedBody804_227

def NamedBody804_229 : StackLang.HolProg 64 :=
.seq NamedBody804_219 NamedBody804_228

def NamedBody804_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody804_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody804_232 : StackLang.HolProg 64 :=
.seq NamedBody804_230 NamedBody804_231

def NamedBody804_233 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody804_234 : StackLang.HolProg 64 :=
.seq NamedBody804_232 NamedBody804_233

def NamedBody804_235 : StackLang.HolProg 64 :=
.call (some (NamedBody804_229, 1, 804, 8)) (Sum.inl 803) (some (NamedBody804_234, 804, 9))

def NamedBody804_236 : StackLang.HolProg 64 :=
.seq NamedBody804_218 NamedBody804_235

def NamedBody804_237 : StackLang.HolProg 64 :=
.seq NamedBody804_217 NamedBody804_236

def NamedBody804_238 : StackLang.HolProg 64 :=
.seq NamedBody804_216 NamedBody804_237

def NamedBody804_239 : StackLang.HolProg 64 :=
.seq NamedBody804_187 NamedBody804_238

def NamedBody804_240 : StackLang.HolProg 64 :=
.seq NamedBody804_184 NamedBody804_239

def NamedBody804_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody804_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody804_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody804_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody804_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody804_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551224#64))

def NamedBody804_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1632#64)))

def NamedBody804_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 10#64)

def NamedBody804_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody804_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody804_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3931#64)

def NamedBody804_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody804_253 : StackLang.HolProg 64 :=
.seq NamedBody804_251 NamedBody804_252

def NamedBody804_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody804_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody804_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody804_257 : StackLang.HolProg 64 :=
.seq NamedBody804_255 NamedBody804_256

def NamedBody804_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody804_259 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody804_257 NamedBody804_258

def NamedBody804_260 : StackLang.HolProg 64 :=
.seq NamedBody804_254 NamedBody804_259

def NamedBody804_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody804_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody804_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 804 11

def NamedBody804_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody804_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody804_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody804_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody804_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody804_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody804_270 : StackLang.HolProg 64 :=
.seq NamedBody804_268 NamedBody804_269

def NamedBody804_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody804_272 : StackLang.HolProg 64 :=
.seq NamedBody804_270 NamedBody804_271

def NamedBody804_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody804_274 : StackLang.HolProg 64 :=
.seq NamedBody804_272 NamedBody804_273

def NamedBody804_275 : StackLang.HolProg 64 :=
.seq NamedBody804_267 NamedBody804_274

def NamedBody804_276 : StackLang.HolProg 64 :=
.seq NamedBody804_266 NamedBody804_275

def NamedBody804_277 : StackLang.HolProg 64 :=
.seq NamedBody804_265 NamedBody804_276

def NamedBody804_278 : StackLang.HolProg 64 :=
.seq NamedBody804_264 NamedBody804_277

def NamedBody804_279 : StackLang.HolProg 64 :=
.seq NamedBody804_263 NamedBody804_278

def NamedBody804_280 : StackLang.HolProg 64 :=
.seq NamedBody804_262 NamedBody804_279

def NamedBody804_281 : StackLang.HolProg 64 :=
.seq NamedBody804_261 NamedBody804_280

def NamedBody804_282 : StackLang.HolProg 64 :=
.seq NamedBody804_260 NamedBody804_281

def NamedBody804_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody804_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody804_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody804_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody804_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody804_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody804_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody804_290 : StackLang.HolProg 64 :=
.seq NamedBody804_288 NamedBody804_289

def NamedBody804_291 : StackLang.HolProg 64 :=
.seq NamedBody804_287 NamedBody804_290

def NamedBody804_292 : StackLang.HolProg 64 :=
.seq NamedBody804_286 NamedBody804_291

def NamedBody804_293 : StackLang.HolProg 64 :=
.seq NamedBody804_285 NamedBody804_292

def NamedBody804_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody804_295 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody804_296 : StackLang.HolProg 64 :=
.seq NamedBody804_294 NamedBody804_295

def NamedBody804_297 : StackLang.HolProg 64 :=
.call (some (NamedBody804_293, 1, 804, 10)) (Sum.inl 784) (some (NamedBody804_296, 804, 11))

def NamedBody804_298 : StackLang.HolProg 64 :=
.seq NamedBody804_284 NamedBody804_297

def NamedBody804_299 : StackLang.HolProg 64 :=
.seq NamedBody804_283 NamedBody804_298

def NamedBody804_300 : StackLang.HolProg 64 :=
.seq NamedBody804_282 NamedBody804_299

def NamedBody804_301 : StackLang.HolProg 64 :=
.seq NamedBody804_253 NamedBody804_300

def NamedBody804_302 : StackLang.HolProg 64 :=
.seq NamedBody804_250 NamedBody804_301

def NamedBody804_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody804_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody804_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody804_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3932#64)

def NamedBody804_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody804_308 : StackLang.HolProg 64 :=
.seq NamedBody804_306 NamedBody804_307

def NamedBody804_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody804_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody804_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody804_312 : StackLang.HolProg 64 :=
.seq NamedBody804_310 NamedBody804_311

def NamedBody804_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody804_314 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody804_312 NamedBody804_313

def NamedBody804_315 : StackLang.HolProg 64 :=
.seq NamedBody804_309 NamedBody804_314

def NamedBody804_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody804_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody804_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 804 13

def NamedBody804_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody804_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody804_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody804_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody804_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody804_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody804_325 : StackLang.HolProg 64 :=
.seq NamedBody804_323 NamedBody804_324

def NamedBody804_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody804_327 : StackLang.HolProg 64 :=
.seq NamedBody804_325 NamedBody804_326

def NamedBody804_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody804_329 : StackLang.HolProg 64 :=
.seq NamedBody804_327 NamedBody804_328

def NamedBody804_330 : StackLang.HolProg 64 :=
.seq NamedBody804_322 NamedBody804_329

def NamedBody804_331 : StackLang.HolProg 64 :=
.seq NamedBody804_321 NamedBody804_330

def NamedBody804_332 : StackLang.HolProg 64 :=
.seq NamedBody804_320 NamedBody804_331

def NamedBody804_333 : StackLang.HolProg 64 :=
.seq NamedBody804_319 NamedBody804_332

def NamedBody804_334 : StackLang.HolProg 64 :=
.seq NamedBody804_318 NamedBody804_333

def NamedBody804_335 : StackLang.HolProg 64 :=
.seq NamedBody804_317 NamedBody804_334

def NamedBody804_336 : StackLang.HolProg 64 :=
.seq NamedBody804_316 NamedBody804_335

def NamedBody804_337 : StackLang.HolProg 64 :=
.seq NamedBody804_315 NamedBody804_336

def NamedBody804_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody804_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody804_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody804_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody804_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody804_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody804_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody804_345 : StackLang.HolProg 64 :=
.seq NamedBody804_343 NamedBody804_344

def NamedBody804_346 : StackLang.HolProg 64 :=
.seq NamedBody804_342 NamedBody804_345

def NamedBody804_347 : StackLang.HolProg 64 :=
.seq NamedBody804_341 NamedBody804_346

def NamedBody804_348 : StackLang.HolProg 64 :=
.seq NamedBody804_340 NamedBody804_347

def NamedBody804_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody804_350 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody804_351 : StackLang.HolProg 64 :=
.seq NamedBody804_349 NamedBody804_350

def NamedBody804_352 : StackLang.HolProg 64 :=
.call (some (NamedBody804_348, 1, 804, 12)) (Sum.inl 70) (some (NamedBody804_351, 804, 13))

def NamedBody804_353 : StackLang.HolProg 64 :=
.seq NamedBody804_339 NamedBody804_352

def NamedBody804_354 : StackLang.HolProg 64 :=
.seq NamedBody804_338 NamedBody804_353

def NamedBody804_355 : StackLang.HolProg 64 :=
.seq NamedBody804_337 NamedBody804_354

def NamedBody804_356 : StackLang.HolProg 64 :=
.seq NamedBody804_308 NamedBody804_355

def NamedBody804_357 : StackLang.HolProg 64 :=
.seq NamedBody804_305 NamedBody804_356

def NamedBody804_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody804_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody804_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody804_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody804_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody804_363 : StackLang.HolProg 64 :=
.seq NamedBody804_361 NamedBody804_362

def NamedBody804_364 : StackLang.HolProg 64 :=
.seq NamedBody804_360 NamedBody804_363

def NamedBody804_365 : StackLang.HolProg 64 :=
.seq NamedBody804_359 NamedBody804_364

def NamedBody804_366 : StackLang.HolProg 64 :=
.seq NamedBody804_358 NamedBody804_365

def NamedBody804_367 : StackLang.HolProg 64 :=
.seq NamedBody804_357 NamedBody804_366

def NamedBody804_368 : StackLang.HolProg 64 :=
.seq NamedBody804_304 NamedBody804_367

def NamedBody804_369 : StackLang.HolProg 64 :=
.seq NamedBody804_303 NamedBody804_368

def NamedBody804_370 : StackLang.HolProg 64 :=
.seq NamedBody804_302 NamedBody804_369

def NamedBody804_371 : StackLang.HolProg 64 :=
.seq NamedBody804_249 NamedBody804_370

def NamedBody804_372 : StackLang.HolProg 64 :=
.seq NamedBody804_248 NamedBody804_371

def NamedBody804_373 : StackLang.HolProg 64 :=
.seq NamedBody804_247 NamedBody804_372

def NamedBody804_374 : StackLang.HolProg 64 :=
.seq NamedBody804_246 NamedBody804_373

def NamedBody804_375 : StackLang.HolProg 64 :=
.seq NamedBody804_245 NamedBody804_374

def NamedBody804_376 : StackLang.HolProg 64 :=
.seq NamedBody804_244 NamedBody804_375

def NamedBody804_377 : StackLang.HolProg 64 :=
.seq NamedBody804_243 NamedBody804_376

def NamedBody804_378 : StackLang.HolProg 64 :=
.seq NamedBody804_242 NamedBody804_377

def NamedBody804_379 : StackLang.HolProg 64 :=
.seq NamedBody804_241 NamedBody804_378

def NamedBody804_380 : StackLang.HolProg 64 :=
.seq NamedBody804_240 NamedBody804_379

def NamedBody804_381 : StackLang.HolProg 64 :=
.seq NamedBody804_183 NamedBody804_380

def NamedBody804_382 : StackLang.HolProg 64 :=
.seq NamedBody804_180 NamedBody804_381

def NamedBody804_383 : StackLang.HolProg 64 :=
.seq NamedBody804_179 NamedBody804_382

def NamedBody804_384 : StackLang.HolProg 64 :=
.seq NamedBody804_126 NamedBody804_383

def NamedBody804_385 : StackLang.HolProg 64 :=
.seq NamedBody804_123 NamedBody804_384

def NamedBody804_386 : StackLang.HolProg 64 :=
.seq NamedBody804_122 NamedBody804_385

def NamedBody804_387 : StackLang.HolProg 64 :=
.seq NamedBody804_67 NamedBody804_386

def NamedBody804_388 : StackLang.HolProg 64 :=
.seq NamedBody804_66 NamedBody804_387

def NamedBody804_389 : StackLang.HolProg 64 :=
.seq NamedBody804_65 NamedBody804_388

def NamedBody804_390 : StackLang.HolProg 64 :=
.seq NamedBody804_64 NamedBody804_389

def NamedBody804_391 : StackLang.HolProg 64 :=
.seq NamedBody804_11 NamedBody804_390

def NamedBody804_392 : StackLang.HolProg 64 :=
.seq NamedBody804_6 NamedBody804_391

def Named804 : Nat × StackLang.HolProg 64 := (804, NamedBody804_392)
theorem Named804_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed804 = Named804 := by
  kernel_rfl
#print axioms Named804_eq
end InitECandidate.Proofs.BackendStages
