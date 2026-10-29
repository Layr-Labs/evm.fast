import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc543
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody543_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody543_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody543_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody543_3 : StackLang.HolProg 64 :=
.seq RemovedBody543_1 RemovedBody543_2

def RemovedBody543_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody543_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody543_3 RemovedBody543_4

def RemovedBody543_6 : StackLang.HolProg 64 :=
.seq RemovedBody543_0 RemovedBody543_5

def RemovedBody543_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody543_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def RemovedBody543_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody543_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody543_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1795#64)

def RemovedBody543_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody543_13 : StackLang.HolProg 64 :=
.seq RemovedBody543_11 RemovedBody543_12

def RemovedBody543_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody543_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody543_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody543_17 : StackLang.HolProg 64 :=
.seq RemovedBody543_15 RemovedBody543_16

def RemovedBody543_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody543_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody543_17 RemovedBody543_18

def RemovedBody543_20 : StackLang.HolProg 64 :=
.seq RemovedBody543_14 RemovedBody543_19

def RemovedBody543_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody543_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody543_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 543 3

def RemovedBody543_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody543_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody543_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody543_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody543_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody543_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody543_30 : StackLang.HolProg 64 :=
.seq RemovedBody543_28 RemovedBody543_29

def RemovedBody543_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody543_32 : StackLang.HolProg 64 :=
.seq RemovedBody543_30 RemovedBody543_31

def RemovedBody543_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody543_34 : StackLang.HolProg 64 :=
.seq RemovedBody543_32 RemovedBody543_33

def RemovedBody543_35 : StackLang.HolProg 64 :=
.seq RemovedBody543_27 RemovedBody543_34

def RemovedBody543_36 : StackLang.HolProg 64 :=
.seq RemovedBody543_26 RemovedBody543_35

def RemovedBody543_37 : StackLang.HolProg 64 :=
.seq RemovedBody543_25 RemovedBody543_36

def RemovedBody543_38 : StackLang.HolProg 64 :=
.seq RemovedBody543_24 RemovedBody543_37

def RemovedBody543_39 : StackLang.HolProg 64 :=
.seq RemovedBody543_23 RemovedBody543_38

def RemovedBody543_40 : StackLang.HolProg 64 :=
.seq RemovedBody543_22 RemovedBody543_39

def RemovedBody543_41 : StackLang.HolProg 64 :=
.seq RemovedBody543_21 RemovedBody543_40

def RemovedBody543_42 : StackLang.HolProg 64 :=
.seq RemovedBody543_20 RemovedBody543_41

def RemovedBody543_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody543_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody543_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody543_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody543_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody543_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody543_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody543_50 : StackLang.HolProg 64 :=
.seq RemovedBody543_48 RemovedBody543_49

def RemovedBody543_51 : StackLang.HolProg 64 :=
.seq RemovedBody543_47 RemovedBody543_50

def RemovedBody543_52 : StackLang.HolProg 64 :=
.seq RemovedBody543_46 RemovedBody543_51

def RemovedBody543_53 : StackLang.HolProg 64 :=
.seq RemovedBody543_45 RemovedBody543_52

def RemovedBody543_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody543_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody543_56 : StackLang.HolProg 64 :=
.seq RemovedBody543_54 RemovedBody543_55

def RemovedBody543_57 : StackLang.HolProg 64 :=
.call (some (RemovedBody543_53, 0, 543, 2)) (Sum.inl 470) (some (RemovedBody543_56, 543, 3))

def RemovedBody543_58 : StackLang.HolProg 64 :=
.seq RemovedBody543_44 RemovedBody543_57

def RemovedBody543_59 : StackLang.HolProg 64 :=
.seq RemovedBody543_43 RemovedBody543_58

def RemovedBody543_60 : StackLang.HolProg 64 :=
.seq RemovedBody543_42 RemovedBody543_59

def RemovedBody543_61 : StackLang.HolProg 64 :=
.seq RemovedBody543_13 RemovedBody543_60

def RemovedBody543_62 : StackLang.HolProg 64 :=
.seq RemovedBody543_10 RemovedBody543_61

