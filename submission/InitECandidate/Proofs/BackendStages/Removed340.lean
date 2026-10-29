import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc340
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody340_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody340_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody340_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody340_3 : StackLang.HolProg 64 :=
.seq RemovedBody340_1 RemovedBody340_2

def RemovedBody340_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody340_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody340_3 RemovedBody340_4

def RemovedBody340_6 : StackLang.HolProg 64 :=
.seq RemovedBody340_0 RemovedBody340_5

def RemovedBody340_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody340_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def RemovedBody340_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody340_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody340_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def RemovedBody340_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody340_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 8#64))

def RemovedBody340_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody340_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody340_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 974#64)

def RemovedBody340_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody340_18 : StackLang.HolProg 64 :=
.seq RemovedBody340_16 RemovedBody340_17

def RemovedBody340_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody340_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody340_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody340_22 : StackLang.HolProg 64 :=
.seq RemovedBody340_20 RemovedBody340_21

def RemovedBody340_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody340_24 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody340_22 RemovedBody340_23

def RemovedBody340_25 : StackLang.HolProg 64 :=
.seq RemovedBody340_19 RemovedBody340_24

def RemovedBody340_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody340_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody340_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 340 3

def RemovedBody340_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody340_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody340_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody340_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody340_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody340_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody340_35 : StackLang.HolProg 64 :=
.seq RemovedBody340_33 RemovedBody340_34

def RemovedBody340_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody340_37 : StackLang.HolProg 64 :=
.seq RemovedBody340_35 RemovedBody340_36

def RemovedBody340_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody340_39 : StackLang.HolProg 64 :=
.seq RemovedBody340_37 RemovedBody340_38

def RemovedBody340_40 : StackLang.HolProg 64 :=
.seq RemovedBody340_32 RemovedBody340_39

def RemovedBody340_41 : StackLang.HolProg 64 :=
.seq RemovedBody340_31 RemovedBody340_40

def RemovedBody340_42 : StackLang.HolProg 64 :=
.seq RemovedBody340_30 RemovedBody340_41

def RemovedBody340_43 : StackLang.HolProg 64 :=
.seq RemovedBody340_29 RemovedBody340_42

def RemovedBody340_44 : StackLang.HolProg 64 :=
.seq RemovedBody340_28 RemovedBody340_43

def RemovedBody340_45 : StackLang.HolProg 64 :=
.seq RemovedBody340_27 RemovedBody340_44

def RemovedBody340_46 : StackLang.HolProg 64 :=
.seq RemovedBody340_26 RemovedBody340_45

def RemovedBody340_47 : StackLang.HolProg 64 :=
.seq RemovedBody340_25 RemovedBody340_46

def RemovedBody340_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody340_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody340_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody340_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody340_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody340_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody340_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody340_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody340_56 : StackLang.HolProg 64 :=
.seq RemovedBody340_54 RemovedBody340_55

def RemovedBody340_57 : StackLang.HolProg 64 :=
.seq RemovedBody340_53 RemovedBody340_56

def RemovedBody340_58 : StackLang.HolProg 64 :=
.seq RemovedBody340_52 RemovedBody340_57

def RemovedBody340_59 : StackLang.HolProg 64 :=
.seq RemovedBody340_51 RemovedBody340_58

def RemovedBody340_60 : StackLang.HolProg 64 :=
.seq RemovedBody340_50 RemovedBody340_59

def RemovedBody340_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody340_62 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody340_63 : StackLang.HolProg 64 :=
.seq RemovedBody340_61 RemovedBody340_62

def RemovedBody340_64 : StackLang.HolProg 64 :=
.call (some (RemovedBody340_60, 0, 340, 2)) (Sum.inl 161) (some (RemovedBody340_63, 340, 3))

def RemovedBody340_65 : StackLang.HolProg 64 :=
.seq RemovedBody340_49 RemovedBody340_64

def RemovedBody340_66 : StackLang.HolProg 64 :=
.seq RemovedBody340_48 RemovedBody340_65

def RemovedBody340_67 : StackLang.HolProg 64 :=
.seq RemovedBody340_47 RemovedBody340_66

def RemovedBody340_68 : StackLang.HolProg 64 :=
.seq RemovedBody340_18 RemovedBody340_67

def RemovedBody340_69 : StackLang.HolProg 64 :=
.seq RemovedBody340_15 RemovedBody340_68

def RemovedBody340_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody340_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody340_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody340_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody340_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 17#64)

def RemovedBody340_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody340_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody340_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def RemovedBody340_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody340_79 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody340_80 : StackLang.HolProg 64 :=
.seq RemovedBody340_78 RemovedBody340_79

def RemovedBody340_81 : StackLang.HolProg 64 :=
.seq RemovedBody340_77 RemovedBody340_80

def RemovedBody340_82 : StackLang.HolProg 64 :=
.seq RemovedBody340_76 RemovedBody340_81

def RemovedBody340_83 : StackLang.HolProg 64 :=
.seq RemovedBody340_75 RemovedBody340_82

def RemovedBody340_84 : StackLang.HolProg 64 :=
.seq RemovedBody340_74 RemovedBody340_83

def RemovedBody340_85 : StackLang.HolProg 64 :=
.seq RemovedBody340_73 RemovedBody340_84

def RemovedBody340_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody340_87 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody340_85 RemovedBody340_86

