import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc327
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody327_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody327_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody327_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody327_3 : StackLang.HolProg 64 :=
.seq RemovedBody327_1 RemovedBody327_2

def RemovedBody327_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody327_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody327_3 RemovedBody327_4

def RemovedBody327_6 : StackLang.HolProg 64 :=
.seq RemovedBody327_0 RemovedBody327_5

def RemovedBody327_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody327_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody327_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody327_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody327_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody327_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody327_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody327_14 : StackLang.HolProg 64 :=
.seq RemovedBody327_12 RemovedBody327_13

def RemovedBody327_15 : StackLang.HolProg 64 :=
.seq RemovedBody327_11 RemovedBody327_14

def RemovedBody327_16 : StackLang.HolProg 64 :=
.seq RemovedBody327_10 RemovedBody327_15

def RemovedBody327_17 : StackLang.HolProg 64 :=
.seq RemovedBody327_9 RemovedBody327_16

def RemovedBody327_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody327_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody327_17 RemovedBody327_18

def RemovedBody327_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody327_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody327_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody327_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def RemovedBody327_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody327_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody327_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 33#64)

def RemovedBody327_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody327_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody327_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody327_30 : StackLang.HolProg 64 :=
.seq RemovedBody327_28 RemovedBody327_29

def RemovedBody327_31 : StackLang.HolProg 64 :=
.seq RemovedBody327_27 RemovedBody327_30

def RemovedBody327_32 : StackLang.HolProg 64 :=
.seq RemovedBody327_26 RemovedBody327_31

def RemovedBody327_33 : StackLang.HolProg 64 :=
.seq RemovedBody327_25 RemovedBody327_32

def RemovedBody327_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody327_35 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) RemovedBody327_33 RemovedBody327_34

def RemovedBody327_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody327_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody327_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody327_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 8#64))

def RemovedBody327_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody327_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody327_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 13#64)

def RemovedBody327_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody327_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody327_45 : StackLang.HolProg 64 :=
.seq RemovedBody327_43 RemovedBody327_44

def RemovedBody327_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody327_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 925#64)

def RemovedBody327_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody327_49 : StackLang.HolProg 64 :=
.seq RemovedBody327_47 RemovedBody327_48

def RemovedBody327_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody327_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody327_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody327_53 : StackLang.HolProg 64 :=
.seq RemovedBody327_51 RemovedBody327_52

def RemovedBody327_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody327_55 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody327_53 RemovedBody327_54

def RemovedBody327_56 : StackLang.HolProg 64 :=
.seq RemovedBody327_50 RemovedBody327_55

def RemovedBody327_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody327_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody327_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 327 3

def RemovedBody327_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody327_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody327_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody327_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody327_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody327_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody327_66 : StackLang.HolProg 64 :=
.seq RemovedBody327_64 RemovedBody327_65

def RemovedBody327_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody327_68 : StackLang.HolProg 64 :=
.seq RemovedBody327_66 RemovedBody327_67

def RemovedBody327_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody327_70 : StackLang.HolProg 64 :=
.seq RemovedBody327_68 RemovedBody327_69

def RemovedBody327_71 : StackLang.HolProg 64 :=
.seq RemovedBody327_63 RemovedBody327_70

def RemovedBody327_72 : StackLang.HolProg 64 :=
.seq RemovedBody327_62 RemovedBody327_71

def RemovedBody327_73 : StackLang.HolProg 64 :=
.seq RemovedBody327_61 RemovedBody327_72

def RemovedBody327_74 : StackLang.HolProg 64 :=
.seq RemovedBody327_60 RemovedBody327_73

def RemovedBody327_75 : StackLang.HolProg 64 :=
.seq RemovedBody327_59 RemovedBody327_74

def RemovedBody327_76 : StackLang.HolProg 64 :=
.seq RemovedBody327_58 RemovedBody327_75

def RemovedBody327_77 : StackLang.HolProg 64 :=
.seq RemovedBody327_57 RemovedBody327_76

def RemovedBody327_78 : StackLang.HolProg 64 :=
.seq RemovedBody327_56 RemovedBody327_77

def RemovedBody327_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody327_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody327_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody327_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody327_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody327_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody327_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody327_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody327_87 : StackLang.HolProg 64 :=
.seq RemovedBody327_85 RemovedBody327_86

def RemovedBody327_88 : StackLang.HolProg 64 :=
.seq RemovedBody327_84 RemovedBody327_87

def RemovedBody327_89 : StackLang.HolProg 64 :=
.seq RemovedBody327_83 RemovedBody327_88

def RemovedBody327_90 : StackLang.HolProg 64 :=
.seq RemovedBody327_82 RemovedBody327_89

def RemovedBody327_91 : StackLang.HolProg 64 :=
.seq RemovedBody327_81 RemovedBody327_90

def RemovedBody327_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody327_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody327_94 : StackLang.HolProg 64 :=
.seq RemovedBody327_92 RemovedBody327_93

def RemovedBody327_95 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody327_96 : StackLang.HolProg 64 :=
.seq RemovedBody327_94 RemovedBody327_95

def RemovedBody327_97 : StackLang.HolProg 64 :=
.call (some (RemovedBody327_91, 0, 327, 2)) (Sum.inl 286) (some (RemovedBody327_96, 327, 3))

def RemovedBody327_98 : StackLang.HolProg 64 :=
.seq RemovedBody327_80 RemovedBody327_97

def RemovedBody327_99 : StackLang.HolProg 64 :=
.seq RemovedBody327_79 RemovedBody327_98

