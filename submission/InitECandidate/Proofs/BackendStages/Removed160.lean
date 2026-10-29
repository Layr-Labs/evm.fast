import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc160
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody160_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody160_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody160_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody160_3 : StackLang.HolProg 64 :=
.seq RemovedBody160_1 RemovedBody160_2

def RemovedBody160_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody160_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody160_3 RemovedBody160_4

def RemovedBody160_6 : StackLang.HolProg 64 :=
.seq RemovedBody160_0 RemovedBody160_5

def RemovedBody160_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody160_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1#64)

def RemovedBody160_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody160_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody160_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 1#64)

def RemovedBody160_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody160_13 : StackLang.HolProg 64 :=
.seq RemovedBody160_11 RemovedBody160_12

def RemovedBody160_14 : StackLang.HolProg 64 :=
.seq RemovedBody160_10 RemovedBody160_13

def RemovedBody160_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody160_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody160_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody160_18 : StackLang.HolProg 64 :=
.seq RemovedBody160_16 RemovedBody160_17

def RemovedBody160_19 : StackLang.HolProg 64 :=
.seq RemovedBody160_15 RemovedBody160_18

def RemovedBody160_20 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody160_14 RemovedBody160_19

def RemovedBody160_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody160_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody160_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def RemovedBody160_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody160_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def RemovedBody160_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody160_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody160_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody160_29 : StackLang.HolProg 64 :=
.seq RemovedBody160_27 RemovedBody160_28

def RemovedBody160_30 : StackLang.HolProg 64 :=
.seq RemovedBody160_26 RemovedBody160_29

def RemovedBody160_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody160_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody160_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody160_34 : StackLang.HolProg 64 :=
.seq RemovedBody160_32 RemovedBody160_33

def RemovedBody160_35 : StackLang.HolProg 64 :=
.seq RemovedBody160_31 RemovedBody160_34

def RemovedBody160_36 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) RemovedBody160_30 RemovedBody160_35

def RemovedBody160_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody160_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody160_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody160_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody160_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody160_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody160_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody160_44 : StackLang.HolProg 64 :=
.seq RemovedBody160_42 RemovedBody160_43

def RemovedBody160_45 : StackLang.HolProg 64 :=
.seq RemovedBody160_41 RemovedBody160_44

def RemovedBody160_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody160_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 147#64)

def RemovedBody160_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody160_49 : StackLang.HolProg 64 :=
.seq RemovedBody160_47 RemovedBody160_48

def RemovedBody160_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody160_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody160_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody160_53 : StackLang.HolProg 64 :=
.seq RemovedBody160_51 RemovedBody160_52

def RemovedBody160_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody160_55 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody160_53 RemovedBody160_54

def RemovedBody160_56 : StackLang.HolProg 64 :=
.seq RemovedBody160_50 RemovedBody160_55

def RemovedBody160_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody160_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody160_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 160 3

def RemovedBody160_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody160_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody160_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody160_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody160_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody160_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody160_66 : StackLang.HolProg 64 :=
.seq RemovedBody160_64 RemovedBody160_65

def RemovedBody160_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody160_68 : StackLang.HolProg 64 :=
.seq RemovedBody160_66 RemovedBody160_67

def RemovedBody160_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody160_70 : StackLang.HolProg 64 :=
.seq RemovedBody160_68 RemovedBody160_69

def RemovedBody160_71 : StackLang.HolProg 64 :=
.seq RemovedBody160_63 RemovedBody160_70

def RemovedBody160_72 : StackLang.HolProg 64 :=
.seq RemovedBody160_62 RemovedBody160_71

def RemovedBody160_73 : StackLang.HolProg 64 :=
.seq RemovedBody160_61 RemovedBody160_72

def RemovedBody160_74 : StackLang.HolProg 64 :=
.seq RemovedBody160_60 RemovedBody160_73

def RemovedBody160_75 : StackLang.HolProg 64 :=
.seq RemovedBody160_59 RemovedBody160_74

def RemovedBody160_76 : StackLang.HolProg 64 :=
.seq RemovedBody160_58 RemovedBody160_75

