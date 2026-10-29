import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc385
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody385_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody385_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody385_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody385_3 : StackLang.HolProg 64 :=
.seq RemovedBody385_1 RemovedBody385_2

def RemovedBody385_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody385_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody385_3 RemovedBody385_4

def RemovedBody385_6 : StackLang.HolProg 64 :=
.seq RemovedBody385_0 RemovedBody385_5

def RemovedBody385_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody385_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody385_9 : StackLang.HolProg 64 :=
.seq RemovedBody385_7 RemovedBody385_8

def RemovedBody385_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody385_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1133#64)

def RemovedBody385_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody385_13 : StackLang.HolProg 64 :=
.seq RemovedBody385_11 RemovedBody385_12

def RemovedBody385_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody385_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody385_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody385_17 : StackLang.HolProg 64 :=
.seq RemovedBody385_15 RemovedBody385_16

def RemovedBody385_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody385_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody385_17 RemovedBody385_18

def RemovedBody385_20 : StackLang.HolProg 64 :=
.seq RemovedBody385_14 RemovedBody385_19

def RemovedBody385_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody385_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody385_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 385 3

def RemovedBody385_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody385_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody385_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody385_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody385_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody385_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody385_30 : StackLang.HolProg 64 :=
.seq RemovedBody385_28 RemovedBody385_29

def RemovedBody385_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody385_32 : StackLang.HolProg 64 :=
.seq RemovedBody385_30 RemovedBody385_31

def RemovedBody385_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody385_34 : StackLang.HolProg 64 :=
.seq RemovedBody385_32 RemovedBody385_33

def RemovedBody385_35 : StackLang.HolProg 64 :=
.seq RemovedBody385_27 RemovedBody385_34

def RemovedBody385_36 : StackLang.HolProg 64 :=
.seq RemovedBody385_26 RemovedBody385_35

def RemovedBody385_37 : StackLang.HolProg 64 :=
.seq RemovedBody385_25 RemovedBody385_36

def RemovedBody385_38 : StackLang.HolProg 64 :=
.seq RemovedBody385_24 RemovedBody385_37

def RemovedBody385_39 : StackLang.HolProg 64 :=
.seq RemovedBody385_23 RemovedBody385_38

def RemovedBody385_40 : StackLang.HolProg 64 :=
.seq RemovedBody385_22 RemovedBody385_39

def RemovedBody385_41 : StackLang.HolProg 64 :=
.seq RemovedBody385_21 RemovedBody385_40

def RemovedBody385_42 : StackLang.HolProg 64 :=
.seq RemovedBody385_20 RemovedBody385_41

def RemovedBody385_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody385_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody385_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody385_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody385_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody385_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody385_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody385_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody385_51 : StackLang.HolProg 64 :=
.seq RemovedBody385_49 RemovedBody385_50

def RemovedBody385_52 : StackLang.HolProg 64 :=
.seq RemovedBody385_48 RemovedBody385_51

def RemovedBody385_53 : StackLang.HolProg 64 :=
.seq RemovedBody385_47 RemovedBody385_52

def RemovedBody385_54 : StackLang.HolProg 64 :=
.seq RemovedBody385_46 RemovedBody385_53

def RemovedBody385_55 : StackLang.HolProg 64 :=
.seq RemovedBody385_45 RemovedBody385_54

def RemovedBody385_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody385_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody385_58 : StackLang.HolProg 64 :=
.seq RemovedBody385_56 RemovedBody385_57

def RemovedBody385_59 : StackLang.HolProg 64 :=
.call (some (RemovedBody385_55, 0, 385, 2)) (Sum.inl 384) (some (RemovedBody385_58, 385, 3))

def RemovedBody385_60 : StackLang.HolProg 64 :=
.seq RemovedBody385_44 RemovedBody385_59

def RemovedBody385_61 : StackLang.HolProg 64 :=
.seq RemovedBody385_43 RemovedBody385_60

def RemovedBody385_62 : StackLang.HolProg 64 :=
.seq RemovedBody385_42 RemovedBody385_61

def RemovedBody385_63 : StackLang.HolProg 64 :=
.seq RemovedBody385_13 RemovedBody385_62

def RemovedBody385_64 : StackLang.HolProg 64 :=
.seq RemovedBody385_10 RemovedBody385_63

def RemovedBody385_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody385_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody385_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 144#64))

def RemovedBody385_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 4294967295#64)

def RemovedBody385_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody385_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody385_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 66#64)

