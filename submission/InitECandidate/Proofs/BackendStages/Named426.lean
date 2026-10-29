import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed426
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody426_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def NamedBody426_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody426_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody426_3 : StackLang.HolProg 64 :=
.seq NamedBody426_1 NamedBody426_2

def NamedBody426_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody426_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody426_3 NamedBody426_4

def NamedBody426_6 : StackLang.HolProg 64 :=
.seq NamedBody426_0 NamedBody426_5

def NamedBody426_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody426_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody426_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody426_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody426_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody426_12 : StackLang.HolProg 64 :=
.seq NamedBody426_10 NamedBody426_11

def NamedBody426_13 : StackLang.HolProg 64 :=
.seq NamedBody426_9 NamedBody426_12

def NamedBody426_14 : StackLang.HolProg 64 :=
.seq NamedBody426_8 NamedBody426_13

def NamedBody426_15 : StackLang.HolProg 64 :=
.seq NamedBody426_7 NamedBody426_14

def NamedBody426_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody426_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1269#64)

def NamedBody426_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody426_19 : StackLang.HolProg 64 :=
.seq NamedBody426_17 NamedBody426_18

def NamedBody426_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody426_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody426_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody426_23 : StackLang.HolProg 64 :=
.seq NamedBody426_21 NamedBody426_22

def NamedBody426_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody426_25 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody426_23 NamedBody426_24

def NamedBody426_26 : StackLang.HolProg 64 :=
.seq NamedBody426_20 NamedBody426_25

def NamedBody426_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody426_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody426_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 426 3

def NamedBody426_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody426_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody426_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody426_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody426_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody426_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody426_36 : StackLang.HolProg 64 :=
.seq NamedBody426_34 NamedBody426_35

def NamedBody426_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody426_38 : StackLang.HolProg 64 :=
.seq NamedBody426_36 NamedBody426_37

def NamedBody426_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody426_40 : StackLang.HolProg 64 :=
.seq NamedBody426_38 NamedBody426_39

def NamedBody426_41 : StackLang.HolProg 64 :=
.seq NamedBody426_33 NamedBody426_40

def NamedBody426_42 : StackLang.HolProg 64 :=
.seq NamedBody426_32 NamedBody426_41

def NamedBody426_43 : StackLang.HolProg 64 :=
.seq NamedBody426_31 NamedBody426_42

def NamedBody426_44 : StackLang.HolProg 64 :=
.seq NamedBody426_30 NamedBody426_43

def NamedBody426_45 : StackLang.HolProg 64 :=
.seq NamedBody426_29 NamedBody426_44

def NamedBody426_46 : StackLang.HolProg 64 :=
.seq NamedBody426_28 NamedBody426_45

def NamedBody426_47 : StackLang.HolProg 64 :=
.seq NamedBody426_27 NamedBody426_46

def NamedBody426_48 : StackLang.HolProg 64 :=
.seq NamedBody426_26 NamedBody426_47

def NamedBody426_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody426_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody426_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody426_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody426_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody426_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody426_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody426_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody426_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody426_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody426_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody426_60 : StackLang.HolProg 64 :=
.seq NamedBody426_58 NamedBody426_59

def NamedBody426_61 : StackLang.HolProg 64 :=
.seq NamedBody426_57 NamedBody426_60

def NamedBody426_62 : StackLang.HolProg 64 :=
.seq NamedBody426_56 NamedBody426_61

def NamedBody426_63 : StackLang.HolProg 64 :=
.seq NamedBody426_55 NamedBody426_62

def NamedBody426_64 : StackLang.HolProg 64 :=
.seq NamedBody426_54 NamedBody426_63

def NamedBody426_65 : StackLang.HolProg 64 :=
.seq NamedBody426_53 NamedBody426_64

def NamedBody426_66 : StackLang.HolProg 64 :=
.seq NamedBody426_52 NamedBody426_65

