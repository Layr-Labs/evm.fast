import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc104
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody104_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody104_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody104_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody104_3 : StackLang.HolProg 64 :=
.seq RemovedBody104_1 RemovedBody104_2

def RemovedBody104_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody104_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody104_3 RemovedBody104_4

def RemovedBody104_6 : StackLang.HolProg 64 :=
.seq RemovedBody104_0 RemovedBody104_5

def RemovedBody104_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody104_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 256#64)

def RemovedBody104_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody104_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody104_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody104_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody104_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody104_14 : StackLang.HolProg 64 :=
.seq RemovedBody104_12 RemovedBody104_13

def RemovedBody104_15 : StackLang.HolProg 64 :=
.seq RemovedBody104_11 RemovedBody104_14

def RemovedBody104_16 : StackLang.HolProg 64 :=
.seq RemovedBody104_10 RemovedBody104_15

def RemovedBody104_17 : StackLang.HolProg 64 :=
.seq RemovedBody104_9 RemovedBody104_16

def RemovedBody104_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody104_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody104_17 RemovedBody104_18

def RemovedBody104_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody104_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody104_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody104_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody104_24 : StackLang.HolProg 64 :=
.seq RemovedBody104_22 RemovedBody104_23

def RemovedBody104_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 5 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def RemovedBody104_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody104_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody104_28 : StackLang.HolProg 64 :=
.seq RemovedBody104_26 RemovedBody104_27

def RemovedBody104_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody104_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 44#64)

def RemovedBody104_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody104_32 : StackLang.HolProg 64 :=
.seq RemovedBody104_30 RemovedBody104_31

def RemovedBody104_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody104_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody104_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody104_36 : StackLang.HolProg 64 :=
.seq RemovedBody104_34 RemovedBody104_35

def RemovedBody104_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody104_38 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody104_36 RemovedBody104_37

def RemovedBody104_39 : StackLang.HolProg 64 :=
.seq RemovedBody104_33 RemovedBody104_38

def RemovedBody104_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody104_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody104_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 104 3

def RemovedBody104_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody104_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody104_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody104_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody104_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody104_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody104_49 : StackLang.HolProg 64 :=
.seq RemovedBody104_47 RemovedBody104_48

def RemovedBody104_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody104_51 : StackLang.HolProg 64 :=
.seq RemovedBody104_49 RemovedBody104_50

def RemovedBody104_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody104_53 : StackLang.HolProg 64 :=
.seq RemovedBody104_51 RemovedBody104_52

def RemovedBody104_54 : StackLang.HolProg 64 :=
.seq RemovedBody104_46 RemovedBody104_53

def RemovedBody104_55 : StackLang.HolProg 64 :=
.seq RemovedBody104_45 RemovedBody104_54

def RemovedBody104_56 : StackLang.HolProg 64 :=
.seq RemovedBody104_44 RemovedBody104_55

def RemovedBody104_57 : StackLang.HolProg 64 :=
.seq RemovedBody104_43 RemovedBody104_56

def RemovedBody104_58 : StackLang.HolProg 64 :=
.seq RemovedBody104_42 RemovedBody104_57

def RemovedBody104_59 : StackLang.HolProg 64 :=
.seq RemovedBody104_41 RemovedBody104_58

def RemovedBody104_60 : StackLang.HolProg 64 :=
.seq RemovedBody104_40 RemovedBody104_59

def RemovedBody104_61 : StackLang.HolProg 64 :=
.seq RemovedBody104_39 RemovedBody104_60

def RemovedBody104_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody104_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody104_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody104_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody104_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody104_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody104_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody104_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody104_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody104_71 : StackLang.HolProg 64 :=
.seq RemovedBody104_69 RemovedBody104_70

def RemovedBody104_72 : StackLang.HolProg 64 :=
.seq RemovedBody104_68 RemovedBody104_71

def RemovedBody104_73 : StackLang.HolProg 64 :=
.seq RemovedBody104_67 RemovedBody104_72

