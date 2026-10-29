import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed698
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody698_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def NamedBody698_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody698_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody698_3 : StackLang.HolProg 64 :=
.seq NamedBody698_1 NamedBody698_2

def NamedBody698_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody698_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody698_3 NamedBody698_4

def NamedBody698_6 : StackLang.HolProg 64 :=
.seq NamedBody698_0 NamedBody698_5

def NamedBody698_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody698_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody698_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody698_10 : StackLang.HolProg 64 :=
.seq NamedBody698_8 NamedBody698_9

def NamedBody698_11 : StackLang.HolProg 64 :=
.seq NamedBody698_7 NamedBody698_10

def NamedBody698_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody698_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3076#64)

def NamedBody698_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody698_15 : StackLang.HolProg 64 :=
.seq NamedBody698_13 NamedBody698_14

def NamedBody698_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody698_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody698_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody698_19 : StackLang.HolProg 64 :=
.seq NamedBody698_17 NamedBody698_18

def NamedBody698_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody698_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody698_19 NamedBody698_20

def NamedBody698_22 : StackLang.HolProg 64 :=
.seq NamedBody698_16 NamedBody698_21

def NamedBody698_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody698_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody698_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 698 3

def NamedBody698_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody698_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody698_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody698_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody698_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody698_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody698_32 : StackLang.HolProg 64 :=
.seq NamedBody698_30 NamedBody698_31

def NamedBody698_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody698_34 : StackLang.HolProg 64 :=
.seq NamedBody698_32 NamedBody698_33

def NamedBody698_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody698_36 : StackLang.HolProg 64 :=
.seq NamedBody698_34 NamedBody698_35

def NamedBody698_37 : StackLang.HolProg 64 :=
.seq NamedBody698_29 NamedBody698_36

def NamedBody698_38 : StackLang.HolProg 64 :=
.seq NamedBody698_28 NamedBody698_37

def NamedBody698_39 : StackLang.HolProg 64 :=
.seq NamedBody698_27 NamedBody698_38

def NamedBody698_40 : StackLang.HolProg 64 :=
.seq NamedBody698_26 NamedBody698_39

def NamedBody698_41 : StackLang.HolProg 64 :=
.seq NamedBody698_25 NamedBody698_40

def NamedBody698_42 : StackLang.HolProg 64 :=
.seq NamedBody698_24 NamedBody698_41

def NamedBody698_43 : StackLang.HolProg 64 :=
.seq NamedBody698_23 NamedBody698_42

def NamedBody698_44 : StackLang.HolProg 64 :=
.seq NamedBody698_22 NamedBody698_43

def NamedBody698_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody698_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody698_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody698_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody698_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody698_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody698_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody698_52 : StackLang.HolProg 64 :=
.seq NamedBody698_50 NamedBody698_51

def NamedBody698_53 : StackLang.HolProg 64 :=
.seq NamedBody698_49 NamedBody698_52

def NamedBody698_54 : StackLang.HolProg 64 :=
.seq NamedBody698_48 NamedBody698_53

def NamedBody698_55 : StackLang.HolProg 64 :=
.seq NamedBody698_47 NamedBody698_54

def NamedBody698_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody698_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody698_58 : StackLang.HolProg 64 :=
.seq NamedBody698_56 NamedBody698_57

def NamedBody698_59 : StackLang.HolProg 64 :=
.call (some (NamedBody698_55, 1, 698, 2)) (Sum.inl 69) (some (NamedBody698_58, 698, 3))

def NamedBody698_60 : StackLang.HolProg 64 :=
.seq NamedBody698_46 NamedBody698_59

def NamedBody698_61 : StackLang.HolProg 64 :=
.seq NamedBody698_45 NamedBody698_60

def NamedBody698_62 : StackLang.HolProg 64 :=
.seq NamedBody698_44 NamedBody698_61

def NamedBody698_63 : StackLang.HolProg 64 :=
.seq NamedBody698_15 NamedBody698_62

def NamedBody698_64 : StackLang.HolProg 64 :=
.seq NamedBody698_12 NamedBody698_63

def NamedBody698_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody698_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 96#64)

def NamedBody698_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody698_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody698_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3077#64)

def NamedBody698_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody698_71 : StackLang.HolProg 64 :=
.seq NamedBody698_69 NamedBody698_70

def NamedBody698_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody698_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody698_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody698_75 : StackLang.HolProg 64 :=
.seq NamedBody698_73 NamedBody698_74

def NamedBody698_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody698_77 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody698_75 NamedBody698_76

def NamedBody698_78 : StackLang.HolProg 64 :=
.seq NamedBody698_72 NamedBody698_77

def NamedBody698_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody698_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody698_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 698 5

def NamedBody698_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody698_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody698_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody698_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody698_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody698_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody698_88 : StackLang.HolProg 64 :=
.seq NamedBody698_86 NamedBody698_87

def NamedBody698_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody698_90 : StackLang.HolProg 64 :=
.seq NamedBody698_88 NamedBody698_89

def NamedBody698_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody698_92 : StackLang.HolProg 64 :=
.seq NamedBody698_90 NamedBody698_91

def NamedBody698_93 : StackLang.HolProg 64 :=
.seq NamedBody698_85 NamedBody698_92

def NamedBody698_94 : StackLang.HolProg 64 :=
.seq NamedBody698_84 NamedBody698_93

def NamedBody698_95 : StackLang.HolProg 64 :=
.seq NamedBody698_83 NamedBody698_94

def NamedBody698_96 : StackLang.HolProg 64 :=
.seq NamedBody698_82 NamedBody698_95

def NamedBody698_97 : StackLang.HolProg 64 :=
.seq NamedBody698_81 NamedBody698_96