def NamedBody426_67 : StackLang.HolProg 64 :=
.seq NamedBody426_51 NamedBody426_66

def NamedBody426_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody426_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody426_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody426_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody426_72 : StackLang.HolProg 64 :=
.seq NamedBody426_70 NamedBody426_71

def NamedBody426_73 : StackLang.HolProg 64 :=
.seq NamedBody426_69 NamedBody426_72

def NamedBody426_74 : StackLang.HolProg 64 :=
.seq NamedBody426_68 NamedBody426_73

def NamedBody426_75 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody426_76 : StackLang.HolProg 64 :=
.seq NamedBody426_74 NamedBody426_75

def NamedBody426_77 : StackLang.HolProg 64 :=
.call (some (NamedBody426_67, 1, 426, 2)) (Sum.inl 392) (some (NamedBody426_76, 426, 3))

def NamedBody426_78 : StackLang.HolProg 64 :=
.seq NamedBody426_50 NamedBody426_77

def NamedBody426_79 : StackLang.HolProg 64 :=
.seq NamedBody426_49 NamedBody426_78

def NamedBody426_80 : StackLang.HolProg 64 :=
.seq NamedBody426_48 NamedBody426_79

def NamedBody426_81 : StackLang.HolProg 64 :=
.seq NamedBody426_19 NamedBody426_80

def NamedBody426_82 : StackLang.HolProg 64 :=
.seq NamedBody426_16 NamedBody426_81

def NamedBody426_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody426_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody426_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody426_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody426_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody426_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody426_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody426_90 : StackLang.HolProg 64 :=
.seq NamedBody426_88 NamedBody426_89

def NamedBody426_91 : StackLang.HolProg 64 :=
.seq NamedBody426_87 NamedBody426_90

def NamedBody426_92 : StackLang.HolProg 64 :=
.seq NamedBody426_86 NamedBody426_91

def NamedBody426_93 : StackLang.HolProg 64 :=
.seq NamedBody426_85 NamedBody426_92

def NamedBody426_94 : StackLang.HolProg 64 :=
.seq NamedBody426_84 NamedBody426_93

def NamedBody426_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody426_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1270#64)

def NamedBody426_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody426_98 : StackLang.HolProg 64 :=
.seq NamedBody426_96 NamedBody426_97

def NamedBody426_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody426_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody426_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody426_102 : StackLang.HolProg 64 :=
.seq NamedBody426_100 NamedBody426_101

def NamedBody426_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody426_104 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody426_102 NamedBody426_103

def NamedBody426_105 : StackLang.HolProg 64 :=
.seq NamedBody426_99 NamedBody426_104

def NamedBody426_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody426_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody426_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 426 5

def NamedBody426_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody426_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody426_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody426_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody426_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody426_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody426_115 : StackLang.HolProg 64 :=
.seq NamedBody426_113 NamedBody426_114

def NamedBody426_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody426_117 : StackLang.HolProg 64 :=
.seq NamedBody426_115 NamedBody426_116

def NamedBody426_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody426_119 : StackLang.HolProg 64 :=
.seq NamedBody426_117 NamedBody426_118

def NamedBody426_120 : StackLang.HolProg 64 :=
.seq NamedBody426_112 NamedBody426_119

def NamedBody426_121 : StackLang.HolProg 64 :=
.seq NamedBody426_111 NamedBody426_120

def NamedBody426_122 : StackLang.HolProg 64 :=
.seq NamedBody426_110 NamedBody426_121

def NamedBody426_123 : StackLang.HolProg 64 :=
.seq NamedBody426_109 NamedBody426_122

def NamedBody426_124 : StackLang.HolProg 64 :=
.seq NamedBody426_108 NamedBody426_123

def NamedBody426_125 : StackLang.HolProg 64 :=
.seq NamedBody426_107 NamedBody426_124

def NamedBody426_126 : StackLang.HolProg 64 :=
.seq NamedBody426_106 NamedBody426_125

def NamedBody426_127 : StackLang.HolProg 64 :=
.seq NamedBody426_105 NamedBody426_126

