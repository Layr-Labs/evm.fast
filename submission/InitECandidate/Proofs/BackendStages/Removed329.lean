import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc329
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody329_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody329_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody329_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody329_3 : StackLang.HolProg 64 :=
.seq RemovedBody329_1 RemovedBody329_2

def RemovedBody329_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody329_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody329_3 RemovedBody329_4

def RemovedBody329_6 : StackLang.HolProg 64 :=
.seq RemovedBody329_0 RemovedBody329_5

def RemovedBody329_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody329_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody329_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody329_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody329_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 128#64)

def RemovedBody329_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def RemovedBody329_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody329_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody329_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody329_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody329_17 : StackLang.HolProg 64 :=
.seq RemovedBody329_15 RemovedBody329_16

def RemovedBody329_18 : StackLang.HolProg 64 :=
.seq RemovedBody329_14 RemovedBody329_17

def RemovedBody329_19 : StackLang.HolProg 64 :=
.seq RemovedBody329_13 RemovedBody329_18

def RemovedBody329_20 : StackLang.HolProg 64 :=
.seq RemovedBody329_12 RemovedBody329_19

def RemovedBody329_21 : StackLang.HolProg 64 :=
.seq RemovedBody329_11 RemovedBody329_20

def RemovedBody329_22 : StackLang.HolProg 64 :=
.seq RemovedBody329_10 RemovedBody329_21

def RemovedBody329_23 : StackLang.HolProg 64 :=
.seq RemovedBody329_9 RemovedBody329_22

def RemovedBody329_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody329_25 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody329_23 RemovedBody329_24

def RemovedBody329_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody329_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody329_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody329_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def RemovedBody329_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody329_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody329_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody329_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 160#64)

def RemovedBody329_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody329_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody329_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody329_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody329_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 24#64))

def RemovedBody329_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 32#64)

def RemovedBody329_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody329_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody329_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 929#64)

def RemovedBody329_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody329_44 : StackLang.HolProg 64 :=
.seq RemovedBody329_42 RemovedBody329_43

def RemovedBody329_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody329_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody329_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody329_48 : StackLang.HolProg 64 :=
.seq RemovedBody329_46 RemovedBody329_47

def RemovedBody329_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody329_50 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody329_48 RemovedBody329_49

def RemovedBody329_51 : StackLang.HolProg 64 :=
.seq RemovedBody329_45 RemovedBody329_50

def RemovedBody329_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody329_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody329_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 329 3

def RemovedBody329_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody329_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody329_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody329_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody329_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody329_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody329_61 : StackLang.HolProg 64 :=
.seq RemovedBody329_59 RemovedBody329_60

def RemovedBody329_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody329_63 : StackLang.HolProg 64 :=
.seq RemovedBody329_61 RemovedBody329_62

def RemovedBody329_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody329_65 : StackLang.HolProg 64 :=
.seq RemovedBody329_63 RemovedBody329_64

def RemovedBody329_66 : StackLang.HolProg 64 :=
.seq RemovedBody329_58 RemovedBody329_65

def RemovedBody329_67 : StackLang.HolProg 64 :=
.seq RemovedBody329_57 RemovedBody329_66

def RemovedBody329_68 : StackLang.HolProg 64 :=
.seq RemovedBody329_56 RemovedBody329_67

def RemovedBody329_69 : StackLang.HolProg 64 :=
.seq RemovedBody329_55 RemovedBody329_68

def RemovedBody329_70 : StackLang.HolProg 64 :=
.seq RemovedBody329_54 RemovedBody329_69

def RemovedBody329_71 : StackLang.HolProg 64 :=
.seq RemovedBody329_53 RemovedBody329_70

def RemovedBody329_72 : StackLang.HolProg 64 :=
.seq RemovedBody329_52 RemovedBody329_71

def RemovedBody329_73 : StackLang.HolProg 64 :=
.seq RemovedBody329_51 RemovedBody329_72

def RemovedBody329_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody329_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody329_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody329_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody329_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody329_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody329_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody329_81 : StackLang.HolProg 64 :=
.seq RemovedBody329_79 RemovedBody329_80

def RemovedBody329_82 : StackLang.HolProg 64 :=
.seq RemovedBody329_78 RemovedBody329_81

def RemovedBody329_83 : StackLang.HolProg 64 :=
.seq RemovedBody329_77 RemovedBody329_82