def NamedBody698_98 : StackLang.HolProg 64 :=
.seq NamedBody698_80 NamedBody698_97

def NamedBody698_99 : StackLang.HolProg 64 :=
.seq NamedBody698_79 NamedBody698_98

def NamedBody698_100 : StackLang.HolProg 64 :=
.seq NamedBody698_78 NamedBody698_99

def NamedBody698_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody698_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody698_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody698_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody698_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody698_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody698_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody698_108 : StackLang.HolProg 64 :=
.seq NamedBody698_106 NamedBody698_107

def NamedBody698_109 : StackLang.HolProg 64 :=
.seq NamedBody698_105 NamedBody698_108

def NamedBody698_110 : StackLang.HolProg 64 :=
.seq NamedBody698_104 NamedBody698_109

def NamedBody698_111 : StackLang.HolProg 64 :=
.seq NamedBody698_103 NamedBody698_110

def NamedBody698_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody698_113 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody698_114 : StackLang.HolProg 64 :=
.seq NamedBody698_112 NamedBody698_113

def NamedBody698_115 : StackLang.HolProg 64 :=
.call (some (NamedBody698_111, 1, 698, 4)) (Sum.inl 68) (some (NamedBody698_114, 698, 5))

def NamedBody698_116 : StackLang.HolProg 64 :=
.seq NamedBody698_102 NamedBody698_115

def NamedBody698_117 : StackLang.HolProg 64 :=
.seq NamedBody698_101 NamedBody698_116

def NamedBody698_118 : StackLang.HolProg 64 :=
.seq NamedBody698_100 NamedBody698_117

def NamedBody698_119 : StackLang.HolProg 64 :=
.seq NamedBody698_71 NamedBody698_118

def NamedBody698_120 : StackLang.HolProg 64 :=
.seq NamedBody698_68 NamedBody698_119

def NamedBody698_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody698_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 96#64)

def NamedBody698_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody698_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody698_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3078#64)

def NamedBody698_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody698_127 : StackLang.HolProg 64 :=
.seq NamedBody698_125 NamedBody698_126

def NamedBody698_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody698_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody698_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody698_131 : StackLang.HolProg 64 :=
.seq NamedBody698_129 NamedBody698_130

def NamedBody698_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody698_133 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody698_131 NamedBody698_132

def NamedBody698_134 : StackLang.HolProg 64 :=
.seq NamedBody698_128 NamedBody698_133

def NamedBody698_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody698_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody698_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 698 7

def NamedBody698_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody698_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody698_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody698_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody698_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody698_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody698_144 : StackLang.HolProg 64 :=
.seq NamedBody698_142 NamedBody698_143

def NamedBody698_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody698_146 : StackLang.HolProg 64 :=
.seq NamedBody698_144 NamedBody698_145

def NamedBody698_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody698_148 : StackLang.HolProg 64 :=
.seq NamedBody698_146 NamedBody698_147

def NamedBody698_149 : StackLang.HolProg 64 :=
.seq NamedBody698_141 NamedBody698_148

def NamedBody698_150 : StackLang.HolProg 64 :=
.seq NamedBody698_140 NamedBody698_149

def NamedBody698_151 : StackLang.HolProg 64 :=
.seq NamedBody698_139 NamedBody698_150

def NamedBody698_152 : StackLang.HolProg 64 :=
.seq NamedBody698_138 NamedBody698_151

def NamedBody698_153 : StackLang.HolProg 64 :=
.seq NamedBody698_137 NamedBody698_152

def NamedBody698_154 : StackLang.HolProg 64 :=
.seq NamedBody698_136 NamedBody698_153

def NamedBody698_155 : StackLang.HolProg 64 :=
.seq NamedBody698_135 NamedBody698_154

def NamedBody698_156 : StackLang.HolProg 64 :=
.seq NamedBody698_134 NamedBody698_155

def NamedBody698_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody698_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody698_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody698_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody698_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody698_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody698_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody698_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody698_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody698_166 : StackLang.HolProg 64 :=
.seq NamedBody698_164 NamedBody698_165

def NamedBody698_167 : StackLang.HolProg 64 :=
.seq NamedBody698_163 NamedBody698_166

def NamedBody698_168 : StackLang.HolProg 64 :=
.seq NamedBody698_162 NamedBody698_167

def NamedBody698_169 : StackLang.HolProg 64 :=
.seq NamedBody698_161 NamedBody698_168

def NamedBody698_170 : StackLang.HolProg 64 :=
.seq NamedBody698_160 NamedBody698_169

def NamedBody698_171 : StackLang.HolProg 64 :=
.seq NamedBody698_159 NamedBody698_170

def NamedBody698_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody698_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody698_174 : StackLang.HolProg 64 :=
.seq NamedBody698_172 NamedBody698_173

def NamedBody698_175 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody698_176 : StackLang.HolProg 64 :=
.seq NamedBody698_174 NamedBody698_175

def NamedBody698_177 : StackLang.HolProg 64 :=
.call (some (NamedBody698_171, 1, 698, 6)) (Sum.inl 68) (some (NamedBody698_176, 698, 7))

def NamedBody698_178 : StackLang.HolProg 64 :=
.seq NamedBody698_158 NamedBody698_177

def NamedBody698_179 : StackLang.HolProg 64 :=
.seq NamedBody698_157 NamedBody698_178

def NamedBody698_180 : StackLang.HolProg 64 :=
.seq NamedBody698_156 NamedBody698_179

def NamedBody698_181 : StackLang.HolProg 64 :=
.seq NamedBody698_127 NamedBody698_180

def NamedBody698_182 : StackLang.HolProg 64 :=
.seq NamedBody698_124 NamedBody698_181

def NamedBody698_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody698_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody698_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody698_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody698_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody698_188 : StackLang.HolProg 64 :=
.seq NamedBody698_186 NamedBody698_187