def RemovedBody385_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody385_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody385_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def RemovedBody385_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody385_76 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody385_77 : StackLang.HolProg 64 :=
.seq RemovedBody385_75 RemovedBody385_76

def RemovedBody385_78 : StackLang.HolProg 64 :=
.seq RemovedBody385_74 RemovedBody385_77

def RemovedBody385_79 : StackLang.HolProg 64 :=
.seq RemovedBody385_73 RemovedBody385_78

def RemovedBody385_80 : StackLang.HolProg 64 :=
.seq RemovedBody385_72 RemovedBody385_79

def RemovedBody385_81 : StackLang.HolProg 64 :=
.seq RemovedBody385_71 RemovedBody385_80

def RemovedBody385_82 : StackLang.HolProg 64 :=
.seq RemovedBody385_70 RemovedBody385_81

def RemovedBody385_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody385_84 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) RemovedBody385_82 RemovedBody385_83

def RemovedBody385_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody385_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody385_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody385_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody385_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody385_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 60#64)

def RemovedBody385_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody385_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody385_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def RemovedBody385_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody385_95 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody385_96 : StackLang.HolProg 64 :=
.seq RemovedBody385_94 RemovedBody385_95

def RemovedBody385_97 : StackLang.HolProg 64 :=
.seq RemovedBody385_93 RemovedBody385_96

def RemovedBody385_98 : StackLang.HolProg 64 :=
.seq RemovedBody385_92 RemovedBody385_97

def RemovedBody385_99 : StackLang.HolProg 64 :=
.seq RemovedBody385_91 RemovedBody385_98

def RemovedBody385_100 : StackLang.HolProg 64 :=
.seq RemovedBody385_90 RemovedBody385_99

def RemovedBody385_101 : StackLang.HolProg 64 :=
.seq RemovedBody385_89 RemovedBody385_100

def RemovedBody385_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody385_103 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody385_101 RemovedBody385_102

def RemovedBody385_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody385_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody385_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody385_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody385_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 61#64)

def RemovedBody385_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody385_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody385_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def RemovedBody385_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody385_113 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody385_114 : StackLang.HolProg 64 :=
.seq RemovedBody385_112 RemovedBody385_113

def RemovedBody385_115 : StackLang.HolProg 64 :=
.seq RemovedBody385_111 RemovedBody385_114

def RemovedBody385_116 : StackLang.HolProg 64 :=
.seq RemovedBody385_110 RemovedBody385_115

def RemovedBody385_117 : StackLang.HolProg 64 :=
.seq RemovedBody385_109 RemovedBody385_116

def RemovedBody385_118 : StackLang.HolProg 64 :=
.seq RemovedBody385_108 RemovedBody385_117

def RemovedBody385_119 : StackLang.HolProg 64 :=
.seq RemovedBody385_107 RemovedBody385_118

def RemovedBody385_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody385_121 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) RemovedBody385_119 RemovedBody385_120

def RemovedBody385_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody385_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody385_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody385_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 152#64))

def RemovedBody385_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody385_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody385_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 131072#64)

def RemovedBody385_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody385_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 200#64))

def RemovedBody385_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody385_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 62#64)

def RemovedBody385_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody385_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody385_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def RemovedBody385_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody385_137 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody385_138 : StackLang.HolProg 64 :=
.seq RemovedBody385_136 RemovedBody385_137

def RemovedBody385_139 : StackLang.HolProg 64 :=
.seq RemovedBody385_135 RemovedBody385_138

def RemovedBody385_140 : StackLang.HolProg 64 :=
.seq RemovedBody385_134 RemovedBody385_139

def RemovedBody385_141 : StackLang.HolProg 64 :=
.seq RemovedBody385_133 RemovedBody385_140

def RemovedBody385_142 : StackLang.HolProg 64 :=
.seq RemovedBody385_132 RemovedBody385_141

def RemovedBody385_143 : StackLang.HolProg 64 :=
.seq RemovedBody385_131 RemovedBody385_142

def RemovedBody385_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody385_145 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody385_143 RemovedBody385_144

def RemovedBody385_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody385_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody385_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody385_149 : StackLang.HolProg 64 :=
.seq RemovedBody385_147 RemovedBody385_148

def RemovedBody385_150 : StackLang.HolProg 64 :=
.seq RemovedBody385_146 RemovedBody385_149

def RemovedBody385_151 : StackLang.HolProg 64 :=
.seq RemovedBody385_145 RemovedBody385_150

