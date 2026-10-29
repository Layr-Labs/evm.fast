import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc179
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody179_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody179_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody179_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody179_3 : StackLang.HolProg 64 :=
.seq RemovedBody179_1 RemovedBody179_2

def RemovedBody179_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody179_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody179_3 RemovedBody179_4

def RemovedBody179_6 : StackLang.HolProg 64 :=
.seq RemovedBody179_0 RemovedBody179_5

def RemovedBody179_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody179_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1#64)

def RemovedBody179_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody179_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1#64)

def RemovedBody179_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody179_12 : StackLang.HolProg 64 :=
.seq RemovedBody179_10 RemovedBody179_11

def RemovedBody179_13 : StackLang.HolProg 64 :=
.seq RemovedBody179_9 RemovedBody179_12

def RemovedBody179_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody179_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody179_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody179_17 : StackLang.HolProg 64 :=
.seq RemovedBody179_15 RemovedBody179_16

def RemovedBody179_18 : StackLang.HolProg 64 :=
.seq RemovedBody179_14 RemovedBody179_17

def RemovedBody179_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) RemovedBody179_13 RemovedBody179_18

def RemovedBody179_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody179_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody179_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 128#64)

def RemovedBody179_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody179_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody179_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody179_26 : StackLang.HolProg 64 :=
.seq RemovedBody179_24 RemovedBody179_25

def RemovedBody179_27 : StackLang.HolProg 64 :=
.seq RemovedBody179_23 RemovedBody179_26

def RemovedBody179_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody179_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody179_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody179_31 : StackLang.HolProg 64 :=
.seq RemovedBody179_29 RemovedBody179_30

def RemovedBody179_32 : StackLang.HolProg 64 :=
.seq RemovedBody179_28 RemovedBody179_31

def RemovedBody179_33 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) RemovedBody179_27 RemovedBody179_32

def RemovedBody179_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody179_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody179_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody179_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody179_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody179_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody179_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody179_41 : StackLang.HolProg 64 :=
.seq RemovedBody179_39 RemovedBody179_40

def RemovedBody179_42 : StackLang.HolProg 64 :=
.seq RemovedBody179_38 RemovedBody179_41

def RemovedBody179_43 : StackLang.HolProg 64 :=
.seq RemovedBody179_37 RemovedBody179_42

def RemovedBody179_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody179_45 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 0#64) RemovedBody179_43 RemovedBody179_44

def RemovedBody179_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody179_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody179_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody179_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody179_50 : StackLang.HolProg 64 :=
.seq RemovedBody179_48 RemovedBody179_49

def RemovedBody179_51 : StackLang.HolProg 64 :=
.seq RemovedBody179_47 RemovedBody179_50

def RemovedBody179_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody179_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 201#64)

def RemovedBody179_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody179_55 : StackLang.HolProg 64 :=
.seq RemovedBody179_53 RemovedBody179_54

def RemovedBody179_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody179_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody179_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody179_59 : StackLang.HolProg 64 :=
.seq RemovedBody179_57 RemovedBody179_58

def RemovedBody179_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody179_61 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody179_59 RemovedBody179_60

def RemovedBody179_62 : StackLang.HolProg 64 :=
.seq RemovedBody179_56 RemovedBody179_61

def RemovedBody179_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody179_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody179_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 179 3

def RemovedBody179_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody179_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody179_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody179_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody179_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody179_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody179_72 : StackLang.HolProg 64 :=
.seq RemovedBody179_70 RemovedBody179_71

def RemovedBody179_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody179_74 : StackLang.HolProg 64 :=
.seq RemovedBody179_72 RemovedBody179_73

def RemovedBody179_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody179_76 : StackLang.HolProg 64 :=
.seq RemovedBody179_74 RemovedBody179_75

def RemovedBody179_77 : StackLang.HolProg 64 :=
.seq RemovedBody179_69 RemovedBody179_76

def RemovedBody179_78 : StackLang.HolProg 64 :=
.seq RemovedBody179_68 RemovedBody179_77

def RemovedBody179_79 : StackLang.HolProg 64 :=
.seq RemovedBody179_67 RemovedBody179_78

def RemovedBody179_80 : StackLang.HolProg 64 :=
.seq RemovedBody179_66 RemovedBody179_79

def RemovedBody179_81 : StackLang.HolProg 64 :=
.seq RemovedBody179_65 RemovedBody179_80

def RemovedBody179_82 : StackLang.HolProg 64 :=
.seq RemovedBody179_64 RemovedBody179_81

def RemovedBody179_83 : StackLang.HolProg 64 :=
.seq RemovedBody179_63 RemovedBody179_82

def RemovedBody179_84 : StackLang.HolProg 64 :=
.seq RemovedBody179_62 RemovedBody179_83

