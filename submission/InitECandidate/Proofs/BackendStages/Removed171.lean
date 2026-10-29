import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc171
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody171_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody171_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody171_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody171_3 : StackLang.HolProg 64 :=
.seq RemovedBody171_1 RemovedBody171_2

def RemovedBody171_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody171_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody171_3 RemovedBody171_4

def RemovedBody171_6 : StackLang.HolProg 64 :=
.seq RemovedBody171_0 RemovedBody171_5

def RemovedBody171_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody171_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody171_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody171_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody171_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 1#64)

def RemovedBody171_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody171_13 : StackLang.HolProg 64 :=
.seq RemovedBody171_11 RemovedBody171_12

def RemovedBody171_14 : StackLang.HolProg 64 :=
.seq RemovedBody171_10 RemovedBody171_13

def RemovedBody171_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody171_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody171_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody171_18 : StackLang.HolProg 64 :=
.seq RemovedBody171_16 RemovedBody171_17

def RemovedBody171_19 : StackLang.HolProg 64 :=
.seq RemovedBody171_15 RemovedBody171_18

def RemovedBody171_20 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody171_14 RemovedBody171_19

def RemovedBody171_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody171_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody171_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody171_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody171_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def RemovedBody171_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody171_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody171_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody171_29 : StackLang.HolProg 64 :=
.seq RemovedBody171_27 RemovedBody171_28

def RemovedBody171_30 : StackLang.HolProg 64 :=
.seq RemovedBody171_26 RemovedBody171_29

def RemovedBody171_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody171_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody171_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody171_34 : StackLang.HolProg 64 :=
.seq RemovedBody171_32 RemovedBody171_33

def RemovedBody171_35 : StackLang.HolProg 64 :=
.seq RemovedBody171_31 RemovedBody171_34

def RemovedBody171_36 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) RemovedBody171_30 RemovedBody171_35

def RemovedBody171_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody171_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody171_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody171_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 21#64)

def RemovedBody171_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody171_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody171_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody171_44 : StackLang.HolProg 64 :=
.seq RemovedBody171_42 RemovedBody171_43

def RemovedBody171_45 : StackLang.HolProg 64 :=
.seq RemovedBody171_41 RemovedBody171_44

def RemovedBody171_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody171_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 192#64)

def RemovedBody171_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody171_49 : StackLang.HolProg 64 :=
.seq RemovedBody171_47 RemovedBody171_48

def RemovedBody171_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody171_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody171_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody171_53 : StackLang.HolProg 64 :=
.seq RemovedBody171_51 RemovedBody171_52

def RemovedBody171_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody171_55 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody171_53 RemovedBody171_54

def RemovedBody171_56 : StackLang.HolProg 64 :=
.seq RemovedBody171_50 RemovedBody171_55

def RemovedBody171_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody171_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody171_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 171 3

def RemovedBody171_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody171_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody171_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody171_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody171_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody171_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody171_66 : StackLang.HolProg 64 :=
.seq RemovedBody171_64 RemovedBody171_65

def RemovedBody171_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody171_68 : StackLang.HolProg 64 :=
.seq RemovedBody171_66 RemovedBody171_67

def RemovedBody171_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody171_70 : StackLang.HolProg 64 :=
.seq RemovedBody171_68 RemovedBody171_69

def RemovedBody171_71 : StackLang.HolProg 64 :=
.seq RemovedBody171_63 RemovedBody171_70

def RemovedBody171_72 : StackLang.HolProg 64 :=
.seq RemovedBody171_62 RemovedBody171_71

def RemovedBody171_73 : StackLang.HolProg 64 :=
.seq RemovedBody171_61 RemovedBody171_72

def RemovedBody171_74 : StackLang.HolProg 64 :=
.seq RemovedBody171_60 RemovedBody171_73

def RemovedBody171_75 : StackLang.HolProg 64 :=
.seq RemovedBody171_59 RemovedBody171_74

def RemovedBody171_76 : StackLang.HolProg 64 :=
.seq RemovedBody171_58 RemovedBody171_75