def RemovedBody340_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody340_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody340_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody340_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def RemovedBody340_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody340_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody340_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody340_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody340_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def RemovedBody340_97 : StackLang.HolProg 64 :=
.seq RemovedBody340_95 RemovedBody340_96

def RemovedBody340_98 : StackLang.HolProg 64 :=
.seq RemovedBody340_94 RemovedBody340_97

def RemovedBody340_99 : StackLang.HolProg 64 :=
.seq RemovedBody340_93 RemovedBody340_98

def RemovedBody340_100 : StackLang.HolProg 64 :=
.seq RemovedBody340_92 RemovedBody340_99

def RemovedBody340_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody340_102 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody340_100 RemovedBody340_101

def RemovedBody340_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody340_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody340_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody340_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 20#64)

def RemovedBody340_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody340_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 17#64)

def RemovedBody340_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody340_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody340_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def RemovedBody340_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody340_113 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody340_114 : StackLang.HolProg 64 :=
.seq RemovedBody340_112 RemovedBody340_113

def RemovedBody340_115 : StackLang.HolProg 64 :=
.seq RemovedBody340_111 RemovedBody340_114

def RemovedBody340_116 : StackLang.HolProg 64 :=
.seq RemovedBody340_110 RemovedBody340_115

def RemovedBody340_117 : StackLang.HolProg 64 :=
.seq RemovedBody340_109 RemovedBody340_116

def RemovedBody340_118 : StackLang.HolProg 64 :=
.seq RemovedBody340_108 RemovedBody340_117

def RemovedBody340_119 : StackLang.HolProg 64 :=
.seq RemovedBody340_107 RemovedBody340_118

def RemovedBody340_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody340_121 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody340_119 RemovedBody340_120

def RemovedBody340_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody340_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody340_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody340_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody340_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def RemovedBody340_127 : StackLang.HolProg 64 :=
.seq RemovedBody340_125 RemovedBody340_126

def RemovedBody340_128 : StackLang.HolProg 64 :=
.seq RemovedBody340_124 RemovedBody340_127

def RemovedBody340_129 : StackLang.HolProg 64 :=
.seq RemovedBody340_123 RemovedBody340_128

def RemovedBody340_130 : StackLang.HolProg 64 :=
.seq RemovedBody340_122 RemovedBody340_129

def RemovedBody340_131 : StackLang.HolProg 64 :=
.seq RemovedBody340_121 RemovedBody340_130

def RemovedBody340_132 : StackLang.HolProg 64 :=
.seq RemovedBody340_106 RemovedBody340_131

def RemovedBody340_133 : StackLang.HolProg 64 :=
.seq RemovedBody340_105 RemovedBody340_132

def RemovedBody340_134 : StackLang.HolProg 64 :=
.seq RemovedBody340_104 RemovedBody340_133

def RemovedBody340_135 : StackLang.HolProg 64 :=
.seq RemovedBody340_103 RemovedBody340_134

def RemovedBody340_136 : StackLang.HolProg 64 :=
.seq RemovedBody340_102 RemovedBody340_135

def RemovedBody340_137 : StackLang.HolProg 64 :=
.seq RemovedBody340_91 RemovedBody340_136

def RemovedBody340_138 : StackLang.HolProg 64 :=
.seq RemovedBody340_90 RemovedBody340_137

def RemovedBody340_139 : StackLang.HolProg 64 :=
.seq RemovedBody340_89 RemovedBody340_138

def RemovedBody340_140 : StackLang.HolProg 64 :=
.seq RemovedBody340_88 RemovedBody340_139

def RemovedBody340_141 : StackLang.HolProg 64 :=
.seq RemovedBody340_87 RemovedBody340_140

def RemovedBody340_142 : StackLang.HolProg 64 :=
.seq RemovedBody340_72 RemovedBody340_141

def RemovedBody340_143 : StackLang.HolProg 64 :=
.seq RemovedBody340_71 RemovedBody340_142

def RemovedBody340_144 : StackLang.HolProg 64 :=
.seq RemovedBody340_70 RemovedBody340_143

def RemovedBody340_145 : StackLang.HolProg 64 :=
.seq RemovedBody340_69 RemovedBody340_144

def RemovedBody340_146 : StackLang.HolProg 64 :=
.seq RemovedBody340_14 RemovedBody340_145

def RemovedBody340_147 : StackLang.HolProg 64 :=
.seq RemovedBody340_13 RemovedBody340_146

def RemovedBody340_148 : StackLang.HolProg 64 :=
.seq RemovedBody340_12 RemovedBody340_147

def RemovedBody340_149 : StackLang.HolProg 64 :=
.seq RemovedBody340_11 RemovedBody340_148

def RemovedBody340_150 : StackLang.HolProg 64 :=
.seq RemovedBody340_10 RemovedBody340_149

def RemovedBody340_151 : StackLang.HolProg 64 :=
.seq RemovedBody340_9 RemovedBody340_150

def RemovedBody340_152 : StackLang.HolProg 64 :=
.seq RemovedBody340_8 RemovedBody340_151

def RemovedBody340_153 : StackLang.HolProg 64 :=
.seq RemovedBody340_7 RemovedBody340_152

def RemovedBody340_154 : StackLang.HolProg 64 :=
.seq RemovedBody340_6 RemovedBody340_153

def Removed340 : Nat × StackLang.HolProg 64 := (340, RemovedBody340_154)
theorem Removed340_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc340 = Removed340 := by
  kernel_rfl
#print axioms Removed340_eq
end InitECandidate.Proofs.BackendStages