def RemovedBody160_77 : StackLang.HolProg 64 :=
.seq RemovedBody160_57 RemovedBody160_76

def RemovedBody160_78 : StackLang.HolProg 64 :=
.seq RemovedBody160_56 RemovedBody160_77

def RemovedBody160_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody160_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody160_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody160_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody160_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody160_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody160_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody160_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody160_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody160_88 : StackLang.HolProg 64 :=
.seq RemovedBody160_86 RemovedBody160_87

def RemovedBody160_89 : StackLang.HolProg 64 :=
.seq RemovedBody160_85 RemovedBody160_88

def RemovedBody160_90 : StackLang.HolProg 64 :=
.seq RemovedBody160_84 RemovedBody160_89

def RemovedBody160_91 : StackLang.HolProg 64 :=
.seq RemovedBody160_83 RemovedBody160_90

def RemovedBody160_92 : StackLang.HolProg 64 :=
.seq RemovedBody160_82 RemovedBody160_91

def RemovedBody160_93 : StackLang.HolProg 64 :=
.seq RemovedBody160_81 RemovedBody160_92

def RemovedBody160_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody160_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody160_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody160_97 : StackLang.HolProg 64 :=
.seq RemovedBody160_95 RemovedBody160_96

def RemovedBody160_98 : StackLang.HolProg 64 :=
.seq RemovedBody160_94 RemovedBody160_97

def RemovedBody160_99 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody160_100 : StackLang.HolProg 64 :=
.seq RemovedBody160_98 RemovedBody160_99

def RemovedBody160_101 : StackLang.HolProg 64 :=
.call (some (RemovedBody160_93, 0, 160, 2)) (Sum.inl 159) (some (RemovedBody160_100, 160, 3))

def RemovedBody160_102 : StackLang.HolProg 64 :=
.seq RemovedBody160_80 RemovedBody160_101

def RemovedBody160_103 : StackLang.HolProg 64 :=
.seq RemovedBody160_79 RemovedBody160_102

def RemovedBody160_104 : StackLang.HolProg 64 :=
.seq RemovedBody160_78 RemovedBody160_103

def RemovedBody160_105 : StackLang.HolProg 64 :=
.seq RemovedBody160_49 RemovedBody160_104

def RemovedBody160_106 : StackLang.HolProg 64 :=
.seq RemovedBody160_46 RemovedBody160_105

def RemovedBody160_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody160_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody160_109 : StackLang.HolProg 64 :=
.seq RemovedBody160_107 RemovedBody160_108

def RemovedBody160_110 : StackLang.HolProg 64 :=
.seq RemovedBody160_106 RemovedBody160_109

def RemovedBody160_111 : StackLang.HolProg 64 :=
.seq RemovedBody160_45 RemovedBody160_110

def RemovedBody160_112 : StackLang.HolProg 64 :=
.seq RemovedBody160_40 RemovedBody160_111

def RemovedBody160_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody160_114 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 0#64) RemovedBody160_112 RemovedBody160_113

def RemovedBody160_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody160_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody160_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody160_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody160_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody160_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody160_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody160_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody160_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody160_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def RemovedBody160_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody160_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody160_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody160_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody160_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody160_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody160_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody160_132 : StackLang.HolProg 64 :=
.seq RemovedBody160_130 RemovedBody160_131

def RemovedBody160_133 : StackLang.HolProg 64 :=
.seq RemovedBody160_129 RemovedBody160_132

def RemovedBody160_134 : StackLang.HolProg 64 :=
.seq RemovedBody160_128 RemovedBody160_133

def RemovedBody160_135 : StackLang.HolProg 64 :=
.seq RemovedBody160_127 RemovedBody160_134

def RemovedBody160_136 : StackLang.HolProg 64 :=
.seq RemovedBody160_126 RemovedBody160_135

def RemovedBody160_137 : StackLang.HolProg 64 :=
.seq RemovedBody160_125 RemovedBody160_136

def RemovedBody160_138 : StackLang.HolProg 64 :=
.seq RemovedBody160_124 RemovedBody160_137

def RemovedBody160_139 : StackLang.HolProg 64 :=
.seq RemovedBody160_123 RemovedBody160_138