def NamedBody426_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody426_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody426_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody426_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody426_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody426_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody426_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody426_135 : StackLang.HolProg 64 :=
.seq NamedBody426_133 NamedBody426_134

def NamedBody426_136 : StackLang.HolProg 64 :=
.seq NamedBody426_132 NamedBody426_135

def NamedBody426_137 : StackLang.HolProg 64 :=
.seq NamedBody426_131 NamedBody426_136

def NamedBody426_138 : StackLang.HolProg 64 :=
.seq NamedBody426_130 NamedBody426_137

def NamedBody426_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody426_140 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody426_141 : StackLang.HolProg 64 :=
.seq NamedBody426_139 NamedBody426_140

def NamedBody426_142 : StackLang.HolProg 64 :=
.call (some (NamedBody426_138, 1, 426, 4)) (Sum.inl 102) (some (NamedBody426_141, 426, 5))

def NamedBody426_143 : StackLang.HolProg 64 :=
.seq NamedBody426_129 NamedBody426_142

def NamedBody426_144 : StackLang.HolProg 64 :=
.seq NamedBody426_128 NamedBody426_143

def NamedBody426_145 : StackLang.HolProg 64 :=
.seq NamedBody426_127 NamedBody426_144

def NamedBody426_146 : StackLang.HolProg 64 :=
.seq NamedBody426_98 NamedBody426_145

def NamedBody426_147 : StackLang.HolProg 64 :=
.seq NamedBody426_95 NamedBody426_146

def NamedBody426_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody426_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody426_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody426_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody426_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody426_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody426_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody426_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551432#64))

def NamedBody426_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 64#64))

def NamedBody426_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody426_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody426_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody426_160 : StackLang.HolProg 64 :=
.seq NamedBody426_158 NamedBody426_159

def NamedBody426_161 : StackLang.HolProg 64 :=
.seq NamedBody426_157 NamedBody426_160

def NamedBody426_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody426_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1271#64)

def NamedBody426_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody426_165 : StackLang.HolProg 64 :=
.seq NamedBody426_163 NamedBody426_164

def NamedBody426_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody426_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody426_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody426_169 : StackLang.HolProg 64 :=
.seq NamedBody426_167 NamedBody426_168

def NamedBody426_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody426_171 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody426_169 NamedBody426_170

def NamedBody426_172 : StackLang.HolProg 64 :=
.seq NamedBody426_166 NamedBody426_171

def NamedBody426_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody426_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody426_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 426 7

def NamedBody426_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody426_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody426_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody426_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody426_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody426_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody426_182 : StackLang.HolProg 64 :=
.seq NamedBody426_180 NamedBody426_181

def NamedBody426_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody426_184 : StackLang.HolProg 64 :=
.seq NamedBody426_182 NamedBody426_183

def NamedBody426_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody426_186 : StackLang.HolProg 64 :=
.seq NamedBody426_184 NamedBody426_185

def NamedBody426_187 : StackLang.HolProg 64 :=
.seq NamedBody426_179 NamedBody426_186

def NamedBody426_188 : StackLang.HolProg 64 :=
.seq NamedBody426_178 NamedBody426_187

def NamedBody426_189 : StackLang.HolProg 64 :=
.seq NamedBody426_177 NamedBody426_188

def NamedBody426_190 : StackLang.HolProg 64 :=
.seq NamedBody426_176 NamedBody426_189

def NamedBody426_191 : StackLang.HolProg 64 :=
.seq NamedBody426_175 NamedBody426_190

def NamedBody426_192 : StackLang.HolProg 64 :=
.seq NamedBody426_174 NamedBody426_191

def NamedBody426_193 : StackLang.HolProg 64 :=
.seq NamedBody426_173 NamedBody426_192

def NamedBody426_194 : StackLang.HolProg 64 :=
.seq NamedBody426_172 NamedBody426_193