def RemovedBody171_77 : StackLang.HolProg 64 :=
.seq RemovedBody171_57 RemovedBody171_76

def RemovedBody171_78 : StackLang.HolProg 64 :=
.seq RemovedBody171_56 RemovedBody171_77

def RemovedBody171_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody171_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody171_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody171_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody171_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody171_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody171_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody171_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody171_87 : StackLang.HolProg 64 :=
.seq RemovedBody171_85 RemovedBody171_86

def RemovedBody171_88 : StackLang.HolProg 64 :=
.seq RemovedBody171_84 RemovedBody171_87

def RemovedBody171_89 : StackLang.HolProg 64 :=
.seq RemovedBody171_83 RemovedBody171_88

def RemovedBody171_90 : StackLang.HolProg 64 :=
.seq RemovedBody171_82 RemovedBody171_89

def RemovedBody171_91 : StackLang.HolProg 64 :=
.seq RemovedBody171_81 RemovedBody171_90

def RemovedBody171_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody171_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody171_94 : StackLang.HolProg 64 :=
.seq RemovedBody171_92 RemovedBody171_93

def RemovedBody171_95 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody171_96 : StackLang.HolProg 64 :=
.seq RemovedBody171_94 RemovedBody171_95

def RemovedBody171_97 : StackLang.HolProg 64 :=
.call (some (RemovedBody171_91, 0, 171, 2)) (Sum.inl 159) (some (RemovedBody171_96, 171, 3))

def RemovedBody171_98 : StackLang.HolProg 64 :=
.seq RemovedBody171_80 RemovedBody171_97

def RemovedBody171_99 : StackLang.HolProg 64 :=
.seq RemovedBody171_79 RemovedBody171_98

def RemovedBody171_100 : StackLang.HolProg 64 :=
.seq RemovedBody171_78 RemovedBody171_99

def RemovedBody171_101 : StackLang.HolProg 64 :=
.seq RemovedBody171_49 RemovedBody171_100

def RemovedBody171_102 : StackLang.HolProg 64 :=
.seq RemovedBody171_46 RemovedBody171_101

def RemovedBody171_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody171_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody171_105 : StackLang.HolProg 64 :=
.seq RemovedBody171_103 RemovedBody171_104

def RemovedBody171_106 : StackLang.HolProg 64 :=
.seq RemovedBody171_102 RemovedBody171_105

def RemovedBody171_107 : StackLang.HolProg 64 :=
.seq RemovedBody171_45 RemovedBody171_106

def RemovedBody171_108 : StackLang.HolProg 64 :=
.seq RemovedBody171_40 RemovedBody171_107

def RemovedBody171_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody171_110 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 0#64) RemovedBody171_108 RemovedBody171_109

def RemovedBody171_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody171_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody171_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def RemovedBody171_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody171_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody171_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody171_117 : StackLang.HolProg 64 :=
.seq RemovedBody171_115 RemovedBody171_116

def RemovedBody171_118 : StackLang.HolProg 64 :=
.seq RemovedBody171_114 RemovedBody171_117

def RemovedBody171_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody171_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody171_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody171_122 : StackLang.HolProg 64 :=
.seq RemovedBody171_120 RemovedBody171_121

def RemovedBody171_123 : StackLang.HolProg 64 :=
.seq RemovedBody171_119 RemovedBody171_122

def RemovedBody171_124 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody171_118 RemovedBody171_123

def RemovedBody171_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody171_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody171_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody171_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 1#64)

def RemovedBody171_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody171_130 : StackLang.HolProg 64 :=
.seq RemovedBody171_128 RemovedBody171_129

def RemovedBody171_131 : StackLang.HolProg 64 :=
.seq RemovedBody171_127 RemovedBody171_130

def RemovedBody171_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody171_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def RemovedBody171_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody171_135 : StackLang.HolProg 64 :=
.seq RemovedBody171_133 RemovedBody171_134

def RemovedBody171_136 : StackLang.HolProg 64 :=
.seq RemovedBody171_132 RemovedBody171_135

def RemovedBody171_137 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody171_131 RemovedBody171_136

def RemovedBody171_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody171_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody171_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody171_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 22#64)