def RemovedBody385_152 : StackLang.HolProg 64 :=
.seq RemovedBody385_130 RemovedBody385_151

def RemovedBody385_153 : StackLang.HolProg 64 :=
.seq RemovedBody385_129 RemovedBody385_152

def RemovedBody385_154 : StackLang.HolProg 64 :=
.seq RemovedBody385_128 RemovedBody385_153

def RemovedBody385_155 : StackLang.HolProg 64 :=
.seq RemovedBody385_127 RemovedBody385_154

def RemovedBody385_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody385_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody385_158 : StackLang.HolProg 64 :=
.seq RemovedBody385_156 RemovedBody385_157

def RemovedBody385_159 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody385_155 RemovedBody385_158

def RemovedBody385_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody385_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 16777216#64)

def RemovedBody385_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody385_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody385_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 63#64)

def RemovedBody385_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody385_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody385_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def RemovedBody385_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody385_169 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody385_170 : StackLang.HolProg 64 :=
.seq RemovedBody385_168 RemovedBody385_169

def RemovedBody385_171 : StackLang.HolProg 64 :=
.seq RemovedBody385_167 RemovedBody385_170

def RemovedBody385_172 : StackLang.HolProg 64 :=
.seq RemovedBody385_166 RemovedBody385_171

def RemovedBody385_173 : StackLang.HolProg 64 :=
.seq RemovedBody385_165 RemovedBody385_172

def RemovedBody385_174 : StackLang.HolProg 64 :=
.seq RemovedBody385_164 RemovedBody385_173

def RemovedBody385_175 : StackLang.HolProg 64 :=
.seq RemovedBody385_163 RemovedBody385_174

def RemovedBody385_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody385_177 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody385_175 RemovedBody385_176

def RemovedBody385_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody385_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody385_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 16777216#64)

def RemovedBody385_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody385_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody385_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 64#64)

def RemovedBody385_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody385_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody385_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def RemovedBody385_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody385_188 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody385_189 : StackLang.HolProg 64 :=
.seq RemovedBody385_187 RemovedBody385_188

def RemovedBody385_190 : StackLang.HolProg 64 :=
.seq RemovedBody385_186 RemovedBody385_189

def RemovedBody385_191 : StackLang.HolProg 64 :=
.seq RemovedBody385_185 RemovedBody385_190

def RemovedBody385_192 : StackLang.HolProg 64 :=
.seq RemovedBody385_184 RemovedBody385_191

def RemovedBody385_193 : StackLang.HolProg 64 :=
.seq RemovedBody385_183 RemovedBody385_192

def RemovedBody385_194 : StackLang.HolProg 64 :=
.seq RemovedBody385_182 RemovedBody385_193

def RemovedBody385_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody385_196 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) RemovedBody385_194 RemovedBody385_195

def RemovedBody385_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody385_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody385_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody385_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 16#64))

def RemovedBody385_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody385_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 24#64))

def RemovedBody385_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody385_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 32#64))

def RemovedBody385_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody385_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 40#64))

def RemovedBody385_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody385_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody385_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody385_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody385_211 : StackLang.HolProg 64 :=
.seq RemovedBody385_209 RemovedBody385_210

def RemovedBody385_212 : StackLang.HolProg 64 :=
.seq RemovedBody385_208 RemovedBody385_211

def RemovedBody385_213 : StackLang.HolProg 64 :=
.seq RemovedBody385_207 RemovedBody385_212

def RemovedBody385_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody385_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1134#64)

def RemovedBody385_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody385_217 : StackLang.HolProg 64 :=
.seq RemovedBody385_215 RemovedBody385_216

def RemovedBody385_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody385_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody385_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody385_221 : StackLang.HolProg 64 :=
.seq RemovedBody385_219 RemovedBody385_220

def RemovedBody385_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody385_223 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody385_221 RemovedBody385_222

def RemovedBody385_224 : StackLang.HolProg 64 :=
.seq RemovedBody385_218 RemovedBody385_223

def RemovedBody385_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody385_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody385_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 385 5

def RemovedBody385_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody385_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody385_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody385_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody385_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody385_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody385_234 : StackLang.HolProg 64 :=
.seq RemovedBody385_232 RemovedBody385_233

def RemovedBody385_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody385_236 : StackLang.HolProg 64 :=
.seq RemovedBody385_234 RemovedBody385_235