def NamedBody426_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody426_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody426_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody426_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody426_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody426_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody426_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody426_202 : StackLang.HolProg 64 :=
.seq NamedBody426_200 NamedBody426_201

def NamedBody426_203 : StackLang.HolProg 64 :=
.seq NamedBody426_199 NamedBody426_202

def NamedBody426_204 : StackLang.HolProg 64 :=
.seq NamedBody426_198 NamedBody426_203

def NamedBody426_205 : StackLang.HolProg 64 :=
.seq NamedBody426_197 NamedBody426_204

def NamedBody426_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody426_207 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody426_208 : StackLang.HolProg 64 :=
.seq NamedBody426_206 NamedBody426_207

def NamedBody426_209 : StackLang.HolProg 64 :=
.call (some (NamedBody426_205, 1, 426, 6)) (Sum.inl 389) (some (NamedBody426_208, 426, 7))

def NamedBody426_210 : StackLang.HolProg 64 :=
.seq NamedBody426_196 NamedBody426_209

def NamedBody426_211 : StackLang.HolProg 64 :=
.seq NamedBody426_195 NamedBody426_210

def NamedBody426_212 : StackLang.HolProg 64 :=
.seq NamedBody426_194 NamedBody426_211

def NamedBody426_213 : StackLang.HolProg 64 :=
.seq NamedBody426_165 NamedBody426_212

def NamedBody426_214 : StackLang.HolProg 64 :=
.seq NamedBody426_162 NamedBody426_213

def NamedBody426_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody426_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody426_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody426_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def NamedBody426_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody426_220 : StackLang.HolProg 64 :=
.seq NamedBody426_218 NamedBody426_219

def NamedBody426_221 : StackLang.HolProg 64 :=
.seq NamedBody426_217 NamedBody426_220

def NamedBody426_222 : StackLang.HolProg 64 :=
.seq NamedBody426_216 NamedBody426_221

def NamedBody426_223 : StackLang.HolProg 64 :=
.seq NamedBody426_215 NamedBody426_222

def NamedBody426_224 : StackLang.HolProg 64 :=
.seq NamedBody426_214 NamedBody426_223

def NamedBody426_225 : StackLang.HolProg 64 :=
.seq NamedBody426_161 NamedBody426_224

def NamedBody426_226 : StackLang.HolProg 64 :=
.seq NamedBody426_156 NamedBody426_225

def NamedBody426_227 : StackLang.HolProg 64 :=
.seq NamedBody426_155 NamedBody426_226

def NamedBody426_228 : StackLang.HolProg 64 :=
.seq NamedBody426_154 NamedBody426_227

def NamedBody426_229 : StackLang.HolProg 64 :=
.seq NamedBody426_153 NamedBody426_228

def NamedBody426_230 : StackLang.HolProg 64 :=
.seq NamedBody426_152 NamedBody426_229

def NamedBody426_231 : StackLang.HolProg 64 :=
.seq NamedBody426_151 NamedBody426_230

def NamedBody426_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody426_233 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody426_231 NamedBody426_232

def NamedBody426_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody426_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody426_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 32#64)

def NamedBody426_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody426_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody426_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1272#64)

def NamedBody426_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody426_241 : StackLang.HolProg 64 :=
.seq NamedBody426_239 NamedBody426_240

def NamedBody426_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody426_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody426_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody426_245 : StackLang.HolProg 64 :=
.seq NamedBody426_243 NamedBody426_244

def NamedBody426_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody426_247 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody426_245 NamedBody426_246

def NamedBody426_248 : StackLang.HolProg 64 :=
.seq NamedBody426_242 NamedBody426_247

def NamedBody426_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody426_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody426_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 426 9

def NamedBody426_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody426_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody426_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody426_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody426_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody426_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody426_258 : StackLang.HolProg 64 :=
.seq NamedBody426_256 NamedBody426_257

def NamedBody426_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody426_260 : StackLang.HolProg 64 :=
.seq NamedBody426_258 NamedBody426_259

