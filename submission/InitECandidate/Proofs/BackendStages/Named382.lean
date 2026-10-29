import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed382
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody382_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody382_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody382_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody382_3 : StackLang.HolProg 64 :=
.seq NamedBody382_1 NamedBody382_2

def NamedBody382_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody382_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody382_3 NamedBody382_4

def NamedBody382_6 : StackLang.HolProg 64 :=
.seq NamedBody382_0 NamedBody382_5

def NamedBody382_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody382_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody382_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody382_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody382_11 : StackLang.HolProg 64 :=
.seq NamedBody382_9 NamedBody382_10

def NamedBody382_12 : StackLang.HolProg 64 :=
.seq NamedBody382_8 NamedBody382_11

def NamedBody382_13 : StackLang.HolProg 64 :=
.seq NamedBody382_7 NamedBody382_12

def NamedBody382_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody382_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1125#64)

def NamedBody382_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody382_17 : StackLang.HolProg 64 :=
.seq NamedBody382_15 NamedBody382_16

def NamedBody382_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody382_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody382_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody382_21 : StackLang.HolProg 64 :=
.seq NamedBody382_19 NamedBody382_20

def NamedBody382_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody382_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody382_21 NamedBody382_22

def NamedBody382_24 : StackLang.HolProg 64 :=
.seq NamedBody382_18 NamedBody382_23

def NamedBody382_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody382_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody382_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 382 3

def NamedBody382_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody382_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody382_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody382_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody382_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody382_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody382_34 : StackLang.HolProg 64 :=
.seq NamedBody382_32 NamedBody382_33

def NamedBody382_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody382_36 : StackLang.HolProg 64 :=
.seq NamedBody382_34 NamedBody382_35

def NamedBody382_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody382_38 : StackLang.HolProg 64 :=
.seq NamedBody382_36 NamedBody382_37

def NamedBody382_39 : StackLang.HolProg 64 :=
.seq NamedBody382_31 NamedBody382_38

def NamedBody382_40 : StackLang.HolProg 64 :=
.seq NamedBody382_30 NamedBody382_39

def NamedBody382_41 : StackLang.HolProg 64 :=
.seq NamedBody382_29 NamedBody382_40

def NamedBody382_42 : StackLang.HolProg 64 :=
.seq NamedBody382_28 NamedBody382_41

def NamedBody382_43 : StackLang.HolProg 64 :=
.seq NamedBody382_27 NamedBody382_42

def NamedBody382_44 : StackLang.HolProg 64 :=
.seq NamedBody382_26 NamedBody382_43

def NamedBody382_45 : StackLang.HolProg 64 :=
.seq NamedBody382_25 NamedBody382_44

def NamedBody382_46 : StackLang.HolProg 64 :=
.seq NamedBody382_24 NamedBody382_45

def NamedBody382_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody382_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody382_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody382_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody382_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody382_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody382_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody382_54 : StackLang.HolProg 64 :=
.seq NamedBody382_52 NamedBody382_53

def NamedBody382_55 : StackLang.HolProg 64 :=
.seq NamedBody382_51 NamedBody382_54

def NamedBody382_56 : StackLang.HolProg 64 :=
.seq NamedBody382_50 NamedBody382_55

def NamedBody382_57 : StackLang.HolProg 64 :=
.seq NamedBody382_49 NamedBody382_56

def NamedBody382_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody382_59 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody382_60 : StackLang.HolProg 64 :=
.seq NamedBody382_58 NamedBody382_59

def NamedBody382_61 : StackLang.HolProg 64 :=
.call (some (NamedBody382_57, 1, 382, 2)) (Sum.inl 69) (some (NamedBody382_60, 382, 3))

def NamedBody382_62 : StackLang.HolProg 64 :=
.seq NamedBody382_48 NamedBody382_61

def NamedBody382_63 : StackLang.HolProg 64 :=
.seq NamedBody382_47 NamedBody382_62

