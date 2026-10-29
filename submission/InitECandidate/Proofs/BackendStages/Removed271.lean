import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc271
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody271_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody271_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody271_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody271_3 : StackLang.HolProg 64 :=
.seq RemovedBody271_1 RemovedBody271_2

def RemovedBody271_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody271_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody271_3 RemovedBody271_4

def RemovedBody271_6 : StackLang.HolProg 64 :=
.seq RemovedBody271_0 RemovedBody271_5

def RemovedBody271_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody271_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody271_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 657#64)

def RemovedBody271_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody271_11 : StackLang.HolProg 64 :=
.seq RemovedBody271_9 RemovedBody271_10

def RemovedBody271_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody271_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody271_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody271_15 : StackLang.HolProg 64 :=
.seq RemovedBody271_13 RemovedBody271_14

def RemovedBody271_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody271_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody271_15 RemovedBody271_16

def RemovedBody271_18 : StackLang.HolProg 64 :=
.seq RemovedBody271_12 RemovedBody271_17

def RemovedBody271_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody271_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody271_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 271 3

def RemovedBody271_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody271_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody271_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody271_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody271_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody271_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody271_28 : StackLang.HolProg 64 :=
.seq RemovedBody271_26 RemovedBody271_27

def RemovedBody271_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody271_30 : StackLang.HolProg 64 :=
.seq RemovedBody271_28 RemovedBody271_29

def RemovedBody271_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody271_32 : StackLang.HolProg 64 :=
.seq RemovedBody271_30 RemovedBody271_31

def RemovedBody271_33 : StackLang.HolProg 64 :=
.seq RemovedBody271_25 RemovedBody271_32

def RemovedBody271_34 : StackLang.HolProg 64 :=
.seq RemovedBody271_24 RemovedBody271_33

def RemovedBody271_35 : StackLang.HolProg 64 :=
.seq RemovedBody271_23 RemovedBody271_34

def RemovedBody271_36 : StackLang.HolProg 64 :=
.seq RemovedBody271_22 RemovedBody271_35

def RemovedBody271_37 : StackLang.HolProg 64 :=
.seq RemovedBody271_21 RemovedBody271_36

def RemovedBody271_38 : StackLang.HolProg 64 :=
.seq RemovedBody271_20 RemovedBody271_37

def RemovedBody271_39 : StackLang.HolProg 64 :=
.seq RemovedBody271_19 RemovedBody271_38

def RemovedBody271_40 : StackLang.HolProg 64 :=
.seq RemovedBody271_18 RemovedBody271_39

def RemovedBody271_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody271_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody271_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody271_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody271_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody271_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody271_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody271_48 : StackLang.HolProg 64 :=
.seq RemovedBody271_46 RemovedBody271_47

def RemovedBody271_49 : StackLang.HolProg 64 :=
.seq RemovedBody271_45 RemovedBody271_48

def RemovedBody271_50 : StackLang.HolProg 64 :=
.seq RemovedBody271_44 RemovedBody271_49

def RemovedBody271_51 : StackLang.HolProg 64 :=
.seq RemovedBody271_43 RemovedBody271_50

def RemovedBody271_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody271_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody271_54 : StackLang.HolProg 64 :=
.seq RemovedBody271_52 RemovedBody271_53

def RemovedBody271_55 : StackLang.HolProg 64 :=
.call (some (RemovedBody271_51, 0, 271, 2)) (Sum.inl 269) (some (RemovedBody271_54, 271, 3))

def RemovedBody271_56 : StackLang.HolProg 64 :=
.seq RemovedBody271_42 RemovedBody271_55

def RemovedBody271_57 : StackLang.HolProg 64 :=
.seq RemovedBody271_41 RemovedBody271_56

def RemovedBody271_58 : StackLang.HolProg 64 :=
.seq RemovedBody271_40 RemovedBody271_57

def RemovedBody271_59 : StackLang.HolProg 64 :=
.seq RemovedBody271_11 RemovedBody271_58

def RemovedBody271_60 : StackLang.HolProg 64 :=
.seq RemovedBody271_8 RemovedBody271_59

def RemovedBody271_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody271_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 32#64)

def RemovedBody271_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody271_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody271_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 5#64)

def RemovedBody271_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody271_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody271_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def RemovedBody271_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody271_70 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody271_71 : StackLang.HolProg 64 :=
.seq RemovedBody271_69 RemovedBody271_70

def RemovedBody271_72 : StackLang.HolProg 64 :=
.seq RemovedBody271_68 RemovedBody271_71

def RemovedBody271_73 : StackLang.HolProg 64 :=
.seq RemovedBody271_67 RemovedBody271_72

def RemovedBody271_74 : StackLang.HolProg 64 :=
.seq RemovedBody271_66 RemovedBody271_73

def RemovedBody271_75 : StackLang.HolProg 64 :=
.seq RemovedBody271_65 RemovedBody271_74

def RemovedBody271_76 : StackLang.HolProg 64 :=
.seq RemovedBody271_64 RemovedBody271_75

def RemovedBody271_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody271_78 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody271_76 RemovedBody271_77

def RemovedBody271_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody271_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody271_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody271_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody271_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 658#64)

def RemovedBody271_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody271_85 : StackLang.HolProg 64 :=
.seq RemovedBody271_83 RemovedBody271_84

def RemovedBody271_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody271_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody271_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody271_89 : StackLang.HolProg 64 :=
.seq RemovedBody271_87 RemovedBody271_88