def RemovedBody171_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody171_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody171_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 193#64)

def RemovedBody171_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody171_146 : StackLang.HolProg 64 :=
.seq RemovedBody171_144 RemovedBody171_145

def RemovedBody171_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody171_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody171_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody171_150 : StackLang.HolProg 64 :=
.seq RemovedBody171_148 RemovedBody171_149

def RemovedBody171_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody171_152 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody171_150 RemovedBody171_151

def RemovedBody171_153 : StackLang.HolProg 64 :=
.seq RemovedBody171_147 RemovedBody171_152

def RemovedBody171_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody171_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody171_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 171 5

def RemovedBody171_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody171_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody171_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody171_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody171_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody171_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody171_163 : StackLang.HolProg 64 :=
.seq RemovedBody171_161 RemovedBody171_162

def RemovedBody171_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody171_165 : StackLang.HolProg 64 :=
.seq RemovedBody171_163 RemovedBody171_164

def RemovedBody171_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody171_167 : StackLang.HolProg 64 :=
.seq RemovedBody171_165 RemovedBody171_166

def RemovedBody171_168 : StackLang.HolProg 64 :=
.seq RemovedBody171_160 RemovedBody171_167

def RemovedBody171_169 : StackLang.HolProg 64 :=
.seq RemovedBody171_159 RemovedBody171_168

def RemovedBody171_170 : StackLang.HolProg 64 :=
.seq RemovedBody171_158 RemovedBody171_169

def RemovedBody171_171 : StackLang.HolProg 64 :=
.seq RemovedBody171_157 RemovedBody171_170

def RemovedBody171_172 : StackLang.HolProg 64 :=
.seq RemovedBody171_156 RemovedBody171_171

def RemovedBody171_173 : StackLang.HolProg 64 :=
.seq RemovedBody171_155 RemovedBody171_172

def RemovedBody171_174 : StackLang.HolProg 64 :=
.seq RemovedBody171_154 RemovedBody171_173

def RemovedBody171_175 : StackLang.HolProg 64 :=
.seq RemovedBody171_153 RemovedBody171_174

def RemovedBody171_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody171_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody171_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody171_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody171_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody171_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody171_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody171_183 : StackLang.HolProg 64 :=
.seq RemovedBody171_181 RemovedBody171_182

def RemovedBody171_184 : StackLang.HolProg 64 :=
.seq RemovedBody171_180 RemovedBody171_183

def RemovedBody171_185 : StackLang.HolProg 64 :=
.seq RemovedBody171_179 RemovedBody171_184

def RemovedBody171_186 : StackLang.HolProg 64 :=
.seq RemovedBody171_178 RemovedBody171_185

def RemovedBody171_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody171_188 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody171_189 : StackLang.HolProg 64 :=
.seq RemovedBody171_187 RemovedBody171_188

def RemovedBody171_190 : StackLang.HolProg 64 :=
.call (some (RemovedBody171_186, 0, 171, 4)) (Sum.inl 159) (some (RemovedBody171_189, 171, 5))

def RemovedBody171_191 : StackLang.HolProg 64 :=
.seq RemovedBody171_177 RemovedBody171_190

def RemovedBody171_192 : StackLang.HolProg 64 :=
.seq RemovedBody171_176 RemovedBody171_191

def RemovedBody171_193 : StackLang.HolProg 64 :=
.seq RemovedBody171_175 RemovedBody171_192

def RemovedBody171_194 : StackLang.HolProg 64 :=
.seq RemovedBody171_146 RemovedBody171_193

def RemovedBody171_195 : StackLang.HolProg 64 :=
.seq RemovedBody171_143 RemovedBody171_194

def RemovedBody171_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody171_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody171_198 : StackLang.HolProg 64 :=
.seq RemovedBody171_196 RemovedBody171_197

def RemovedBody171_199 : StackLang.HolProg 64 :=
.seq RemovedBody171_195 RemovedBody171_198

def RemovedBody171_200 : StackLang.HolProg 64 :=
.seq RemovedBody171_142 RemovedBody171_199

def RemovedBody171_201 : StackLang.HolProg 64 :=
.seq RemovedBody171_141 RemovedBody171_200

