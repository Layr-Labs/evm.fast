import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc579
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody579_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody579_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody579_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody579_3 : StackLang.HolProg 64 :=
.seq RemovedBody579_1 RemovedBody579_2

def RemovedBody579_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody579_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody579_3 RemovedBody579_4

def RemovedBody579_6 : StackLang.HolProg 64 :=
.seq RemovedBody579_0 RemovedBody579_5

def RemovedBody579_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody579_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody579_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody579_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody579_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2027#64)

def RemovedBody579_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody579_13 : StackLang.HolProg 64 :=
.seq RemovedBody579_11 RemovedBody579_12

def RemovedBody579_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody579_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody579_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody579_17 : StackLang.HolProg 64 :=
.seq RemovedBody579_15 RemovedBody579_16

def RemovedBody579_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody579_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody579_17 RemovedBody579_18

def RemovedBody579_20 : StackLang.HolProg 64 :=
.seq RemovedBody579_14 RemovedBody579_19

def RemovedBody579_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody579_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody579_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 579 3

def RemovedBody579_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody579_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody579_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody579_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody579_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody579_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody579_30 : StackLang.HolProg 64 :=
.seq RemovedBody579_28 RemovedBody579_29

def RemovedBody579_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody579_32 : StackLang.HolProg 64 :=
.seq RemovedBody579_30 RemovedBody579_31

def RemovedBody579_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody579_34 : StackLang.HolProg 64 :=
.seq RemovedBody579_32 RemovedBody579_33

def RemovedBody579_35 : StackLang.HolProg 64 :=
.seq RemovedBody579_27 RemovedBody579_34

def RemovedBody579_36 : StackLang.HolProg 64 :=
.seq RemovedBody579_26 RemovedBody579_35

def RemovedBody579_37 : StackLang.HolProg 64 :=
.seq RemovedBody579_25 RemovedBody579_36

def RemovedBody579_38 : StackLang.HolProg 64 :=
.seq RemovedBody579_24 RemovedBody579_37

def RemovedBody579_39 : StackLang.HolProg 64 :=
.seq RemovedBody579_23 RemovedBody579_38

def RemovedBody579_40 : StackLang.HolProg 64 :=
.seq RemovedBody579_22 RemovedBody579_39

def RemovedBody579_41 : StackLang.HolProg 64 :=
.seq RemovedBody579_21 RemovedBody579_40

def RemovedBody579_42 : StackLang.HolProg 64 :=
.seq RemovedBody579_20 RemovedBody579_41

def RemovedBody579_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody579_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody579_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody579_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody579_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody579_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody579_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody579_50 : StackLang.HolProg 64 :=
.seq RemovedBody579_48 RemovedBody579_49

def RemovedBody579_51 : StackLang.HolProg 64 :=
.seq RemovedBody579_47 RemovedBody579_50

def RemovedBody579_52 : StackLang.HolProg 64 :=
.seq RemovedBody579_46 RemovedBody579_51

def RemovedBody579_53 : StackLang.HolProg 64 :=
.seq RemovedBody579_45 RemovedBody579_52

def RemovedBody579_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody579_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody579_56 : StackLang.HolProg 64 :=
.seq RemovedBody579_54 RemovedBody579_55

def RemovedBody579_57 : StackLang.HolProg 64 :=
.call (some (RemovedBody579_53, 0, 579, 2)) (Sum.inl 470) (some (RemovedBody579_56, 579, 3))

def RemovedBody579_58 : StackLang.HolProg 64 :=
.seq RemovedBody579_44 RemovedBody579_57

def RemovedBody579_59 : StackLang.HolProg 64 :=
.seq RemovedBody579_43 RemovedBody579_58

def RemovedBody579_60 : StackLang.HolProg 64 :=
.seq RemovedBody579_42 RemovedBody579_59

def RemovedBody579_61 : StackLang.HolProg 64 :=
.seq RemovedBody579_13 RemovedBody579_60

def RemovedBody579_62 : StackLang.HolProg 64 :=
.seq RemovedBody579_10 RemovedBody579_61

def RemovedBody579_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody579_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody579_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody579_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2028#64)

def RemovedBody579_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody579_68 : StackLang.HolProg 64 :=
.seq RemovedBody579_66 RemovedBody579_67

def RemovedBody579_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody579_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody579_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody579_72 : StackLang.HolProg 64 :=
.seq RemovedBody579_70 RemovedBody579_71

def RemovedBody579_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody579_74 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody579_72 RemovedBody579_73