def RemovedBody329_84 : StackLang.HolProg 64 :=
.seq RemovedBody329_76 RemovedBody329_83

def RemovedBody329_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody329_86 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody329_87 : StackLang.HolProg 64 :=
.seq RemovedBody329_85 RemovedBody329_86

def RemovedBody329_88 : StackLang.HolProg 64 :=
.call (some (RemovedBody329_84, 0, 329, 2)) (Sum.inl 77) (some (RemovedBody329_87, 329, 3))

def RemovedBody329_89 : StackLang.HolProg 64 :=
.seq RemovedBody329_75 RemovedBody329_88

def RemovedBody329_90 : StackLang.HolProg 64 :=
.seq RemovedBody329_74 RemovedBody329_89

def RemovedBody329_91 : StackLang.HolProg 64 :=
.seq RemovedBody329_73 RemovedBody329_90

def RemovedBody329_92 : StackLang.HolProg 64 :=
.seq RemovedBody329_44 RemovedBody329_91

def RemovedBody329_93 : StackLang.HolProg 64 :=
.seq RemovedBody329_41 RemovedBody329_92

def RemovedBody329_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody329_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 33#64)

def RemovedBody329_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody329_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody329_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody329_99 : StackLang.HolProg 64 :=
.seq RemovedBody329_97 RemovedBody329_98

def RemovedBody329_100 : StackLang.HolProg 64 :=
.seq RemovedBody329_96 RemovedBody329_99

def RemovedBody329_101 : StackLang.HolProg 64 :=
.seq RemovedBody329_95 RemovedBody329_100

def RemovedBody329_102 : StackLang.HolProg 64 :=
.seq RemovedBody329_94 RemovedBody329_101

def RemovedBody329_103 : StackLang.HolProg 64 :=
.seq RemovedBody329_93 RemovedBody329_102

def RemovedBody329_104 : StackLang.HolProg 64 :=
.seq RemovedBody329_40 RemovedBody329_103

def RemovedBody329_105 : StackLang.HolProg 64 :=
.seq RemovedBody329_39 RemovedBody329_104

def RemovedBody329_106 : StackLang.HolProg 64 :=
.seq RemovedBody329_38 RemovedBody329_105

def RemovedBody329_107 : StackLang.HolProg 64 :=
.seq RemovedBody329_37 RemovedBody329_106

def RemovedBody329_108 : StackLang.HolProg 64 :=
.seq RemovedBody329_36 RemovedBody329_107

def RemovedBody329_109 : StackLang.HolProg 64 :=
.seq RemovedBody329_35 RemovedBody329_108

def RemovedBody329_110 : StackLang.HolProg 64 :=
.seq RemovedBody329_34 RemovedBody329_109

def RemovedBody329_111 : StackLang.HolProg 64 :=
.seq RemovedBody329_33 RemovedBody329_110

def RemovedBody329_112 : StackLang.HolProg 64 :=
.seq RemovedBody329_32 RemovedBody329_111

def RemovedBody329_113 : StackLang.HolProg 64 :=
.seq RemovedBody329_31 RemovedBody329_112

def RemovedBody329_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody329_115 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody329_113 RemovedBody329_114

def RemovedBody329_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody329_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody329_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody329_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 8#64))

def RemovedBody329_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody329_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody329_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 13#64)

def RemovedBody329_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody329_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody329_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 930#64)

def RemovedBody329_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody329_127 : StackLang.HolProg 64 :=
.seq RemovedBody329_125 RemovedBody329_126

def RemovedBody329_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody329_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody329_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody329_131 : StackLang.HolProg 64 :=
.seq RemovedBody329_129 RemovedBody329_130

def RemovedBody329_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody329_133 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody329_131 RemovedBody329_132

def RemovedBody329_134 : StackLang.HolProg 64 :=
.seq RemovedBody329_128 RemovedBody329_133

def RemovedBody329_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody329_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody329_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 329 5

def RemovedBody329_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody329_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody329_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody329_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody329_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody329_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody329_144 : StackLang.HolProg 64 :=
.seq RemovedBody329_142 RemovedBody329_143

def RemovedBody329_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody329_146 : StackLang.HolProg 64 :=
.seq RemovedBody329_144 RemovedBody329_145

def RemovedBody329_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody329_148 : StackLang.HolProg 64 :=
.seq RemovedBody329_146 RemovedBody329_147