def RemovedBody179_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody179_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody179_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody179_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody179_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody179_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody179_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody179_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody179_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody179_94 : StackLang.HolProg 64 :=
.seq RemovedBody179_92 RemovedBody179_93

def RemovedBody179_95 : StackLang.HolProg 64 :=
.seq RemovedBody179_91 RemovedBody179_94

def RemovedBody179_96 : StackLang.HolProg 64 :=
.seq RemovedBody179_90 RemovedBody179_95

def RemovedBody179_97 : StackLang.HolProg 64 :=
.seq RemovedBody179_89 RemovedBody179_96

def RemovedBody179_98 : StackLang.HolProg 64 :=
.seq RemovedBody179_88 RemovedBody179_97

def RemovedBody179_99 : StackLang.HolProg 64 :=
.seq RemovedBody179_87 RemovedBody179_98

def RemovedBody179_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody179_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody179_102 : StackLang.HolProg 64 :=
.seq RemovedBody179_100 RemovedBody179_101

def RemovedBody179_103 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody179_104 : StackLang.HolProg 64 :=
.seq RemovedBody179_102 RemovedBody179_103

def RemovedBody179_105 : StackLang.HolProg 64 :=
.call (some (RemovedBody179_99, 0, 179, 2)) (Sum.inl 175) (some (RemovedBody179_104, 179, 3))

def RemovedBody179_106 : StackLang.HolProg 64 :=
.seq RemovedBody179_86 RemovedBody179_105

def RemovedBody179_107 : StackLang.HolProg 64 :=
.seq RemovedBody179_85 RemovedBody179_106

def RemovedBody179_108 : StackLang.HolProg 64 :=
.seq RemovedBody179_84 RemovedBody179_107

def RemovedBody179_109 : StackLang.HolProg 64 :=
.seq RemovedBody179_55 RemovedBody179_108

def RemovedBody179_110 : StackLang.HolProg 64 :=
.seq RemovedBody179_52 RemovedBody179_109

def RemovedBody179_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody179_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody179_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody179_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody179_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody179_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def RemovedBody179_117 : StackLang.HolProg 64 :=
.seq RemovedBody179_115 RemovedBody179_116

def RemovedBody179_118 : StackLang.HolProg 64 :=
.seq RemovedBody179_114 RemovedBody179_117

def RemovedBody179_119 : StackLang.HolProg 64 :=
.seq RemovedBody179_113 RemovedBody179_118

def RemovedBody179_120 : StackLang.HolProg 64 :=
.seq RemovedBody179_112 RemovedBody179_119

def RemovedBody179_121 : StackLang.HolProg 64 :=
.seq RemovedBody179_111 RemovedBody179_120

def RemovedBody179_122 : StackLang.HolProg 64 :=
.seq RemovedBody179_110 RemovedBody179_121

def RemovedBody179_123 : StackLang.HolProg 64 :=
.seq RemovedBody179_51 RemovedBody179_122

def RemovedBody179_124 : StackLang.HolProg 64 :=
.seq RemovedBody179_46 RemovedBody179_123

def RemovedBody179_125 : StackLang.HolProg 64 :=
.seq RemovedBody179_45 RemovedBody179_124

def RemovedBody179_126 : StackLang.HolProg 64 :=
.seq RemovedBody179_36 RemovedBody179_125

def RemovedBody179_127 : StackLang.HolProg 64 :=
.seq RemovedBody179_35 RemovedBody179_126

def RemovedBody179_128 : StackLang.HolProg 64 :=
.seq RemovedBody179_34 RemovedBody179_127

def RemovedBody179_129 : StackLang.HolProg 64 :=
.seq RemovedBody179_33 RemovedBody179_128

def RemovedBody179_130 : StackLang.HolProg 64 :=
.seq RemovedBody179_22 RemovedBody179_129

def RemovedBody179_131 : StackLang.HolProg 64 :=
.seq RemovedBody179_21 RemovedBody179_130

def RemovedBody179_132 : StackLang.HolProg 64 :=
.seq RemovedBody179_20 RemovedBody179_131

def RemovedBody179_133 : StackLang.HolProg 64 :=
.seq RemovedBody179_19 RemovedBody179_132

def RemovedBody179_134 : StackLang.HolProg 64 :=
.seq RemovedBody179_8 RemovedBody179_133

def RemovedBody179_135 : StackLang.HolProg 64 :=
.seq RemovedBody179_7 RemovedBody179_134

def RemovedBody179_136 : StackLang.HolProg 64 :=
.seq RemovedBody179_6 RemovedBody179_135

def Removed179 : Nat × StackLang.HolProg 64 := (179, RemovedBody179_136)
theorem Removed179_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc179 = Removed179 := by
  kernel_rfl
#print axioms Removed179_eq
end InitECandidate.Proofs.BackendStages