def NamedBody382_64 : StackLang.HolProg 64 :=
.seq NamedBody382_46 NamedBody382_63

def NamedBody382_65 : StackLang.HolProg 64 :=
.seq NamedBody382_17 NamedBody382_64

def NamedBody382_66 : StackLang.HolProg 64 :=
.seq NamedBody382_14 NamedBody382_65

def NamedBody382_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody382_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 72#64)

def NamedBody382_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody382_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody382_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1126#64)

def NamedBody382_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody382_73 : StackLang.HolProg 64 :=
.seq NamedBody382_71 NamedBody382_72

def NamedBody382_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody382_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody382_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody382_77 : StackLang.HolProg 64 :=
.seq NamedBody382_75 NamedBody382_76

def NamedBody382_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody382_79 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody382_77 NamedBody382_78

def NamedBody382_80 : StackLang.HolProg 64 :=
.seq NamedBody382_74 NamedBody382_79

def NamedBody382_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody382_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody382_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 382 5

def NamedBody382_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody382_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody382_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody382_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody382_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody382_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody382_90 : StackLang.HolProg 64 :=
.seq NamedBody382_88 NamedBody382_89

def NamedBody382_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody382_92 : StackLang.HolProg 64 :=
.seq NamedBody382_90 NamedBody382_91

def NamedBody382_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody382_94 : StackLang.HolProg 64 :=
.seq NamedBody382_92 NamedBody382_93

def NamedBody382_95 : StackLang.HolProg 64 :=
.seq NamedBody382_87 NamedBody382_94

def NamedBody382_96 : StackLang.HolProg 64 :=
.seq NamedBody382_86 NamedBody382_95

def NamedBody382_97 : StackLang.HolProg 64 :=
.seq NamedBody382_85 NamedBody382_96

def NamedBody382_98 : StackLang.HolProg 64 :=
.seq NamedBody382_84 NamedBody382_97

def NamedBody382_99 : StackLang.HolProg 64 :=
.seq NamedBody382_83 NamedBody382_98

def NamedBody382_100 : StackLang.HolProg 64 :=
.seq NamedBody382_82 NamedBody382_99

def NamedBody382_101 : StackLang.HolProg 64 :=
.seq NamedBody382_81 NamedBody382_100

def NamedBody382_102 : StackLang.HolProg 64 :=
.seq NamedBody382_80 NamedBody382_101

def NamedBody382_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody382_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody382_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody382_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody382_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody382_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody382_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody382_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody382_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody382_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody382_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody382_114 : StackLang.HolProg 64 :=
.seq NamedBody382_112 NamedBody382_113

def NamedBody382_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody382_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody382_117 : StackLang.HolProg 64 :=
.seq NamedBody382_115 NamedBody382_116

def NamedBody382_118 : StackLang.HolProg 64 :=
.seq NamedBody382_114 NamedBody382_117

def NamedBody382_119 : StackLang.HolProg 64 :=
.seq NamedBody382_111 NamedBody382_118

def NamedBody382_120 : StackLang.HolProg 64 :=
.seq NamedBody382_110 NamedBody382_119

def NamedBody382_121 : StackLang.HolProg 64 :=
.seq NamedBody382_109 NamedBody382_120

def NamedBody382_122 : StackLang.HolProg 64 :=
.seq NamedBody382_108 NamedBody382_121

def NamedBody382_123 : StackLang.HolProg 64 :=
.seq NamedBody382_107 NamedBody382_122

def NamedBody382_124 : StackLang.HolProg 64 :=
.seq NamedBody382_106 NamedBody382_123

def NamedBody382_125 : StackLang.HolProg 64 :=
.seq NamedBody382_105 NamedBody382_124

def NamedBody382_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody382_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody382_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody382_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody382_130 : StackLang.HolProg 64 :=
.seq NamedBody382_128 NamedBody382_129

def NamedBody382_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody382_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody382_133 : StackLang.HolProg 64 :=
.seq NamedBody382_131 NamedBody382_132

