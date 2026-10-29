import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed478
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody478_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody478_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody478_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody478_3 : StackLang.HolProg 64 :=
.seq NamedBody478_1 NamedBody478_2

def NamedBody478_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody478_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody478_3 NamedBody478_4

def NamedBody478_6 : StackLang.HolProg 64 :=
.seq NamedBody478_0 NamedBody478_5

def NamedBody478_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody478_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody478_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody478_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody478_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody478_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody478_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody478_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody478_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody478_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1499#64)

def NamedBody478_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody478_18 : StackLang.HolProg 64 :=
.seq NamedBody478_16 NamedBody478_17

def NamedBody478_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody478_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody478_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody478_22 : StackLang.HolProg 64 :=
.seq NamedBody478_20 NamedBody478_21

def NamedBody478_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody478_24 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody478_22 NamedBody478_23

def NamedBody478_25 : StackLang.HolProg 64 :=
.seq NamedBody478_19 NamedBody478_24

def NamedBody478_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody478_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody478_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 478 3

def NamedBody478_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody478_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody478_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody478_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody478_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody478_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody478_35 : StackLang.HolProg 64 :=
.seq NamedBody478_33 NamedBody478_34

def NamedBody478_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody478_37 : StackLang.HolProg 64 :=
.seq NamedBody478_35 NamedBody478_36

def NamedBody478_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody478_39 : StackLang.HolProg 64 :=
.seq NamedBody478_37 NamedBody478_38

def NamedBody478_40 : StackLang.HolProg 64 :=
.seq NamedBody478_32 NamedBody478_39

def NamedBody478_41 : StackLang.HolProg 64 :=
.seq NamedBody478_31 NamedBody478_40

def NamedBody478_42 : StackLang.HolProg 64 :=
.seq NamedBody478_30 NamedBody478_41

def NamedBody478_43 : StackLang.HolProg 64 :=
.seq NamedBody478_29 NamedBody478_42

def NamedBody478_44 : StackLang.HolProg 64 :=
.seq NamedBody478_28 NamedBody478_43

def NamedBody478_45 : StackLang.HolProg 64 :=
.seq NamedBody478_27 NamedBody478_44

def NamedBody478_46 : StackLang.HolProg 64 :=
.seq NamedBody478_26 NamedBody478_45

def NamedBody478_47 : StackLang.HolProg 64 :=
.seq NamedBody478_25 NamedBody478_46

def NamedBody478_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody478_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody478_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody478_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody478_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody478_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody478_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody478_55 : StackLang.HolProg 64 :=
.seq NamedBody478_53 NamedBody478_54

def NamedBody478_56 : StackLang.HolProg 64 :=
.seq NamedBody478_52 NamedBody478_55

def NamedBody478_57 : StackLang.HolProg 64 :=
.seq NamedBody478_51 NamedBody478_56

def NamedBody478_58 : StackLang.HolProg 64 :=
.seq NamedBody478_50 NamedBody478_57

def NamedBody478_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody478_60 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody478_61 : StackLang.HolProg 64 :=
.seq NamedBody478_59 NamedBody478_60

def NamedBody478_62 : StackLang.HolProg 64 :=
.call (some (NamedBody478_58, 1, 478, 2)) (Sum.inl 476) (some (NamedBody478_61, 478, 3))

def NamedBody478_63 : StackLang.HolProg 64 :=
.seq NamedBody478_49 NamedBody478_62

def NamedBody478_64 : StackLang.HolProg 64 :=
.seq NamedBody478_48 NamedBody478_63

def NamedBody478_65 : StackLang.HolProg 64 :=
.seq NamedBody478_47 NamedBody478_64

def NamedBody478_66 : StackLang.HolProg 64 :=
.seq NamedBody478_18 NamedBody478_65

def NamedBody478_67 : StackLang.HolProg 64 :=
.seq NamedBody478_15 NamedBody478_66

def NamedBody478_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody478_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody478_70 : StackLang.HolProg 64 :=
.seq NamedBody478_68 NamedBody478_69

def NamedBody478_71 : StackLang.HolProg 64 :=
.seq NamedBody478_67 NamedBody478_70

def NamedBody478_72 : StackLang.HolProg 64 :=
.seq NamedBody478_14 NamedBody478_71

def NamedBody478_73 : StackLang.HolProg 64 :=
.seq NamedBody478_13 NamedBody478_72

def NamedBody478_74 : StackLang.HolProg 64 :=
.seq NamedBody478_12 NamedBody478_73

def NamedBody478_75 : StackLang.HolProg 64 :=
.seq NamedBody478_11 NamedBody478_74

def NamedBody478_76 : StackLang.HolProg 64 :=
.seq NamedBody478_10 NamedBody478_75

def NamedBody478_77 : StackLang.HolProg 64 :=
.seq NamedBody478_9 NamedBody478_76

def NamedBody478_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody478_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody478_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody478_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody478_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody478_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody478_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody478_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1500#64)

def NamedBody478_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody478_87 : StackLang.HolProg 64 :=
.seq NamedBody478_85 NamedBody478_86

def NamedBody478_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody478_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody478_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody478_91 : StackLang.HolProg 64 :=
.seq NamedBody478_89 NamedBody478_90

def NamedBody478_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody478_93 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody478_91 NamedBody478_92

