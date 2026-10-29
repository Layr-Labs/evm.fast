import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc581
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody581_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody581_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody581_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody581_3 : StackLang.HolProg 64 :=
.seq RemovedBody581_1 RemovedBody581_2

def RemovedBody581_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody581_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody581_3 RemovedBody581_4

def RemovedBody581_6 : StackLang.HolProg 64 :=
.seq RemovedBody581_0 RemovedBody581_5

def RemovedBody581_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody581_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody581_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody581_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody581_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2035#64)

def RemovedBody581_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody581_13 : StackLang.HolProg 64 :=
.seq RemovedBody581_11 RemovedBody581_12

def RemovedBody581_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody581_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody581_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody581_17 : StackLang.HolProg 64 :=
.seq RemovedBody581_15 RemovedBody581_16

def RemovedBody581_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody581_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody581_17 RemovedBody581_18

def RemovedBody581_20 : StackLang.HolProg 64 :=
.seq RemovedBody581_14 RemovedBody581_19

def RemovedBody581_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody581_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody581_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 581 3

def RemovedBody581_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody581_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody581_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody581_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody581_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody581_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody581_30 : StackLang.HolProg 64 :=
.seq RemovedBody581_28 RemovedBody581_29

def RemovedBody581_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody581_32 : StackLang.HolProg 64 :=
.seq RemovedBody581_30 RemovedBody581_31

def RemovedBody581_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody581_34 : StackLang.HolProg 64 :=
.seq RemovedBody581_32 RemovedBody581_33

def RemovedBody581_35 : StackLang.HolProg 64 :=
.seq RemovedBody581_27 RemovedBody581_34

def RemovedBody581_36 : StackLang.HolProg 64 :=
.seq RemovedBody581_26 RemovedBody581_35

def RemovedBody581_37 : StackLang.HolProg 64 :=
.seq RemovedBody581_25 RemovedBody581_36

def RemovedBody581_38 : StackLang.HolProg 64 :=
.seq RemovedBody581_24 RemovedBody581_37

def RemovedBody581_39 : StackLang.HolProg 64 :=
.seq RemovedBody581_23 RemovedBody581_38

def RemovedBody581_40 : StackLang.HolProg 64 :=
.seq RemovedBody581_22 RemovedBody581_39

def RemovedBody581_41 : StackLang.HolProg 64 :=
.seq RemovedBody581_21 RemovedBody581_40

def RemovedBody581_42 : StackLang.HolProg 64 :=
.seq RemovedBody581_20 RemovedBody581_41

def RemovedBody581_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody581_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody581_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody581_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody581_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody581_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody581_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody581_50 : StackLang.HolProg 64 :=
.seq RemovedBody581_48 RemovedBody581_49

def RemovedBody581_51 : StackLang.HolProg 64 :=
.seq RemovedBody581_47 RemovedBody581_50

def RemovedBody581_52 : StackLang.HolProg 64 :=
.seq RemovedBody581_46 RemovedBody581_51

def RemovedBody581_53 : StackLang.HolProg 64 :=
.seq RemovedBody581_45 RemovedBody581_52

def RemovedBody581_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody581_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody581_56 : StackLang.HolProg 64 :=
.seq RemovedBody581_54 RemovedBody581_55

def RemovedBody581_57 : StackLang.HolProg 64 :=
.call (some (RemovedBody581_53, 0, 581, 2)) (Sum.inl 470) (some (RemovedBody581_56, 581, 3))

def RemovedBody581_58 : StackLang.HolProg 64 :=
.seq RemovedBody581_44 RemovedBody581_57

def RemovedBody581_59 : StackLang.HolProg 64 :=
.seq RemovedBody581_43 RemovedBody581_58

def RemovedBody581_60 : StackLang.HolProg 64 :=
.seq RemovedBody581_42 RemovedBody581_59

def RemovedBody581_61 : StackLang.HolProg 64 :=
.seq RemovedBody581_13 RemovedBody581_60

def RemovedBody581_62 : StackLang.HolProg 64 :=
.seq RemovedBody581_10 RemovedBody581_61

def RemovedBody581_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody581_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody581_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody581_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2036#64)

def RemovedBody581_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody581_68 : StackLang.HolProg 64 :=
.seq RemovedBody581_66 RemovedBody581_67

def RemovedBody581_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody581_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody581_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody581_72 : StackLang.HolProg 64 :=
.seq RemovedBody581_70 RemovedBody581_71