def RemovedBody329_149 : StackLang.HolProg 64 :=
.seq RemovedBody329_141 RemovedBody329_148

def RemovedBody329_150 : StackLang.HolProg 64 :=
.seq RemovedBody329_140 RemovedBody329_149

def RemovedBody329_151 : StackLang.HolProg 64 :=
.seq RemovedBody329_139 RemovedBody329_150

def RemovedBody329_152 : StackLang.HolProg 64 :=
.seq RemovedBody329_138 RemovedBody329_151

def RemovedBody329_153 : StackLang.HolProg 64 :=
.seq RemovedBody329_137 RemovedBody329_152

def RemovedBody329_154 : StackLang.HolProg 64 :=
.seq RemovedBody329_136 RemovedBody329_153

def RemovedBody329_155 : StackLang.HolProg 64 :=
.seq RemovedBody329_135 RemovedBody329_154

def RemovedBody329_156 : StackLang.HolProg 64 :=
.seq RemovedBody329_134 RemovedBody329_155

def RemovedBody329_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody329_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody329_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody329_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody329_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody329_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody329_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody329_164 : StackLang.HolProg 64 :=
.seq RemovedBody329_162 RemovedBody329_163

def RemovedBody329_165 : StackLang.HolProg 64 :=
.seq RemovedBody329_161 RemovedBody329_164

def RemovedBody329_166 : StackLang.HolProg 64 :=
.seq RemovedBody329_160 RemovedBody329_165

def RemovedBody329_167 : StackLang.HolProg 64 :=
.seq RemovedBody329_159 RemovedBody329_166

def RemovedBody329_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody329_169 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody329_170 : StackLang.HolProg 64 :=
.seq RemovedBody329_168 RemovedBody329_169

def RemovedBody329_171 : StackLang.HolProg 64 :=
.call (some (RemovedBody329_167, 0, 329, 4)) (Sum.inl 286) (some (RemovedBody329_170, 329, 5))

def RemovedBody329_172 : StackLang.HolProg 64 :=
.seq RemovedBody329_158 RemovedBody329_171

def RemovedBody329_173 : StackLang.HolProg 64 :=
.seq RemovedBody329_157 RemovedBody329_172

def RemovedBody329_174 : StackLang.HolProg 64 :=
.seq RemovedBody329_156 RemovedBody329_173

def RemovedBody329_175 : StackLang.HolProg 64 :=
.seq RemovedBody329_127 RemovedBody329_174

def RemovedBody329_176 : StackLang.HolProg 64 :=
.seq RemovedBody329_124 RemovedBody329_175

def RemovedBody329_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody329_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody329_179 : StackLang.HolProg 64 :=
.seq RemovedBody329_177 RemovedBody329_178

def RemovedBody329_180 : StackLang.HolProg 64 :=
.seq RemovedBody329_176 RemovedBody329_179

def RemovedBody329_181 : StackLang.HolProg 64 :=
.seq RemovedBody329_123 RemovedBody329_180

def RemovedBody329_182 : StackLang.HolProg 64 :=
.seq RemovedBody329_122 RemovedBody329_181

def RemovedBody329_183 : StackLang.HolProg 64 :=
.seq RemovedBody329_121 RemovedBody329_182

def RemovedBody329_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody329_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody329_186 : StackLang.HolProg 64 :=
.seq RemovedBody329_184 RemovedBody329_185

def RemovedBody329_187 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody329_183 RemovedBody329_186

def RemovedBody329_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody329_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody329_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 8#64))

def RemovedBody329_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody329_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 16#64))

def RemovedBody329_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody329_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 32#64)

def RemovedBody329_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody329_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody329_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody329_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody329_199 : StackLang.HolProg 64 :=
.seq RemovedBody329_197 RemovedBody329_198

def RemovedBody329_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody329_201 : StackLang.HolProg 64 :=
.seq RemovedBody329_199 RemovedBody329_200

def RemovedBody329_202 : StackLang.HolProg 64 :=
.seq RemovedBody329_196 RemovedBody329_201

def RemovedBody329_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody329_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 931#64)

def RemovedBody329_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody329_206 : StackLang.HolProg 64 :=
.seq RemovedBody329_204 RemovedBody329_205

def RemovedBody329_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody329_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody329_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody329_210 : StackLang.HolProg 64 :=
.seq RemovedBody329_208 RemovedBody329_209