def RemovedBody160_140 : StackLang.HolProg 64 :=
.seq RemovedBody160_122 RemovedBody160_139

def RemovedBody160_141 : StackLang.HolProg 64 :=
.seq RemovedBody160_121 RemovedBody160_140

def RemovedBody160_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody160_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody160_144 : StackLang.HolProg 64 :=
.seq RemovedBody160_142 RemovedBody160_143

def RemovedBody160_145 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody160_141 RemovedBody160_144

def RemovedBody160_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody160_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody160_148 : StackLang.HolProg 64 :=
.seq RemovedBody160_146 RemovedBody160_147

def RemovedBody160_149 : StackLang.HolProg 64 :=
.seq RemovedBody160_145 RemovedBody160_148

def RemovedBody160_150 : StackLang.HolProg 64 :=
.seq RemovedBody160_120 RemovedBody160_149

def RemovedBody160_151 : StackLang.HolProg 64 :=
.loop RemovedBody160_150

def RemovedBody160_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody160_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody160_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody160_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody160_156 : StackLang.HolProg 64 :=
.seq RemovedBody160_154 RemovedBody160_155

def RemovedBody160_157 : StackLang.HolProg 64 :=
.seq RemovedBody160_153 RemovedBody160_156

def RemovedBody160_158 : StackLang.HolProg 64 :=
.seq RemovedBody160_152 RemovedBody160_157

def RemovedBody160_159 : StackLang.HolProg 64 :=
.seq RemovedBody160_151 RemovedBody160_158

def RemovedBody160_160 : StackLang.HolProg 64 :=
.seq RemovedBody160_119 RemovedBody160_159

def RemovedBody160_161 : StackLang.HolProg 64 :=
.seq RemovedBody160_118 RemovedBody160_160

def RemovedBody160_162 : StackLang.HolProg 64 :=
.seq RemovedBody160_117 RemovedBody160_161

def RemovedBody160_163 : StackLang.HolProg 64 :=
.seq RemovedBody160_116 RemovedBody160_162

def RemovedBody160_164 : StackLang.HolProg 64 :=
.seq RemovedBody160_115 RemovedBody160_163

def RemovedBody160_165 : StackLang.HolProg 64 :=
.seq RemovedBody160_114 RemovedBody160_164

def RemovedBody160_166 : StackLang.HolProg 64 :=
.seq RemovedBody160_39 RemovedBody160_165

def RemovedBody160_167 : StackLang.HolProg 64 :=
.seq RemovedBody160_38 RemovedBody160_166

def RemovedBody160_168 : StackLang.HolProg 64 :=
.seq RemovedBody160_37 RemovedBody160_167

def RemovedBody160_169 : StackLang.HolProg 64 :=
.seq RemovedBody160_36 RemovedBody160_168

def RemovedBody160_170 : StackLang.HolProg 64 :=
.seq RemovedBody160_25 RemovedBody160_169

def RemovedBody160_171 : StackLang.HolProg 64 :=
.seq RemovedBody160_24 RemovedBody160_170

def RemovedBody160_172 : StackLang.HolProg 64 :=
.seq RemovedBody160_23 RemovedBody160_171

def RemovedBody160_173 : StackLang.HolProg 64 :=
.seq RemovedBody160_22 RemovedBody160_172

def RemovedBody160_174 : StackLang.HolProg 64 :=
.seq RemovedBody160_21 RemovedBody160_173

def RemovedBody160_175 : StackLang.HolProg 64 :=
.seq RemovedBody160_20 RemovedBody160_174

def RemovedBody160_176 : StackLang.HolProg 64 :=
.seq RemovedBody160_9 RemovedBody160_175

def RemovedBody160_177 : StackLang.HolProg 64 :=
.seq RemovedBody160_8 RemovedBody160_176

def RemovedBody160_178 : StackLang.HolProg 64 :=
.seq RemovedBody160_7 RemovedBody160_177

def RemovedBody160_179 : StackLang.HolProg 64 :=
.seq RemovedBody160_6 RemovedBody160_178

def Removed160 : Nat × StackLang.HolProg 64 := (160, RemovedBody160_179)
theorem Removed160_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc160 = Removed160 := by
  kernel_rfl
#print axioms Removed160_eq
end InitECandidate.Proofs.BackendStages