def NamedBody426_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody426_262 : StackLang.HolProg 64 :=
.seq NamedBody426_260 NamedBody426_261

def NamedBody426_263 : StackLang.HolProg 64 :=
.seq NamedBody426_255 NamedBody426_262

def NamedBody426_264 : StackLang.HolProg 64 :=
.seq NamedBody426_254 NamedBody426_263

def NamedBody426_265 : StackLang.HolProg 64 :=
.seq NamedBody426_253 NamedBody426_264

def NamedBody426_266 : StackLang.HolProg 64 :=
.seq NamedBody426_252 NamedBody426_265

def NamedBody426_267 : StackLang.HolProg 64 :=
.seq NamedBody426_251 NamedBody426_266

def NamedBody426_268 : StackLang.HolProg 64 :=
.seq NamedBody426_250 NamedBody426_267

def NamedBody426_269 : StackLang.HolProg 64 :=
.seq NamedBody426_249 NamedBody426_268

def NamedBody426_270 : StackLang.HolProg 64 :=
.seq NamedBody426_248 NamedBody426_269

def NamedBody426_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody426_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody426_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody426_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody426_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody426_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody426_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody426_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody426_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody426_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody426_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody426_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody426_283 : StackLang.HolProg 64 :=
.seq NamedBody426_281 NamedBody426_282

def NamedBody426_284 : StackLang.HolProg 64 :=
.seq NamedBody426_280 NamedBody426_283

def NamedBody426_285 : StackLang.HolProg 64 :=
.seq NamedBody426_279 NamedBody426_284

def NamedBody426_286 : StackLang.HolProg 64 :=
.seq NamedBody426_278 NamedBody426_285

def NamedBody426_287 : StackLang.HolProg 64 :=
.seq NamedBody426_277 NamedBody426_286

def NamedBody426_288 : StackLang.HolProg 64 :=
.seq NamedBody426_276 NamedBody426_287

def NamedBody426_289 : StackLang.HolProg 64 :=
.seq NamedBody426_275 NamedBody426_288

def NamedBody426_290 : StackLang.HolProg 64 :=
.seq NamedBody426_274 NamedBody426_289

def NamedBody426_291 : StackLang.HolProg 64 :=
.seq NamedBody426_273 NamedBody426_290

def NamedBody426_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody426_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody426_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody426_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody426_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody426_297 : StackLang.HolProg 64 :=
.seq NamedBody426_295 NamedBody426_296

def NamedBody426_298 : StackLang.HolProg 64 :=
.seq NamedBody426_294 NamedBody426_297

def NamedBody426_299 : StackLang.HolProg 64 :=
.seq NamedBody426_293 NamedBody426_298

def NamedBody426_300 : StackLang.HolProg 64 :=
.seq NamedBody426_292 NamedBody426_299

def NamedBody426_301 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody426_302 : StackLang.HolProg 64 :=
.seq NamedBody426_300 NamedBody426_301

def NamedBody426_303 : StackLang.HolProg 64 :=
.call (some (NamedBody426_291, 1, 426, 8)) (Sum.inl 68) (some (NamedBody426_302, 426, 9))

def NamedBody426_304 : StackLang.HolProg 64 :=
.seq NamedBody426_272 NamedBody426_303

def NamedBody426_305 : StackLang.HolProg 64 :=
.seq NamedBody426_271 NamedBody426_304

def NamedBody426_306 : StackLang.HolProg 64 :=
.seq NamedBody426_270 NamedBody426_305

def NamedBody426_307 : StackLang.HolProg 64 :=
.seq NamedBody426_241 NamedBody426_306

def NamedBody426_308 : StackLang.HolProg 64 :=
.seq NamedBody426_238 NamedBody426_307

def NamedBody426_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody426_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody426_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 0#64))

def NamedBody426_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody426_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 8#64))

def NamedBody426_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody426_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 16#64))

def NamedBody426_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody426_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 24#64))

def NamedBody426_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody426_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody426_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody426_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551432#64))