def RemovedBody329_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody329_212 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody329_210 RemovedBody329_211

def RemovedBody329_213 : StackLang.HolProg 64 :=
.seq RemovedBody329_207 RemovedBody329_212

def RemovedBody329_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody329_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody329_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 329 7

def RemovedBody329_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody329_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody329_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody329_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody329_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody329_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody329_223 : StackLang.HolProg 64 :=
.seq RemovedBody329_221 RemovedBody329_222

def RemovedBody329_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody329_225 : StackLang.HolProg 64 :=
.seq RemovedBody329_223 RemovedBody329_224

def RemovedBody329_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody329_227 : StackLang.HolProg 64 :=
.seq RemovedBody329_225 RemovedBody329_226

def RemovedBody329_228 : StackLang.HolProg 64 :=
.seq RemovedBody329_220 RemovedBody329_227

def RemovedBody329_229 : StackLang.HolProg 64 :=
.seq RemovedBody329_219 RemovedBody329_228

def RemovedBody329_230 : StackLang.HolProg 64 :=
.seq RemovedBody329_218 RemovedBody329_229

def RemovedBody329_231 : StackLang.HolProg 64 :=
.seq RemovedBody329_217 RemovedBody329_230

def RemovedBody329_232 : StackLang.HolProg 64 :=
.seq RemovedBody329_216 RemovedBody329_231

def RemovedBody329_233 : StackLang.HolProg 64 :=
.seq RemovedBody329_215 RemovedBody329_232

def RemovedBody329_234 : StackLang.HolProg 64 :=
.seq RemovedBody329_214 RemovedBody329_233

def RemovedBody329_235 : StackLang.HolProg 64 :=
.seq RemovedBody329_213 RemovedBody329_234

def RemovedBody329_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody329_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody329_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody329_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody329_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody329_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody329_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody329_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody329_244 : StackLang.HolProg 64 :=
.seq RemovedBody329_242 RemovedBody329_243

def RemovedBody329_245 : StackLang.HolProg 64 :=
.seq RemovedBody329_241 RemovedBody329_244

def RemovedBody329_246 : StackLang.HolProg 64 :=
.seq RemovedBody329_240 RemovedBody329_245

def RemovedBody329_247 : StackLang.HolProg 64 :=
.seq RemovedBody329_239 RemovedBody329_246

def RemovedBody329_248 : StackLang.HolProg 64 :=
.seq RemovedBody329_238 RemovedBody329_247

def RemovedBody329_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody329_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody329_251 : StackLang.HolProg 64 :=
.seq RemovedBody329_249 RemovedBody329_250

def RemovedBody329_252 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody329_253 : StackLang.HolProg 64 :=
.seq RemovedBody329_251 RemovedBody329_252

def RemovedBody329_254 : StackLang.HolProg 64 :=
.call (some (RemovedBody329_248, 0, 329, 6)) (Sum.inl 77) (some (RemovedBody329_253, 329, 7))

def RemovedBody329_255 : StackLang.HolProg 64 :=
.seq RemovedBody329_237 RemovedBody329_254

def RemovedBody329_256 : StackLang.HolProg 64 :=
.seq RemovedBody329_236 RemovedBody329_255

def RemovedBody329_257 : StackLang.HolProg 64 :=
.seq RemovedBody329_235 RemovedBody329_256

def RemovedBody329_258 : StackLang.HolProg 64 :=
.seq RemovedBody329_206 RemovedBody329_257

def RemovedBody329_259 : StackLang.HolProg 64 :=
.seq RemovedBody329_203 RemovedBody329_258

def RemovedBody329_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody329_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody329_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody329_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody329_264 : StackLang.HolProg 64 :=
.seq RemovedBody329_262 RemovedBody329_263

def RemovedBody329_265 : StackLang.HolProg 64 :=
.seq RemovedBody329_261 RemovedBody329_264

def RemovedBody329_266 : StackLang.HolProg 64 :=
.seq RemovedBody329_260 RemovedBody329_265

def RemovedBody329_267 : StackLang.HolProg 64 :=
.seq RemovedBody329_259 RemovedBody329_266

def RemovedBody329_268 : StackLang.HolProg 64 :=
.seq RemovedBody329_202 RemovedBody329_267

def RemovedBody329_269 : StackLang.HolProg 64 :=
.seq RemovedBody329_195 RemovedBody329_268

def RemovedBody329_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody329_271 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody329_269 RemovedBody329_270