def NamedBody698_189 : StackLang.HolProg 64 :=
.seq NamedBody698_185 NamedBody698_188

def NamedBody698_190 : StackLang.HolProg 64 :=
.seq NamedBody698_184 NamedBody698_189

def NamedBody698_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody698_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3079#64)

def NamedBody698_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody698_194 : StackLang.HolProg 64 :=
.seq NamedBody698_192 NamedBody698_193

def NamedBody698_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody698_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody698_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody698_198 : StackLang.HolProg 64 :=
.seq NamedBody698_196 NamedBody698_197

def NamedBody698_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody698_200 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody698_198 NamedBody698_199

def NamedBody698_201 : StackLang.HolProg 64 :=
.seq NamedBody698_195 NamedBody698_200

def NamedBody698_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody698_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody698_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 698 9

def NamedBody698_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody698_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody698_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody698_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody698_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody698_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody698_211 : StackLang.HolProg 64 :=
.seq NamedBody698_209 NamedBody698_210

def NamedBody698_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody698_213 : StackLang.HolProg 64 :=
.seq NamedBody698_211 NamedBody698_212

def NamedBody698_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody698_215 : StackLang.HolProg 64 :=
.seq NamedBody698_213 NamedBody698_214

def NamedBody698_216 : StackLang.HolProg 64 :=
.seq NamedBody698_208 NamedBody698_215

def NamedBody698_217 : StackLang.HolProg 64 :=
.seq NamedBody698_207 NamedBody698_216

def NamedBody698_218 : StackLang.HolProg 64 :=
.seq NamedBody698_206 NamedBody698_217

def NamedBody698_219 : StackLang.HolProg 64 :=
.seq NamedBody698_205 NamedBody698_218

def NamedBody698_220 : StackLang.HolProg 64 :=
.seq NamedBody698_204 NamedBody698_219

def NamedBody698_221 : StackLang.HolProg 64 :=
.seq NamedBody698_203 NamedBody698_220

def NamedBody698_222 : StackLang.HolProg 64 :=
.seq NamedBody698_202 NamedBody698_221

def NamedBody698_223 : StackLang.HolProg 64 :=
.seq NamedBody698_201 NamedBody698_222

def NamedBody698_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody698_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody698_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody698_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody698_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody698_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody698_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody698_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody698_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody698_233 : StackLang.HolProg 64 :=
.seq NamedBody698_231 NamedBody698_232

def NamedBody698_234 : StackLang.HolProg 64 :=
.seq NamedBody698_230 NamedBody698_233

def NamedBody698_235 : StackLang.HolProg 64 :=
.seq NamedBody698_229 NamedBody698_234

def NamedBody698_236 : StackLang.HolProg 64 :=
.seq NamedBody698_228 NamedBody698_235

def NamedBody698_237 : StackLang.HolProg 64 :=
.seq NamedBody698_227 NamedBody698_236

def NamedBody698_238 : StackLang.HolProg 64 :=
.seq NamedBody698_226 NamedBody698_237

def NamedBody698_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody698_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody698_241 : StackLang.HolProg 64 :=
.seq NamedBody698_239 NamedBody698_240

def NamedBody698_242 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody698_243 : StackLang.HolProg 64 :=
.seq NamedBody698_241 NamedBody698_242

def NamedBody698_244 : StackLang.HolProg 64 :=
.call (some (NamedBody698_238, 1, 698, 8)) (Sum.inl 695) (some (NamedBody698_243, 698, 9))

def NamedBody698_245 : StackLang.HolProg 64 :=
.seq NamedBody698_225 NamedBody698_244

def NamedBody698_246 : StackLang.HolProg 64 :=
.seq NamedBody698_224 NamedBody698_245

def NamedBody698_247 : StackLang.HolProg 64 :=
.seq NamedBody698_223 NamedBody698_246

def NamedBody698_248 : StackLang.HolProg 64 :=
.seq NamedBody698_194 NamedBody698_247

def NamedBody698_249 : StackLang.HolProg 64 :=
.seq NamedBody698_191 NamedBody698_248

def NamedBody698_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody698_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody698_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody698_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody698_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody698_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody698_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody698_257 : StackLang.HolProg 64 :=
.seq NamedBody698_255 NamedBody698_256

def NamedBody698_258 : StackLang.HolProg 64 :=
.seq NamedBody698_254 NamedBody698_257

def NamedBody698_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody698_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3080#64)

def NamedBody698_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody698_262 : StackLang.HolProg 64 :=
.seq NamedBody698_260 NamedBody698_261

def NamedBody698_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody698_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody698_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody698_266 : StackLang.HolProg 64 :=
.seq NamedBody698_264 NamedBody698_265

def NamedBody698_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody698_268 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody698_266 NamedBody698_267

def NamedBody698_269 : StackLang.HolProg 64 :=
.seq NamedBody698_263 NamedBody698_268

def NamedBody698_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody698_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody698_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 698 11

def NamedBody698_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody698_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody698_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody698_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody698_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody698_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody698_279 : StackLang.HolProg 64 :=
.seq NamedBody698_277 NamedBody698_278

def NamedBody698_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody698_281 : StackLang.HolProg 64 :=
.seq NamedBody698_279 NamedBody698_280

def NamedBody698_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody698_283 : StackLang.HolProg 64 :=
.seq NamedBody698_281 NamedBody698_282

def NamedBody698_284 : StackLang.HolProg 64 :=
.seq NamedBody698_276 NamedBody698_283

def NamedBody698_285 : StackLang.HolProg 64 :=
.seq NamedBody698_275 NamedBody698_284

def NamedBody698_286 : StackLang.HolProg 64 :=
.seq NamedBody698_274 NamedBody698_285

