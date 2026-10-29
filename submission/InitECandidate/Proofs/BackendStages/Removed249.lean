import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc249
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody249_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody249_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody249_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody249_3 : StackLang.HolProg 64 :=
.seq RemovedBody249_1 RemovedBody249_2

def RemovedBody249_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody249_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody249_3 RemovedBody249_4

def RemovedBody249_6 : StackLang.HolProg 64 :=
.seq RemovedBody249_0 RemovedBody249_5

def RemovedBody249_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody249_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody249_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 506#64)

def RemovedBody249_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody249_11 : StackLang.HolProg 64 :=
.seq RemovedBody249_9 RemovedBody249_10

def RemovedBody249_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody249_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody249_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody249_15 : StackLang.HolProg 64 :=
.seq RemovedBody249_13 RemovedBody249_14

def RemovedBody249_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody249_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody249_15 RemovedBody249_16

def RemovedBody249_18 : StackLang.HolProg 64 :=
.seq RemovedBody249_12 RemovedBody249_17

def RemovedBody249_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody249_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody249_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 249 3

def RemovedBody249_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody249_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody249_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody249_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody249_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody249_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody249_28 : StackLang.HolProg 64 :=
.seq RemovedBody249_26 RemovedBody249_27

def RemovedBody249_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody249_30 : StackLang.HolProg 64 :=
.seq RemovedBody249_28 RemovedBody249_29

def RemovedBody249_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody249_32 : StackLang.HolProg 64 :=
.seq RemovedBody249_30 RemovedBody249_31

def RemovedBody249_33 : StackLang.HolProg 64 :=
.seq RemovedBody249_25 RemovedBody249_32

def RemovedBody249_34 : StackLang.HolProg 64 :=
.seq RemovedBody249_24 RemovedBody249_33

def RemovedBody249_35 : StackLang.HolProg 64 :=
.seq RemovedBody249_23 RemovedBody249_34

def RemovedBody249_36 : StackLang.HolProg 64 :=
.seq RemovedBody249_22 RemovedBody249_35

def RemovedBody249_37 : StackLang.HolProg 64 :=
.seq RemovedBody249_21 RemovedBody249_36

def RemovedBody249_38 : StackLang.HolProg 64 :=
.seq RemovedBody249_20 RemovedBody249_37

def RemovedBody249_39 : StackLang.HolProg 64 :=
.seq RemovedBody249_19 RemovedBody249_38

def RemovedBody249_40 : StackLang.HolProg 64 :=
.seq RemovedBody249_18 RemovedBody249_39

def RemovedBody249_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody249_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody249_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody249_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody249_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody249_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody249_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody249_48 : StackLang.HolProg 64 :=
.seq RemovedBody249_46 RemovedBody249_47

def RemovedBody249_49 : StackLang.HolProg 64 :=
.seq RemovedBody249_45 RemovedBody249_48

def RemovedBody249_50 : StackLang.HolProg 64 :=
.seq RemovedBody249_44 RemovedBody249_49

def RemovedBody249_51 : StackLang.HolProg 64 :=
.seq RemovedBody249_43 RemovedBody249_50

def RemovedBody249_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody249_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody249_54 : StackLang.HolProg 64 :=
.seq RemovedBody249_52 RemovedBody249_53

def RemovedBody249_55 : StackLang.HolProg 64 :=
.call (some (RemovedBody249_51, 0, 249, 2)) (Sum.inl 248) (some (RemovedBody249_54, 249, 3))

def RemovedBody249_56 : StackLang.HolProg 64 :=
.seq RemovedBody249_42 RemovedBody249_55

def RemovedBody249_57 : StackLang.HolProg 64 :=
.seq RemovedBody249_41 RemovedBody249_56

def RemovedBody249_58 : StackLang.HolProg 64 :=
.seq RemovedBody249_40 RemovedBody249_57

def RemovedBody249_59 : StackLang.HolProg 64 :=
.seq RemovedBody249_11 RemovedBody249_58

def RemovedBody249_60 : StackLang.HolProg 64 :=
.seq RemovedBody249_8 RemovedBody249_59

def RemovedBody249_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody249_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody249_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody249_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 507#64)

def RemovedBody249_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody249_66 : StackLang.HolProg 64 :=
.seq RemovedBody249_64 RemovedBody249_65

def RemovedBody249_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody249_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody249_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody249_70 : StackLang.HolProg 64 :=
.seq RemovedBody249_68 RemovedBody249_69

def RemovedBody249_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody249_72 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody249_70 RemovedBody249_71

def RemovedBody249_73 : StackLang.HolProg 64 :=
.seq RemovedBody249_67 RemovedBody249_72

def RemovedBody249_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody249_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody249_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 249 5

def RemovedBody249_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody249_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody249_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody249_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody249_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody249_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody249_83 : StackLang.HolProg 64 :=
.seq RemovedBody249_81 RemovedBody249_82