def RemovedBody327_100 : StackLang.HolProg 64 :=
.seq RemovedBody327_78 RemovedBody327_99

def RemovedBody327_101 : StackLang.HolProg 64 :=
.seq RemovedBody327_49 RemovedBody327_100

def RemovedBody327_102 : StackLang.HolProg 64 :=
.seq RemovedBody327_46 RemovedBody327_101

def RemovedBody327_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody327_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody327_105 : StackLang.HolProg 64 :=
.seq RemovedBody327_103 RemovedBody327_104

def RemovedBody327_106 : StackLang.HolProg 64 :=
.seq RemovedBody327_102 RemovedBody327_105

def RemovedBody327_107 : StackLang.HolProg 64 :=
.seq RemovedBody327_45 RemovedBody327_106

def RemovedBody327_108 : StackLang.HolProg 64 :=
.seq RemovedBody327_42 RemovedBody327_107

def RemovedBody327_109 : StackLang.HolProg 64 :=
.seq RemovedBody327_41 RemovedBody327_108

def RemovedBody327_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody327_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody327_112 : StackLang.HolProg 64 :=
.seq RemovedBody327_110 RemovedBody327_111

def RemovedBody327_113 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) RemovedBody327_109 RemovedBody327_112

def RemovedBody327_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody327_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody327_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 16#64))

def RemovedBody327_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody327_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 32#64)

def RemovedBody327_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody327_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody327_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody327_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody327_123 : StackLang.HolProg 64 :=
.seq RemovedBody327_121 RemovedBody327_122

def RemovedBody327_124 : StackLang.HolProg 64 :=
.seq RemovedBody327_120 RemovedBody327_123

def RemovedBody327_125 : StackLang.HolProg 64 :=
.seq RemovedBody327_119 RemovedBody327_124

def RemovedBody327_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody327_127 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody327_125 RemovedBody327_126

def RemovedBody327_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody327_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody327_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 33#64)

def RemovedBody327_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody327_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody327_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody327_134 : StackLang.HolProg 64 :=
.seq RemovedBody327_132 RemovedBody327_133

def RemovedBody327_135 : StackLang.HolProg 64 :=
.seq RemovedBody327_131 RemovedBody327_134

def RemovedBody327_136 : StackLang.HolProg 64 :=
.seq RemovedBody327_130 RemovedBody327_135

def RemovedBody327_137 : StackLang.HolProg 64 :=
.seq RemovedBody327_129 RemovedBody327_136

def RemovedBody327_138 : StackLang.HolProg 64 :=
.seq RemovedBody327_128 RemovedBody327_137

def RemovedBody327_139 : StackLang.HolProg 64 :=
.seq RemovedBody327_127 RemovedBody327_138

def RemovedBody327_140 : StackLang.HolProg 64 :=
.seq RemovedBody327_118 RemovedBody327_139

def RemovedBody327_141 : StackLang.HolProg 64 :=
.seq RemovedBody327_117 RemovedBody327_140

def RemovedBody327_142 : StackLang.HolProg 64 :=
.seq RemovedBody327_116 RemovedBody327_141

def RemovedBody327_143 : StackLang.HolProg 64 :=
.seq RemovedBody327_115 RemovedBody327_142

def RemovedBody327_144 : StackLang.HolProg 64 :=
.seq RemovedBody327_114 RemovedBody327_143

def RemovedBody327_145 : StackLang.HolProg 64 :=
.seq RemovedBody327_113 RemovedBody327_144

def RemovedBody327_146 : StackLang.HolProg 64 :=
.seq RemovedBody327_40 RemovedBody327_145

def RemovedBody327_147 : StackLang.HolProg 64 :=
.seq RemovedBody327_39 RemovedBody327_146

def RemovedBody327_148 : StackLang.HolProg 64 :=
.seq RemovedBody327_38 RemovedBody327_147

def RemovedBody327_149 : StackLang.HolProg 64 :=
.seq RemovedBody327_37 RemovedBody327_148

def RemovedBody327_150 : StackLang.HolProg 64 :=
.seq RemovedBody327_36 RemovedBody327_149

def RemovedBody327_151 : StackLang.HolProg 64 :=
.seq RemovedBody327_35 RemovedBody327_150

def RemovedBody327_152 : StackLang.HolProg 64 :=
.seq RemovedBody327_24 RemovedBody327_151

def RemovedBody327_153 : StackLang.HolProg 64 :=
.seq RemovedBody327_23 RemovedBody327_152

def RemovedBody327_154 : StackLang.HolProg 64 :=
.seq RemovedBody327_22 RemovedBody327_153

def RemovedBody327_155 : StackLang.HolProg 64 :=
.seq RemovedBody327_21 RemovedBody327_154

def RemovedBody327_156 : StackLang.HolProg 64 :=
.seq RemovedBody327_20 RemovedBody327_155

def RemovedBody327_157 : StackLang.HolProg 64 :=
.seq RemovedBody327_19 RemovedBody327_156

def RemovedBody327_158 : StackLang.HolProg 64 :=
.seq RemovedBody327_8 RemovedBody327_157

def RemovedBody327_159 : StackLang.HolProg 64 :=
.seq RemovedBody327_7 RemovedBody327_158

def RemovedBody327_160 : StackLang.HolProg 64 :=
.seq RemovedBody327_6 RemovedBody327_159

def Removed327 : Nat × StackLang.HolProg 64 := (327, RemovedBody327_160)
theorem Removed327_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc327 = Removed327 := by
  kernel_rfl
#print axioms Removed327_eq
end InitECandidate.Proofs.BackendStages