def NamedBody698_287 : StackLang.HolProg 64 :=
.seq NamedBody698_273 NamedBody698_286

def NamedBody698_288 : StackLang.HolProg 64 :=
.seq NamedBody698_272 NamedBody698_287

def NamedBody698_289 : StackLang.HolProg 64 :=
.seq NamedBody698_271 NamedBody698_288

def NamedBody698_290 : StackLang.HolProg 64 :=
.seq NamedBody698_270 NamedBody698_289

def NamedBody698_291 : StackLang.HolProg 64 :=
.seq NamedBody698_269 NamedBody698_290

def NamedBody698_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody698_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody698_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody698_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody698_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody698_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody698_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody698_299 : StackLang.HolProg 64 :=
.seq NamedBody698_297 NamedBody698_298

def NamedBody698_300 : StackLang.HolProg 64 :=
.seq NamedBody698_296 NamedBody698_299

def NamedBody698_301 : StackLang.HolProg 64 :=
.seq NamedBody698_295 NamedBody698_300

def NamedBody698_302 : StackLang.HolProg 64 :=
.seq NamedBody698_294 NamedBody698_301

def NamedBody698_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody698_304 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody698_305 : StackLang.HolProg 64 :=
.seq NamedBody698_303 NamedBody698_304

def NamedBody698_306 : StackLang.HolProg 64 :=
.call (some (NamedBody698_302, 1, 698, 10)) (Sum.inl 70) (some (NamedBody698_305, 698, 11))

def NamedBody698_307 : StackLang.HolProg 64 :=
.seq NamedBody698_293 NamedBody698_306

def NamedBody698_308 : StackLang.HolProg 64 :=
.seq NamedBody698_292 NamedBody698_307

def NamedBody698_309 : StackLang.HolProg 64 :=
.seq NamedBody698_291 NamedBody698_308

def NamedBody698_310 : StackLang.HolProg 64 :=
.seq NamedBody698_262 NamedBody698_309

def NamedBody698_311 : StackLang.HolProg 64 :=
.seq NamedBody698_259 NamedBody698_310

def NamedBody698_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody698_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody698_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody698_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def NamedBody698_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 12

def NamedBody698_317 : StackLang.HolProg 64 :=
.seq NamedBody698_315 NamedBody698_316

def NamedBody698_318 : StackLang.HolProg 64 :=
.seq NamedBody698_314 NamedBody698_317

def NamedBody698_319 : StackLang.HolProg 64 :=
.seq NamedBody698_313 NamedBody698_318

def NamedBody698_320 : StackLang.HolProg 64 :=
.seq NamedBody698_312 NamedBody698_319

def NamedBody698_321 : StackLang.HolProg 64 :=
.seq NamedBody698_311 NamedBody698_320

def NamedBody698_322 : StackLang.HolProg 64 :=
.seq NamedBody698_258 NamedBody698_321

def NamedBody698_323 : StackLang.HolProg 64 :=
.seq NamedBody698_253 NamedBody698_322

def NamedBody698_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody698_325 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody698_323 NamedBody698_324

def NamedBody698_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody698_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody698_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody698_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def NamedBody698_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody698_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody698_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3081#64)

def NamedBody698_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody698_334 : StackLang.HolProg 64 :=
.seq NamedBody698_332 NamedBody698_333

def NamedBody698_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody698_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody698_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody698_338 : StackLang.HolProg 64 :=
.seq NamedBody698_336 NamedBody698_337

def NamedBody698_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody698_340 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody698_338 NamedBody698_339

def NamedBody698_341 : StackLang.HolProg 64 :=
.seq NamedBody698_335 NamedBody698_340

def NamedBody698_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody698_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody698_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 698 13

def NamedBody698_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody698_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody698_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody698_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody698_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody698_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody698_351 : StackLang.HolProg 64 :=
.seq NamedBody698_349 NamedBody698_350

def NamedBody698_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody698_353 : StackLang.HolProg 64 :=
.seq NamedBody698_351 NamedBody698_352

def NamedBody698_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody698_355 : StackLang.HolProg 64 :=
.seq NamedBody698_353 NamedBody698_354

def NamedBody698_356 : StackLang.HolProg 64 :=
.seq NamedBody698_348 NamedBody698_355

def NamedBody698_357 : StackLang.HolProg 64 :=
.seq NamedBody698_347 NamedBody698_356

def NamedBody698_358 : StackLang.HolProg 64 :=
.seq NamedBody698_346 NamedBody698_357

def NamedBody698_359 : StackLang.HolProg 64 :=
.seq NamedBody698_345 NamedBody698_358

def NamedBody698_360 : StackLang.HolProg 64 :=
.seq NamedBody698_344 NamedBody698_359

def NamedBody698_361 : StackLang.HolProg 64 :=
.seq NamedBody698_343 NamedBody698_360

def NamedBody698_362 : StackLang.HolProg 64 :=
.seq NamedBody698_342 NamedBody698_361

def NamedBody698_363 : StackLang.HolProg 64 :=
.seq NamedBody698_341 NamedBody698_362

def NamedBody698_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody698_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody698_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody698_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody698_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody698_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody698_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody698_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody698_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody698_373 : StackLang.HolProg 64 :=
.seq NamedBody698_371 NamedBody698_372

def NamedBody698_374 : StackLang.HolProg 64 :=
.seq NamedBody698_370 NamedBody698_373

def NamedBody698_375 : StackLang.HolProg 64 :=
.seq NamedBody698_369 NamedBody698_374

def NamedBody698_376 : StackLang.HolProg 64 :=
.seq NamedBody698_368 NamedBody698_375

def NamedBody698_377 : StackLang.HolProg 64 :=
.seq NamedBody698_367 NamedBody698_376