def RemovedBody385_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody385_238 : StackLang.HolProg 64 :=
.seq RemovedBody385_236 RemovedBody385_237

def RemovedBody385_239 : StackLang.HolProg 64 :=
.seq RemovedBody385_231 RemovedBody385_238

def RemovedBody385_240 : StackLang.HolProg 64 :=
.seq RemovedBody385_230 RemovedBody385_239

def RemovedBody385_241 : StackLang.HolProg 64 :=
.seq RemovedBody385_229 RemovedBody385_240

def RemovedBody385_242 : StackLang.HolProg 64 :=
.seq RemovedBody385_228 RemovedBody385_241

def RemovedBody385_243 : StackLang.HolProg 64 :=
.seq RemovedBody385_227 RemovedBody385_242

def RemovedBody385_244 : StackLang.HolProg 64 :=
.seq RemovedBody385_226 RemovedBody385_243

def RemovedBody385_245 : StackLang.HolProg 64 :=
.seq RemovedBody385_225 RemovedBody385_244

def RemovedBody385_246 : StackLang.HolProg 64 :=
.seq RemovedBody385_224 RemovedBody385_245

def RemovedBody385_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody385_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody385_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody385_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody385_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody385_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody385_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody385_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody385_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody385_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody385_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody385_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody385_259 : StackLang.HolProg 64 :=
.seq RemovedBody385_257 RemovedBody385_258

def RemovedBody385_260 : StackLang.HolProg 64 :=
.seq RemovedBody385_256 RemovedBody385_259

def RemovedBody385_261 : StackLang.HolProg 64 :=
.seq RemovedBody385_255 RemovedBody385_260

def RemovedBody385_262 : StackLang.HolProg 64 :=
.seq RemovedBody385_254 RemovedBody385_261

def RemovedBody385_263 : StackLang.HolProg 64 :=
.seq RemovedBody385_253 RemovedBody385_262

def RemovedBody385_264 : StackLang.HolProg 64 :=
.seq RemovedBody385_252 RemovedBody385_263

def RemovedBody385_265 : StackLang.HolProg 64 :=
.seq RemovedBody385_251 RemovedBody385_264

def RemovedBody385_266 : StackLang.HolProg 64 :=
.seq RemovedBody385_250 RemovedBody385_265

def RemovedBody385_267 : StackLang.HolProg 64 :=
.seq RemovedBody385_249 RemovedBody385_266

def RemovedBody385_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody385_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody385_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody385_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody385_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody385_273 : StackLang.HolProg 64 :=
.seq RemovedBody385_271 RemovedBody385_272

def RemovedBody385_274 : StackLang.HolProg 64 :=
.seq RemovedBody385_270 RemovedBody385_273

def RemovedBody385_275 : StackLang.HolProg 64 :=
.seq RemovedBody385_269 RemovedBody385_274

def RemovedBody385_276 : StackLang.HolProg 64 :=
.seq RemovedBody385_268 RemovedBody385_275

def RemovedBody385_277 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody385_278 : StackLang.HolProg 64 :=
.seq RemovedBody385_276 RemovedBody385_277

def RemovedBody385_279 : StackLang.HolProg 64 :=
.call (some (RemovedBody385_267, 0, 385, 4)) (Sum.inl 101) (some (RemovedBody385_278, 385, 5))

def RemovedBody385_280 : StackLang.HolProg 64 :=
.seq RemovedBody385_248 RemovedBody385_279

def RemovedBody385_281 : StackLang.HolProg 64 :=
.seq RemovedBody385_247 RemovedBody385_280

def RemovedBody385_282 : StackLang.HolProg 64 :=
.seq RemovedBody385_246 RemovedBody385_281

def RemovedBody385_283 : StackLang.HolProg 64 :=
.seq RemovedBody385_217 RemovedBody385_282

def RemovedBody385_284 : StackLang.HolProg 64 :=
.seq RemovedBody385_214 RemovedBody385_283

def RemovedBody385_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody385_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody385_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody385_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody385_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 65#64)

def RemovedBody385_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody385_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody385_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def RemovedBody385_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody385_294 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody385_295 : StackLang.HolProg 64 :=
.seq RemovedBody385_293 RemovedBody385_294

def RemovedBody385_296 : StackLang.HolProg 64 :=
.seq RemovedBody385_292 RemovedBody385_295

def RemovedBody385_297 : StackLang.HolProg 64 :=
.seq RemovedBody385_291 RemovedBody385_296

def RemovedBody385_298 : StackLang.HolProg 64 :=
.seq RemovedBody385_290 RemovedBody385_297