def RemovedBody543_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody543_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody543_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody543_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1796#64)

def RemovedBody543_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody543_68 : StackLang.HolProg 64 :=
.seq RemovedBody543_66 RemovedBody543_67

def RemovedBody543_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody543_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody543_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody543_72 : StackLang.HolProg 64 :=
.seq RemovedBody543_70 RemovedBody543_71

def RemovedBody543_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody543_74 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody543_72 RemovedBody543_73

def RemovedBody543_75 : StackLang.HolProg 64 :=
.seq RemovedBody543_69 RemovedBody543_74

def RemovedBody543_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody543_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody543_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 543 5

def RemovedBody543_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody543_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody543_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody543_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody543_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody543_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody543_85 : StackLang.HolProg 64 :=
.seq RemovedBody543_83 RemovedBody543_84

def RemovedBody543_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody543_87 : StackLang.HolProg 64 :=
.seq RemovedBody543_85 RemovedBody543_86

def RemovedBody543_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody543_89 : StackLang.HolProg 64 :=
.seq RemovedBody543_87 RemovedBody543_88

def RemovedBody543_90 : StackLang.HolProg 64 :=
.seq RemovedBody543_82 RemovedBody543_89

def RemovedBody543_91 : StackLang.HolProg 64 :=
.seq RemovedBody543_81 RemovedBody543_90

def RemovedBody543_92 : StackLang.HolProg 64 :=
.seq RemovedBody543_80 RemovedBody543_91

def RemovedBody543_93 : StackLang.HolProg 64 :=
.seq RemovedBody543_79 RemovedBody543_92

def RemovedBody543_94 : StackLang.HolProg 64 :=
.seq RemovedBody543_78 RemovedBody543_93

def RemovedBody543_95 : StackLang.HolProg 64 :=
.seq RemovedBody543_77 RemovedBody543_94

def RemovedBody543_96 : StackLang.HolProg 64 :=
.seq RemovedBody543_76 RemovedBody543_95

def RemovedBody543_97 : StackLang.HolProg 64 :=
.seq RemovedBody543_75 RemovedBody543_96

def RemovedBody543_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody543_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody543_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody543_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody543_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody543_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody543_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody543_105 : StackLang.HolProg 64 :=
.seq RemovedBody543_103 RemovedBody543_104

def RemovedBody543_106 : StackLang.HolProg 64 :=
.seq RemovedBody543_102 RemovedBody543_105

def RemovedBody543_107 : StackLang.HolProg 64 :=
.seq RemovedBody543_101 RemovedBody543_106

def RemovedBody543_108 : StackLang.HolProg 64 :=
.seq RemovedBody543_100 RemovedBody543_107

def RemovedBody543_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody543_110 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody543_111 : StackLang.HolProg 64 :=
.seq RemovedBody543_109 RemovedBody543_110

def RemovedBody543_112 : StackLang.HolProg 64 :=
.call (some (RemovedBody543_108, 0, 543, 4)) (Sum.inl 540) (some (RemovedBody543_111, 543, 5))

def RemovedBody543_113 : StackLang.HolProg 64 :=
.seq RemovedBody543_99 RemovedBody543_112

def RemovedBody543_114 : StackLang.HolProg 64 :=
.seq RemovedBody543_98 RemovedBody543_113

def RemovedBody543_115 : StackLang.HolProg 64 :=
.seq RemovedBody543_97 RemovedBody543_114

def RemovedBody543_116 : StackLang.HolProg 64 :=
.seq RemovedBody543_68 RemovedBody543_115

def RemovedBody543_117 : StackLang.HolProg 64 :=
.seq RemovedBody543_65 RemovedBody543_116

def RemovedBody543_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody543_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody543_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody543_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1797#64)

def RemovedBody543_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody543_123 : StackLang.HolProg 64 :=
.seq RemovedBody543_121 RemovedBody543_122

def RemovedBody543_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody543_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody543_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody543_127 : StackLang.HolProg 64 :=
.seq RemovedBody543_125 RemovedBody543_126