def NamedBody698_378 : StackLang.HolProg 64 :=
.seq NamedBody698_366 NamedBody698_377

def NamedBody698_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody698_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody698_381 : StackLang.HolProg 64 :=
.seq NamedBody698_379 NamedBody698_380

def NamedBody698_382 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody698_383 : StackLang.HolProg 64 :=
.seq NamedBody698_381 NamedBody698_382

def NamedBody698_384 : StackLang.HolProg 64 :=
.call (some (NamedBody698_378, 1, 698, 12)) (Sum.inl 695) (some (NamedBody698_383, 698, 13))

def NamedBody698_385 : StackLang.HolProg 64 :=
.seq NamedBody698_365 NamedBody698_384

def NamedBody698_386 : StackLang.HolProg 64 :=
.seq NamedBody698_364 NamedBody698_385

def NamedBody698_387 : StackLang.HolProg 64 :=
.seq NamedBody698_363 NamedBody698_386

def NamedBody698_388 : StackLang.HolProg 64 :=
.seq NamedBody698_334 NamedBody698_387

def NamedBody698_389 : StackLang.HolProg 64 :=
.seq NamedBody698_331 NamedBody698_388

def NamedBody698_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody698_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody698_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody698_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody698_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody698_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody698_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody698_397 : StackLang.HolProg 64 :=
.seq NamedBody698_395 NamedBody698_396

def NamedBody698_398 : StackLang.HolProg 64 :=
.seq NamedBody698_394 NamedBody698_397

def NamedBody698_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody698_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3082#64)

def NamedBody698_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody698_402 : StackLang.HolProg 64 :=
.seq NamedBody698_400 NamedBody698_401

def NamedBody698_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody698_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody698_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody698_406 : StackLang.HolProg 64 :=
.seq NamedBody698_404 NamedBody698_405

def NamedBody698_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody698_408 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody698_406 NamedBody698_407

def NamedBody698_409 : StackLang.HolProg 64 :=
.seq NamedBody698_403 NamedBody698_408

def NamedBody698_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody698_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody698_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 698 15

def NamedBody698_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody698_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody698_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody698_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody698_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody698_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody698_419 : StackLang.HolProg 64 :=
.seq NamedBody698_417 NamedBody698_418

def NamedBody698_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody698_421 : StackLang.HolProg 64 :=
.seq NamedBody698_419 NamedBody698_420

def NamedBody698_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody698_423 : StackLang.HolProg 64 :=
.seq NamedBody698_421 NamedBody698_422

def NamedBody698_424 : StackLang.HolProg 64 :=
.seq NamedBody698_416 NamedBody698_423

def NamedBody698_425 : StackLang.HolProg 64 :=
.seq NamedBody698_415 NamedBody698_424

def NamedBody698_426 : StackLang.HolProg 64 :=
.seq NamedBody698_414 NamedBody698_425

def NamedBody698_427 : StackLang.HolProg 64 :=
.seq NamedBody698_413 NamedBody698_426

def NamedBody698_428 : StackLang.HolProg 64 :=
.seq NamedBody698_412 NamedBody698_427

def NamedBody698_429 : StackLang.HolProg 64 :=
.seq NamedBody698_411 NamedBody698_428

def NamedBody698_430 : StackLang.HolProg 64 :=
.seq NamedBody698_410 NamedBody698_429

def NamedBody698_431 : StackLang.HolProg 64 :=
.seq NamedBody698_409 NamedBody698_430

def NamedBody698_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody698_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody698_434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody698_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody698_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody698_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody698_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody698_439 : StackLang.HolProg 64 :=
.seq NamedBody698_437 NamedBody698_438

def NamedBody698_440 : StackLang.HolProg 64 :=
.seq NamedBody698_436 NamedBody698_439

def NamedBody698_441 : StackLang.HolProg 64 :=
.seq NamedBody698_435 NamedBody698_440

def NamedBody698_442 : StackLang.HolProg 64 :=
.seq NamedBody698_434 NamedBody698_441

def NamedBody698_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody698_444 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody698_445 : StackLang.HolProg 64 :=
.seq NamedBody698_443 NamedBody698_444

def NamedBody698_446 : StackLang.HolProg 64 :=
.call (some (NamedBody698_442, 1, 698, 14)) (Sum.inl 70) (some (NamedBody698_445, 698, 15))

def NamedBody698_447 : StackLang.HolProg 64 :=
.seq NamedBody698_433 NamedBody698_446

def NamedBody698_448 : StackLang.HolProg 64 :=
.seq NamedBody698_432 NamedBody698_447

def NamedBody698_449 : StackLang.HolProg 64 :=
.seq NamedBody698_431 NamedBody698_448

def NamedBody698_450 : StackLang.HolProg 64 :=
.seq NamedBody698_402 NamedBody698_449

def NamedBody698_451 : StackLang.HolProg 64 :=
.seq NamedBody698_399 NamedBody698_450

def NamedBody698_452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody698_453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody698_454 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody698_455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def NamedBody698_456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody698_457 : StackLang.HolProg 64 :=
.seq NamedBody698_455 NamedBody698_456

def NamedBody698_458 : StackLang.HolProg 64 :=
.seq NamedBody698_454 NamedBody698_457

def NamedBody698_459 : StackLang.HolProg 64 :=
.seq NamedBody698_453 NamedBody698_458

def NamedBody698_460 : StackLang.HolProg 64 :=
.seq NamedBody698_452 NamedBody698_459

def NamedBody698_461 : StackLang.HolProg 64 :=
.seq NamedBody698_451 NamedBody698_460

def NamedBody698_462 : StackLang.HolProg 64 :=
.seq NamedBody698_398 NamedBody698_461

def NamedBody698_463 : StackLang.HolProg 64 :=
.seq NamedBody698_393 NamedBody698_462