def RemovedBody581_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody581_74 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody581_72 RemovedBody581_73

def RemovedBody581_75 : StackLang.HolProg 64 :=
.seq RemovedBody581_69 RemovedBody581_74

def RemovedBody581_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody581_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody581_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 581 5

def RemovedBody581_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody581_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody581_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody581_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody581_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody581_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody581_85 : StackLang.HolProg 64 :=
.seq RemovedBody581_83 RemovedBody581_84

def RemovedBody581_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody581_87 : StackLang.HolProg 64 :=
.seq RemovedBody581_85 RemovedBody581_86

def RemovedBody581_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody581_89 : StackLang.HolProg 64 :=
.seq RemovedBody581_87 RemovedBody581_88

def RemovedBody581_90 : StackLang.HolProg 64 :=
.seq RemovedBody581_82 RemovedBody581_89

def RemovedBody581_91 : StackLang.HolProg 64 :=
.seq RemovedBody581_81 RemovedBody581_90

def RemovedBody581_92 : StackLang.HolProg 64 :=
.seq RemovedBody581_80 RemovedBody581_91

def RemovedBody581_93 : StackLang.HolProg 64 :=
.seq RemovedBody581_79 RemovedBody581_92

def RemovedBody581_94 : StackLang.HolProg 64 :=
.seq RemovedBody581_78 RemovedBody581_93

def RemovedBody581_95 : StackLang.HolProg 64 :=
.seq RemovedBody581_77 RemovedBody581_94

def RemovedBody581_96 : StackLang.HolProg 64 :=
.seq RemovedBody581_76 RemovedBody581_95

def RemovedBody581_97 : StackLang.HolProg 64 :=
.seq RemovedBody581_75 RemovedBody581_96

def RemovedBody581_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody581_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody581_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody581_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody581_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody581_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody581_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody581_105 : StackLang.HolProg 64 :=
.seq RemovedBody581_103 RemovedBody581_104

def RemovedBody581_106 : StackLang.HolProg 64 :=
.seq RemovedBody581_102 RemovedBody581_105

def RemovedBody581_107 : StackLang.HolProg 64 :=
.seq RemovedBody581_101 RemovedBody581_106

def RemovedBody581_108 : StackLang.HolProg 64 :=
.seq RemovedBody581_100 RemovedBody581_107

def RemovedBody581_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody581_110 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody581_111 : StackLang.HolProg 64 :=
.seq RemovedBody581_109 RemovedBody581_110

def RemovedBody581_112 : StackLang.HolProg 64 :=
.call (some (RemovedBody581_108, 0, 581, 4)) (Sum.inl 572) (some (RemovedBody581_111, 581, 5))

def RemovedBody581_113 : StackLang.HolProg 64 :=
.seq RemovedBody581_99 RemovedBody581_112

def RemovedBody581_114 : StackLang.HolProg 64 :=
.seq RemovedBody581_98 RemovedBody581_113

def RemovedBody581_115 : StackLang.HolProg 64 :=
.seq RemovedBody581_97 RemovedBody581_114

def RemovedBody581_116 : StackLang.HolProg 64 :=
.seq RemovedBody581_68 RemovedBody581_115

def RemovedBody581_117 : StackLang.HolProg 64 :=
.seq RemovedBody581_65 RemovedBody581_116

def RemovedBody581_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody581_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody581_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedBody581_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody581_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody581_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2037#64)

def RemovedBody581_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody581_125 : StackLang.HolProg 64 :=
.seq RemovedBody581_123 RemovedBody581_124

def RemovedBody581_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody581_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody581_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody581_129 : StackLang.HolProg 64 :=
.seq RemovedBody581_127 RemovedBody581_128

def RemovedBody581_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody581_131 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody581_129 RemovedBody581_130

def RemovedBody581_132 : StackLang.HolProg 64 :=
.seq RemovedBody581_126 RemovedBody581_131

def RemovedBody581_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody581_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody581_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 581 7

def RemovedBody581_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody581_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody581_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody581_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody581_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody581_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody581_142 : StackLang.HolProg 64 :=
.seq RemovedBody581_140 RemovedBody581_141

def RemovedBody581_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody581_144 : StackLang.HolProg 64 :=
.seq RemovedBody581_142 RemovedBody581_143

def RemovedBody581_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody581_146 : StackLang.HolProg 64 :=
.seq RemovedBody581_144 RemovedBody581_145

def RemovedBody581_147 : StackLang.HolProg 64 :=
.seq RemovedBody581_139 RemovedBody581_146