def NamedBody382_134 : StackLang.HolProg 64 :=
.seq NamedBody382_130 NamedBody382_133

def NamedBody382_135 : StackLang.HolProg 64 :=
.seq NamedBody382_127 NamedBody382_134

def NamedBody382_136 : StackLang.HolProg 64 :=
.seq NamedBody382_126 NamedBody382_135

def NamedBody382_137 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody382_138 : StackLang.HolProg 64 :=
.seq NamedBody382_136 NamedBody382_137

def NamedBody382_139 : StackLang.HolProg 64 :=
.call (some (NamedBody382_125, 1, 382, 4)) (Sum.inl 68) (some (NamedBody382_138, 382, 5))

def NamedBody382_140 : StackLang.HolProg 64 :=
.seq NamedBody382_104 NamedBody382_139

def NamedBody382_141 : StackLang.HolProg 64 :=
.seq NamedBody382_103 NamedBody382_140

def NamedBody382_142 : StackLang.HolProg 64 :=
.seq NamedBody382_102 NamedBody382_141

def NamedBody382_143 : StackLang.HolProg 64 :=
.seq NamedBody382_73 NamedBody382_142

def NamedBody382_144 : StackLang.HolProg 64 :=
.seq NamedBody382_70 NamedBody382_143

def NamedBody382_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody382_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody382_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 4#64)

def NamedBody382_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def NamedBody382_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody382_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody382_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody382_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody382_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1127#64)

def NamedBody382_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody382_155 : StackLang.HolProg 64 :=
.seq NamedBody382_153 NamedBody382_154

def NamedBody382_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody382_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody382_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody382_159 : StackLang.HolProg 64 :=
.seq NamedBody382_157 NamedBody382_158

def NamedBody382_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody382_161 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody382_159 NamedBody382_160

def NamedBody382_162 : StackLang.HolProg 64 :=
.seq NamedBody382_156 NamedBody382_161

def NamedBody382_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody382_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody382_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 382 7

def NamedBody382_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody382_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody382_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody382_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody382_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody382_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody382_172 : StackLang.HolProg 64 :=
.seq NamedBody382_170 NamedBody382_171

def NamedBody382_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody382_174 : StackLang.HolProg 64 :=
.seq NamedBody382_172 NamedBody382_173

def NamedBody382_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody382_176 : StackLang.HolProg 64 :=
.seq NamedBody382_174 NamedBody382_175

def NamedBody382_177 : StackLang.HolProg 64 :=
.seq NamedBody382_169 NamedBody382_176

def NamedBody382_178 : StackLang.HolProg 64 :=
.seq NamedBody382_168 NamedBody382_177

def NamedBody382_179 : StackLang.HolProg 64 :=
.seq NamedBody382_167 NamedBody382_178

def NamedBody382_180 : StackLang.HolProg 64 :=
.seq NamedBody382_166 NamedBody382_179

def NamedBody382_181 : StackLang.HolProg 64 :=
.seq NamedBody382_165 NamedBody382_180

def NamedBody382_182 : StackLang.HolProg 64 :=
.seq NamedBody382_164 NamedBody382_181

def NamedBody382_183 : StackLang.HolProg 64 :=
.seq NamedBody382_163 NamedBody382_182

def NamedBody382_184 : StackLang.HolProg 64 :=
.seq NamedBody382_162 NamedBody382_183

def NamedBody382_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody382_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody382_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody382_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody382_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody382_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody382_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody382_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody382_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody382_194 : StackLang.HolProg 64 :=
.seq NamedBody382_192 NamedBody382_193

def NamedBody382_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody382_196 : StackLang.HolProg 64 :=
.seq NamedBody382_194 NamedBody382_195

def NamedBody382_197 : StackLang.HolProg 64 :=
.seq NamedBody382_191 NamedBody382_196

def NamedBody382_198 : StackLang.HolProg 64 :=
.seq NamedBody382_190 NamedBody382_197