def NamedBody426_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 64#64))

def NamedBody426_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody426_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody426_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1273#64)

def NamedBody426_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody426_327 : StackLang.HolProg 64 :=
.seq NamedBody426_325 NamedBody426_326

def NamedBody426_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody426_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody426_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody426_331 : StackLang.HolProg 64 :=
.seq NamedBody426_329 NamedBody426_330

def NamedBody426_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody426_333 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody426_331 NamedBody426_332

def NamedBody426_334 : StackLang.HolProg 64 :=
.seq NamedBody426_328 NamedBody426_333

def NamedBody426_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody426_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody426_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 426 11

def NamedBody426_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody426_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody426_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody426_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody426_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody426_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody426_344 : StackLang.HolProg 64 :=
.seq NamedBody426_342 NamedBody426_343

def NamedBody426_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody426_346 : StackLang.HolProg 64 :=
.seq NamedBody426_344 NamedBody426_345

def NamedBody426_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody426_348 : StackLang.HolProg 64 :=
.seq NamedBody426_346 NamedBody426_347

def NamedBody426_349 : StackLang.HolProg 64 :=
.seq NamedBody426_341 NamedBody426_348

def NamedBody426_350 : StackLang.HolProg 64 :=
.seq NamedBody426_340 NamedBody426_349

def NamedBody426_351 : StackLang.HolProg 64 :=
.seq NamedBody426_339 NamedBody426_350

def NamedBody426_352 : StackLang.HolProg 64 :=
.seq NamedBody426_338 NamedBody426_351

def NamedBody426_353 : StackLang.HolProg 64 :=
.seq NamedBody426_337 NamedBody426_352

def NamedBody426_354 : StackLang.HolProg 64 :=
.seq NamedBody426_336 NamedBody426_353

def NamedBody426_355 : StackLang.HolProg 64 :=
.seq NamedBody426_335 NamedBody426_354

def NamedBody426_356 : StackLang.HolProg 64 :=
.seq NamedBody426_334 NamedBody426_355

def NamedBody426_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody426_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody426_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody426_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody426_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody426_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody426_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody426_364 : StackLang.HolProg 64 :=
.seq NamedBody426_362 NamedBody426_363

def NamedBody426_365 : StackLang.HolProg 64 :=
.seq NamedBody426_361 NamedBody426_364

def NamedBody426_366 : StackLang.HolProg 64 :=
.seq NamedBody426_360 NamedBody426_365

def NamedBody426_367 : StackLang.HolProg 64 :=
.seq NamedBody426_359 NamedBody426_366

def NamedBody426_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody426_369 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody426_370 : StackLang.HolProg 64 :=
.seq NamedBody426_368 NamedBody426_369

def NamedBody426_371 : StackLang.HolProg 64 :=
.call (some (NamedBody426_367, 1, 426, 10)) (Sum.inl 388) (some (NamedBody426_370, 426, 11))

def NamedBody426_372 : StackLang.HolProg 64 :=
.seq NamedBody426_358 NamedBody426_371

def NamedBody426_373 : StackLang.HolProg 64 :=
.seq NamedBody426_357 NamedBody426_372

def NamedBody426_374 : StackLang.HolProg 64 :=
.seq NamedBody426_356 NamedBody426_373

def NamedBody426_375 : StackLang.HolProg 64 :=
.seq NamedBody426_327 NamedBody426_374

def NamedBody426_376 : StackLang.HolProg 64 :=
.seq NamedBody426_324 NamedBody426_375

def NamedBody426_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody426_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody426_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody426_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def NamedBody426_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody426_382 : StackLang.HolProg 64 :=
.seq NamedBody426_380 NamedBody426_381

def NamedBody426_383 : StackLang.HolProg 64 :=
.seq NamedBody426_379 NamedBody426_382

def NamedBody426_384 : StackLang.HolProg 64 :=
.seq NamedBody426_378 NamedBody426_383