def RemovedBody385_299 : StackLang.HolProg 64 :=
.seq RemovedBody385_289 RemovedBody385_298

def RemovedBody385_300 : StackLang.HolProg 64 :=
.seq RemovedBody385_288 RemovedBody385_299

def RemovedBody385_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody385_302 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody385_300 RemovedBody385_301

def RemovedBody385_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody385_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody385_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody385_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 18446744073709551615#64)

def RemovedBody385_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody385_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 65#64)

def RemovedBody385_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody385_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody385_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def RemovedBody385_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody385_313 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody385_314 : StackLang.HolProg 64 :=
.seq RemovedBody385_312 RemovedBody385_313

def RemovedBody385_315 : StackLang.HolProg 64 :=
.seq RemovedBody385_311 RemovedBody385_314

def RemovedBody385_316 : StackLang.HolProg 64 :=
.seq RemovedBody385_310 RemovedBody385_315

def RemovedBody385_317 : StackLang.HolProg 64 :=
.seq RemovedBody385_309 RemovedBody385_316

def RemovedBody385_318 : StackLang.HolProg 64 :=
.seq RemovedBody385_308 RemovedBody385_317

def RemovedBody385_319 : StackLang.HolProg 64 :=
.seq RemovedBody385_307 RemovedBody385_318

def RemovedBody385_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody385_321 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody385_319 RemovedBody385_320

def RemovedBody385_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody385_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody385_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody385_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody385_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def RemovedBody385_327 : StackLang.HolProg 64 :=
.seq RemovedBody385_325 RemovedBody385_326

def RemovedBody385_328 : StackLang.HolProg 64 :=
.seq RemovedBody385_324 RemovedBody385_327

def RemovedBody385_329 : StackLang.HolProg 64 :=
.seq RemovedBody385_323 RemovedBody385_328

def RemovedBody385_330 : StackLang.HolProg 64 :=
.seq RemovedBody385_322 RemovedBody385_329

def RemovedBody385_331 : StackLang.HolProg 64 :=
.seq RemovedBody385_321 RemovedBody385_330

def RemovedBody385_332 : StackLang.HolProg 64 :=
.seq RemovedBody385_306 RemovedBody385_331

def RemovedBody385_333 : StackLang.HolProg 64 :=
.seq RemovedBody385_305 RemovedBody385_332

def RemovedBody385_334 : StackLang.HolProg 64 :=
.seq RemovedBody385_304 RemovedBody385_333

def RemovedBody385_335 : StackLang.HolProg 64 :=
.seq RemovedBody385_303 RemovedBody385_334

def RemovedBody385_336 : StackLang.HolProg 64 :=
.seq RemovedBody385_302 RemovedBody385_335

def RemovedBody385_337 : StackLang.HolProg 64 :=
.seq RemovedBody385_287 RemovedBody385_336

def RemovedBody385_338 : StackLang.HolProg 64 :=
.seq RemovedBody385_286 RemovedBody385_337

def RemovedBody385_339 : StackLang.HolProg 64 :=
.seq RemovedBody385_285 RemovedBody385_338

def RemovedBody385_340 : StackLang.HolProg 64 :=
.seq RemovedBody385_284 RemovedBody385_339

def RemovedBody385_341 : StackLang.HolProg 64 :=
.seq RemovedBody385_213 RemovedBody385_340

def RemovedBody385_342 : StackLang.HolProg 64 :=
.seq RemovedBody385_206 RemovedBody385_341

def RemovedBody385_343 : StackLang.HolProg 64 :=
.seq RemovedBody385_205 RemovedBody385_342

def RemovedBody385_344 : StackLang.HolProg 64 :=
.seq RemovedBody385_204 RemovedBody385_343

def RemovedBody385_345 : StackLang.HolProg 64 :=
.seq RemovedBody385_203 RemovedBody385_344

def RemovedBody385_346 : StackLang.HolProg 64 :=
.seq RemovedBody385_202 RemovedBody385_345

def RemovedBody385_347 : StackLang.HolProg 64 :=
.seq RemovedBody385_201 RemovedBody385_346

def RemovedBody385_348 : StackLang.HolProg 64 :=
.seq RemovedBody385_200 RemovedBody385_347

def RemovedBody385_349 : StackLang.HolProg 64 :=
.seq RemovedBody385_199 RemovedBody385_348

def RemovedBody385_350 : StackLang.HolProg 64 :=
.seq RemovedBody385_198 RemovedBody385_349