def NamedBody698_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody698_465 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody698_463 NamedBody698_464

def NamedBody698_466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody698_467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody698_468 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody698_469 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody698_470 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody698_471 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody698_472 : StackLang.HolProg 64 :=
.seq NamedBody698_470 NamedBody698_471

def NamedBody698_473 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody698_474 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3083#64)

def NamedBody698_475 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody698_476 : StackLang.HolProg 64 :=
.seq NamedBody698_474 NamedBody698_475

def NamedBody698_477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody698_478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody698_479 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody698_480 : StackLang.HolProg 64 :=
.seq NamedBody698_478 NamedBody698_479

def NamedBody698_481 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody698_482 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody698_480 NamedBody698_481

def NamedBody698_483 : StackLang.HolProg 64 :=
.seq NamedBody698_477 NamedBody698_482

def NamedBody698_484 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody698_485 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody698_486 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 698 17

def NamedBody698_487 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody698_488 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody698_489 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody698_490 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody698_491 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody698_492 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody698_493 : StackLang.HolProg 64 :=
.seq NamedBody698_491 NamedBody698_492

def NamedBody698_494 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody698_495 : StackLang.HolProg 64 :=
.seq NamedBody698_493 NamedBody698_494

def NamedBody698_496 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody698_497 : StackLang.HolProg 64 :=
.seq NamedBody698_495 NamedBody698_496

def NamedBody698_498 : StackLang.HolProg 64 :=
.seq NamedBody698_490 NamedBody698_497

def NamedBody698_499 : StackLang.HolProg 64 :=
.seq NamedBody698_489 NamedBody698_498

def NamedBody698_500 : StackLang.HolProg 64 :=
.seq NamedBody698_488 NamedBody698_499

def NamedBody698_501 : StackLang.HolProg 64 :=
.seq NamedBody698_487 NamedBody698_500

def NamedBody698_502 : StackLang.HolProg 64 :=
.seq NamedBody698_486 NamedBody698_501

def NamedBody698_503 : StackLang.HolProg 64 :=
.seq NamedBody698_485 NamedBody698_502

def NamedBody698_504 : StackLang.HolProg 64 :=
.seq NamedBody698_484 NamedBody698_503

def NamedBody698_505 : StackLang.HolProg 64 :=
.seq NamedBody698_483 NamedBody698_504

def NamedBody698_506 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody698_507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody698_508 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody698_509 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody698_510 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody698_511 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody698_512 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody698_513 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody698_514 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody698_515 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody698_516 : StackLang.HolProg 64 :=
.seq NamedBody698_514 NamedBody698_515

def NamedBody698_517 : StackLang.HolProg 64 :=
.seq NamedBody698_513 NamedBody698_516

def NamedBody698_518 : StackLang.HolProg 64 :=
.seq NamedBody698_512 NamedBody698_517

def NamedBody698_519 : StackLang.HolProg 64 :=
.seq NamedBody698_511 NamedBody698_518

def NamedBody698_520 : StackLang.HolProg 64 :=
.seq NamedBody698_510 NamedBody698_519

def NamedBody698_521 : StackLang.HolProg 64 :=
.seq NamedBody698_509 NamedBody698_520

def NamedBody698_522 : StackLang.HolProg 64 :=
.seq NamedBody698_508 NamedBody698_521

def NamedBody698_523 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody698_524 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody698_525 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody698_526 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody698_527 : StackLang.HolProg 64 :=
.seq NamedBody698_525 NamedBody698_526

def NamedBody698_528 : StackLang.HolProg 64 :=
.seq NamedBody698_524 NamedBody698_527

def NamedBody698_529 : StackLang.HolProg 64 :=
.seq NamedBody698_523 NamedBody698_528

def NamedBody698_530 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody698_531 : StackLang.HolProg 64 :=
.seq NamedBody698_529 NamedBody698_530

def NamedBody698_532 : StackLang.HolProg 64 :=
.call (some (NamedBody698_522, 1, 698, 16)) (Sum.inl 683) (some (NamedBody698_531, 698, 17))

def NamedBody698_533 : StackLang.HolProg 64 :=
.seq NamedBody698_507 NamedBody698_532

def NamedBody698_534 : StackLang.HolProg 64 :=
.seq NamedBody698_506 NamedBody698_533

def NamedBody698_535 : StackLang.HolProg 64 :=
.seq NamedBody698_505 NamedBody698_534

def NamedBody698_536 : StackLang.HolProg 64 :=
.seq NamedBody698_476 NamedBody698_535

def NamedBody698_537 : StackLang.HolProg 64 :=
.seq NamedBody698_473 NamedBody698_536

def NamedBody698_538 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody698_539 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody698_540 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody698_541 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3084#64)

def NamedBody698_542 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody698_543 : StackLang.HolProg 64 :=
.seq NamedBody698_541 NamedBody698_542

def NamedBody698_544 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody698_545 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody698_546 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody698_547 : StackLang.HolProg 64 :=
.seq NamedBody698_545 NamedBody698_546

def NamedBody698_548 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody698_549 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody698_547 NamedBody698_548

def NamedBody698_550 : StackLang.HolProg 64 :=
.seq NamedBody698_544 NamedBody698_549

def NamedBody698_551 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody698_552 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody698_553 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 698 19

def NamedBody698_554 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody698_555 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody698_556 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody698_557 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody698_558 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody698_559 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody698_560 : StackLang.HolProg 64 :=
.seq NamedBody698_558 NamedBody698_559

def NamedBody698_561 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody698_562 : StackLang.HolProg 64 :=
.seq NamedBody698_560 NamedBody698_561