def NamedBody382_199 : StackLang.HolProg 64 :=
.seq NamedBody382_189 NamedBody382_198

def NamedBody382_200 : StackLang.HolProg 64 :=
.seq NamedBody382_188 NamedBody382_199

def NamedBody382_201 : StackLang.HolProg 64 :=
.seq NamedBody382_187 NamedBody382_200

def NamedBody382_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody382_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody382_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody382_205 : StackLang.HolProg 64 :=
.seq NamedBody382_203 NamedBody382_204

def NamedBody382_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody382_207 : StackLang.HolProg 64 :=
.seq NamedBody382_205 NamedBody382_206

def NamedBody382_208 : StackLang.HolProg 64 :=
.seq NamedBody382_202 NamedBody382_207

def NamedBody382_209 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody382_210 : StackLang.HolProg 64 :=
.seq NamedBody382_208 NamedBody382_209

def NamedBody382_211 : StackLang.HolProg 64 :=
.call (some (NamedBody382_201, 1, 382, 6)) (Sum.inl 379) (some (NamedBody382_210, 382, 7))

def NamedBody382_212 : StackLang.HolProg 64 :=
.seq NamedBody382_186 NamedBody382_211

def NamedBody382_213 : StackLang.HolProg 64 :=
.seq NamedBody382_185 NamedBody382_212

def NamedBody382_214 : StackLang.HolProg 64 :=
.seq NamedBody382_184 NamedBody382_213

def NamedBody382_215 : StackLang.HolProg 64 :=
.seq NamedBody382_155 NamedBody382_214

def NamedBody382_216 : StackLang.HolProg 64 :=
.seq NamedBody382_152 NamedBody382_215

def NamedBody382_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody382_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody382_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody382_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1128#64)

def NamedBody382_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody382_222 : StackLang.HolProg 64 :=
.seq NamedBody382_220 NamedBody382_221

def NamedBody382_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody382_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody382_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody382_226 : StackLang.HolProg 64 :=
.seq NamedBody382_224 NamedBody382_225

def NamedBody382_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody382_228 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody382_226 NamedBody382_227

def NamedBody382_229 : StackLang.HolProg 64 :=
.seq NamedBody382_223 NamedBody382_228

def NamedBody382_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody382_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody382_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 382 9

def NamedBody382_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody382_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody382_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody382_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody382_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody382_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody382_239 : StackLang.HolProg 64 :=
.seq NamedBody382_237 NamedBody382_238

def NamedBody382_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody382_241 : StackLang.HolProg 64 :=
.seq NamedBody382_239 NamedBody382_240

def NamedBody382_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody382_243 : StackLang.HolProg 64 :=
.seq NamedBody382_241 NamedBody382_242

def NamedBody382_244 : StackLang.HolProg 64 :=
.seq NamedBody382_236 NamedBody382_243

def NamedBody382_245 : StackLang.HolProg 64 :=
.seq NamedBody382_235 NamedBody382_244

def NamedBody382_246 : StackLang.HolProg 64 :=
.seq NamedBody382_234 NamedBody382_245

def NamedBody382_247 : StackLang.HolProg 64 :=
.seq NamedBody382_233 NamedBody382_246

def NamedBody382_248 : StackLang.HolProg 64 :=
.seq NamedBody382_232 NamedBody382_247

def NamedBody382_249 : StackLang.HolProg 64 :=
.seq NamedBody382_231 NamedBody382_248

def NamedBody382_250 : StackLang.HolProg 64 :=
.seq NamedBody382_230 NamedBody382_249

def NamedBody382_251 : StackLang.HolProg 64 :=
.seq NamedBody382_229 NamedBody382_250

def NamedBody382_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody382_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody382_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody382_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody382_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody382_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody382_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody382_259 : StackLang.HolProg 64 :=
.seq NamedBody382_257 NamedBody382_258