def RemovedBody543_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody543_129 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody543_127 RemovedBody543_128

def RemovedBody543_130 : StackLang.HolProg 64 :=
.seq RemovedBody543_124 RemovedBody543_129

def RemovedBody543_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody543_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody543_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 543 7

def RemovedBody543_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody543_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody543_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody543_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody543_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody543_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody543_140 : StackLang.HolProg 64 :=
.seq RemovedBody543_138 RemovedBody543_139

def RemovedBody543_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody543_142 : StackLang.HolProg 64 :=
.seq RemovedBody543_140 RemovedBody543_141

def RemovedBody543_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody543_144 : StackLang.HolProg 64 :=
.seq RemovedBody543_142 RemovedBody543_143

def RemovedBody543_145 : StackLang.HolProg 64 :=
.seq RemovedBody543_137 RemovedBody543_144

def RemovedBody543_146 : StackLang.HolProg 64 :=
.seq RemovedBody543_136 RemovedBody543_145

def RemovedBody543_147 : StackLang.HolProg 64 :=
.seq RemovedBody543_135 RemovedBody543_146

def RemovedBody543_148 : StackLang.HolProg 64 :=
.seq RemovedBody543_134 RemovedBody543_147

def RemovedBody543_149 : StackLang.HolProg 64 :=
.seq RemovedBody543_133 RemovedBody543_148

def RemovedBody543_150 : StackLang.HolProg 64 :=
.seq RemovedBody543_132 RemovedBody543_149

def RemovedBody543_151 : StackLang.HolProg 64 :=
.seq RemovedBody543_131 RemovedBody543_150

def RemovedBody543_152 : StackLang.HolProg 64 :=
.seq RemovedBody543_130 RemovedBody543_151

def RemovedBody543_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody543_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody543_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody543_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody543_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody543_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody543_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody543_160 : StackLang.HolProg 64 :=
.seq RemovedBody543_158 RemovedBody543_159

def RemovedBody543_161 : StackLang.HolProg 64 :=
.seq RemovedBody543_157 RemovedBody543_160

def RemovedBody543_162 : StackLang.HolProg 64 :=
.seq RemovedBody543_156 RemovedBody543_161

def RemovedBody543_163 : StackLang.HolProg 64 :=
.seq RemovedBody543_155 RemovedBody543_162

def RemovedBody543_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody543_165 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody543_166 : StackLang.HolProg 64 :=
.seq RemovedBody543_164 RemovedBody543_165

def RemovedBody543_167 : StackLang.HolProg 64 :=
.call (some (RemovedBody543_163, 0, 543, 6)) (Sum.inl 541) (some (RemovedBody543_166, 543, 7))

def RemovedBody543_168 : StackLang.HolProg 64 :=
.seq RemovedBody543_154 RemovedBody543_167

def RemovedBody543_169 : StackLang.HolProg 64 :=
.seq RemovedBody543_153 RemovedBody543_168

def RemovedBody543_170 : StackLang.HolProg 64 :=
.seq RemovedBody543_152 RemovedBody543_169

def RemovedBody543_171 : StackLang.HolProg 64 :=
.seq RemovedBody543_123 RemovedBody543_170

def RemovedBody543_172 : StackLang.HolProg 64 :=
.seq RemovedBody543_120 RemovedBody543_171

def RemovedBody543_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody543_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody543_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody543_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody543_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def RemovedBody543_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def RemovedBody543_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody543_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody543_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody543_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 2#64)

def RemovedBody543_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody543_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody543_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def RemovedBody543_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody543_187 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody543_188 : StackLang.HolProg 64 :=
.seq RemovedBody543_186 RemovedBody543_187

def RemovedBody543_189 : StackLang.HolProg 64 :=
.seq RemovedBody543_185 RemovedBody543_188

def RemovedBody543_190 : StackLang.HolProg 64 :=
.seq RemovedBody543_184 RemovedBody543_189

def RemovedBody543_191 : StackLang.HolProg 64 :=
.seq RemovedBody543_183 RemovedBody543_190