def NamedBody698_563 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody698_564 : StackLang.HolProg 64 :=
.seq NamedBody698_562 NamedBody698_563

def NamedBody698_565 : StackLang.HolProg 64 :=
.seq NamedBody698_557 NamedBody698_564

def NamedBody698_566 : StackLang.HolProg 64 :=
.seq NamedBody698_556 NamedBody698_565

def NamedBody698_567 : StackLang.HolProg 64 :=
.seq NamedBody698_555 NamedBody698_566

def NamedBody698_568 : StackLang.HolProg 64 :=
.seq NamedBody698_554 NamedBody698_567

def NamedBody698_569 : StackLang.HolProg 64 :=
.seq NamedBody698_553 NamedBody698_568

def NamedBody698_570 : StackLang.HolProg 64 :=
.seq NamedBody698_552 NamedBody698_569

def NamedBody698_571 : StackLang.HolProg 64 :=
.seq NamedBody698_551 NamedBody698_570

def NamedBody698_572 : StackLang.HolProg 64 :=
.seq NamedBody698_550 NamedBody698_571

def NamedBody698_573 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody698_574 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody698_575 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody698_576 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody698_577 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody698_578 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody698_579 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody698_580 : StackLang.HolProg 64 :=
.seq NamedBody698_578 NamedBody698_579

def NamedBody698_581 : StackLang.HolProg 64 :=
.seq NamedBody698_577 NamedBody698_580

def NamedBody698_582 : StackLang.HolProg 64 :=
.seq NamedBody698_576 NamedBody698_581

def NamedBody698_583 : StackLang.HolProg 64 :=
.seq NamedBody698_575 NamedBody698_582

def NamedBody698_584 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody698_585 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody698_586 : StackLang.HolProg 64 :=
.seq NamedBody698_584 NamedBody698_585

def NamedBody698_587 : StackLang.HolProg 64 :=
.call (some (NamedBody698_583, 1, 698, 18)) (Sum.inl 697) (some (NamedBody698_586, 698, 19))

def NamedBody698_588 : StackLang.HolProg 64 :=
.seq NamedBody698_574 NamedBody698_587

def NamedBody698_589 : StackLang.HolProg 64 :=
.seq NamedBody698_573 NamedBody698_588

def NamedBody698_590 : StackLang.HolProg 64 :=
.seq NamedBody698_572 NamedBody698_589

def NamedBody698_591 : StackLang.HolProg 64 :=
.seq NamedBody698_543 NamedBody698_590

def NamedBody698_592 : StackLang.HolProg 64 :=
.seq NamedBody698_540 NamedBody698_591

def NamedBody698_593 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody698_594 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody698_595 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody698_596 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3085#64)

def NamedBody698_597 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody698_598 : StackLang.HolProg 64 :=
.seq NamedBody698_596 NamedBody698_597

def NamedBody698_599 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody698_600 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody698_601 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody698_602 : StackLang.HolProg 64 :=
.seq NamedBody698_600 NamedBody698_601

def NamedBody698_603 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody698_604 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody698_602 NamedBody698_603

def NamedBody698_605 : StackLang.HolProg 64 :=
.seq NamedBody698_599 NamedBody698_604

def NamedBody698_606 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody698_607 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody698_608 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 698 21

def NamedBody698_609 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody698_610 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody698_611 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody698_612 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody698_613 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody698_614 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody698_615 : StackLang.HolProg 64 :=
.seq NamedBody698_613 NamedBody698_614

def NamedBody698_616 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody698_617 : StackLang.HolProg 64 :=
.seq NamedBody698_615 NamedBody698_616

def NamedBody698_618 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody698_619 : StackLang.HolProg 64 :=
.seq NamedBody698_617 NamedBody698_618

def NamedBody698_620 : StackLang.HolProg 64 :=
.seq NamedBody698_612 NamedBody698_619

def NamedBody698_621 : StackLang.HolProg 64 :=
.seq NamedBody698_611 NamedBody698_620

def NamedBody698_622 : StackLang.HolProg 64 :=
.seq NamedBody698_610 NamedBody698_621

def NamedBody698_623 : StackLang.HolProg 64 :=
.seq NamedBody698_609 NamedBody698_622

def NamedBody698_624 : StackLang.HolProg 64 :=
.seq NamedBody698_608 NamedBody698_623

def NamedBody698_625 : StackLang.HolProg 64 :=
.seq NamedBody698_607 NamedBody698_624

def NamedBody698_626 : StackLang.HolProg 64 :=
.seq NamedBody698_606 NamedBody698_625

def NamedBody698_627 : StackLang.HolProg 64 :=
.seq NamedBody698_605 NamedBody698_626

def NamedBody698_628 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody698_629 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody698_630 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody698_631 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody698_632 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody698_633 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody698_634 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody698_635 : StackLang.HolProg 64 :=
.seq NamedBody698_633 NamedBody698_634

def NamedBody698_636 : StackLang.HolProg 64 :=
.seq NamedBody698_632 NamedBody698_635

def NamedBody698_637 : StackLang.HolProg 64 :=
.seq NamedBody698_631 NamedBody698_636

def NamedBody698_638 : StackLang.HolProg 64 :=
.seq NamedBody698_630 NamedBody698_637

def NamedBody698_639 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody698_640 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody698_641 : StackLang.HolProg 64 :=
.seq NamedBody698_639 NamedBody698_640

def NamedBody698_642 : StackLang.HolProg 64 :=
.call (some (NamedBody698_638, 1, 698, 20)) (Sum.inl 70) (some (NamedBody698_641, 698, 21))

def NamedBody698_643 : StackLang.HolProg 64 :=
.seq NamedBody698_629 NamedBody698_642

def NamedBody698_644 : StackLang.HolProg 64 :=
.seq NamedBody698_628 NamedBody698_643