def NamedBody382_260 : StackLang.HolProg 64 :=
.seq NamedBody382_256 NamedBody382_259

def NamedBody382_261 : StackLang.HolProg 64 :=
.seq NamedBody382_255 NamedBody382_260

def NamedBody382_262 : StackLang.HolProg 64 :=
.seq NamedBody382_254 NamedBody382_261

def NamedBody382_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody382_264 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody382_265 : StackLang.HolProg 64 :=
.seq NamedBody382_263 NamedBody382_264

def NamedBody382_266 : StackLang.HolProg 64 :=
.call (some (NamedBody382_262, 1, 382, 8)) (Sum.inl 380) (some (NamedBody382_265, 382, 9))

def NamedBody382_267 : StackLang.HolProg 64 :=
.seq NamedBody382_253 NamedBody382_266

def NamedBody382_268 : StackLang.HolProg 64 :=
.seq NamedBody382_252 NamedBody382_267

def NamedBody382_269 : StackLang.HolProg 64 :=
.seq NamedBody382_251 NamedBody382_268

def NamedBody382_270 : StackLang.HolProg 64 :=
.seq NamedBody382_222 NamedBody382_269

def NamedBody382_271 : StackLang.HolProg 64 :=
.seq NamedBody382_219 NamedBody382_270

def NamedBody382_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody382_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody382_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody382_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1129#64)

def NamedBody382_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody382_277 : StackLang.HolProg 64 :=
.seq NamedBody382_275 NamedBody382_276

def NamedBody382_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody382_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody382_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody382_281 : StackLang.HolProg 64 :=
.seq NamedBody382_279 NamedBody382_280

def NamedBody382_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody382_283 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody382_281 NamedBody382_282

def NamedBody382_284 : StackLang.HolProg 64 :=
.seq NamedBody382_278 NamedBody382_283

def NamedBody382_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody382_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody382_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 382 11

def NamedBody382_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody382_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody382_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody382_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody382_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody382_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody382_294 : StackLang.HolProg 64 :=
.seq NamedBody382_292 NamedBody382_293

def NamedBody382_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody382_296 : StackLang.HolProg 64 :=
.seq NamedBody382_294 NamedBody382_295

def NamedBody382_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody382_298 : StackLang.HolProg 64 :=
.seq NamedBody382_296 NamedBody382_297

def NamedBody382_299 : StackLang.HolProg 64 :=
.seq NamedBody382_291 NamedBody382_298

def NamedBody382_300 : StackLang.HolProg 64 :=
.seq NamedBody382_290 NamedBody382_299

def NamedBody382_301 : StackLang.HolProg 64 :=
.seq NamedBody382_289 NamedBody382_300

def NamedBody382_302 : StackLang.HolProg 64 :=
.seq NamedBody382_288 NamedBody382_301

def NamedBody382_303 : StackLang.HolProg 64 :=
.seq NamedBody382_287 NamedBody382_302

def NamedBody382_304 : StackLang.HolProg 64 :=
.seq NamedBody382_286 NamedBody382_303

def NamedBody382_305 : StackLang.HolProg 64 :=
.seq NamedBody382_285 NamedBody382_304

def NamedBody382_306 : StackLang.HolProg 64 :=
.seq NamedBody382_284 NamedBody382_305

def NamedBody382_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody382_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody382_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody382_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody382_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody382_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody382_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody382_314 : StackLang.HolProg 64 :=
.seq NamedBody382_312 NamedBody382_313

def NamedBody382_315 : StackLang.HolProg 64 :=
.seq NamedBody382_311 NamedBody382_314

def NamedBody382_316 : StackLang.HolProg 64 :=
.seq NamedBody382_310 NamedBody382_315

def NamedBody382_317 : StackLang.HolProg 64 :=
.seq NamedBody382_309 NamedBody382_316

def NamedBody382_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody382_319 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody382_320 : StackLang.HolProg 64 :=
.seq NamedBody382_318 NamedBody382_319