def RemovedBody543_192 : StackLang.HolProg 64 :=
.seq RemovedBody543_182 RemovedBody543_191

def RemovedBody543_193 : StackLang.HolProg 64 :=
.seq RemovedBody543_181 RemovedBody543_192

def RemovedBody543_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody543_195 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody543_193 RemovedBody543_194

def RemovedBody543_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody543_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody543_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody543_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody543_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody543_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody543_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1798#64)

def RemovedBody543_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody543_204 : StackLang.HolProg 64 :=
.seq RemovedBody543_202 RemovedBody543_203

def RemovedBody543_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody543_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody543_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody543_208 : StackLang.HolProg 64 :=
.seq RemovedBody543_206 RemovedBody543_207

def RemovedBody543_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody543_210 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody543_208 RemovedBody543_209

def RemovedBody543_211 : StackLang.HolProg 64 :=
.seq RemovedBody543_205 RemovedBody543_210

def RemovedBody543_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody543_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody543_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 543 9

def RemovedBody543_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody543_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody543_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody543_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody543_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody543_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody543_221 : StackLang.HolProg 64 :=
.seq RemovedBody543_219 RemovedBody543_220

def RemovedBody543_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody543_223 : StackLang.HolProg 64 :=
.seq RemovedBody543_221 RemovedBody543_222

def RemovedBody543_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody543_225 : StackLang.HolProg 64 :=
.seq RemovedBody543_223 RemovedBody543_224

def RemovedBody543_226 : StackLang.HolProg 64 :=
.seq RemovedBody543_218 RemovedBody543_225

def RemovedBody543_227 : StackLang.HolProg 64 :=
.seq RemovedBody543_217 RemovedBody543_226

def RemovedBody543_228 : StackLang.HolProg 64 :=
.seq RemovedBody543_216 RemovedBody543_227

def RemovedBody543_229 : StackLang.HolProg 64 :=
.seq RemovedBody543_215 RemovedBody543_228

def RemovedBody543_230 : StackLang.HolProg 64 :=
.seq RemovedBody543_214 RemovedBody543_229

def RemovedBody543_231 : StackLang.HolProg 64 :=
.seq RemovedBody543_213 RemovedBody543_230

def RemovedBody543_232 : StackLang.HolProg 64 :=
.seq RemovedBody543_212 RemovedBody543_231

def RemovedBody543_233 : StackLang.HolProg 64 :=
.seq RemovedBody543_211 RemovedBody543_232

def RemovedBody543_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody543_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody543_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody543_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody543_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody543_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody543_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody543_241 : StackLang.HolProg 64 :=
.seq RemovedBody543_239 RemovedBody543_240

def RemovedBody543_242 : StackLang.HolProg 64 :=
.seq RemovedBody543_238 RemovedBody543_241

def RemovedBody543_243 : StackLang.HolProg 64 :=
.seq RemovedBody543_237 RemovedBody543_242

def RemovedBody543_244 : StackLang.HolProg 64 :=
.seq RemovedBody543_236 RemovedBody543_243

def RemovedBody543_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody543_246 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody543_247 : StackLang.HolProg 64 :=
.seq RemovedBody543_245 RemovedBody543_246

def RemovedBody543_248 : StackLang.HolProg 64 :=
.call (some (RemovedBody543_244, 0, 543, 8)) (Sum.inl 538) (some (RemovedBody543_247, 543, 9))

def RemovedBody543_249 : StackLang.HolProg 64 :=
.seq RemovedBody543_235 RemovedBody543_248

def RemovedBody543_250 : StackLang.HolProg 64 :=
.seq RemovedBody543_234 RemovedBody543_249

def RemovedBody543_251 : StackLang.HolProg 64 :=
.seq RemovedBody543_233 RemovedBody543_250

def RemovedBody543_252 : StackLang.HolProg 64 :=
.seq RemovedBody543_204 RemovedBody543_251

def RemovedBody543_253 : StackLang.HolProg 64 :=
.seq RemovedBody543_201 RemovedBody543_252

def RemovedBody543_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody543_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody543_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody543_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody543_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1799#64)