def NamedBody698_645 : StackLang.HolProg 64 :=
.seq NamedBody698_627 NamedBody698_644

def NamedBody698_646 : StackLang.HolProg 64 :=
.seq NamedBody698_598 NamedBody698_645

def NamedBody698_647 : StackLang.HolProg 64 :=
.seq NamedBody698_595 NamedBody698_646

def NamedBody698_648 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody698_649 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody698_650 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody698_651 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def NamedBody698_652 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody698_653 : StackLang.HolProg 64 :=
.seq NamedBody698_651 NamedBody698_652

def NamedBody698_654 : StackLang.HolProg 64 :=
.seq NamedBody698_650 NamedBody698_653

def NamedBody698_655 : StackLang.HolProg 64 :=
.seq NamedBody698_649 NamedBody698_654

def NamedBody698_656 : StackLang.HolProg 64 :=
.seq NamedBody698_648 NamedBody698_655

def NamedBody698_657 : StackLang.HolProg 64 :=
.seq NamedBody698_647 NamedBody698_656

def NamedBody698_658 : StackLang.HolProg 64 :=
.seq NamedBody698_594 NamedBody698_657

def NamedBody698_659 : StackLang.HolProg 64 :=
.seq NamedBody698_593 NamedBody698_658

def NamedBody698_660 : StackLang.HolProg 64 :=
.seq NamedBody698_592 NamedBody698_659

def NamedBody698_661 : StackLang.HolProg 64 :=
.seq NamedBody698_539 NamedBody698_660

def NamedBody698_662 : StackLang.HolProg 64 :=
.seq NamedBody698_538 NamedBody698_661

def NamedBody698_663 : StackLang.HolProg 64 :=
.seq NamedBody698_537 NamedBody698_662

def NamedBody698_664 : StackLang.HolProg 64 :=
.seq NamedBody698_472 NamedBody698_663

def NamedBody698_665 : StackLang.HolProg 64 :=
.seq NamedBody698_469 NamedBody698_664

def NamedBody698_666 : StackLang.HolProg 64 :=
.seq NamedBody698_468 NamedBody698_665

def NamedBody698_667 : StackLang.HolProg 64 :=
.seq NamedBody698_467 NamedBody698_666

def NamedBody698_668 : StackLang.HolProg 64 :=
.seq NamedBody698_466 NamedBody698_667

def NamedBody698_669 : StackLang.HolProg 64 :=
.seq NamedBody698_465 NamedBody698_668

def NamedBody698_670 : StackLang.HolProg 64 :=
.seq NamedBody698_392 NamedBody698_669

def NamedBody698_671 : StackLang.HolProg 64 :=
.seq NamedBody698_391 NamedBody698_670

def NamedBody698_672 : StackLang.HolProg 64 :=
.seq NamedBody698_390 NamedBody698_671

def NamedBody698_673 : StackLang.HolProg 64 :=
.seq NamedBody698_389 NamedBody698_672

def NamedBody698_674 : StackLang.HolProg 64 :=
.seq NamedBody698_330 NamedBody698_673

def NamedBody698_675 : StackLang.HolProg 64 :=
.seq NamedBody698_329 NamedBody698_674

def NamedBody698_676 : StackLang.HolProg 64 :=
.seq NamedBody698_328 NamedBody698_675

def NamedBody698_677 : StackLang.HolProg 64 :=
.seq NamedBody698_327 NamedBody698_676

def NamedBody698_678 : StackLang.HolProg 64 :=
.seq NamedBody698_326 NamedBody698_677

def NamedBody698_679 : StackLang.HolProg 64 :=
.seq NamedBody698_325 NamedBody698_678

def NamedBody698_680 : StackLang.HolProg 64 :=
.seq NamedBody698_252 NamedBody698_679

def NamedBody698_681 : StackLang.HolProg 64 :=
.seq NamedBody698_251 NamedBody698_680

def NamedBody698_682 : StackLang.HolProg 64 :=
.seq NamedBody698_250 NamedBody698_681

def NamedBody698_683 : StackLang.HolProg 64 :=
.seq NamedBody698_249 NamedBody698_682

def NamedBody698_684 : StackLang.HolProg 64 :=
.seq NamedBody698_190 NamedBody698_683

def NamedBody698_685 : StackLang.HolProg 64 :=
.seq NamedBody698_183 NamedBody698_684

def NamedBody698_686 : StackLang.HolProg 64 :=
.seq NamedBody698_182 NamedBody698_685

def NamedBody698_687 : StackLang.HolProg 64 :=
.seq NamedBody698_123 NamedBody698_686

def NamedBody698_688 : StackLang.HolProg 64 :=
.seq NamedBody698_122 NamedBody698_687

def NamedBody698_689 : StackLang.HolProg 64 :=
.seq NamedBody698_121 NamedBody698_688

def NamedBody698_690 : StackLang.HolProg 64 :=
.seq NamedBody698_120 NamedBody698_689

def NamedBody698_691 : StackLang.HolProg 64 :=
.seq NamedBody698_67 NamedBody698_690

def NamedBody698_692 : StackLang.HolProg 64 :=
.seq NamedBody698_66 NamedBody698_691

def NamedBody698_693 : StackLang.HolProg 64 :=
.seq NamedBody698_65 NamedBody698_692

def NamedBody698_694 : StackLang.HolProg 64 :=
.seq NamedBody698_64 NamedBody698_693

def NamedBody698_695 : StackLang.HolProg 64 :=
.seq NamedBody698_11 NamedBody698_694

def NamedBody698_696 : StackLang.HolProg 64 :=
.seq NamedBody698_6 NamedBody698_695

def Named698 : Nat × StackLang.HolProg 64 := (698, NamedBody698_696)
theorem Named698_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed698 = Named698 := by
  kernel_rfl
#print axioms Named698_eq
end InitECandidate.Proofs.BackendStages