def RemovedBody329_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody329_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody329_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody329_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody329_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 932#64)

def RemovedBody329_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody329_278 : StackLang.HolProg 64 :=
.seq RemovedBody329_276 RemovedBody329_277

def RemovedBody329_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody329_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody329_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody329_282 : StackLang.HolProg 64 :=
.seq RemovedBody329_280 RemovedBody329_281

def RemovedBody329_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody329_284 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody329_282 RemovedBody329_283

def RemovedBody329_285 : StackLang.HolProg 64 :=
.seq RemovedBody329_279 RemovedBody329_284

def RemovedBody329_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody329_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody329_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 329 9

def RemovedBody329_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody329_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody329_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody329_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody329_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody329_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody329_295 : StackLang.HolProg 64 :=
.seq RemovedBody329_293 RemovedBody329_294

def RemovedBody329_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody329_297 : StackLang.HolProg 64 :=
.seq RemovedBody329_295 RemovedBody329_296

def RemovedBody329_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody329_299 : StackLang.HolProg 64 :=
.seq RemovedBody329_297 RemovedBody329_298

def RemovedBody329_300 : StackLang.HolProg 64 :=
.seq RemovedBody329_292 RemovedBody329_299

def RemovedBody329_301 : StackLang.HolProg 64 :=
.seq RemovedBody329_291 RemovedBody329_300

def RemovedBody329_302 : StackLang.HolProg 64 :=
.seq RemovedBody329_290 RemovedBody329_301

def RemovedBody329_303 : StackLang.HolProg 64 :=
.seq RemovedBody329_289 RemovedBody329_302

def RemovedBody329_304 : StackLang.HolProg 64 :=
.seq RemovedBody329_288 RemovedBody329_303

def RemovedBody329_305 : StackLang.HolProg 64 :=
.seq RemovedBody329_287 RemovedBody329_304

def RemovedBody329_306 : StackLang.HolProg 64 :=
.seq RemovedBody329_286 RemovedBody329_305

def RemovedBody329_307 : StackLang.HolProg 64 :=
.seq RemovedBody329_285 RemovedBody329_306

def RemovedBody329_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody329_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody329_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody329_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody329_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody329_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody329_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody329_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody329_316 : StackLang.HolProg 64 :=
.seq RemovedBody329_314 RemovedBody329_315

def RemovedBody329_317 : StackLang.HolProg 64 :=
.seq RemovedBody329_313 RemovedBody329_316

def RemovedBody329_318 : StackLang.HolProg 64 :=
.seq RemovedBody329_312 RemovedBody329_317

def RemovedBody329_319 : StackLang.HolProg 64 :=
.seq RemovedBody329_311 RemovedBody329_318

def RemovedBody329_320 : StackLang.HolProg 64 :=
.seq RemovedBody329_310 RemovedBody329_319

def RemovedBody329_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody329_322 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody329_323 : StackLang.HolProg 64 :=
.seq RemovedBody329_321 RemovedBody329_322

def RemovedBody329_324 : StackLang.HolProg 64 :=
.call (some (RemovedBody329_320, 0, 329, 8)) (Sum.inl 328) (some (RemovedBody329_323, 329, 9))

def RemovedBody329_325 : StackLang.HolProg 64 :=
.seq RemovedBody329_309 RemovedBody329_324

def RemovedBody329_326 : StackLang.HolProg 64 :=
.seq RemovedBody329_308 RemovedBody329_325

def RemovedBody329_327 : StackLang.HolProg 64 :=
.seq RemovedBody329_307 RemovedBody329_326

def RemovedBody329_328 : StackLang.HolProg 64 :=
.seq RemovedBody329_278 RemovedBody329_327

def RemovedBody329_329 : StackLang.HolProg 64 :=
.seq RemovedBody329_275 RemovedBody329_328

def RemovedBody329_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody329_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody329_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 160#64)

def RemovedBody329_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedBody329_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody329_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody329_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody329_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 32#64)

def RemovedBody329_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody329_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody329_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 933#64)

def RemovedBody329_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody329_342 : StackLang.HolProg 64 :=
.seq RemovedBody329_340 RemovedBody329_341

def RemovedBody329_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody329_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody329_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody329_346 : StackLang.HolProg 64 :=
.seq RemovedBody329_344 RemovedBody329_345

def RemovedBody329_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody329_348 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody329_346 RemovedBody329_347