def RemovedBody543_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody543_260 : StackLang.HolProg 64 :=
.seq RemovedBody543_258 RemovedBody543_259

def RemovedBody543_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody543_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody543_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody543_264 : StackLang.HolProg 64 :=
.seq RemovedBody543_262 RemovedBody543_263

def RemovedBody543_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody543_266 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody543_264 RemovedBody543_265

def RemovedBody543_267 : StackLang.HolProg 64 :=
.seq RemovedBody543_261 RemovedBody543_266

def RemovedBody543_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody543_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody543_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 543 11

def RemovedBody543_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody543_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody543_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody543_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody543_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody543_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody543_277 : StackLang.HolProg 64 :=
.seq RemovedBody543_275 RemovedBody543_276

def RemovedBody543_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody543_279 : StackLang.HolProg 64 :=
.seq RemovedBody543_277 RemovedBody543_278

def RemovedBody543_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody543_281 : StackLang.HolProg 64 :=
.seq RemovedBody543_279 RemovedBody543_280

def RemovedBody543_282 : StackLang.HolProg 64 :=
.seq RemovedBody543_274 RemovedBody543_281

def RemovedBody543_283 : StackLang.HolProg 64 :=
.seq RemovedBody543_273 RemovedBody543_282

def RemovedBody543_284 : StackLang.HolProg 64 :=
.seq RemovedBody543_272 RemovedBody543_283

def RemovedBody543_285 : StackLang.HolProg 64 :=
.seq RemovedBody543_271 RemovedBody543_284

def RemovedBody543_286 : StackLang.HolProg 64 :=
.seq RemovedBody543_270 RemovedBody543_285

def RemovedBody543_287 : StackLang.HolProg 64 :=
.seq RemovedBody543_269 RemovedBody543_286

def RemovedBody543_288 : StackLang.HolProg 64 :=
.seq RemovedBody543_268 RemovedBody543_287

def RemovedBody543_289 : StackLang.HolProg 64 :=
.seq RemovedBody543_267 RemovedBody543_288

def RemovedBody543_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody543_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody543_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody543_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody543_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody543_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody543_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody543_297 : StackLang.HolProg 64 :=
.seq RemovedBody543_295 RemovedBody543_296

def RemovedBody543_298 : StackLang.HolProg 64 :=
.seq RemovedBody543_294 RemovedBody543_297

def RemovedBody543_299 : StackLang.HolProg 64 :=
.seq RemovedBody543_293 RemovedBody543_298

def RemovedBody543_300 : StackLang.HolProg 64 :=
.seq RemovedBody543_292 RemovedBody543_299

def RemovedBody543_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody543_302 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody543_303 : StackLang.HolProg 64 :=
.seq RemovedBody543_301 RemovedBody543_302

def RemovedBody543_304 : StackLang.HolProg 64 :=
.call (some (RemovedBody543_300, 0, 543, 10)) (Sum.inl 490) (some (RemovedBody543_303, 543, 11))

def RemovedBody543_305 : StackLang.HolProg 64 :=
.seq RemovedBody543_291 RemovedBody543_304

def RemovedBody543_306 : StackLang.HolProg 64 :=
.seq RemovedBody543_290 RemovedBody543_305

def RemovedBody543_307 : StackLang.HolProg 64 :=
.seq RemovedBody543_289 RemovedBody543_306

def RemovedBody543_308 : StackLang.HolProg 64 :=
.seq RemovedBody543_260 RemovedBody543_307

def RemovedBody543_309 : StackLang.HolProg 64 :=
.seq RemovedBody543_257 RemovedBody543_308

def RemovedBody543_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody543_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody543_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody543_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody543_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody543_315 : StackLang.HolProg 64 :=
.seq RemovedBody543_313 RemovedBody543_314

def RemovedBody543_316 : StackLang.HolProg 64 :=
.seq RemovedBody543_312 RemovedBody543_315

def RemovedBody543_317 : StackLang.HolProg 64 :=
.seq RemovedBody543_311 RemovedBody543_316