def NamedBody382_321 : StackLang.HolProg 64 :=
.call (some (NamedBody382_317, 1, 382, 10)) (Sum.inl 70) (some (NamedBody382_320, 382, 11))

def NamedBody382_322 : StackLang.HolProg 64 :=
.seq NamedBody382_308 NamedBody382_321

def NamedBody382_323 : StackLang.HolProg 64 :=
.seq NamedBody382_307 NamedBody382_322

def NamedBody382_324 : StackLang.HolProg 64 :=
.seq NamedBody382_306 NamedBody382_323

def NamedBody382_325 : StackLang.HolProg 64 :=
.seq NamedBody382_277 NamedBody382_324

def NamedBody382_326 : StackLang.HolProg 64 :=
.seq NamedBody382_274 NamedBody382_325

def NamedBody382_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody382_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody382_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody382_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody382_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody382_332 : StackLang.HolProg 64 :=
.seq NamedBody382_330 NamedBody382_331

def NamedBody382_333 : StackLang.HolProg 64 :=
.seq NamedBody382_329 NamedBody382_332

def NamedBody382_334 : StackLang.HolProg 64 :=
.seq NamedBody382_328 NamedBody382_333

def NamedBody382_335 : StackLang.HolProg 64 :=
.seq NamedBody382_327 NamedBody382_334

def NamedBody382_336 : StackLang.HolProg 64 :=
.seq NamedBody382_326 NamedBody382_335

def NamedBody382_337 : StackLang.HolProg 64 :=
.seq NamedBody382_273 NamedBody382_336

def NamedBody382_338 : StackLang.HolProg 64 :=
.seq NamedBody382_272 NamedBody382_337

def NamedBody382_339 : StackLang.HolProg 64 :=
.seq NamedBody382_271 NamedBody382_338

def NamedBody382_340 : StackLang.HolProg 64 :=
.seq NamedBody382_218 NamedBody382_339

def NamedBody382_341 : StackLang.HolProg 64 :=
.seq NamedBody382_217 NamedBody382_340

def NamedBody382_342 : StackLang.HolProg 64 :=
.seq NamedBody382_216 NamedBody382_341

def NamedBody382_343 : StackLang.HolProg 64 :=
.seq NamedBody382_151 NamedBody382_342

def NamedBody382_344 : StackLang.HolProg 64 :=
.seq NamedBody382_150 NamedBody382_343

def NamedBody382_345 : StackLang.HolProg 64 :=
.seq NamedBody382_149 NamedBody382_344

def NamedBody382_346 : StackLang.HolProg 64 :=
.seq NamedBody382_148 NamedBody382_345

def NamedBody382_347 : StackLang.HolProg 64 :=
.seq NamedBody382_147 NamedBody382_346

def NamedBody382_348 : StackLang.HolProg 64 :=
.seq NamedBody382_146 NamedBody382_347

def NamedBody382_349 : StackLang.HolProg 64 :=
.seq NamedBody382_145 NamedBody382_348

def NamedBody382_350 : StackLang.HolProg 64 :=
.seq NamedBody382_144 NamedBody382_349

def NamedBody382_351 : StackLang.HolProg 64 :=
.seq NamedBody382_69 NamedBody382_350

def NamedBody382_352 : StackLang.HolProg 64 :=
.seq NamedBody382_68 NamedBody382_351

def NamedBody382_353 : StackLang.HolProg 64 :=
.seq NamedBody382_67 NamedBody382_352

def NamedBody382_354 : StackLang.HolProg 64 :=
.seq NamedBody382_66 NamedBody382_353

def NamedBody382_355 : StackLang.HolProg 64 :=
.seq NamedBody382_13 NamedBody382_354

def NamedBody382_356 : StackLang.HolProg 64 :=
.seq NamedBody382_6 NamedBody382_355

def Named382 : Nat × StackLang.HolProg 64 := (382, NamedBody382_356)
theorem Named382_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed382 = Named382 := by
  kernel_rfl
#print axioms Named382_eq
end InitECandidate.Proofs.BackendStages