def RemovedBody329_349 : StackLang.HolProg 64 :=
.seq RemovedBody329_343 RemovedBody329_348

def RemovedBody329_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody329_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody329_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 329 11

def RemovedBody329_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody329_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody329_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody329_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody329_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody329_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody329_359 : StackLang.HolProg 64 :=
.seq RemovedBody329_357 RemovedBody329_358

def RemovedBody329_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody329_361 : StackLang.HolProg 64 :=
.seq RemovedBody329_359 RemovedBody329_360

def RemovedBody329_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody329_363 : StackLang.HolProg 64 :=
.seq RemovedBody329_361 RemovedBody329_362

def RemovedBody329_364 : StackLang.HolProg 64 :=
.seq RemovedBody329_356 RemovedBody329_363

def RemovedBody329_365 : StackLang.HolProg 64 :=
.seq RemovedBody329_355 RemovedBody329_364

def RemovedBody329_366 : StackLang.HolProg 64 :=
.seq RemovedBody329_354 RemovedBody329_365

def RemovedBody329_367 : StackLang.HolProg 64 :=
.seq RemovedBody329_353 RemovedBody329_366

def RemovedBody329_368 : StackLang.HolProg 64 :=
.seq RemovedBody329_352 RemovedBody329_367

def RemovedBody329_369 : StackLang.HolProg 64 :=
.seq RemovedBody329_351 RemovedBody329_368

def RemovedBody329_370 : StackLang.HolProg 64 :=
.seq RemovedBody329_350 RemovedBody329_369

def RemovedBody329_371 : StackLang.HolProg 64 :=
.seq RemovedBody329_349 RemovedBody329_370

def RemovedBody329_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody329_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody329_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody329_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody329_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody329_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody329_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody329_379 : StackLang.HolProg 64 :=
.seq RemovedBody329_377 RemovedBody329_378

def RemovedBody329_380 : StackLang.HolProg 64 :=
.seq RemovedBody329_376 RemovedBody329_379

def RemovedBody329_381 : StackLang.HolProg 64 :=
.seq RemovedBody329_375 RemovedBody329_380

def RemovedBody329_382 : StackLang.HolProg 64 :=
.seq RemovedBody329_374 RemovedBody329_381

def RemovedBody329_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody329_384 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody329_385 : StackLang.HolProg 64 :=
.seq RemovedBody329_383 RemovedBody329_384

def RemovedBody329_386 : StackLang.HolProg 64 :=
.call (some (RemovedBody329_382, 0, 329, 10)) (Sum.inl 77) (some (RemovedBody329_385, 329, 11))

def RemovedBody329_387 : StackLang.HolProg 64 :=
.seq RemovedBody329_373 RemovedBody329_386

def RemovedBody329_388 : StackLang.HolProg 64 :=
.seq RemovedBody329_372 RemovedBody329_387

def RemovedBody329_389 : StackLang.HolProg 64 :=
.seq RemovedBody329_371 RemovedBody329_388

def RemovedBody329_390 : StackLang.HolProg 64 :=
.seq RemovedBody329_342 RemovedBody329_389

def RemovedBody329_391 : StackLang.HolProg 64 :=
.seq RemovedBody329_339 RemovedBody329_390

def RemovedBody329_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody329_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 33#64)

def RemovedBody329_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody329_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody329_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody329_397 : StackLang.HolProg 64 :=
.seq RemovedBody329_395 RemovedBody329_396

def RemovedBody329_398 : StackLang.HolProg 64 :=
.seq RemovedBody329_394 RemovedBody329_397

def RemovedBody329_399 : StackLang.HolProg 64 :=
.seq RemovedBody329_393 RemovedBody329_398

def RemovedBody329_400 : StackLang.HolProg 64 :=
.seq RemovedBody329_392 RemovedBody329_399

def RemovedBody329_401 : StackLang.HolProg 64 :=
.seq RemovedBody329_391 RemovedBody329_400

def RemovedBody329_402 : StackLang.HolProg 64 :=
.seq RemovedBody329_338 RemovedBody329_401

def RemovedBody329_403 : StackLang.HolProg 64 :=
.seq RemovedBody329_337 RemovedBody329_402

def RemovedBody329_404 : StackLang.HolProg 64 :=
.seq RemovedBody329_336 RemovedBody329_403

def RemovedBody329_405 : StackLang.HolProg 64 :=
.seq RemovedBody329_335 RemovedBody329_404