def RemovedBody171_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody171_203 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 0#64) RemovedBody171_201 RemovedBody171_202

def RemovedBody171_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody171_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody171_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody171_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody171_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody171_209 : StackLang.HolProg 64 :=
.seq RemovedBody171_207 RemovedBody171_208

def RemovedBody171_210 : StackLang.HolProg 64 :=
.seq RemovedBody171_206 RemovedBody171_209

def RemovedBody171_211 : StackLang.HolProg 64 :=
.seq RemovedBody171_205 RemovedBody171_210

def RemovedBody171_212 : StackLang.HolProg 64 :=
.seq RemovedBody171_204 RemovedBody171_211

def RemovedBody171_213 : StackLang.HolProg 64 :=
.seq RemovedBody171_203 RemovedBody171_212

def RemovedBody171_214 : StackLang.HolProg 64 :=
.seq RemovedBody171_140 RemovedBody171_213

def RemovedBody171_215 : StackLang.HolProg 64 :=
.seq RemovedBody171_139 RemovedBody171_214

def RemovedBody171_216 : StackLang.HolProg 64 :=
.seq RemovedBody171_138 RemovedBody171_215

def RemovedBody171_217 : StackLang.HolProg 64 :=
.seq RemovedBody171_137 RemovedBody171_216

def RemovedBody171_218 : StackLang.HolProg 64 :=
.seq RemovedBody171_126 RemovedBody171_217

def RemovedBody171_219 : StackLang.HolProg 64 :=
.seq RemovedBody171_125 RemovedBody171_218

def RemovedBody171_220 : StackLang.HolProg 64 :=
.seq RemovedBody171_124 RemovedBody171_219

def RemovedBody171_221 : StackLang.HolProg 64 :=
.seq RemovedBody171_113 RemovedBody171_220

def RemovedBody171_222 : StackLang.HolProg 64 :=
.seq RemovedBody171_112 RemovedBody171_221

def RemovedBody171_223 : StackLang.HolProg 64 :=
.seq RemovedBody171_111 RemovedBody171_222

def RemovedBody171_224 : StackLang.HolProg 64 :=
.seq RemovedBody171_110 RemovedBody171_223

def RemovedBody171_225 : StackLang.HolProg 64 :=
.seq RemovedBody171_39 RemovedBody171_224

def RemovedBody171_226 : StackLang.HolProg 64 :=
.seq RemovedBody171_38 RemovedBody171_225

def RemovedBody171_227 : StackLang.HolProg 64 :=
.seq RemovedBody171_37 RemovedBody171_226

def RemovedBody171_228 : StackLang.HolProg 64 :=
.seq RemovedBody171_36 RemovedBody171_227

def RemovedBody171_229 : StackLang.HolProg 64 :=
.seq RemovedBody171_25 RemovedBody171_228

def RemovedBody171_230 : StackLang.HolProg 64 :=
.seq RemovedBody171_24 RemovedBody171_229

def RemovedBody171_231 : StackLang.HolProg 64 :=
.seq RemovedBody171_23 RemovedBody171_230

def RemovedBody171_232 : StackLang.HolProg 64 :=
.seq RemovedBody171_22 RemovedBody171_231

def RemovedBody171_233 : StackLang.HolProg 64 :=
.seq RemovedBody171_21 RemovedBody171_232

def RemovedBody171_234 : StackLang.HolProg 64 :=
.seq RemovedBody171_20 RemovedBody171_233

def RemovedBody171_235 : StackLang.HolProg 64 :=
.seq RemovedBody171_9 RemovedBody171_234

def RemovedBody171_236 : StackLang.HolProg 64 :=
.seq RemovedBody171_8 RemovedBody171_235

def RemovedBody171_237 : StackLang.HolProg 64 :=
.seq RemovedBody171_7 RemovedBody171_236

def RemovedBody171_238 : StackLang.HolProg 64 :=
.seq RemovedBody171_6 RemovedBody171_237

def Removed171 : Nat × StackLang.HolProg 64 := (171, RemovedBody171_238)
theorem Removed171_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc171 = Removed171 := by
  kernel_rfl
#print axioms Removed171_eq
end InitECandidate.Proofs.BackendStages