def RemovedBody579_75 : StackLang.HolProg 64 :=
.seq RemovedBody579_69 RemovedBody579_74

def RemovedBody579_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody579_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody579_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 579 5

def RemovedBody579_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody579_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody579_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody579_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody579_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody579_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody579_85 : StackLang.HolProg 64 :=
.seq RemovedBody579_83 RemovedBody579_84

def RemovedBody579_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody579_87 : StackLang.HolProg 64 :=
.seq RemovedBody579_85 RemovedBody579_86

def RemovedBody579_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody579_89 : StackLang.HolProg 64 :=
.seq RemovedBody579_87 RemovedBody579_88

def RemovedBody579_90 : StackLang.HolProg 64 :=
.seq RemovedBody579_82 RemovedBody579_89

def RemovedBody579_91 : StackLang.HolProg 64 :=
.seq RemovedBody579_81 RemovedBody579_90

def RemovedBody579_92 : StackLang.HolProg 64 :=
.seq RemovedBody579_80 RemovedBody579_91

def RemovedBody579_93 : StackLang.HolProg 64 :=
.seq RemovedBody579_79 RemovedBody579_92

def RemovedBody579_94 : StackLang.HolProg 64 :=
.seq RemovedBody579_78 RemovedBody579_93

def RemovedBody579_95 : StackLang.HolProg 64 :=
.seq RemovedBody579_77 RemovedBody579_94

def RemovedBody579_96 : StackLang.HolProg 64 :=
.seq RemovedBody579_76 RemovedBody579_95

def RemovedBody579_97 : StackLang.HolProg 64 :=
.seq RemovedBody579_75 RemovedBody579_96

def RemovedBody579_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody579_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody579_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody579_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody579_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody579_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody579_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody579_105 : StackLang.HolProg 64 :=
.seq RemovedBody579_103 RemovedBody579_104

def RemovedBody579_106 : StackLang.HolProg 64 :=
.seq RemovedBody579_102 RemovedBody579_105

def RemovedBody579_107 : StackLang.HolProg 64 :=
.seq RemovedBody579_101 RemovedBody579_106

def RemovedBody579_108 : StackLang.HolProg 64 :=
.seq RemovedBody579_100 RemovedBody579_107

def RemovedBody579_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody579_110 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody579_111 : StackLang.HolProg 64 :=
.seq RemovedBody579_109 RemovedBody579_110

def RemovedBody579_112 : StackLang.HolProg 64 :=
.call (some (RemovedBody579_108, 0, 579, 4)) (Sum.inl 572) (some (RemovedBody579_111, 579, 5))

def RemovedBody579_113 : StackLang.HolProg 64 :=
.seq RemovedBody579_99 RemovedBody579_112

def RemovedBody579_114 : StackLang.HolProg 64 :=
.seq RemovedBody579_98 RemovedBody579_113

def RemovedBody579_115 : StackLang.HolProg 64 :=
.seq RemovedBody579_97 RemovedBody579_114

def RemovedBody579_116 : StackLang.HolProg 64 :=
.seq RemovedBody579_68 RemovedBody579_115

def RemovedBody579_117 : StackLang.HolProg 64 :=
.seq RemovedBody579_65 RemovedBody579_116

def RemovedBody579_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody579_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody579_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 40#64))

def RemovedBody579_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody579_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody579_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2029#64)

def RemovedBody579_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody579_125 : StackLang.HolProg 64 :=
.seq RemovedBody579_123 RemovedBody579_124

def RemovedBody579_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody579_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody579_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody579_129 : StackLang.HolProg 64 :=
.seq RemovedBody579_127 RemovedBody579_128

def RemovedBody579_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody579_131 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody579_129 RemovedBody579_130

def RemovedBody579_132 : StackLang.HolProg 64 :=
.seq RemovedBody579_126 RemovedBody579_131

def RemovedBody579_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody579_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody579_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 579 7

def RemovedBody579_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody579_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody579_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody579_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody579_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody579_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody579_142 : StackLang.HolProg 64 :=
.seq RemovedBody579_140 RemovedBody579_141

def RemovedBody579_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody579_144 : StackLang.HolProg 64 :=
.seq RemovedBody579_142 RemovedBody579_143

def RemovedBody579_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody579_146 : StackLang.HolProg 64 :=
.seq RemovedBody579_144 RemovedBody579_145

def RemovedBody579_147 : StackLang.HolProg 64 :=
.seq RemovedBody579_139 RemovedBody579_146