def RemovedBody385_351 : StackLang.HolProg 64 :=
.seq RemovedBody385_197 RemovedBody385_350

def RemovedBody385_352 : StackLang.HolProg 64 :=
.seq RemovedBody385_196 RemovedBody385_351

def RemovedBody385_353 : StackLang.HolProg 64 :=
.seq RemovedBody385_181 RemovedBody385_352

def RemovedBody385_354 : StackLang.HolProg 64 :=
.seq RemovedBody385_180 RemovedBody385_353

def RemovedBody385_355 : StackLang.HolProg 64 :=
.seq RemovedBody385_179 RemovedBody385_354

def RemovedBody385_356 : StackLang.HolProg 64 :=
.seq RemovedBody385_178 RemovedBody385_355

def RemovedBody385_357 : StackLang.HolProg 64 :=
.seq RemovedBody385_177 RemovedBody385_356

def RemovedBody385_358 : StackLang.HolProg 64 :=
.seq RemovedBody385_162 RemovedBody385_357

def RemovedBody385_359 : StackLang.HolProg 64 :=
.seq RemovedBody385_161 RemovedBody385_358

def RemovedBody385_360 : StackLang.HolProg 64 :=
.seq RemovedBody385_160 RemovedBody385_359

def RemovedBody385_361 : StackLang.HolProg 64 :=
.seq RemovedBody385_159 RemovedBody385_360

def RemovedBody385_362 : StackLang.HolProg 64 :=
.seq RemovedBody385_126 RemovedBody385_361

def RemovedBody385_363 : StackLang.HolProg 64 :=
.seq RemovedBody385_125 RemovedBody385_362

def RemovedBody385_364 : StackLang.HolProg 64 :=
.seq RemovedBody385_124 RemovedBody385_363

def RemovedBody385_365 : StackLang.HolProg 64 :=
.seq RemovedBody385_123 RemovedBody385_364

def RemovedBody385_366 : StackLang.HolProg 64 :=
.seq RemovedBody385_122 RemovedBody385_365

def RemovedBody385_367 : StackLang.HolProg 64 :=
.seq RemovedBody385_121 RemovedBody385_366

def RemovedBody385_368 : StackLang.HolProg 64 :=
.seq RemovedBody385_106 RemovedBody385_367

def RemovedBody385_369 : StackLang.HolProg 64 :=
.seq RemovedBody385_105 RemovedBody385_368

def RemovedBody385_370 : StackLang.HolProg 64 :=
.seq RemovedBody385_104 RemovedBody385_369

def RemovedBody385_371 : StackLang.HolProg 64 :=
.seq RemovedBody385_103 RemovedBody385_370

def RemovedBody385_372 : StackLang.HolProg 64 :=
.seq RemovedBody385_88 RemovedBody385_371

def RemovedBody385_373 : StackLang.HolProg 64 :=
.seq RemovedBody385_87 RemovedBody385_372

def RemovedBody385_374 : StackLang.HolProg 64 :=
.seq RemovedBody385_86 RemovedBody385_373

def RemovedBody385_375 : StackLang.HolProg 64 :=
.seq RemovedBody385_85 RemovedBody385_374

def RemovedBody385_376 : StackLang.HolProg 64 :=
.seq RemovedBody385_84 RemovedBody385_375

def RemovedBody385_377 : StackLang.HolProg 64 :=
.seq RemovedBody385_69 RemovedBody385_376

def RemovedBody385_378 : StackLang.HolProg 64 :=
.seq RemovedBody385_68 RemovedBody385_377

def RemovedBody385_379 : StackLang.HolProg 64 :=
.seq RemovedBody385_67 RemovedBody385_378

def RemovedBody385_380 : StackLang.HolProg 64 :=
.seq RemovedBody385_66 RemovedBody385_379

def RemovedBody385_381 : StackLang.HolProg 64 :=
.seq RemovedBody385_65 RemovedBody385_380

def RemovedBody385_382 : StackLang.HolProg 64 :=
.seq RemovedBody385_64 RemovedBody385_381

def RemovedBody385_383 : StackLang.HolProg 64 :=
.seq RemovedBody385_9 RemovedBody385_382

def RemovedBody385_384 : StackLang.HolProg 64 :=
.seq RemovedBody385_6 RemovedBody385_383

def Removed385 : Nat × StackLang.HolProg 64 := (385, RemovedBody385_384)
theorem Removed385_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc385 = Removed385 := by
  kernel_rfl
#print axioms Removed385_eq
end InitECandidate.Proofs.BackendStages