def NamedBody426_385 : StackLang.HolProg 64 :=
.seq NamedBody426_377 NamedBody426_384

def NamedBody426_386 : StackLang.HolProg 64 :=
.seq NamedBody426_376 NamedBody426_385

def NamedBody426_387 : StackLang.HolProg 64 :=
.seq NamedBody426_323 NamedBody426_386

def NamedBody426_388 : StackLang.HolProg 64 :=
.seq NamedBody426_322 NamedBody426_387

def NamedBody426_389 : StackLang.HolProg 64 :=
.seq NamedBody426_321 NamedBody426_388

def NamedBody426_390 : StackLang.HolProg 64 :=
.seq NamedBody426_320 NamedBody426_389

def NamedBody426_391 : StackLang.HolProg 64 :=
.seq NamedBody426_319 NamedBody426_390

def NamedBody426_392 : StackLang.HolProg 64 :=
.seq NamedBody426_318 NamedBody426_391

def NamedBody426_393 : StackLang.HolProg 64 :=
.seq NamedBody426_317 NamedBody426_392

def NamedBody426_394 : StackLang.HolProg 64 :=
.seq NamedBody426_316 NamedBody426_393

def NamedBody426_395 : StackLang.HolProg 64 :=
.seq NamedBody426_315 NamedBody426_394

def NamedBody426_396 : StackLang.HolProg 64 :=
.seq NamedBody426_314 NamedBody426_395

def NamedBody426_397 : StackLang.HolProg 64 :=
.seq NamedBody426_313 NamedBody426_396

def NamedBody426_398 : StackLang.HolProg 64 :=
.seq NamedBody426_312 NamedBody426_397

def NamedBody426_399 : StackLang.HolProg 64 :=
.seq NamedBody426_311 NamedBody426_398

def NamedBody426_400 : StackLang.HolProg 64 :=
.seq NamedBody426_310 NamedBody426_399

def NamedBody426_401 : StackLang.HolProg 64 :=
.seq NamedBody426_309 NamedBody426_400

def NamedBody426_402 : StackLang.HolProg 64 :=
.seq NamedBody426_308 NamedBody426_401

def NamedBody426_403 : StackLang.HolProg 64 :=
.seq NamedBody426_237 NamedBody426_402

def NamedBody426_404 : StackLang.HolProg 64 :=
.seq NamedBody426_236 NamedBody426_403

def NamedBody426_405 : StackLang.HolProg 64 :=
.seq NamedBody426_235 NamedBody426_404

def NamedBody426_406 : StackLang.HolProg 64 :=
.seq NamedBody426_234 NamedBody426_405

def NamedBody426_407 : StackLang.HolProg 64 :=
.seq NamedBody426_233 NamedBody426_406

def NamedBody426_408 : StackLang.HolProg 64 :=
.seq NamedBody426_150 NamedBody426_407

def NamedBody426_409 : StackLang.HolProg 64 :=
.seq NamedBody426_149 NamedBody426_408

def NamedBody426_410 : StackLang.HolProg 64 :=
.seq NamedBody426_148 NamedBody426_409

def NamedBody426_411 : StackLang.HolProg 64 :=
.seq NamedBody426_147 NamedBody426_410

def NamedBody426_412 : StackLang.HolProg 64 :=
.seq NamedBody426_94 NamedBody426_411

def NamedBody426_413 : StackLang.HolProg 64 :=
.seq NamedBody426_83 NamedBody426_412

def NamedBody426_414 : StackLang.HolProg 64 :=
.seq NamedBody426_82 NamedBody426_413

def NamedBody426_415 : StackLang.HolProg 64 :=
.seq NamedBody426_15 NamedBody426_414

def NamedBody426_416 : StackLang.HolProg 64 :=
.seq NamedBody426_6 NamedBody426_415

def Named426 : Nat × StackLang.HolProg 64 := (426, NamedBody426_416)
theorem Named426_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed426 = Named426 := by
  kernel_rfl
#print axioms Named426_eq
end InitECandidate.Proofs.BackendStages