def RemovedBody104_74 : StackLang.HolProg 64 :=
.seq RemovedBody104_66 RemovedBody104_73

def RemovedBody104_75 : StackLang.HolProg 64 :=
.seq RemovedBody104_65 RemovedBody104_74

def RemovedBody104_76 : StackLang.HolProg 64 :=
.seq RemovedBody104_64 RemovedBody104_75

def RemovedBody104_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody104_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody104_79 : StackLang.HolProg 64 :=
.seq RemovedBody104_77 RemovedBody104_78

def RemovedBody104_80 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody104_81 : StackLang.HolProg 64 :=
.seq RemovedBody104_79 RemovedBody104_80

def RemovedBody104_82 : StackLang.HolProg 64 :=
.call (some (RemovedBody104_76, 0, 104, 2)) (Sum.inl 103) (some (RemovedBody104_81, 104, 3))

def RemovedBody104_83 : StackLang.HolProg 64 :=
.seq RemovedBody104_63 RemovedBody104_82

def RemovedBody104_84 : StackLang.HolProg 64 :=
.seq RemovedBody104_62 RemovedBody104_83

def RemovedBody104_85 : StackLang.HolProg 64 :=
.seq RemovedBody104_61 RemovedBody104_84

def RemovedBody104_86 : StackLang.HolProg 64 :=
.seq RemovedBody104_32 RemovedBody104_85

def RemovedBody104_87 : StackLang.HolProg 64 :=
.seq RemovedBody104_29 RemovedBody104_86

def RemovedBody104_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody104_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody104_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def RemovedBody104_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody104_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody104_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody104_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody104_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody104_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def RemovedBody104_97 : StackLang.HolProg 64 :=
.seq RemovedBody104_95 RemovedBody104_96

def RemovedBody104_98 : StackLang.HolProg 64 :=
.seq RemovedBody104_94 RemovedBody104_97

def RemovedBody104_99 : StackLang.HolProg 64 :=
.seq RemovedBody104_93 RemovedBody104_98

def RemovedBody104_100 : StackLang.HolProg 64 :=
.seq RemovedBody104_92 RemovedBody104_99

def RemovedBody104_101 : StackLang.HolProg 64 :=
.seq RemovedBody104_91 RemovedBody104_100

def RemovedBody104_102 : StackLang.HolProg 64 :=
.seq RemovedBody104_90 RemovedBody104_101

def RemovedBody104_103 : StackLang.HolProg 64 :=
.seq RemovedBody104_89 RemovedBody104_102

def RemovedBody104_104 : StackLang.HolProg 64 :=
.seq RemovedBody104_88 RemovedBody104_103

def RemovedBody104_105 : StackLang.HolProg 64 :=
.seq RemovedBody104_87 RemovedBody104_104

def RemovedBody104_106 : StackLang.HolProg 64 :=
.seq RemovedBody104_28 RemovedBody104_105

def RemovedBody104_107 : StackLang.HolProg 64 :=
.seq RemovedBody104_25 RemovedBody104_106

def RemovedBody104_108 : StackLang.HolProg 64 :=
.seq RemovedBody104_24 RemovedBody104_107

def RemovedBody104_109 : StackLang.HolProg 64 :=
.seq RemovedBody104_21 RemovedBody104_108

def RemovedBody104_110 : StackLang.HolProg 64 :=
.seq RemovedBody104_20 RemovedBody104_109

def RemovedBody104_111 : StackLang.HolProg 64 :=
.seq RemovedBody104_19 RemovedBody104_110

def RemovedBody104_112 : StackLang.HolProg 64 :=
.seq RemovedBody104_8 RemovedBody104_111

def RemovedBody104_113 : StackLang.HolProg 64 :=
.seq RemovedBody104_7 RemovedBody104_112

def RemovedBody104_114 : StackLang.HolProg 64 :=
.seq RemovedBody104_6 RemovedBody104_113

def Removed104 : Nat × StackLang.HolProg 64 := (104, RemovedBody104_114)
theorem Removed104_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc104 = Removed104 := by
  kernel_rfl
#print axioms Removed104_eq
end InitECandidate.Proofs.BackendStages