def RemovedBody581_148 : StackLang.HolProg 64 :=
.seq RemovedBody581_138 RemovedBody581_147

def RemovedBody581_149 : StackLang.HolProg 64 :=
.seq RemovedBody581_137 RemovedBody581_148

def RemovedBody581_150 : StackLang.HolProg 64 :=
.seq RemovedBody581_136 RemovedBody581_149

def RemovedBody581_151 : StackLang.HolProg 64 :=
.seq RemovedBody581_135 RemovedBody581_150

def RemovedBody581_152 : StackLang.HolProg 64 :=
.seq RemovedBody581_134 RemovedBody581_151

def RemovedBody581_153 : StackLang.HolProg 64 :=
.seq RemovedBody581_133 RemovedBody581_152

def RemovedBody581_154 : StackLang.HolProg 64 :=
.seq RemovedBody581_132 RemovedBody581_153

def RemovedBody581_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody581_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody581_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody581_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody581_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody581_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody581_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody581_162 : StackLang.HolProg 64 :=
.seq RemovedBody581_160 RemovedBody581_161

def RemovedBody581_163 : StackLang.HolProg 64 :=
.seq RemovedBody581_159 RemovedBody581_162

def RemovedBody581_164 : StackLang.HolProg 64 :=
.seq RemovedBody581_158 RemovedBody581_163

def RemovedBody581_165 : StackLang.HolProg 64 :=
.seq RemovedBody581_157 RemovedBody581_164

def RemovedBody581_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody581_167 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody581_168 : StackLang.HolProg 64 :=
.seq RemovedBody581_166 RemovedBody581_167

def RemovedBody581_169 : StackLang.HolProg 64 :=
.call (some (RemovedBody581_165, 0, 581, 6)) (Sum.inl 477) (some (RemovedBody581_168, 581, 7))

def RemovedBody581_170 : StackLang.HolProg 64 :=
.seq RemovedBody581_156 RemovedBody581_169

def RemovedBody581_171 : StackLang.HolProg 64 :=
.seq RemovedBody581_155 RemovedBody581_170

def RemovedBody581_172 : StackLang.HolProg 64 :=
.seq RemovedBody581_154 RemovedBody581_171

def RemovedBody581_173 : StackLang.HolProg 64 :=
.seq RemovedBody581_125 RemovedBody581_172

def RemovedBody581_174 : StackLang.HolProg 64 :=
.seq RemovedBody581_122 RemovedBody581_173

def RemovedBody581_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody581_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody581_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody581_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody581_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2038#64)

def RemovedBody581_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody581_181 : StackLang.HolProg 64 :=
.seq RemovedBody581_179 RemovedBody581_180

def RemovedBody581_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody581_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody581_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody581_185 : StackLang.HolProg 64 :=
.seq RemovedBody581_183 RemovedBody581_184

def RemovedBody581_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody581_187 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody581_185 RemovedBody581_186

def RemovedBody581_188 : StackLang.HolProg 64 :=
.seq RemovedBody581_182 RemovedBody581_187

def RemovedBody581_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody581_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody581_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 581 9

def RemovedBody581_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody581_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody581_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody581_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody581_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody581_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody581_198 : StackLang.HolProg 64 :=
.seq RemovedBody581_196 RemovedBody581_197

def RemovedBody581_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody581_200 : StackLang.HolProg 64 :=
.seq RemovedBody581_198 RemovedBody581_199

def RemovedBody581_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody581_202 : StackLang.HolProg 64 :=
.seq RemovedBody581_200 RemovedBody581_201

def RemovedBody581_203 : StackLang.HolProg 64 :=
.seq RemovedBody581_195 RemovedBody581_202

def RemovedBody581_204 : StackLang.HolProg 64 :=
.seq RemovedBody581_194 RemovedBody581_203

def RemovedBody581_205 : StackLang.HolProg 64 :=
.seq RemovedBody581_193 RemovedBody581_204

def RemovedBody581_206 : StackLang.HolProg 64 :=
.seq RemovedBody581_192 RemovedBody581_205

def RemovedBody581_207 : StackLang.HolProg 64 :=
.seq RemovedBody581_191 RemovedBody581_206

def RemovedBody581_208 : StackLang.HolProg 64 :=
.seq RemovedBody581_190 RemovedBody581_207

def RemovedBody581_209 : StackLang.HolProg 64 :=
.seq RemovedBody581_189 RemovedBody581_208

def RemovedBody581_210 : StackLang.HolProg 64 :=
.seq RemovedBody581_188 RemovedBody581_209