def RemovedBody579_148 : StackLang.HolProg 64 :=
.seq RemovedBody579_138 RemovedBody579_147

def RemovedBody579_149 : StackLang.HolProg 64 :=
.seq RemovedBody579_137 RemovedBody579_148

def RemovedBody579_150 : StackLang.HolProg 64 :=
.seq RemovedBody579_136 RemovedBody579_149

def RemovedBody579_151 : StackLang.HolProg 64 :=
.seq RemovedBody579_135 RemovedBody579_150

def RemovedBody579_152 : StackLang.HolProg 64 :=
.seq RemovedBody579_134 RemovedBody579_151

def RemovedBody579_153 : StackLang.HolProg 64 :=
.seq RemovedBody579_133 RemovedBody579_152

def RemovedBody579_154 : StackLang.HolProg 64 :=
.seq RemovedBody579_132 RemovedBody579_153

def RemovedBody579_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody579_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody579_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody579_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody579_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody579_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody579_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody579_162 : StackLang.HolProg 64 :=
.seq RemovedBody579_160 RemovedBody579_161

def RemovedBody579_163 : StackLang.HolProg 64 :=
.seq RemovedBody579_159 RemovedBody579_162

def RemovedBody579_164 : StackLang.HolProg 64 :=
.seq RemovedBody579_158 RemovedBody579_163

def RemovedBody579_165 : StackLang.HolProg 64 :=
.seq RemovedBody579_157 RemovedBody579_164

def RemovedBody579_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody579_167 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody579_168 : StackLang.HolProg 64 :=
.seq RemovedBody579_166 RemovedBody579_167

def RemovedBody579_169 : StackLang.HolProg 64 :=
.call (some (RemovedBody579_165, 0, 579, 6)) (Sum.inl 477) (some (RemovedBody579_168, 579, 7))

def RemovedBody579_170 : StackLang.HolProg 64 :=
.seq RemovedBody579_156 RemovedBody579_169

def RemovedBody579_171 : StackLang.HolProg 64 :=
.seq RemovedBody579_155 RemovedBody579_170

def RemovedBody579_172 : StackLang.HolProg 64 :=
.seq RemovedBody579_154 RemovedBody579_171

def RemovedBody579_173 : StackLang.HolProg 64 :=
.seq RemovedBody579_125 RemovedBody579_172

def RemovedBody579_174 : StackLang.HolProg 64 :=
.seq RemovedBody579_122 RemovedBody579_173

def RemovedBody579_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody579_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody579_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody579_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody579_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2030#64)

def RemovedBody579_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody579_181 : StackLang.HolProg 64 :=
.seq RemovedBody579_179 RemovedBody579_180

def RemovedBody579_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody579_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody579_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody579_185 : StackLang.HolProg 64 :=
.seq RemovedBody579_183 RemovedBody579_184

def RemovedBody579_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody579_187 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody579_185 RemovedBody579_186

def RemovedBody579_188 : StackLang.HolProg 64 :=
.seq RemovedBody579_182 RemovedBody579_187

def RemovedBody579_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody579_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody579_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 579 9

def RemovedBody579_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody579_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody579_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody579_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody579_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody579_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody579_198 : StackLang.HolProg 64 :=
.seq RemovedBody579_196 RemovedBody579_197

def RemovedBody579_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody579_200 : StackLang.HolProg 64 :=
.seq RemovedBody579_198 RemovedBody579_199

def RemovedBody579_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody579_202 : StackLang.HolProg 64 :=
.seq RemovedBody579_200 RemovedBody579_201

def RemovedBody579_203 : StackLang.HolProg 64 :=
.seq RemovedBody579_195 RemovedBody579_202

def RemovedBody579_204 : StackLang.HolProg 64 :=
.seq RemovedBody579_194 RemovedBody579_203

def RemovedBody579_205 : StackLang.HolProg 64 :=
.seq RemovedBody579_193 RemovedBody579_204

def RemovedBody579_206 : StackLang.HolProg 64 :=
.seq RemovedBody579_192 RemovedBody579_205

def RemovedBody579_207 : StackLang.HolProg 64 :=
.seq RemovedBody579_191 RemovedBody579_206

def RemovedBody579_208 : StackLang.HolProg 64 :=
.seq RemovedBody579_190 RemovedBody579_207

def RemovedBody579_209 : StackLang.HolProg 64 :=
.seq RemovedBody579_189 RemovedBody579_208

def RemovedBody579_210 : StackLang.HolProg 64 :=
.seq RemovedBody579_188 RemovedBody579_209