def RemovedBody329_406 : StackLang.HolProg 64 :=
.seq RemovedBody329_334 RemovedBody329_405

def RemovedBody329_407 : StackLang.HolProg 64 :=
.seq RemovedBody329_333 RemovedBody329_406

def RemovedBody329_408 : StackLang.HolProg 64 :=
.seq RemovedBody329_332 RemovedBody329_407

def RemovedBody329_409 : StackLang.HolProg 64 :=
.seq RemovedBody329_331 RemovedBody329_408

def RemovedBody329_410 : StackLang.HolProg 64 :=
.seq RemovedBody329_330 RemovedBody329_409

def RemovedBody329_411 : StackLang.HolProg 64 :=
.seq RemovedBody329_329 RemovedBody329_410

def RemovedBody329_412 : StackLang.HolProg 64 :=
.seq RemovedBody329_274 RemovedBody329_411

def RemovedBody329_413 : StackLang.HolProg 64 :=
.seq RemovedBody329_273 RemovedBody329_412

def RemovedBody329_414 : StackLang.HolProg 64 :=
.seq RemovedBody329_272 RemovedBody329_413

def RemovedBody329_415 : StackLang.HolProg 64 :=
.seq RemovedBody329_271 RemovedBody329_414

def RemovedBody329_416 : StackLang.HolProg 64 :=
.seq RemovedBody329_194 RemovedBody329_415

def RemovedBody329_417 : StackLang.HolProg 64 :=
.seq RemovedBody329_193 RemovedBody329_416

def RemovedBody329_418 : StackLang.HolProg 64 :=
.seq RemovedBody329_192 RemovedBody329_417

def RemovedBody329_419 : StackLang.HolProg 64 :=
.seq RemovedBody329_191 RemovedBody329_418

def RemovedBody329_420 : StackLang.HolProg 64 :=
.seq RemovedBody329_190 RemovedBody329_419

def RemovedBody329_421 : StackLang.HolProg 64 :=
.seq RemovedBody329_189 RemovedBody329_420

def RemovedBody329_422 : StackLang.HolProg 64 :=
.seq RemovedBody329_188 RemovedBody329_421

def RemovedBody329_423 : StackLang.HolProg 64 :=
.seq RemovedBody329_187 RemovedBody329_422

def RemovedBody329_424 : StackLang.HolProg 64 :=
.seq RemovedBody329_120 RemovedBody329_423

def RemovedBody329_425 : StackLang.HolProg 64 :=
.seq RemovedBody329_119 RemovedBody329_424

def RemovedBody329_426 : StackLang.HolProg 64 :=
.seq RemovedBody329_118 RemovedBody329_425

def RemovedBody329_427 : StackLang.HolProg 64 :=
.seq RemovedBody329_117 RemovedBody329_426

def RemovedBody329_428 : StackLang.HolProg 64 :=
.seq RemovedBody329_116 RemovedBody329_427

def RemovedBody329_429 : StackLang.HolProg 64 :=
.seq RemovedBody329_115 RemovedBody329_428

def RemovedBody329_430 : StackLang.HolProg 64 :=
.seq RemovedBody329_30 RemovedBody329_429

def RemovedBody329_431 : StackLang.HolProg 64 :=
.seq RemovedBody329_29 RemovedBody329_430

def RemovedBody329_432 : StackLang.HolProg 64 :=
.seq RemovedBody329_28 RemovedBody329_431

def RemovedBody329_433 : StackLang.HolProg 64 :=
.seq RemovedBody329_27 RemovedBody329_432

def RemovedBody329_434 : StackLang.HolProg 64 :=
.seq RemovedBody329_26 RemovedBody329_433

def RemovedBody329_435 : StackLang.HolProg 64 :=
.seq RemovedBody329_25 RemovedBody329_434

def RemovedBody329_436 : StackLang.HolProg 64 :=
.seq RemovedBody329_8 RemovedBody329_435

def RemovedBody329_437 : StackLang.HolProg 64 :=
.seq RemovedBody329_7 RemovedBody329_436

def RemovedBody329_438 : StackLang.HolProg 64 :=
.seq RemovedBody329_6 RemovedBody329_437

def Removed329 : Nat × StackLang.HolProg 64 := (329, RemovedBody329_438)
theorem Removed329_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc329 = Removed329 := by
  kernel_rfl
#print axioms Removed329_eq
end InitECandidate.Proofs.BackendStages