def RemovedBody581_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody581_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody581_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody581_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody581_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody581_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody581_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody581_218 : StackLang.HolProg 64 :=
.seq RemovedBody581_216 RemovedBody581_217

def RemovedBody581_219 : StackLang.HolProg 64 :=
.seq RemovedBody581_215 RemovedBody581_218

def RemovedBody581_220 : StackLang.HolProg 64 :=
.seq RemovedBody581_214 RemovedBody581_219

def RemovedBody581_221 : StackLang.HolProg 64 :=
.seq RemovedBody581_213 RemovedBody581_220

def RemovedBody581_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody581_223 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody581_224 : StackLang.HolProg 64 :=
.seq RemovedBody581_222 RemovedBody581_223

def RemovedBody581_225 : StackLang.HolProg 64 :=
.call (some (RemovedBody581_221, 0, 581, 8)) (Sum.inl 490) (some (RemovedBody581_224, 581, 9))

def RemovedBody581_226 : StackLang.HolProg 64 :=
.seq RemovedBody581_212 RemovedBody581_225

def RemovedBody581_227 : StackLang.HolProg 64 :=
.seq RemovedBody581_211 RemovedBody581_226

def RemovedBody581_228 : StackLang.HolProg 64 :=
.seq RemovedBody581_210 RemovedBody581_227

def RemovedBody581_229 : StackLang.HolProg 64 :=
.seq RemovedBody581_181 RemovedBody581_228

def RemovedBody581_230 : StackLang.HolProg 64 :=
.seq RemovedBody581_178 RemovedBody581_229

def RemovedBody581_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody581_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody581_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody581_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody581_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody581_236 : StackLang.HolProg 64 :=
.seq RemovedBody581_234 RemovedBody581_235

def RemovedBody581_237 : StackLang.HolProg 64 :=
.seq RemovedBody581_233 RemovedBody581_236

def RemovedBody581_238 : StackLang.HolProg 64 :=
.seq RemovedBody581_232 RemovedBody581_237

def RemovedBody581_239 : StackLang.HolProg 64 :=
.seq RemovedBody581_231 RemovedBody581_238

def RemovedBody581_240 : StackLang.HolProg 64 :=
.seq RemovedBody581_230 RemovedBody581_239

def RemovedBody581_241 : StackLang.HolProg 64 :=
.seq RemovedBody581_177 RemovedBody581_240

def RemovedBody581_242 : StackLang.HolProg 64 :=
.seq RemovedBody581_176 RemovedBody581_241

def RemovedBody581_243 : StackLang.HolProg 64 :=
.seq RemovedBody581_175 RemovedBody581_242

def RemovedBody581_244 : StackLang.HolProg 64 :=
.seq RemovedBody581_174 RemovedBody581_243

def RemovedBody581_245 : StackLang.HolProg 64 :=
.seq RemovedBody581_121 RemovedBody581_244

def RemovedBody581_246 : StackLang.HolProg 64 :=
.seq RemovedBody581_120 RemovedBody581_245

def RemovedBody581_247 : StackLang.HolProg 64 :=
.seq RemovedBody581_119 RemovedBody581_246

def RemovedBody581_248 : StackLang.HolProg 64 :=
.seq RemovedBody581_118 RemovedBody581_247

def RemovedBody581_249 : StackLang.HolProg 64 :=
.seq RemovedBody581_117 RemovedBody581_248

def RemovedBody581_250 : StackLang.HolProg 64 :=
.seq RemovedBody581_64 RemovedBody581_249

def RemovedBody581_251 : StackLang.HolProg 64 :=
.seq RemovedBody581_63 RemovedBody581_250

def RemovedBody581_252 : StackLang.HolProg 64 :=
.seq RemovedBody581_62 RemovedBody581_251

def RemovedBody581_253 : StackLang.HolProg 64 :=
.seq RemovedBody581_9 RemovedBody581_252

def RemovedBody581_254 : StackLang.HolProg 64 :=
.seq RemovedBody581_8 RemovedBody581_253

def RemovedBody581_255 : StackLang.HolProg 64 :=
.seq RemovedBody581_7 RemovedBody581_254

def RemovedBody581_256 : StackLang.HolProg 64 :=
.seq RemovedBody581_6 RemovedBody581_255

def Removed581 : Nat × StackLang.HolProg 64 := (581, RemovedBody581_256)
theorem Removed581_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc581 = Removed581 := by
  kernel_rfl
#print axioms Removed581_eq
end InitECandidate.Proofs.BackendStages