def RemovedBody579_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody579_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody579_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody579_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody579_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody579_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody579_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody579_218 : StackLang.HolProg 64 :=
.seq RemovedBody579_216 RemovedBody579_217

def RemovedBody579_219 : StackLang.HolProg 64 :=
.seq RemovedBody579_215 RemovedBody579_218

def RemovedBody579_220 : StackLang.HolProg 64 :=
.seq RemovedBody579_214 RemovedBody579_219

def RemovedBody579_221 : StackLang.HolProg 64 :=
.seq RemovedBody579_213 RemovedBody579_220

def RemovedBody579_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody579_223 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody579_224 : StackLang.HolProg 64 :=
.seq RemovedBody579_222 RemovedBody579_223

def RemovedBody579_225 : StackLang.HolProg 64 :=
.call (some (RemovedBody579_221, 0, 579, 8)) (Sum.inl 490) (some (RemovedBody579_224, 579, 9))

def RemovedBody579_226 : StackLang.HolProg 64 :=
.seq RemovedBody579_212 RemovedBody579_225

def RemovedBody579_227 : StackLang.HolProg 64 :=
.seq RemovedBody579_211 RemovedBody579_226

def RemovedBody579_228 : StackLang.HolProg 64 :=
.seq RemovedBody579_210 RemovedBody579_227

def RemovedBody579_229 : StackLang.HolProg 64 :=
.seq RemovedBody579_181 RemovedBody579_228

def RemovedBody579_230 : StackLang.HolProg 64 :=
.seq RemovedBody579_178 RemovedBody579_229

def RemovedBody579_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody579_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody579_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody579_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody579_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody579_236 : StackLang.HolProg 64 :=
.seq RemovedBody579_234 RemovedBody579_235

def RemovedBody579_237 : StackLang.HolProg 64 :=
.seq RemovedBody579_233 RemovedBody579_236

def RemovedBody579_238 : StackLang.HolProg 64 :=
.seq RemovedBody579_232 RemovedBody579_237

def RemovedBody579_239 : StackLang.HolProg 64 :=
.seq RemovedBody579_231 RemovedBody579_238

def RemovedBody579_240 : StackLang.HolProg 64 :=
.seq RemovedBody579_230 RemovedBody579_239

def RemovedBody579_241 : StackLang.HolProg 64 :=
.seq RemovedBody579_177 RemovedBody579_240

def RemovedBody579_242 : StackLang.HolProg 64 :=
.seq RemovedBody579_176 RemovedBody579_241

def RemovedBody579_243 : StackLang.HolProg 64 :=
.seq RemovedBody579_175 RemovedBody579_242

def RemovedBody579_244 : StackLang.HolProg 64 :=
.seq RemovedBody579_174 RemovedBody579_243

def RemovedBody579_245 : StackLang.HolProg 64 :=
.seq RemovedBody579_121 RemovedBody579_244

def RemovedBody579_246 : StackLang.HolProg 64 :=
.seq RemovedBody579_120 RemovedBody579_245

def RemovedBody579_247 : StackLang.HolProg 64 :=
.seq RemovedBody579_119 RemovedBody579_246

def RemovedBody579_248 : StackLang.HolProg 64 :=
.seq RemovedBody579_118 RemovedBody579_247

def RemovedBody579_249 : StackLang.HolProg 64 :=
.seq RemovedBody579_117 RemovedBody579_248

def RemovedBody579_250 : StackLang.HolProg 64 :=
.seq RemovedBody579_64 RemovedBody579_249

def RemovedBody579_251 : StackLang.HolProg 64 :=
.seq RemovedBody579_63 RemovedBody579_250

def RemovedBody579_252 : StackLang.HolProg 64 :=
.seq RemovedBody579_62 RemovedBody579_251

def RemovedBody579_253 : StackLang.HolProg 64 :=
.seq RemovedBody579_9 RemovedBody579_252

def RemovedBody579_254 : StackLang.HolProg 64 :=
.seq RemovedBody579_8 RemovedBody579_253

def RemovedBody579_255 : StackLang.HolProg 64 :=
.seq RemovedBody579_7 RemovedBody579_254

def RemovedBody579_256 : StackLang.HolProg 64 :=
.seq RemovedBody579_6 RemovedBody579_255

def Removed579 : Nat × StackLang.HolProg 64 := (579, RemovedBody579_256)
theorem Removed579_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc579 = Removed579 := by
  kernel_rfl
#print axioms Removed579_eq
end InitECandidate.Proofs.BackendStages