def RemovedBody271_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody271_91 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody271_89 RemovedBody271_90

def RemovedBody271_92 : StackLang.HolProg 64 :=
.seq RemovedBody271_86 RemovedBody271_91

def RemovedBody271_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody271_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody271_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 271 5

def RemovedBody271_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody271_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody271_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody271_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody271_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody271_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody271_102 : StackLang.HolProg 64 :=
.seq RemovedBody271_100 RemovedBody271_101

def RemovedBody271_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody271_104 : StackLang.HolProg 64 :=
.seq RemovedBody271_102 RemovedBody271_103

def RemovedBody271_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody271_106 : StackLang.HolProg 64 :=
.seq RemovedBody271_104 RemovedBody271_105

def RemovedBody271_107 : StackLang.HolProg 64 :=
.seq RemovedBody271_99 RemovedBody271_106

def RemovedBody271_108 : StackLang.HolProg 64 :=
.seq RemovedBody271_98 RemovedBody271_107

def RemovedBody271_109 : StackLang.HolProg 64 :=
.seq RemovedBody271_97 RemovedBody271_108

def RemovedBody271_110 : StackLang.HolProg 64 :=
.seq RemovedBody271_96 RemovedBody271_109

def RemovedBody271_111 : StackLang.HolProg 64 :=
.seq RemovedBody271_95 RemovedBody271_110

def RemovedBody271_112 : StackLang.HolProg 64 :=
.seq RemovedBody271_94 RemovedBody271_111

def RemovedBody271_113 : StackLang.HolProg 64 :=
.seq RemovedBody271_93 RemovedBody271_112

def RemovedBody271_114 : StackLang.HolProg 64 :=
.seq RemovedBody271_92 RemovedBody271_113

def RemovedBody271_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody271_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody271_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody271_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody271_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody271_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody271_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody271_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody271_123 : StackLang.HolProg 64 :=
.seq RemovedBody271_121 RemovedBody271_122

def RemovedBody271_124 : StackLang.HolProg 64 :=
.seq RemovedBody271_120 RemovedBody271_123

def RemovedBody271_125 : StackLang.HolProg 64 :=
.seq RemovedBody271_119 RemovedBody271_124

def RemovedBody271_126 : StackLang.HolProg 64 :=
.seq RemovedBody271_118 RemovedBody271_125

def RemovedBody271_127 : StackLang.HolProg 64 :=
.seq RemovedBody271_117 RemovedBody271_126

def RemovedBody271_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody271_129 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody271_130 : StackLang.HolProg 64 :=
.seq RemovedBody271_128 RemovedBody271_129

def RemovedBody271_131 : StackLang.HolProg 64 :=
.call (some (RemovedBody271_127, 0, 271, 4)) (Sum.inl 146) (some (RemovedBody271_130, 271, 5))

def RemovedBody271_132 : StackLang.HolProg 64 :=
.seq RemovedBody271_116 RemovedBody271_131

def RemovedBody271_133 : StackLang.HolProg 64 :=
.seq RemovedBody271_115 RemovedBody271_132

def RemovedBody271_134 : StackLang.HolProg 64 :=
.seq RemovedBody271_114 RemovedBody271_133

def RemovedBody271_135 : StackLang.HolProg 64 :=
.seq RemovedBody271_85 RemovedBody271_134

def RemovedBody271_136 : StackLang.HolProg 64 :=
.seq RemovedBody271_82 RemovedBody271_135

def RemovedBody271_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody271_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody271_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody271_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody271_141 : StackLang.HolProg 64 :=
.seq RemovedBody271_139 RemovedBody271_140

def RemovedBody271_142 : StackLang.HolProg 64 :=
.seq RemovedBody271_138 RemovedBody271_141

def RemovedBody271_143 : StackLang.HolProg 64 :=
.seq RemovedBody271_137 RemovedBody271_142

def RemovedBody271_144 : StackLang.HolProg 64 :=
.seq RemovedBody271_136 RemovedBody271_143

def RemovedBody271_145 : StackLang.HolProg 64 :=
.seq RemovedBody271_81 RemovedBody271_144

def RemovedBody271_146 : StackLang.HolProg 64 :=
.seq RemovedBody271_80 RemovedBody271_145

def RemovedBody271_147 : StackLang.HolProg 64 :=
.seq RemovedBody271_79 RemovedBody271_146

def RemovedBody271_148 : StackLang.HolProg 64 :=
.seq RemovedBody271_78 RemovedBody271_147

def RemovedBody271_149 : StackLang.HolProg 64 :=
.seq RemovedBody271_63 RemovedBody271_148

def RemovedBody271_150 : StackLang.HolProg 64 :=
.seq RemovedBody271_62 RemovedBody271_149

def RemovedBody271_151 : StackLang.HolProg 64 :=
.seq RemovedBody271_61 RemovedBody271_150

def RemovedBody271_152 : StackLang.HolProg 64 :=
.seq RemovedBody271_60 RemovedBody271_151

def RemovedBody271_153 : StackLang.HolProg 64 :=
.seq RemovedBody271_7 RemovedBody271_152

def RemovedBody271_154 : StackLang.HolProg 64 :=
.seq RemovedBody271_6 RemovedBody271_153

def Removed271 : Nat × StackLang.HolProg 64 := (271, RemovedBody271_154)
theorem Removed271_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc271 = Removed271 := by
  kernel_rfl
#print axioms Removed271_eq
end InitECandidate.Proofs.BackendStages