def NamedBody478_94 : StackLang.HolProg 64 :=
.seq NamedBody478_88 NamedBody478_93

def NamedBody478_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody478_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody478_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 478 5

def NamedBody478_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody478_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody478_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody478_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody478_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody478_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody478_104 : StackLang.HolProg 64 :=
.seq NamedBody478_102 NamedBody478_103

def NamedBody478_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody478_106 : StackLang.HolProg 64 :=
.seq NamedBody478_104 NamedBody478_105

def NamedBody478_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody478_108 : StackLang.HolProg 64 :=
.seq NamedBody478_106 NamedBody478_107

def NamedBody478_109 : StackLang.HolProg 64 :=
.seq NamedBody478_101 NamedBody478_108

def NamedBody478_110 : StackLang.HolProg 64 :=
.seq NamedBody478_100 NamedBody478_109

def NamedBody478_111 : StackLang.HolProg 64 :=
.seq NamedBody478_99 NamedBody478_110

def NamedBody478_112 : StackLang.HolProg 64 :=
.seq NamedBody478_98 NamedBody478_111

def NamedBody478_113 : StackLang.HolProg 64 :=
.seq NamedBody478_97 NamedBody478_112

def NamedBody478_114 : StackLang.HolProg 64 :=
.seq NamedBody478_96 NamedBody478_113

def NamedBody478_115 : StackLang.HolProg 64 :=
.seq NamedBody478_95 NamedBody478_114

def NamedBody478_116 : StackLang.HolProg 64 :=
.seq NamedBody478_94 NamedBody478_115

def NamedBody478_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody478_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody478_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody478_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody478_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody478_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody478_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody478_124 : StackLang.HolProg 64 :=
.seq NamedBody478_122 NamedBody478_123

def NamedBody478_125 : StackLang.HolProg 64 :=
.seq NamedBody478_121 NamedBody478_124

def NamedBody478_126 : StackLang.HolProg 64 :=
.seq NamedBody478_120 NamedBody478_125

def NamedBody478_127 : StackLang.HolProg 64 :=
.seq NamedBody478_119 NamedBody478_126

def NamedBody478_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody478_129 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody478_130 : StackLang.HolProg 64 :=
.seq NamedBody478_128 NamedBody478_129

def NamedBody478_131 : StackLang.HolProg 64 :=
.call (some (NamedBody478_127, 1, 478, 4)) (Sum.inl 476) (some (NamedBody478_130, 478, 5))

def NamedBody478_132 : StackLang.HolProg 64 :=
.seq NamedBody478_118 NamedBody478_131

def NamedBody478_133 : StackLang.HolProg 64 :=
.seq NamedBody478_117 NamedBody478_132

def NamedBody478_134 : StackLang.HolProg 64 :=
.seq NamedBody478_116 NamedBody478_133

def NamedBody478_135 : StackLang.HolProg 64 :=
.seq NamedBody478_87 NamedBody478_134

def NamedBody478_136 : StackLang.HolProg 64 :=
.seq NamedBody478_84 NamedBody478_135

def NamedBody478_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody478_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody478_139 : StackLang.HolProg 64 :=
.seq NamedBody478_137 NamedBody478_138

def NamedBody478_140 : StackLang.HolProg 64 :=
.seq NamedBody478_136 NamedBody478_139

def NamedBody478_141 : StackLang.HolProg 64 :=
.seq NamedBody478_83 NamedBody478_140

def NamedBody478_142 : StackLang.HolProg 64 :=
.seq NamedBody478_82 NamedBody478_141

def NamedBody478_143 : StackLang.HolProg 64 :=
.seq NamedBody478_81 NamedBody478_142

def NamedBody478_144 : StackLang.HolProg 64 :=
.seq NamedBody478_80 NamedBody478_143

def NamedBody478_145 : StackLang.HolProg 64 :=
.seq NamedBody478_79 NamedBody478_144

def NamedBody478_146 : StackLang.HolProg 64 :=
.seq NamedBody478_78 NamedBody478_145

def NamedBody478_147 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedBody478_77 NamedBody478_146

def NamedBody478_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody478_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody478_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody478_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody478_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody478_153 : StackLang.HolProg 64 :=
.seq NamedBody478_151 NamedBody478_152

def NamedBody478_154 : StackLang.HolProg 64 :=
.seq NamedBody478_150 NamedBody478_153

def NamedBody478_155 : StackLang.HolProg 64 :=
.seq NamedBody478_149 NamedBody478_154

def NamedBody478_156 : StackLang.HolProg 64 :=
.seq NamedBody478_148 NamedBody478_155

def NamedBody478_157 : StackLang.HolProg 64 :=
.seq NamedBody478_147 NamedBody478_156

def NamedBody478_158 : StackLang.HolProg 64 :=
.seq NamedBody478_8 NamedBody478_157

def NamedBody478_159 : StackLang.HolProg 64 :=
.seq NamedBody478_7 NamedBody478_158

def NamedBody478_160 : StackLang.HolProg 64 :=
.seq NamedBody478_6 NamedBody478_159

def Named478 : Nat × StackLang.HolProg 64 := (478, NamedBody478_160)
theorem Named478_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed478 = Named478 := by
  kernel_rfl
#print axioms Named478_eq
end InitECandidate.Proofs.BackendStages