def RemovedBody543_318 : StackLang.HolProg 64 :=
.seq RemovedBody543_310 RemovedBody543_317

def RemovedBody543_319 : StackLang.HolProg 64 :=
.seq RemovedBody543_309 RemovedBody543_318

def RemovedBody543_320 : StackLang.HolProg 64 :=
.seq RemovedBody543_256 RemovedBody543_319

def RemovedBody543_321 : StackLang.HolProg 64 :=
.seq RemovedBody543_255 RemovedBody543_320

def RemovedBody543_322 : StackLang.HolProg 64 :=
.seq RemovedBody543_254 RemovedBody543_321

def RemovedBody543_323 : StackLang.HolProg 64 :=
.seq RemovedBody543_253 RemovedBody543_322

def RemovedBody543_324 : StackLang.HolProg 64 :=
.seq RemovedBody543_200 RemovedBody543_323

def RemovedBody543_325 : StackLang.HolProg 64 :=
.seq RemovedBody543_199 RemovedBody543_324

def RemovedBody543_326 : StackLang.HolProg 64 :=
.seq RemovedBody543_198 RemovedBody543_325

def RemovedBody543_327 : StackLang.HolProg 64 :=
.seq RemovedBody543_197 RemovedBody543_326

def RemovedBody543_328 : StackLang.HolProg 64 :=
.seq RemovedBody543_196 RemovedBody543_327

def RemovedBody543_329 : StackLang.HolProg 64 :=
.seq RemovedBody543_195 RemovedBody543_328

def RemovedBody543_330 : StackLang.HolProg 64 :=
.seq RemovedBody543_180 RemovedBody543_329

def RemovedBody543_331 : StackLang.HolProg 64 :=
.seq RemovedBody543_179 RemovedBody543_330

def RemovedBody543_332 : StackLang.HolProg 64 :=
.seq RemovedBody543_178 RemovedBody543_331

def RemovedBody543_333 : StackLang.HolProg 64 :=
.seq RemovedBody543_177 RemovedBody543_332

def RemovedBody543_334 : StackLang.HolProg 64 :=
.seq RemovedBody543_176 RemovedBody543_333

def RemovedBody543_335 : StackLang.HolProg 64 :=
.seq RemovedBody543_175 RemovedBody543_334

def RemovedBody543_336 : StackLang.HolProg 64 :=
.seq RemovedBody543_174 RemovedBody543_335

def RemovedBody543_337 : StackLang.HolProg 64 :=
.seq RemovedBody543_173 RemovedBody543_336

def RemovedBody543_338 : StackLang.HolProg 64 :=
.seq RemovedBody543_172 RemovedBody543_337

def RemovedBody543_339 : StackLang.HolProg 64 :=
.seq RemovedBody543_119 RemovedBody543_338

def RemovedBody543_340 : StackLang.HolProg 64 :=
.seq RemovedBody543_118 RemovedBody543_339

def RemovedBody543_341 : StackLang.HolProg 64 :=
.seq RemovedBody543_117 RemovedBody543_340

def RemovedBody543_342 : StackLang.HolProg 64 :=
.seq RemovedBody543_64 RemovedBody543_341

def RemovedBody543_343 : StackLang.HolProg 64 :=
.seq RemovedBody543_63 RemovedBody543_342

def RemovedBody543_344 : StackLang.HolProg 64 :=
.seq RemovedBody543_62 RemovedBody543_343

def RemovedBody543_345 : StackLang.HolProg 64 :=
.seq RemovedBody543_9 RemovedBody543_344

def RemovedBody543_346 : StackLang.HolProg 64 :=
.seq RemovedBody543_8 RemovedBody543_345

def RemovedBody543_347 : StackLang.HolProg 64 :=
.seq RemovedBody543_7 RemovedBody543_346

def RemovedBody543_348 : StackLang.HolProg 64 :=
.seq RemovedBody543_6 RemovedBody543_347

def Removed543 : Nat × StackLang.HolProg 64 := (543, RemovedBody543_348)
theorem Removed543_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc543 = Removed543 := by
  kernel_rfl
#print axioms Removed543_eq
end InitECandidate.Proofs.BackendStages