def RemovedBody249_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody249_85 : StackLang.HolProg 64 :=
.seq RemovedBody249_83 RemovedBody249_84

def RemovedBody249_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody249_87 : StackLang.HolProg 64 :=
.seq RemovedBody249_85 RemovedBody249_86

def RemovedBody249_88 : StackLang.HolProg 64 :=
.seq RemovedBody249_80 RemovedBody249_87

def RemovedBody249_89 : StackLang.HolProg 64 :=
.seq RemovedBody249_79 RemovedBody249_88

def RemovedBody249_90 : StackLang.HolProg 64 :=
.seq RemovedBody249_78 RemovedBody249_89

def RemovedBody249_91 : StackLang.HolProg 64 :=
.seq RemovedBody249_77 RemovedBody249_90

def RemovedBody249_92 : StackLang.HolProg 64 :=
.seq RemovedBody249_76 RemovedBody249_91

def RemovedBody249_93 : StackLang.HolProg 64 :=
.seq RemovedBody249_75 RemovedBody249_92

def RemovedBody249_94 : StackLang.HolProg 64 :=
.seq RemovedBody249_74 RemovedBody249_93

def RemovedBody249_95 : StackLang.HolProg 64 :=
.seq RemovedBody249_73 RemovedBody249_94

def RemovedBody249_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody249_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody249_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody249_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody249_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody249_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody249_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody249_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody249_104 : StackLang.HolProg 64 :=
.seq RemovedBody249_102 RemovedBody249_103

def RemovedBody249_105 : StackLang.HolProg 64 :=
.seq RemovedBody249_101 RemovedBody249_104

def RemovedBody249_106 : StackLang.HolProg 64 :=
.seq RemovedBody249_100 RemovedBody249_105

def RemovedBody249_107 : StackLang.HolProg 64 :=
.seq RemovedBody249_99 RemovedBody249_106

def RemovedBody249_108 : StackLang.HolProg 64 :=
.seq RemovedBody249_98 RemovedBody249_107

def RemovedBody249_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody249_110 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody249_111 : StackLang.HolProg 64 :=
.seq RemovedBody249_109 RemovedBody249_110

def RemovedBody249_112 : StackLang.HolProg 64 :=
.call (some (RemovedBody249_108, 0, 249, 4)) (Sum.inl 90) (some (RemovedBody249_111, 249, 5))

def RemovedBody249_113 : StackLang.HolProg 64 :=
.seq RemovedBody249_97 RemovedBody249_112

def RemovedBody249_114 : StackLang.HolProg 64 :=
.seq RemovedBody249_96 RemovedBody249_113

def RemovedBody249_115 : StackLang.HolProg 64 :=
.seq RemovedBody249_95 RemovedBody249_114

def RemovedBody249_116 : StackLang.HolProg 64 :=
.seq RemovedBody249_66 RemovedBody249_115

def RemovedBody249_117 : StackLang.HolProg 64 :=
.seq RemovedBody249_63 RemovedBody249_116

def RemovedBody249_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody249_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody249_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody249_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody249_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 120#64)))

def RemovedBody249_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody249_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody249_125 : StackLang.HolProg 64 :=
.seq RemovedBody249_123 RemovedBody249_124

def RemovedBody249_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody249_127 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody249_125 RemovedBody249_126

def RemovedBody249_128 : StackLang.HolProg 64 :=
.seq RemovedBody249_122 RemovedBody249_127

def RemovedBody249_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 256

def RemovedBody249_130 : StackLang.HolProg 64 :=
.seq RemovedBody249_128 RemovedBody249_129

def RemovedBody249_131 : StackLang.HolProg 64 :=
.seq RemovedBody249_121 RemovedBody249_130

def RemovedBody249_132 : StackLang.HolProg 64 :=
.seq RemovedBody249_120 RemovedBody249_131

def RemovedBody249_133 : StackLang.HolProg 64 :=
.seq RemovedBody249_119 RemovedBody249_132

def RemovedBody249_134 : StackLang.HolProg 64 :=
.seq RemovedBody249_118 RemovedBody249_133

def RemovedBody249_135 : StackLang.HolProg 64 :=
.seq RemovedBody249_117 RemovedBody249_134

def RemovedBody249_136 : StackLang.HolProg 64 :=
.seq RemovedBody249_62 RemovedBody249_135

def RemovedBody249_137 : StackLang.HolProg 64 :=
.seq RemovedBody249_61 RemovedBody249_136

def RemovedBody249_138 : StackLang.HolProg 64 :=
.seq RemovedBody249_60 RemovedBody249_137

def RemovedBody249_139 : StackLang.HolProg 64 :=
.seq RemovedBody249_7 RemovedBody249_138

def RemovedBody249_140 : StackLang.HolProg 64 :=
.seq RemovedBody249_6 RemovedBody249_139

def Removed249 : Nat × StackLang.HolProg 64 := (249, RemovedBody249_140)
theorem Removed249_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc249 = Removed249 := by
  kernel_rfl
#print axioms Removed249_eq
end InitECandidate.Proofs.BackendStages
