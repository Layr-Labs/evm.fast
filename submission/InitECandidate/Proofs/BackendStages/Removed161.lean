import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc161
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody161_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def RemovedBody161_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody161_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody161_3 : StackLang.HolProg 64 :=
.seq RemovedBody161_1 RemovedBody161_2

def RemovedBody161_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody161_3 RemovedBody161_4

def RemovedBody161_6 : StackLang.HolProg 64 :=
.seq RemovedBody161_0 RemovedBody161_5

def RemovedBody161_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody161_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody161_9 : StackLang.HolProg 64 :=
.seq RemovedBody161_7 RemovedBody161_8

def RemovedBody161_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody161_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody161_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody161_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody161_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody161_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody161_16 : StackLang.HolProg 64 :=
.seq RemovedBody161_14 RemovedBody161_15

def RemovedBody161_17 : StackLang.HolProg 64 :=
.seq RemovedBody161_13 RemovedBody161_16

def RemovedBody161_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 148#64)

def RemovedBody161_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody161_21 : StackLang.HolProg 64 :=
.seq RemovedBody161_19 RemovedBody161_20

def RemovedBody161_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody161_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody161_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody161_25 : StackLang.HolProg 64 :=
.seq RemovedBody161_23 RemovedBody161_24

def RemovedBody161_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_27 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody161_25 RemovedBody161_26

def RemovedBody161_28 : StackLang.HolProg 64 :=
.seq RemovedBody161_22 RemovedBody161_27

def RemovedBody161_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody161_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody161_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 161 3

def RemovedBody161_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody161_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody161_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody161_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody161_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody161_38 : StackLang.HolProg 64 :=
.seq RemovedBody161_36 RemovedBody161_37

def RemovedBody161_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody161_40 : StackLang.HolProg 64 :=
.seq RemovedBody161_38 RemovedBody161_39

def RemovedBody161_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody161_42 : StackLang.HolProg 64 :=
.seq RemovedBody161_40 RemovedBody161_41

def RemovedBody161_43 : StackLang.HolProg 64 :=
.seq RemovedBody161_35 RemovedBody161_42

def RemovedBody161_44 : StackLang.HolProg 64 :=
.seq RemovedBody161_34 RemovedBody161_43

def RemovedBody161_45 : StackLang.HolProg 64 :=
.seq RemovedBody161_33 RemovedBody161_44

def RemovedBody161_46 : StackLang.HolProg 64 :=
.seq RemovedBody161_32 RemovedBody161_45

def RemovedBody161_47 : StackLang.HolProg 64 :=
.seq RemovedBody161_31 RemovedBody161_46

def RemovedBody161_48 : StackLang.HolProg 64 :=
.seq RemovedBody161_30 RemovedBody161_47

def RemovedBody161_49 : StackLang.HolProg 64 :=
.seq RemovedBody161_29 RemovedBody161_48

def RemovedBody161_50 : StackLang.HolProg 64 :=
.seq RemovedBody161_28 RemovedBody161_49

def RemovedBody161_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody161_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody161_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody161_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody161_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody161_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody161_60 : StackLang.HolProg 64 :=
.seq RemovedBody161_58 RemovedBody161_59

def RemovedBody161_61 : StackLang.HolProg 64 :=
.seq RemovedBody161_57 RemovedBody161_60

def RemovedBody161_62 : StackLang.HolProg 64 :=
.seq RemovedBody161_56 RemovedBody161_61

def RemovedBody161_63 : StackLang.HolProg 64 :=
.seq RemovedBody161_55 RemovedBody161_62

def RemovedBody161_64 : StackLang.HolProg 64 :=
.seq RemovedBody161_54 RemovedBody161_63

def RemovedBody161_65 : StackLang.HolProg 64 :=
.seq RemovedBody161_53 RemovedBody161_64

def RemovedBody161_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody161_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody161_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody161_69 : StackLang.HolProg 64 :=
.seq RemovedBody161_67 RemovedBody161_68

def RemovedBody161_70 : StackLang.HolProg 64 :=
.seq RemovedBody161_66 RemovedBody161_69

def RemovedBody161_71 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody161_72 : StackLang.HolProg 64 :=
.seq RemovedBody161_70 RemovedBody161_71

def RemovedBody161_73 : StackLang.HolProg 64 :=
.call (some (RemovedBody161_65, 0, 161, 2)) (Sum.inl 159) (some (RemovedBody161_72, 161, 3))

def RemovedBody161_74 : StackLang.HolProg 64 :=
.seq RemovedBody161_52 RemovedBody161_73

def RemovedBody161_75 : StackLang.HolProg 64 :=
.seq RemovedBody161_51 RemovedBody161_74

def RemovedBody161_76 : StackLang.HolProg 64 :=
.seq RemovedBody161_50 RemovedBody161_75

def RemovedBody161_77 : StackLang.HolProg 64 :=
.seq RemovedBody161_21 RemovedBody161_76

def RemovedBody161_78 : StackLang.HolProg 64 :=
.seq RemovedBody161_18 RemovedBody161_77

def RemovedBody161_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody161_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_81 : StackLang.HolProg 64 :=
.seq RemovedBody161_79 RemovedBody161_80

def RemovedBody161_82 : StackLang.HolProg 64 :=
.seq RemovedBody161_78 RemovedBody161_81

def RemovedBody161_83 : StackLang.HolProg 64 :=
.seq RemovedBody161_17 RemovedBody161_82

def RemovedBody161_84 : StackLang.HolProg 64 :=
.seq RemovedBody161_12 RemovedBody161_83

def RemovedBody161_85 : StackLang.HolProg 64 :=
.seq RemovedBody161_11 RemovedBody161_84

def RemovedBody161_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody161_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_88 : StackLang.HolProg 64 :=
.seq RemovedBody161_86 RemovedBody161_87

def RemovedBody161_89 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody161_85 RemovedBody161_88

def RemovedBody161_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody161_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def RemovedBody161_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 128#64)

def RemovedBody161_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody161_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody161_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1#64)

def RemovedBody161_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 1#64)

def RemovedBody161_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def RemovedBody161_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody161_103 : StackLang.HolProg 64 :=
.seq RemovedBody161_101 RemovedBody161_102

def RemovedBody161_104 : StackLang.HolProg 64 :=
.seq RemovedBody161_100 RemovedBody161_103

def RemovedBody161_105 : StackLang.HolProg 64 :=
.seq RemovedBody161_99 RemovedBody161_104

def RemovedBody161_106 : StackLang.HolProg 64 :=
.seq RemovedBody161_98 RemovedBody161_105

def RemovedBody161_107 : StackLang.HolProg 64 :=
.seq RemovedBody161_97 RemovedBody161_106

def RemovedBody161_108 : StackLang.HolProg 64 :=
.seq RemovedBody161_96 RemovedBody161_107

def RemovedBody161_109 : StackLang.HolProg 64 :=
.seq RemovedBody161_95 RemovedBody161_108

def RemovedBody161_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody161_111 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 7 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody161_109 RemovedBody161_110

def RemovedBody161_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody161_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody161_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 183#64)

def RemovedBody161_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody161_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551488#64)))

def RemovedBody161_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def RemovedBody161_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody161_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def RemovedBody161_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody161_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody161_126 : StackLang.HolProg 64 :=
.seq RemovedBody161_124 RemovedBody161_125

def RemovedBody161_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 149#64)

def RemovedBody161_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody161_130 : StackLang.HolProg 64 :=
.seq RemovedBody161_128 RemovedBody161_129

def RemovedBody161_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody161_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody161_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody161_134 : StackLang.HolProg 64 :=
.seq RemovedBody161_132 RemovedBody161_133

def RemovedBody161_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_136 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody161_134 RemovedBody161_135

def RemovedBody161_137 : StackLang.HolProg 64 :=
.seq RemovedBody161_131 RemovedBody161_136

def RemovedBody161_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody161_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody161_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 161 5

def RemovedBody161_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody161_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody161_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody161_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody161_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody161_147 : StackLang.HolProg 64 :=
.seq RemovedBody161_145 RemovedBody161_146

def RemovedBody161_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody161_149 : StackLang.HolProg 64 :=
.seq RemovedBody161_147 RemovedBody161_148

def RemovedBody161_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody161_151 : StackLang.HolProg 64 :=
.seq RemovedBody161_149 RemovedBody161_150

def RemovedBody161_152 : StackLang.HolProg 64 :=
.seq RemovedBody161_144 RemovedBody161_151

def RemovedBody161_153 : StackLang.HolProg 64 :=
.seq RemovedBody161_143 RemovedBody161_152

def RemovedBody161_154 : StackLang.HolProg 64 :=
.seq RemovedBody161_142 RemovedBody161_153

def RemovedBody161_155 : StackLang.HolProg 64 :=
.seq RemovedBody161_141 RemovedBody161_154

def RemovedBody161_156 : StackLang.HolProg 64 :=
.seq RemovedBody161_140 RemovedBody161_155

def RemovedBody161_157 : StackLang.HolProg 64 :=
.seq RemovedBody161_139 RemovedBody161_156

def RemovedBody161_158 : StackLang.HolProg 64 :=
.seq RemovedBody161_138 RemovedBody161_157

def RemovedBody161_159 : StackLang.HolProg 64 :=
.seq RemovedBody161_137 RemovedBody161_158

def RemovedBody161_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody161_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody161_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody161_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody161_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody161_168 : StackLang.HolProg 64 :=
.seq RemovedBody161_166 RemovedBody161_167

def RemovedBody161_169 : StackLang.HolProg 64 :=
.seq RemovedBody161_165 RemovedBody161_168

def RemovedBody161_170 : StackLang.HolProg 64 :=
.seq RemovedBody161_164 RemovedBody161_169

def RemovedBody161_171 : StackLang.HolProg 64 :=
.seq RemovedBody161_163 RemovedBody161_170

def RemovedBody161_172 : StackLang.HolProg 64 :=
.seq RemovedBody161_162 RemovedBody161_171

def RemovedBody161_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody161_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody161_175 : StackLang.HolProg 64 :=
.seq RemovedBody161_173 RemovedBody161_174

def RemovedBody161_176 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody161_177 : StackLang.HolProg 64 :=
.seq RemovedBody161_175 RemovedBody161_176

def RemovedBody161_178 : StackLang.HolProg 64 :=
.call (some (RemovedBody161_172, 0, 161, 4)) (Sum.inl 159) (some (RemovedBody161_177, 161, 5))

def RemovedBody161_179 : StackLang.HolProg 64 :=
.seq RemovedBody161_161 RemovedBody161_178

def RemovedBody161_180 : StackLang.HolProg 64 :=
.seq RemovedBody161_160 RemovedBody161_179

def RemovedBody161_181 : StackLang.HolProg 64 :=
.seq RemovedBody161_159 RemovedBody161_180

def RemovedBody161_182 : StackLang.HolProg 64 :=
.seq RemovedBody161_130 RemovedBody161_181

def RemovedBody161_183 : StackLang.HolProg 64 :=
.seq RemovedBody161_127 RemovedBody161_182

def RemovedBody161_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody161_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_186 : StackLang.HolProg 64 :=
.seq RemovedBody161_184 RemovedBody161_185

def RemovedBody161_187 : StackLang.HolProg 64 :=
.seq RemovedBody161_183 RemovedBody161_186

def RemovedBody161_188 : StackLang.HolProg 64 :=
.seq RemovedBody161_126 RemovedBody161_187

def RemovedBody161_189 : StackLang.HolProg 64 :=
.seq RemovedBody161_123 RemovedBody161_188

def RemovedBody161_190 : StackLang.HolProg 64 :=
.seq RemovedBody161_122 RemovedBody161_189

def RemovedBody161_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody161_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody161_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody161_194 : StackLang.HolProg 64 :=
.seq RemovedBody161_192 RemovedBody161_193

def RemovedBody161_195 : StackLang.HolProg 64 :=
.seq RemovedBody161_191 RemovedBody161_194

def RemovedBody161_196 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) RemovedBody161_190 RemovedBody161_195

def RemovedBody161_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody161_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 1#64)

def RemovedBody161_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody161_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody161_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedBody161_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 128#64)

def RemovedBody161_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody161_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 4#64)

def RemovedBody161_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody161_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody161_210 : StackLang.HolProg 64 :=
.seq RemovedBody161_208 RemovedBody161_209

def RemovedBody161_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 150#64)

def RemovedBody161_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody161_214 : StackLang.HolProg 64 :=
.seq RemovedBody161_212 RemovedBody161_213

def RemovedBody161_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody161_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody161_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody161_218 : StackLang.HolProg 64 :=
.seq RemovedBody161_216 RemovedBody161_217

def RemovedBody161_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_220 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody161_218 RemovedBody161_219

def RemovedBody161_221 : StackLang.HolProg 64 :=
.seq RemovedBody161_215 RemovedBody161_220

def RemovedBody161_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody161_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody161_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 161 7

def RemovedBody161_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody161_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody161_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody161_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody161_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody161_231 : StackLang.HolProg 64 :=
.seq RemovedBody161_229 RemovedBody161_230

def RemovedBody161_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody161_233 : StackLang.HolProg 64 :=
.seq RemovedBody161_231 RemovedBody161_232

def RemovedBody161_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody161_235 : StackLang.HolProg 64 :=
.seq RemovedBody161_233 RemovedBody161_234

def RemovedBody161_236 : StackLang.HolProg 64 :=
.seq RemovedBody161_228 RemovedBody161_235

def RemovedBody161_237 : StackLang.HolProg 64 :=
.seq RemovedBody161_227 RemovedBody161_236

def RemovedBody161_238 : StackLang.HolProg 64 :=
.seq RemovedBody161_226 RemovedBody161_237

def RemovedBody161_239 : StackLang.HolProg 64 :=
.seq RemovedBody161_225 RemovedBody161_238

def RemovedBody161_240 : StackLang.HolProg 64 :=
.seq RemovedBody161_224 RemovedBody161_239

def RemovedBody161_241 : StackLang.HolProg 64 :=
.seq RemovedBody161_223 RemovedBody161_240

def RemovedBody161_242 : StackLang.HolProg 64 :=
.seq RemovedBody161_222 RemovedBody161_241

def RemovedBody161_243 : StackLang.HolProg 64 :=
.seq RemovedBody161_221 RemovedBody161_242

def RemovedBody161_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody161_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody161_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody161_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody161_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody161_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody161_253 : StackLang.HolProg 64 :=
.seq RemovedBody161_251 RemovedBody161_252

def RemovedBody161_254 : StackLang.HolProg 64 :=
.seq RemovedBody161_250 RemovedBody161_253

def RemovedBody161_255 : StackLang.HolProg 64 :=
.seq RemovedBody161_249 RemovedBody161_254

def RemovedBody161_256 : StackLang.HolProg 64 :=
.seq RemovedBody161_248 RemovedBody161_255

def RemovedBody161_257 : StackLang.HolProg 64 :=
.seq RemovedBody161_247 RemovedBody161_256

def RemovedBody161_258 : StackLang.HolProg 64 :=
.seq RemovedBody161_246 RemovedBody161_257

def RemovedBody161_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody161_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody161_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody161_262 : StackLang.HolProg 64 :=
.seq RemovedBody161_260 RemovedBody161_261

def RemovedBody161_263 : StackLang.HolProg 64 :=
.seq RemovedBody161_259 RemovedBody161_262

def RemovedBody161_264 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody161_265 : StackLang.HolProg 64 :=
.seq RemovedBody161_263 RemovedBody161_264

def RemovedBody161_266 : StackLang.HolProg 64 :=
.call (some (RemovedBody161_258, 0, 161, 6)) (Sum.inl 159) (some (RemovedBody161_265, 161, 7))

def RemovedBody161_267 : StackLang.HolProg 64 :=
.seq RemovedBody161_245 RemovedBody161_266

def RemovedBody161_268 : StackLang.HolProg 64 :=
.seq RemovedBody161_244 RemovedBody161_267

def RemovedBody161_269 : StackLang.HolProg 64 :=
.seq RemovedBody161_243 RemovedBody161_268

def RemovedBody161_270 : StackLang.HolProg 64 :=
.seq RemovedBody161_214 RemovedBody161_269

def RemovedBody161_271 : StackLang.HolProg 64 :=
.seq RemovedBody161_211 RemovedBody161_270

def RemovedBody161_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody161_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_274 : StackLang.HolProg 64 :=
.seq RemovedBody161_272 RemovedBody161_273

def RemovedBody161_275 : StackLang.HolProg 64 :=
.seq RemovedBody161_271 RemovedBody161_274

def RemovedBody161_276 : StackLang.HolProg 64 :=
.seq RemovedBody161_210 RemovedBody161_275

def RemovedBody161_277 : StackLang.HolProg 64 :=
.seq RemovedBody161_207 RemovedBody161_276

def RemovedBody161_278 : StackLang.HolProg 64 :=
.seq RemovedBody161_206 RemovedBody161_277

def RemovedBody161_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody161_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody161_281 : StackLang.HolProg 64 :=
.seq RemovedBody161_279 RemovedBody161_280

def RemovedBody161_282 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody161_278 RemovedBody161_281

def RemovedBody161_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody161_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_285 : StackLang.HolProg 64 :=
.seq RemovedBody161_283 RemovedBody161_284

def RemovedBody161_286 : StackLang.HolProg 64 :=
.seq RemovedBody161_282 RemovedBody161_285

def RemovedBody161_287 : StackLang.HolProg 64 :=
.seq RemovedBody161_205 RemovedBody161_286

def RemovedBody161_288 : StackLang.HolProg 64 :=
.seq RemovedBody161_204 RemovedBody161_287

def RemovedBody161_289 : StackLang.HolProg 64 :=
.seq RemovedBody161_203 RemovedBody161_288

def RemovedBody161_290 : StackLang.HolProg 64 :=
.seq RemovedBody161_202 RemovedBody161_289

def RemovedBody161_291 : StackLang.HolProg 64 :=
.seq RemovedBody161_201 RemovedBody161_290

def RemovedBody161_292 : StackLang.HolProg 64 :=
.seq RemovedBody161_200 RemovedBody161_291

def RemovedBody161_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody161_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody161_295 : StackLang.HolProg 64 :=
.seq RemovedBody161_293 RemovedBody161_294

def RemovedBody161_296 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody161_292 RemovedBody161_295

def RemovedBody161_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody161_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody161_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody161_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody161_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def RemovedBody161_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody161_306 : StackLang.HolProg 64 :=
.seq RemovedBody161_304 RemovedBody161_305

def RemovedBody161_307 : StackLang.HolProg 64 :=
.seq RemovedBody161_303 RemovedBody161_306

def RemovedBody161_308 : StackLang.HolProg 64 :=
.seq RemovedBody161_302 RemovedBody161_307

def RemovedBody161_309 : StackLang.HolProg 64 :=
.seq RemovedBody161_301 RemovedBody161_308

def RemovedBody161_310 : StackLang.HolProg 64 :=
.seq RemovedBody161_300 RemovedBody161_309

def RemovedBody161_311 : StackLang.HolProg 64 :=
.seq RemovedBody161_299 RemovedBody161_310

def RemovedBody161_312 : StackLang.HolProg 64 :=
.seq RemovedBody161_298 RemovedBody161_311

def RemovedBody161_313 : StackLang.HolProg 64 :=
.seq RemovedBody161_297 RemovedBody161_312

def RemovedBody161_314 : StackLang.HolProg 64 :=
.seq RemovedBody161_296 RemovedBody161_313

def RemovedBody161_315 : StackLang.HolProg 64 :=
.seq RemovedBody161_199 RemovedBody161_314

def RemovedBody161_316 : StackLang.HolProg 64 :=
.seq RemovedBody161_198 RemovedBody161_315

def RemovedBody161_317 : StackLang.HolProg 64 :=
.seq RemovedBody161_197 RemovedBody161_316

def RemovedBody161_318 : StackLang.HolProg 64 :=
.seq RemovedBody161_196 RemovedBody161_317

def RemovedBody161_319 : StackLang.HolProg 64 :=
.seq RemovedBody161_121 RemovedBody161_318

def RemovedBody161_320 : StackLang.HolProg 64 :=
.seq RemovedBody161_120 RemovedBody161_319

def RemovedBody161_321 : StackLang.HolProg 64 :=
.seq RemovedBody161_119 RemovedBody161_320

def RemovedBody161_322 : StackLang.HolProg 64 :=
.seq RemovedBody161_118 RemovedBody161_321

def RemovedBody161_323 : StackLang.HolProg 64 :=
.seq RemovedBody161_117 RemovedBody161_322

def RemovedBody161_324 : StackLang.HolProg 64 :=
.seq RemovedBody161_116 RemovedBody161_323

def RemovedBody161_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody161_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def RemovedBody161_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def RemovedBody161_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody161_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody161_330 : StackLang.HolProg 64 :=
.seq RemovedBody161_328 RemovedBody161_329

def RemovedBody161_331 : StackLang.HolProg 64 :=
.seq RemovedBody161_327 RemovedBody161_330

def RemovedBody161_332 : StackLang.HolProg 64 :=
.seq RemovedBody161_326 RemovedBody161_331

def RemovedBody161_333 : StackLang.HolProg 64 :=
.seq RemovedBody161_325 RemovedBody161_332

def RemovedBody161_334 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7) RemovedBody161_324 RemovedBody161_333

def RemovedBody161_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody161_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody161_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 191#64)

def RemovedBody161_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody161_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551433#64)))

def RemovedBody161_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def RemovedBody161_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody161_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def RemovedBody161_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody161_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody161_349 : StackLang.HolProg 64 :=
.seq RemovedBody161_347 RemovedBody161_348

def RemovedBody161_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody161_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody161_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody161_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody161_354 : StackLang.HolProg 64 :=
.seq RemovedBody161_352 RemovedBody161_353

def RemovedBody161_355 : StackLang.HolProg 64 :=
.seq RemovedBody161_351 RemovedBody161_354

def RemovedBody161_356 : StackLang.HolProg 64 :=
.seq RemovedBody161_350 RemovedBody161_355

def RemovedBody161_357 : StackLang.HolProg 64 :=
.seq RemovedBody161_349 RemovedBody161_356

def RemovedBody161_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 151#64)

def RemovedBody161_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody161_361 : StackLang.HolProg 64 :=
.seq RemovedBody161_359 RemovedBody161_360

def RemovedBody161_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody161_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody161_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody161_365 : StackLang.HolProg 64 :=
.seq RemovedBody161_363 RemovedBody161_364

def RemovedBody161_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_367 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody161_365 RemovedBody161_366

def RemovedBody161_368 : StackLang.HolProg 64 :=
.seq RemovedBody161_362 RemovedBody161_367

def RemovedBody161_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody161_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody161_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 161 9

def RemovedBody161_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody161_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody161_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody161_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody161_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody161_378 : StackLang.HolProg 64 :=
.seq RemovedBody161_376 RemovedBody161_377

def RemovedBody161_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody161_380 : StackLang.HolProg 64 :=
.seq RemovedBody161_378 RemovedBody161_379

def RemovedBody161_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody161_382 : StackLang.HolProg 64 :=
.seq RemovedBody161_380 RemovedBody161_381

def RemovedBody161_383 : StackLang.HolProg 64 :=
.seq RemovedBody161_375 RemovedBody161_382

def RemovedBody161_384 : StackLang.HolProg 64 :=
.seq RemovedBody161_374 RemovedBody161_383

def RemovedBody161_385 : StackLang.HolProg 64 :=
.seq RemovedBody161_373 RemovedBody161_384

def RemovedBody161_386 : StackLang.HolProg 64 :=
.seq RemovedBody161_372 RemovedBody161_385

def RemovedBody161_387 : StackLang.HolProg 64 :=
.seq RemovedBody161_371 RemovedBody161_386

def RemovedBody161_388 : StackLang.HolProg 64 :=
.seq RemovedBody161_370 RemovedBody161_387

def RemovedBody161_389 : StackLang.HolProg 64 :=
.seq RemovedBody161_369 RemovedBody161_388

def RemovedBody161_390 : StackLang.HolProg 64 :=
.seq RemovedBody161_368 RemovedBody161_389

def RemovedBody161_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody161_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody161_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody161_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody161_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody161_399 : StackLang.HolProg 64 :=
.seq RemovedBody161_397 RemovedBody161_398

def RemovedBody161_400 : StackLang.HolProg 64 :=
.seq RemovedBody161_396 RemovedBody161_399

def RemovedBody161_401 : StackLang.HolProg 64 :=
.seq RemovedBody161_395 RemovedBody161_400

def RemovedBody161_402 : StackLang.HolProg 64 :=
.seq RemovedBody161_394 RemovedBody161_401

def RemovedBody161_403 : StackLang.HolProg 64 :=
.seq RemovedBody161_393 RemovedBody161_402

def RemovedBody161_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody161_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody161_406 : StackLang.HolProg 64 :=
.seq RemovedBody161_404 RemovedBody161_405

def RemovedBody161_407 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody161_408 : StackLang.HolProg 64 :=
.seq RemovedBody161_406 RemovedBody161_407

def RemovedBody161_409 : StackLang.HolProg 64 :=
.call (some (RemovedBody161_403, 0, 161, 8)) (Sum.inl 159) (some (RemovedBody161_408, 161, 9))

def RemovedBody161_410 : StackLang.HolProg 64 :=
.seq RemovedBody161_392 RemovedBody161_409

def RemovedBody161_411 : StackLang.HolProg 64 :=
.seq RemovedBody161_391 RemovedBody161_410

def RemovedBody161_412 : StackLang.HolProg 64 :=
.seq RemovedBody161_390 RemovedBody161_411

def RemovedBody161_413 : StackLang.HolProg 64 :=
.seq RemovedBody161_361 RemovedBody161_412

def RemovedBody161_414 : StackLang.HolProg 64 :=
.seq RemovedBody161_358 RemovedBody161_413

def RemovedBody161_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody161_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_417 : StackLang.HolProg 64 :=
.seq RemovedBody161_415 RemovedBody161_416

def RemovedBody161_418 : StackLang.HolProg 64 :=
.seq RemovedBody161_414 RemovedBody161_417

def RemovedBody161_419 : StackLang.HolProg 64 :=
.seq RemovedBody161_357 RemovedBody161_418

def RemovedBody161_420 : StackLang.HolProg 64 :=
.seq RemovedBody161_346 RemovedBody161_419

def RemovedBody161_421 : StackLang.HolProg 64 :=
.seq RemovedBody161_345 RemovedBody161_420

def RemovedBody161_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody161_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody161_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody161_425 : StackLang.HolProg 64 :=
.seq RemovedBody161_423 RemovedBody161_424

def RemovedBody161_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody161_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody161_428 : StackLang.HolProg 64 :=
.seq RemovedBody161_426 RemovedBody161_427

def RemovedBody161_429 : StackLang.HolProg 64 :=
.seq RemovedBody161_425 RemovedBody161_428

def RemovedBody161_430 : StackLang.HolProg 64 :=
.seq RemovedBody161_422 RemovedBody161_429

def RemovedBody161_431 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody161_421 RemovedBody161_430

def RemovedBody161_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody161_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody161_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody161_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody161_437 : StackLang.HolProg 64 :=
.seq RemovedBody161_435 RemovedBody161_436

def RemovedBody161_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 152#64)

def RemovedBody161_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody161_441 : StackLang.HolProg 64 :=
.seq RemovedBody161_439 RemovedBody161_440

def RemovedBody161_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody161_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody161_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody161_445 : StackLang.HolProg 64 :=
.seq RemovedBody161_443 RemovedBody161_444

def RemovedBody161_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_447 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody161_445 RemovedBody161_446

def RemovedBody161_448 : StackLang.HolProg 64 :=
.seq RemovedBody161_442 RemovedBody161_447

def RemovedBody161_449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody161_450 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody161_451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 161 11

def RemovedBody161_452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody161_453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody161_454 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody161_455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody161_457 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody161_458 : StackLang.HolProg 64 :=
.seq RemovedBody161_456 RemovedBody161_457

def RemovedBody161_459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody161_460 : StackLang.HolProg 64 :=
.seq RemovedBody161_458 RemovedBody161_459

def RemovedBody161_461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody161_462 : StackLang.HolProg 64 :=
.seq RemovedBody161_460 RemovedBody161_461

def RemovedBody161_463 : StackLang.HolProg 64 :=
.seq RemovedBody161_455 RemovedBody161_462

def RemovedBody161_464 : StackLang.HolProg 64 :=
.seq RemovedBody161_454 RemovedBody161_463

def RemovedBody161_465 : StackLang.HolProg 64 :=
.seq RemovedBody161_453 RemovedBody161_464

def RemovedBody161_466 : StackLang.HolProg 64 :=
.seq RemovedBody161_452 RemovedBody161_465

def RemovedBody161_467 : StackLang.HolProg 64 :=
.seq RemovedBody161_451 RemovedBody161_466

def RemovedBody161_468 : StackLang.HolProg 64 :=
.seq RemovedBody161_450 RemovedBody161_467

def RemovedBody161_469 : StackLang.HolProg 64 :=
.seq RemovedBody161_449 RemovedBody161_468

def RemovedBody161_470 : StackLang.HolProg 64 :=
.seq RemovedBody161_448 RemovedBody161_469

def RemovedBody161_471 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_472 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_473 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_474 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody161_475 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody161_476 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody161_477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody161_478 : StackLang.HolProg 64 :=
.seq RemovedBody161_476 RemovedBody161_477

def RemovedBody161_479 : StackLang.HolProg 64 :=
.seq RemovedBody161_475 RemovedBody161_478

def RemovedBody161_480 : StackLang.HolProg 64 :=
.seq RemovedBody161_474 RemovedBody161_479

def RemovedBody161_481 : StackLang.HolProg 64 :=
.seq RemovedBody161_473 RemovedBody161_480

def RemovedBody161_482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_483 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody161_484 : StackLang.HolProg 64 :=
.seq RemovedBody161_482 RemovedBody161_483

def RemovedBody161_485 : StackLang.HolProg 64 :=
.call (some (RemovedBody161_481, 0, 161, 10)) (Sum.inl 160) (some (RemovedBody161_484, 161, 11))

def RemovedBody161_486 : StackLang.HolProg 64 :=
.seq RemovedBody161_472 RemovedBody161_485

def RemovedBody161_487 : StackLang.HolProg 64 :=
.seq RemovedBody161_471 RemovedBody161_486

def RemovedBody161_488 : StackLang.HolProg 64 :=
.seq RemovedBody161_470 RemovedBody161_487

def RemovedBody161_489 : StackLang.HolProg 64 :=
.seq RemovedBody161_441 RemovedBody161_488

def RemovedBody161_490 : StackLang.HolProg 64 :=
.seq RemovedBody161_438 RemovedBody161_489

def RemovedBody161_491 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody161_492 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 55#64)

def RemovedBody161_493 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_494 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody161_495 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 5#64)

def RemovedBody161_496 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody161_497 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody161_498 : StackLang.HolProg 64 :=
.seq RemovedBody161_496 RemovedBody161_497

def RemovedBody161_499 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody161_500 : StackLang.HolProg 64 :=
.seq RemovedBody161_498 RemovedBody161_499

def RemovedBody161_501 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_502 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 153#64)

def RemovedBody161_503 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody161_504 : StackLang.HolProg 64 :=
.seq RemovedBody161_502 RemovedBody161_503

def RemovedBody161_505 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody161_506 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody161_507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody161_508 : StackLang.HolProg 64 :=
.seq RemovedBody161_506 RemovedBody161_507

def RemovedBody161_509 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_510 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody161_508 RemovedBody161_509

def RemovedBody161_511 : StackLang.HolProg 64 :=
.seq RemovedBody161_505 RemovedBody161_510

def RemovedBody161_512 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody161_513 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody161_514 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 161 13

def RemovedBody161_515 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody161_516 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody161_517 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody161_518 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_519 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody161_520 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody161_521 : StackLang.HolProg 64 :=
.seq RemovedBody161_519 RemovedBody161_520

def RemovedBody161_522 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody161_523 : StackLang.HolProg 64 :=
.seq RemovedBody161_521 RemovedBody161_522

def RemovedBody161_524 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody161_525 : StackLang.HolProg 64 :=
.seq RemovedBody161_523 RemovedBody161_524

def RemovedBody161_526 : StackLang.HolProg 64 :=
.seq RemovedBody161_518 RemovedBody161_525

def RemovedBody161_527 : StackLang.HolProg 64 :=
.seq RemovedBody161_517 RemovedBody161_526

def RemovedBody161_528 : StackLang.HolProg 64 :=
.seq RemovedBody161_516 RemovedBody161_527

def RemovedBody161_529 : StackLang.HolProg 64 :=
.seq RemovedBody161_515 RemovedBody161_528

def RemovedBody161_530 : StackLang.HolProg 64 :=
.seq RemovedBody161_514 RemovedBody161_529

def RemovedBody161_531 : StackLang.HolProg 64 :=
.seq RemovedBody161_513 RemovedBody161_530

def RemovedBody161_532 : StackLang.HolProg 64 :=
.seq RemovedBody161_512 RemovedBody161_531

def RemovedBody161_533 : StackLang.HolProg 64 :=
.seq RemovedBody161_511 RemovedBody161_532

def RemovedBody161_534 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_535 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_536 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_537 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody161_538 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody161_539 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody161_540 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody161_541 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody161_542 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody161_543 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody161_544 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody161_545 : StackLang.HolProg 64 :=
.seq RemovedBody161_543 RemovedBody161_544

def RemovedBody161_546 : StackLang.HolProg 64 :=
.seq RemovedBody161_542 RemovedBody161_545

def RemovedBody161_547 : StackLang.HolProg 64 :=
.seq RemovedBody161_541 RemovedBody161_546

def RemovedBody161_548 : StackLang.HolProg 64 :=
.seq RemovedBody161_540 RemovedBody161_547

def RemovedBody161_549 : StackLang.HolProg 64 :=
.seq RemovedBody161_539 RemovedBody161_548

def RemovedBody161_550 : StackLang.HolProg 64 :=
.seq RemovedBody161_538 RemovedBody161_549

def RemovedBody161_551 : StackLang.HolProg 64 :=
.seq RemovedBody161_537 RemovedBody161_550

def RemovedBody161_552 : StackLang.HolProg 64 :=
.seq RemovedBody161_536 RemovedBody161_551

def RemovedBody161_553 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody161_554 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody161_555 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody161_556 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody161_557 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody161_558 : StackLang.HolProg 64 :=
.seq RemovedBody161_556 RemovedBody161_557

def RemovedBody161_559 : StackLang.HolProg 64 :=
.seq RemovedBody161_555 RemovedBody161_558

def RemovedBody161_560 : StackLang.HolProg 64 :=
.seq RemovedBody161_554 RemovedBody161_559

def RemovedBody161_561 : StackLang.HolProg 64 :=
.seq RemovedBody161_553 RemovedBody161_560

def RemovedBody161_562 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody161_563 : StackLang.HolProg 64 :=
.seq RemovedBody161_561 RemovedBody161_562

def RemovedBody161_564 : StackLang.HolProg 64 :=
.call (some (RemovedBody161_552, 0, 161, 12)) (Sum.inl 159) (some (RemovedBody161_563, 161, 13))

def RemovedBody161_565 : StackLang.HolProg 64 :=
.seq RemovedBody161_535 RemovedBody161_564

def RemovedBody161_566 : StackLang.HolProg 64 :=
.seq RemovedBody161_534 RemovedBody161_565

def RemovedBody161_567 : StackLang.HolProg 64 :=
.seq RemovedBody161_533 RemovedBody161_566

def RemovedBody161_568 : StackLang.HolProg 64 :=
.seq RemovedBody161_504 RemovedBody161_567

def RemovedBody161_569 : StackLang.HolProg 64 :=
.seq RemovedBody161_501 RemovedBody161_568

def RemovedBody161_570 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody161_571 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_572 : StackLang.HolProg 64 :=
.seq RemovedBody161_570 RemovedBody161_571

def RemovedBody161_573 : StackLang.HolProg 64 :=
.seq RemovedBody161_569 RemovedBody161_572

def RemovedBody161_574 : StackLang.HolProg 64 :=
.seq RemovedBody161_500 RemovedBody161_573

def RemovedBody161_575 : StackLang.HolProg 64 :=
.seq RemovedBody161_495 RemovedBody161_574

def RemovedBody161_576 : StackLang.HolProg 64 :=
.seq RemovedBody161_494 RemovedBody161_575

def RemovedBody161_577 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody161_578 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody161_579 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody161_580 : StackLang.HolProg 64 :=
.seq RemovedBody161_578 RemovedBody161_579

def RemovedBody161_581 : StackLang.HolProg 64 :=
.seq RemovedBody161_577 RemovedBody161_580

def RemovedBody161_582 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) RemovedBody161_576 RemovedBody161_581

def RemovedBody161_583 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody161_584 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_585 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def RemovedBody161_586 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_587 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody161_588 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_589 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody161_590 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def RemovedBody161_591 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody161_592 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody161_593 : StackLang.HolProg 64 :=
.seq RemovedBody161_591 RemovedBody161_592

def RemovedBody161_594 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_595 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 154#64)

def RemovedBody161_596 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody161_597 : StackLang.HolProg 64 :=
.seq RemovedBody161_595 RemovedBody161_596

def RemovedBody161_598 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody161_599 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody161_600 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody161_601 : StackLang.HolProg 64 :=
.seq RemovedBody161_599 RemovedBody161_600

def RemovedBody161_602 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_603 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody161_601 RemovedBody161_602

def RemovedBody161_604 : StackLang.HolProg 64 :=
.seq RemovedBody161_598 RemovedBody161_603

def RemovedBody161_605 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody161_606 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody161_607 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 161 15

def RemovedBody161_608 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody161_609 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody161_610 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody161_611 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_612 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody161_613 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody161_614 : StackLang.HolProg 64 :=
.seq RemovedBody161_612 RemovedBody161_613

def RemovedBody161_615 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody161_616 : StackLang.HolProg 64 :=
.seq RemovedBody161_614 RemovedBody161_615

def RemovedBody161_617 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody161_618 : StackLang.HolProg 64 :=
.seq RemovedBody161_616 RemovedBody161_617

def RemovedBody161_619 : StackLang.HolProg 64 :=
.seq RemovedBody161_611 RemovedBody161_618

def RemovedBody161_620 : StackLang.HolProg 64 :=
.seq RemovedBody161_610 RemovedBody161_619

def RemovedBody161_621 : StackLang.HolProg 64 :=
.seq RemovedBody161_609 RemovedBody161_620

def RemovedBody161_622 : StackLang.HolProg 64 :=
.seq RemovedBody161_608 RemovedBody161_621

def RemovedBody161_623 : StackLang.HolProg 64 :=
.seq RemovedBody161_607 RemovedBody161_622

def RemovedBody161_624 : StackLang.HolProg 64 :=
.seq RemovedBody161_606 RemovedBody161_623

def RemovedBody161_625 : StackLang.HolProg 64 :=
.seq RemovedBody161_605 RemovedBody161_624

def RemovedBody161_626 : StackLang.HolProg 64 :=
.seq RemovedBody161_604 RemovedBody161_625

def RemovedBody161_627 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_628 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_629 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_630 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody161_631 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody161_632 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody161_633 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody161_634 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody161_635 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody161_636 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody161_637 : StackLang.HolProg 64 :=
.seq RemovedBody161_635 RemovedBody161_636

def RemovedBody161_638 : StackLang.HolProg 64 :=
.seq RemovedBody161_634 RemovedBody161_637

def RemovedBody161_639 : StackLang.HolProg 64 :=
.seq RemovedBody161_633 RemovedBody161_638

def RemovedBody161_640 : StackLang.HolProg 64 :=
.seq RemovedBody161_632 RemovedBody161_639

def RemovedBody161_641 : StackLang.HolProg 64 :=
.seq RemovedBody161_631 RemovedBody161_640

def RemovedBody161_642 : StackLang.HolProg 64 :=
.seq RemovedBody161_630 RemovedBody161_641

def RemovedBody161_643 : StackLang.HolProg 64 :=
.seq RemovedBody161_629 RemovedBody161_642

def RemovedBody161_644 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody161_645 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody161_646 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody161_647 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody161_648 : StackLang.HolProg 64 :=
.seq RemovedBody161_646 RemovedBody161_647

def RemovedBody161_649 : StackLang.HolProg 64 :=
.seq RemovedBody161_645 RemovedBody161_648

def RemovedBody161_650 : StackLang.HolProg 64 :=
.seq RemovedBody161_644 RemovedBody161_649

def RemovedBody161_651 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody161_652 : StackLang.HolProg 64 :=
.seq RemovedBody161_650 RemovedBody161_651

def RemovedBody161_653 : StackLang.HolProg 64 :=
.call (some (RemovedBody161_643, 0, 161, 14)) (Sum.inl 159) (some (RemovedBody161_652, 161, 15))

def RemovedBody161_654 : StackLang.HolProg 64 :=
.seq RemovedBody161_628 RemovedBody161_653

def RemovedBody161_655 : StackLang.HolProg 64 :=
.seq RemovedBody161_627 RemovedBody161_654

def RemovedBody161_656 : StackLang.HolProg 64 :=
.seq RemovedBody161_626 RemovedBody161_655

def RemovedBody161_657 : StackLang.HolProg 64 :=
.seq RemovedBody161_597 RemovedBody161_656

def RemovedBody161_658 : StackLang.HolProg 64 :=
.seq RemovedBody161_594 RemovedBody161_657

def RemovedBody161_659 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody161_660 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_661 : StackLang.HolProg 64 :=
.seq RemovedBody161_659 RemovedBody161_660

def RemovedBody161_662 : StackLang.HolProg 64 :=
.seq RemovedBody161_658 RemovedBody161_661

def RemovedBody161_663 : StackLang.HolProg 64 :=
.seq RemovedBody161_593 RemovedBody161_662

def RemovedBody161_664 : StackLang.HolProg 64 :=
.seq RemovedBody161_590 RemovedBody161_663

def RemovedBody161_665 : StackLang.HolProg 64 :=
.seq RemovedBody161_589 RemovedBody161_664

def RemovedBody161_666 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody161_667 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody161_668 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody161_669 : StackLang.HolProg 64 :=
.seq RemovedBody161_667 RemovedBody161_668

def RemovedBody161_670 : StackLang.HolProg 64 :=
.seq RemovedBody161_666 RemovedBody161_669

def RemovedBody161_671 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) RemovedBody161_665 RemovedBody161_670

def RemovedBody161_672 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody161_673 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody161_674 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_675 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody161_676 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody161_677 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_678 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody161_679 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody161_680 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_681 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def RemovedBody161_682 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody161_683 : StackLang.HolProg 64 :=
.seq RemovedBody161_681 RemovedBody161_682

def RemovedBody161_684 : StackLang.HolProg 64 :=
.seq RemovedBody161_680 RemovedBody161_683

def RemovedBody161_685 : StackLang.HolProg 64 :=
.seq RemovedBody161_679 RemovedBody161_684

def RemovedBody161_686 : StackLang.HolProg 64 :=
.seq RemovedBody161_678 RemovedBody161_685

def RemovedBody161_687 : StackLang.HolProg 64 :=
.seq RemovedBody161_677 RemovedBody161_686

def RemovedBody161_688 : StackLang.HolProg 64 :=
.seq RemovedBody161_676 RemovedBody161_687

def RemovedBody161_689 : StackLang.HolProg 64 :=
.seq RemovedBody161_675 RemovedBody161_688

def RemovedBody161_690 : StackLang.HolProg 64 :=
.seq RemovedBody161_674 RemovedBody161_689

def RemovedBody161_691 : StackLang.HolProg 64 :=
.seq RemovedBody161_673 RemovedBody161_690

def RemovedBody161_692 : StackLang.HolProg 64 :=
.seq RemovedBody161_672 RemovedBody161_691

def RemovedBody161_693 : StackLang.HolProg 64 :=
.seq RemovedBody161_671 RemovedBody161_692

def RemovedBody161_694 : StackLang.HolProg 64 :=
.seq RemovedBody161_588 RemovedBody161_693

def RemovedBody161_695 : StackLang.HolProg 64 :=
.seq RemovedBody161_587 RemovedBody161_694

def RemovedBody161_696 : StackLang.HolProg 64 :=
.seq RemovedBody161_586 RemovedBody161_695

def RemovedBody161_697 : StackLang.HolProg 64 :=
.seq RemovedBody161_585 RemovedBody161_696

def RemovedBody161_698 : StackLang.HolProg 64 :=
.seq RemovedBody161_584 RemovedBody161_697

def RemovedBody161_699 : StackLang.HolProg 64 :=
.seq RemovedBody161_583 RemovedBody161_698

def RemovedBody161_700 : StackLang.HolProg 64 :=
.seq RemovedBody161_582 RemovedBody161_699

def RemovedBody161_701 : StackLang.HolProg 64 :=
.seq RemovedBody161_493 RemovedBody161_700

def RemovedBody161_702 : StackLang.HolProg 64 :=
.seq RemovedBody161_492 RemovedBody161_701

def RemovedBody161_703 : StackLang.HolProg 64 :=
.seq RemovedBody161_491 RemovedBody161_702

def RemovedBody161_704 : StackLang.HolProg 64 :=
.seq RemovedBody161_490 RemovedBody161_703

def RemovedBody161_705 : StackLang.HolProg 64 :=
.seq RemovedBody161_437 RemovedBody161_704

def RemovedBody161_706 : StackLang.HolProg 64 :=
.seq RemovedBody161_434 RemovedBody161_705

def RemovedBody161_707 : StackLang.HolProg 64 :=
.seq RemovedBody161_433 RemovedBody161_706

def RemovedBody161_708 : StackLang.HolProg 64 :=
.seq RemovedBody161_432 RemovedBody161_707

def RemovedBody161_709 : StackLang.HolProg 64 :=
.seq RemovedBody161_431 RemovedBody161_708

def RemovedBody161_710 : StackLang.HolProg 64 :=
.seq RemovedBody161_344 RemovedBody161_709

def RemovedBody161_711 : StackLang.HolProg 64 :=
.seq RemovedBody161_343 RemovedBody161_710

def RemovedBody161_712 : StackLang.HolProg 64 :=
.seq RemovedBody161_342 RemovedBody161_711

def RemovedBody161_713 : StackLang.HolProg 64 :=
.seq RemovedBody161_341 RemovedBody161_712

def RemovedBody161_714 : StackLang.HolProg 64 :=
.seq RemovedBody161_340 RemovedBody161_713

def RemovedBody161_715 : StackLang.HolProg 64 :=
.seq RemovedBody161_339 RemovedBody161_714

def RemovedBody161_716 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_717 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) RemovedBody161_715 RemovedBody161_716

def RemovedBody161_718 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody161_719 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody161_720 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 247#64)

def RemovedBody161_721 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_722 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody161_723 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_724 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551424#64)))

def RemovedBody161_725 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_726 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def RemovedBody161_727 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_728 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody161_729 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def RemovedBody161_730 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody161_731 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody161_732 : StackLang.HolProg 64 :=
.seq RemovedBody161_730 RemovedBody161_731

def RemovedBody161_733 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody161_734 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody161_735 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody161_736 : StackLang.HolProg 64 :=
.seq RemovedBody161_734 RemovedBody161_735

def RemovedBody161_737 : StackLang.HolProg 64 :=
.seq RemovedBody161_733 RemovedBody161_736

def RemovedBody161_738 : StackLang.HolProg 64 :=
.seq RemovedBody161_732 RemovedBody161_737

def RemovedBody161_739 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_740 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 155#64)

def RemovedBody161_741 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody161_742 : StackLang.HolProg 64 :=
.seq RemovedBody161_740 RemovedBody161_741

def RemovedBody161_743 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody161_744 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody161_745 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody161_746 : StackLang.HolProg 64 :=
.seq RemovedBody161_744 RemovedBody161_745

def RemovedBody161_747 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_748 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody161_746 RemovedBody161_747

def RemovedBody161_749 : StackLang.HolProg 64 :=
.seq RemovedBody161_743 RemovedBody161_748

def RemovedBody161_750 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody161_751 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody161_752 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 161 17

def RemovedBody161_753 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody161_754 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody161_755 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody161_756 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_757 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody161_758 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody161_759 : StackLang.HolProg 64 :=
.seq RemovedBody161_757 RemovedBody161_758

def RemovedBody161_760 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody161_761 : StackLang.HolProg 64 :=
.seq RemovedBody161_759 RemovedBody161_760

def RemovedBody161_762 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody161_763 : StackLang.HolProg 64 :=
.seq RemovedBody161_761 RemovedBody161_762

def RemovedBody161_764 : StackLang.HolProg 64 :=
.seq RemovedBody161_756 RemovedBody161_763

def RemovedBody161_765 : StackLang.HolProg 64 :=
.seq RemovedBody161_755 RemovedBody161_764

def RemovedBody161_766 : StackLang.HolProg 64 :=
.seq RemovedBody161_754 RemovedBody161_765

def RemovedBody161_767 : StackLang.HolProg 64 :=
.seq RemovedBody161_753 RemovedBody161_766

def RemovedBody161_768 : StackLang.HolProg 64 :=
.seq RemovedBody161_752 RemovedBody161_767

def RemovedBody161_769 : StackLang.HolProg 64 :=
.seq RemovedBody161_751 RemovedBody161_768

def RemovedBody161_770 : StackLang.HolProg 64 :=
.seq RemovedBody161_750 RemovedBody161_769

def RemovedBody161_771 : StackLang.HolProg 64 :=
.seq RemovedBody161_749 RemovedBody161_770

def RemovedBody161_772 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_773 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_774 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_775 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody161_776 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody161_777 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody161_778 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody161_779 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody161_780 : StackLang.HolProg 64 :=
.seq RemovedBody161_778 RemovedBody161_779

def RemovedBody161_781 : StackLang.HolProg 64 :=
.seq RemovedBody161_777 RemovedBody161_780

def RemovedBody161_782 : StackLang.HolProg 64 :=
.seq RemovedBody161_776 RemovedBody161_781

def RemovedBody161_783 : StackLang.HolProg 64 :=
.seq RemovedBody161_775 RemovedBody161_782

def RemovedBody161_784 : StackLang.HolProg 64 :=
.seq RemovedBody161_774 RemovedBody161_783

def RemovedBody161_785 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody161_786 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody161_787 : StackLang.HolProg 64 :=
.seq RemovedBody161_785 RemovedBody161_786

def RemovedBody161_788 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody161_789 : StackLang.HolProg 64 :=
.seq RemovedBody161_787 RemovedBody161_788

def RemovedBody161_790 : StackLang.HolProg 64 :=
.call (some (RemovedBody161_784, 0, 161, 16)) (Sum.inl 159) (some (RemovedBody161_789, 161, 17))

def RemovedBody161_791 : StackLang.HolProg 64 :=
.seq RemovedBody161_773 RemovedBody161_790

def RemovedBody161_792 : StackLang.HolProg 64 :=
.seq RemovedBody161_772 RemovedBody161_791

def RemovedBody161_793 : StackLang.HolProg 64 :=
.seq RemovedBody161_771 RemovedBody161_792

def RemovedBody161_794 : StackLang.HolProg 64 :=
.seq RemovedBody161_742 RemovedBody161_793

def RemovedBody161_795 : StackLang.HolProg 64 :=
.seq RemovedBody161_739 RemovedBody161_794

def RemovedBody161_796 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody161_797 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_798 : StackLang.HolProg 64 :=
.seq RemovedBody161_796 RemovedBody161_797

def RemovedBody161_799 : StackLang.HolProg 64 :=
.seq RemovedBody161_795 RemovedBody161_798

def RemovedBody161_800 : StackLang.HolProg 64 :=
.seq RemovedBody161_738 RemovedBody161_799

def RemovedBody161_801 : StackLang.HolProg 64 :=
.seq RemovedBody161_729 RemovedBody161_800

def RemovedBody161_802 : StackLang.HolProg 64 :=
.seq RemovedBody161_728 RemovedBody161_801

def RemovedBody161_803 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody161_804 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody161_805 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody161_806 : StackLang.HolProg 64 :=
.seq RemovedBody161_804 RemovedBody161_805

def RemovedBody161_807 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody161_808 : StackLang.HolProg 64 :=
.seq RemovedBody161_806 RemovedBody161_807

def RemovedBody161_809 : StackLang.HolProg 64 :=
.seq RemovedBody161_803 RemovedBody161_808

def RemovedBody161_810 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody161_802 RemovedBody161_809

def RemovedBody161_811 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody161_812 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_813 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody161_814 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody161_815 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody161_816 : StackLang.HolProg 64 :=
.seq RemovedBody161_814 RemovedBody161_815

def RemovedBody161_817 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_818 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 156#64)

def RemovedBody161_819 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody161_820 : StackLang.HolProg 64 :=
.seq RemovedBody161_818 RemovedBody161_819

def RemovedBody161_821 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody161_822 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody161_823 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody161_824 : StackLang.HolProg 64 :=
.seq RemovedBody161_822 RemovedBody161_823

def RemovedBody161_825 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_826 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody161_824 RemovedBody161_825

def RemovedBody161_827 : StackLang.HolProg 64 :=
.seq RemovedBody161_821 RemovedBody161_826

def RemovedBody161_828 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody161_829 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody161_830 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 161 19

def RemovedBody161_831 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody161_832 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody161_833 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody161_834 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_835 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody161_836 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody161_837 : StackLang.HolProg 64 :=
.seq RemovedBody161_835 RemovedBody161_836

def RemovedBody161_838 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody161_839 : StackLang.HolProg 64 :=
.seq RemovedBody161_837 RemovedBody161_838

def RemovedBody161_840 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody161_841 : StackLang.HolProg 64 :=
.seq RemovedBody161_839 RemovedBody161_840

def RemovedBody161_842 : StackLang.HolProg 64 :=
.seq RemovedBody161_834 RemovedBody161_841

def RemovedBody161_843 : StackLang.HolProg 64 :=
.seq RemovedBody161_833 RemovedBody161_842

def RemovedBody161_844 : StackLang.HolProg 64 :=
.seq RemovedBody161_832 RemovedBody161_843

def RemovedBody161_845 : StackLang.HolProg 64 :=
.seq RemovedBody161_831 RemovedBody161_844

def RemovedBody161_846 : StackLang.HolProg 64 :=
.seq RemovedBody161_830 RemovedBody161_845

def RemovedBody161_847 : StackLang.HolProg 64 :=
.seq RemovedBody161_829 RemovedBody161_846

def RemovedBody161_848 : StackLang.HolProg 64 :=
.seq RemovedBody161_828 RemovedBody161_847

def RemovedBody161_849 : StackLang.HolProg 64 :=
.seq RemovedBody161_827 RemovedBody161_848

def RemovedBody161_850 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_851 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_852 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_853 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody161_854 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody161_855 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody161_856 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody161_857 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody161_858 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody161_859 : StackLang.HolProg 64 :=
.seq RemovedBody161_857 RemovedBody161_858

def RemovedBody161_860 : StackLang.HolProg 64 :=
.seq RemovedBody161_856 RemovedBody161_859

def RemovedBody161_861 : StackLang.HolProg 64 :=
.seq RemovedBody161_855 RemovedBody161_860

def RemovedBody161_862 : StackLang.HolProg 64 :=
.seq RemovedBody161_854 RemovedBody161_861

def RemovedBody161_863 : StackLang.HolProg 64 :=
.seq RemovedBody161_853 RemovedBody161_862

def RemovedBody161_864 : StackLang.HolProg 64 :=
.seq RemovedBody161_852 RemovedBody161_863

def RemovedBody161_865 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody161_866 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody161_867 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody161_868 : StackLang.HolProg 64 :=
.seq RemovedBody161_866 RemovedBody161_867

def RemovedBody161_869 : StackLang.HolProg 64 :=
.seq RemovedBody161_865 RemovedBody161_868

def RemovedBody161_870 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody161_871 : StackLang.HolProg 64 :=
.seq RemovedBody161_869 RemovedBody161_870

def RemovedBody161_872 : StackLang.HolProg 64 :=
.call (some (RemovedBody161_864, 0, 161, 18)) (Sum.inl 167) (some (RemovedBody161_871, 161, 19))

def RemovedBody161_873 : StackLang.HolProg 64 :=
.seq RemovedBody161_851 RemovedBody161_872

def RemovedBody161_874 : StackLang.HolProg 64 :=
.seq RemovedBody161_850 RemovedBody161_873

def RemovedBody161_875 : StackLang.HolProg 64 :=
.seq RemovedBody161_849 RemovedBody161_874

def RemovedBody161_876 : StackLang.HolProg 64 :=
.seq RemovedBody161_820 RemovedBody161_875

def RemovedBody161_877 : StackLang.HolProg 64 :=
.seq RemovedBody161_817 RemovedBody161_876

def RemovedBody161_878 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody161_879 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody161_880 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_881 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody161_882 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_883 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody161_884 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_885 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def RemovedBody161_886 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 7

def RemovedBody161_887 : StackLang.HolProg 64 :=
.seq RemovedBody161_885 RemovedBody161_886

def RemovedBody161_888 : StackLang.HolProg 64 :=
.seq RemovedBody161_884 RemovedBody161_887

def RemovedBody161_889 : StackLang.HolProg 64 :=
.seq RemovedBody161_883 RemovedBody161_888

def RemovedBody161_890 : StackLang.HolProg 64 :=
.seq RemovedBody161_882 RemovedBody161_889

def RemovedBody161_891 : StackLang.HolProg 64 :=
.seq RemovedBody161_881 RemovedBody161_890

def RemovedBody161_892 : StackLang.HolProg 64 :=
.seq RemovedBody161_880 RemovedBody161_891

def RemovedBody161_893 : StackLang.HolProg 64 :=
.seq RemovedBody161_879 RemovedBody161_892

def RemovedBody161_894 : StackLang.HolProg 64 :=
.seq RemovedBody161_878 RemovedBody161_893

def RemovedBody161_895 : StackLang.HolProg 64 :=
.seq RemovedBody161_877 RemovedBody161_894

def RemovedBody161_896 : StackLang.HolProg 64 :=
.seq RemovedBody161_816 RemovedBody161_895

def RemovedBody161_897 : StackLang.HolProg 64 :=
.seq RemovedBody161_813 RemovedBody161_896

def RemovedBody161_898 : StackLang.HolProg 64 :=
.seq RemovedBody161_812 RemovedBody161_897

def RemovedBody161_899 : StackLang.HolProg 64 :=
.seq RemovedBody161_811 RemovedBody161_898

def RemovedBody161_900 : StackLang.HolProg 64 :=
.seq RemovedBody161_810 RemovedBody161_899

def RemovedBody161_901 : StackLang.HolProg 64 :=
.seq RemovedBody161_727 RemovedBody161_900

def RemovedBody161_902 : StackLang.HolProg 64 :=
.seq RemovedBody161_726 RemovedBody161_901

def RemovedBody161_903 : StackLang.HolProg 64 :=
.seq RemovedBody161_725 RemovedBody161_902

def RemovedBody161_904 : StackLang.HolProg 64 :=
.seq RemovedBody161_724 RemovedBody161_903

def RemovedBody161_905 : StackLang.HolProg 64 :=
.seq RemovedBody161_723 RemovedBody161_904

def RemovedBody161_906 : StackLang.HolProg 64 :=
.seq RemovedBody161_722 RemovedBody161_905

def RemovedBody161_907 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_908 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) RemovedBody161_906 RemovedBody161_907

def RemovedBody161_909 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody161_910 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody161_911 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_912 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551369#64)))

def RemovedBody161_913 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_914 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def RemovedBody161_915 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_916 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody161_917 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def RemovedBody161_918 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody161_919 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody161_920 : StackLang.HolProg 64 :=
.seq RemovedBody161_918 RemovedBody161_919

def RemovedBody161_921 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_922 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 157#64)

def RemovedBody161_923 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody161_924 : StackLang.HolProg 64 :=
.seq RemovedBody161_922 RemovedBody161_923

def RemovedBody161_925 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody161_926 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody161_927 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody161_928 : StackLang.HolProg 64 :=
.seq RemovedBody161_926 RemovedBody161_927

def RemovedBody161_929 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_930 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody161_928 RemovedBody161_929

def RemovedBody161_931 : StackLang.HolProg 64 :=
.seq RemovedBody161_925 RemovedBody161_930

def RemovedBody161_932 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody161_933 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody161_934 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 161 21

def RemovedBody161_935 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody161_936 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody161_937 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody161_938 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_939 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody161_940 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody161_941 : StackLang.HolProg 64 :=
.seq RemovedBody161_939 RemovedBody161_940

def RemovedBody161_942 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody161_943 : StackLang.HolProg 64 :=
.seq RemovedBody161_941 RemovedBody161_942

def RemovedBody161_944 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody161_945 : StackLang.HolProg 64 :=
.seq RemovedBody161_943 RemovedBody161_944

def RemovedBody161_946 : StackLang.HolProg 64 :=
.seq RemovedBody161_938 RemovedBody161_945

def RemovedBody161_947 : StackLang.HolProg 64 :=
.seq RemovedBody161_937 RemovedBody161_946

def RemovedBody161_948 : StackLang.HolProg 64 :=
.seq RemovedBody161_936 RemovedBody161_947

def RemovedBody161_949 : StackLang.HolProg 64 :=
.seq RemovedBody161_935 RemovedBody161_948

def RemovedBody161_950 : StackLang.HolProg 64 :=
.seq RemovedBody161_934 RemovedBody161_949

def RemovedBody161_951 : StackLang.HolProg 64 :=
.seq RemovedBody161_933 RemovedBody161_950

def RemovedBody161_952 : StackLang.HolProg 64 :=
.seq RemovedBody161_932 RemovedBody161_951

def RemovedBody161_953 : StackLang.HolProg 64 :=
.seq RemovedBody161_931 RemovedBody161_952

def RemovedBody161_954 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_955 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_956 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_957 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody161_958 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody161_959 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody161_960 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody161_961 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody161_962 : StackLang.HolProg 64 :=
.seq RemovedBody161_960 RemovedBody161_961

def RemovedBody161_963 : StackLang.HolProg 64 :=
.seq RemovedBody161_959 RemovedBody161_962

def RemovedBody161_964 : StackLang.HolProg 64 :=
.seq RemovedBody161_958 RemovedBody161_963

def RemovedBody161_965 : StackLang.HolProg 64 :=
.seq RemovedBody161_957 RemovedBody161_964

def RemovedBody161_966 : StackLang.HolProg 64 :=
.seq RemovedBody161_956 RemovedBody161_965

def RemovedBody161_967 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody161_968 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody161_969 : StackLang.HolProg 64 :=
.seq RemovedBody161_967 RemovedBody161_968

def RemovedBody161_970 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody161_971 : StackLang.HolProg 64 :=
.seq RemovedBody161_969 RemovedBody161_970

def RemovedBody161_972 : StackLang.HolProg 64 :=
.call (some (RemovedBody161_966, 0, 161, 20)) (Sum.inl 159) (some (RemovedBody161_971, 161, 21))

def RemovedBody161_973 : StackLang.HolProg 64 :=
.seq RemovedBody161_955 RemovedBody161_972

def RemovedBody161_974 : StackLang.HolProg 64 :=
.seq RemovedBody161_954 RemovedBody161_973

def RemovedBody161_975 : StackLang.HolProg 64 :=
.seq RemovedBody161_953 RemovedBody161_974

def RemovedBody161_976 : StackLang.HolProg 64 :=
.seq RemovedBody161_924 RemovedBody161_975

def RemovedBody161_977 : StackLang.HolProg 64 :=
.seq RemovedBody161_921 RemovedBody161_976

def RemovedBody161_978 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody161_979 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_980 : StackLang.HolProg 64 :=
.seq RemovedBody161_978 RemovedBody161_979

def RemovedBody161_981 : StackLang.HolProg 64 :=
.seq RemovedBody161_977 RemovedBody161_980

def RemovedBody161_982 : StackLang.HolProg 64 :=
.seq RemovedBody161_920 RemovedBody161_981

def RemovedBody161_983 : StackLang.HolProg 64 :=
.seq RemovedBody161_917 RemovedBody161_982

def RemovedBody161_984 : StackLang.HolProg 64 :=
.seq RemovedBody161_916 RemovedBody161_983

def RemovedBody161_985 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody161_986 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody161_987 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody161_988 : StackLang.HolProg 64 :=
.seq RemovedBody161_986 RemovedBody161_987

def RemovedBody161_989 : StackLang.HolProg 64 :=
.seq RemovedBody161_985 RemovedBody161_988

def RemovedBody161_990 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody161_984 RemovedBody161_989

def RemovedBody161_991 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody161_992 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_993 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody161_994 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody161_995 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody161_996 : StackLang.HolProg 64 :=
.seq RemovedBody161_994 RemovedBody161_995

def RemovedBody161_997 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_998 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 158#64)

def RemovedBody161_999 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody161_1000 : StackLang.HolProg 64 :=
.seq RemovedBody161_998 RemovedBody161_999

def RemovedBody161_1001 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody161_1002 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody161_1003 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody161_1004 : StackLang.HolProg 64 :=
.seq RemovedBody161_1002 RemovedBody161_1003

def RemovedBody161_1005 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_1006 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody161_1004 RemovedBody161_1005

def RemovedBody161_1007 : StackLang.HolProg 64 :=
.seq RemovedBody161_1001 RemovedBody161_1006

def RemovedBody161_1008 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody161_1009 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody161_1010 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 161 23

def RemovedBody161_1011 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody161_1012 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody161_1013 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody161_1014 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_1015 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody161_1016 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody161_1017 : StackLang.HolProg 64 :=
.seq RemovedBody161_1015 RemovedBody161_1016

def RemovedBody161_1018 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody161_1019 : StackLang.HolProg 64 :=
.seq RemovedBody161_1017 RemovedBody161_1018

def RemovedBody161_1020 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody161_1021 : StackLang.HolProg 64 :=
.seq RemovedBody161_1019 RemovedBody161_1020

def RemovedBody161_1022 : StackLang.HolProg 64 :=
.seq RemovedBody161_1014 RemovedBody161_1021

def RemovedBody161_1023 : StackLang.HolProg 64 :=
.seq RemovedBody161_1013 RemovedBody161_1022

def RemovedBody161_1024 : StackLang.HolProg 64 :=
.seq RemovedBody161_1012 RemovedBody161_1023

def RemovedBody161_1025 : StackLang.HolProg 64 :=
.seq RemovedBody161_1011 RemovedBody161_1024

def RemovedBody161_1026 : StackLang.HolProg 64 :=
.seq RemovedBody161_1010 RemovedBody161_1025

def RemovedBody161_1027 : StackLang.HolProg 64 :=
.seq RemovedBody161_1009 RemovedBody161_1026

def RemovedBody161_1028 : StackLang.HolProg 64 :=
.seq RemovedBody161_1008 RemovedBody161_1027

def RemovedBody161_1029 : StackLang.HolProg 64 :=
.seq RemovedBody161_1007 RemovedBody161_1028

def RemovedBody161_1030 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_1031 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_1032 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_1033 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody161_1034 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody161_1035 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody161_1036 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody161_1037 : StackLang.HolProg 64 :=
.seq RemovedBody161_1035 RemovedBody161_1036

def RemovedBody161_1038 : StackLang.HolProg 64 :=
.seq RemovedBody161_1034 RemovedBody161_1037

def RemovedBody161_1039 : StackLang.HolProg 64 :=
.seq RemovedBody161_1033 RemovedBody161_1038

def RemovedBody161_1040 : StackLang.HolProg 64 :=
.seq RemovedBody161_1032 RemovedBody161_1039

def RemovedBody161_1041 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_1042 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody161_1043 : StackLang.HolProg 64 :=
.seq RemovedBody161_1041 RemovedBody161_1042

def RemovedBody161_1044 : StackLang.HolProg 64 :=
.call (some (RemovedBody161_1040, 0, 161, 22)) (Sum.inl 160) (some (RemovedBody161_1043, 161, 23))

def RemovedBody161_1045 : StackLang.HolProg 64 :=
.seq RemovedBody161_1031 RemovedBody161_1044

def RemovedBody161_1046 : StackLang.HolProg 64 :=
.seq RemovedBody161_1030 RemovedBody161_1045

def RemovedBody161_1047 : StackLang.HolProg 64 :=
.seq RemovedBody161_1029 RemovedBody161_1046

def RemovedBody161_1048 : StackLang.HolProg 64 :=
.seq RemovedBody161_1000 RemovedBody161_1047

def RemovedBody161_1049 : StackLang.HolProg 64 :=
.seq RemovedBody161_997 RemovedBody161_1048

def RemovedBody161_1050 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody161_1051 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 55#64)

def RemovedBody161_1052 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_1053 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody161_1054 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 5#64)

def RemovedBody161_1055 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody161_1056 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody161_1057 : StackLang.HolProg 64 :=
.seq RemovedBody161_1055 RemovedBody161_1056

def RemovedBody161_1058 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody161_1059 : StackLang.HolProg 64 :=
.seq RemovedBody161_1057 RemovedBody161_1058

def RemovedBody161_1060 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_1061 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 159#64)

def RemovedBody161_1062 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody161_1063 : StackLang.HolProg 64 :=
.seq RemovedBody161_1061 RemovedBody161_1062

def RemovedBody161_1064 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody161_1065 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody161_1066 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody161_1067 : StackLang.HolProg 64 :=
.seq RemovedBody161_1065 RemovedBody161_1066

def RemovedBody161_1068 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_1069 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody161_1067 RemovedBody161_1068

def RemovedBody161_1070 : StackLang.HolProg 64 :=
.seq RemovedBody161_1064 RemovedBody161_1069

def RemovedBody161_1071 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody161_1072 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody161_1073 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 161 25

def RemovedBody161_1074 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody161_1075 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody161_1076 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody161_1077 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_1078 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody161_1079 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody161_1080 : StackLang.HolProg 64 :=
.seq RemovedBody161_1078 RemovedBody161_1079

def RemovedBody161_1081 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody161_1082 : StackLang.HolProg 64 :=
.seq RemovedBody161_1080 RemovedBody161_1081

def RemovedBody161_1083 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody161_1084 : StackLang.HolProg 64 :=
.seq RemovedBody161_1082 RemovedBody161_1083

def RemovedBody161_1085 : StackLang.HolProg 64 :=
.seq RemovedBody161_1077 RemovedBody161_1084

def RemovedBody161_1086 : StackLang.HolProg 64 :=
.seq RemovedBody161_1076 RemovedBody161_1085

def RemovedBody161_1087 : StackLang.HolProg 64 :=
.seq RemovedBody161_1075 RemovedBody161_1086

def RemovedBody161_1088 : StackLang.HolProg 64 :=
.seq RemovedBody161_1074 RemovedBody161_1087

def RemovedBody161_1089 : StackLang.HolProg 64 :=
.seq RemovedBody161_1073 RemovedBody161_1088

def RemovedBody161_1090 : StackLang.HolProg 64 :=
.seq RemovedBody161_1072 RemovedBody161_1089

def RemovedBody161_1091 : StackLang.HolProg 64 :=
.seq RemovedBody161_1071 RemovedBody161_1090

def RemovedBody161_1092 : StackLang.HolProg 64 :=
.seq RemovedBody161_1070 RemovedBody161_1091

def RemovedBody161_1093 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_1094 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_1095 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_1096 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody161_1097 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody161_1098 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody161_1099 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody161_1100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody161_1101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody161_1102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody161_1103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody161_1104 : StackLang.HolProg 64 :=
.seq RemovedBody161_1102 RemovedBody161_1103

def RemovedBody161_1105 : StackLang.HolProg 64 :=
.seq RemovedBody161_1101 RemovedBody161_1104

def RemovedBody161_1106 : StackLang.HolProg 64 :=
.seq RemovedBody161_1100 RemovedBody161_1105

def RemovedBody161_1107 : StackLang.HolProg 64 :=
.seq RemovedBody161_1099 RemovedBody161_1106

def RemovedBody161_1108 : StackLang.HolProg 64 :=
.seq RemovedBody161_1098 RemovedBody161_1107

def RemovedBody161_1109 : StackLang.HolProg 64 :=
.seq RemovedBody161_1097 RemovedBody161_1108

def RemovedBody161_1110 : StackLang.HolProg 64 :=
.seq RemovedBody161_1096 RemovedBody161_1109

def RemovedBody161_1111 : StackLang.HolProg 64 :=
.seq RemovedBody161_1095 RemovedBody161_1110

def RemovedBody161_1112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody161_1113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody161_1114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody161_1115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody161_1116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody161_1117 : StackLang.HolProg 64 :=
.seq RemovedBody161_1115 RemovedBody161_1116

def RemovedBody161_1118 : StackLang.HolProg 64 :=
.seq RemovedBody161_1114 RemovedBody161_1117

def RemovedBody161_1119 : StackLang.HolProg 64 :=
.seq RemovedBody161_1113 RemovedBody161_1118

def RemovedBody161_1120 : StackLang.HolProg 64 :=
.seq RemovedBody161_1112 RemovedBody161_1119

def RemovedBody161_1121 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody161_1122 : StackLang.HolProg 64 :=
.seq RemovedBody161_1120 RemovedBody161_1121

def RemovedBody161_1123 : StackLang.HolProg 64 :=
.call (some (RemovedBody161_1111, 0, 161, 24)) (Sum.inl 159) (some (RemovedBody161_1122, 161, 25))

def RemovedBody161_1124 : StackLang.HolProg 64 :=
.seq RemovedBody161_1094 RemovedBody161_1123

def RemovedBody161_1125 : StackLang.HolProg 64 :=
.seq RemovedBody161_1093 RemovedBody161_1124

def RemovedBody161_1126 : StackLang.HolProg 64 :=
.seq RemovedBody161_1092 RemovedBody161_1125

def RemovedBody161_1127 : StackLang.HolProg 64 :=
.seq RemovedBody161_1063 RemovedBody161_1126

def RemovedBody161_1128 : StackLang.HolProg 64 :=
.seq RemovedBody161_1060 RemovedBody161_1127

def RemovedBody161_1129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody161_1130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_1131 : StackLang.HolProg 64 :=
.seq RemovedBody161_1129 RemovedBody161_1130

def RemovedBody161_1132 : StackLang.HolProg 64 :=
.seq RemovedBody161_1128 RemovedBody161_1131

def RemovedBody161_1133 : StackLang.HolProg 64 :=
.seq RemovedBody161_1059 RemovedBody161_1132

def RemovedBody161_1134 : StackLang.HolProg 64 :=
.seq RemovedBody161_1054 RemovedBody161_1133

def RemovedBody161_1135 : StackLang.HolProg 64 :=
.seq RemovedBody161_1053 RemovedBody161_1134

def RemovedBody161_1136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody161_1137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody161_1138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody161_1139 : StackLang.HolProg 64 :=
.seq RemovedBody161_1137 RemovedBody161_1138

def RemovedBody161_1140 : StackLang.HolProg 64 :=
.seq RemovedBody161_1136 RemovedBody161_1139

def RemovedBody161_1141 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody161_1135 RemovedBody161_1140

def RemovedBody161_1142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody161_1143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_1144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def RemovedBody161_1145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_1146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody161_1147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_1148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody161_1149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def RemovedBody161_1150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody161_1151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody161_1152 : StackLang.HolProg 64 :=
.seq RemovedBody161_1150 RemovedBody161_1151

def RemovedBody161_1153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_1154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 160#64)

def RemovedBody161_1155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody161_1156 : StackLang.HolProg 64 :=
.seq RemovedBody161_1154 RemovedBody161_1155

def RemovedBody161_1157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody161_1158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody161_1159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody161_1160 : StackLang.HolProg 64 :=
.seq RemovedBody161_1158 RemovedBody161_1159

def RemovedBody161_1161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_1162 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody161_1160 RemovedBody161_1161

def RemovedBody161_1163 : StackLang.HolProg 64 :=
.seq RemovedBody161_1157 RemovedBody161_1162

def RemovedBody161_1164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody161_1165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody161_1166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 161 27

def RemovedBody161_1167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody161_1168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody161_1169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody161_1170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_1171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody161_1172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody161_1173 : StackLang.HolProg 64 :=
.seq RemovedBody161_1171 RemovedBody161_1172

def RemovedBody161_1174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody161_1175 : StackLang.HolProg 64 :=
.seq RemovedBody161_1173 RemovedBody161_1174

def RemovedBody161_1176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody161_1177 : StackLang.HolProg 64 :=
.seq RemovedBody161_1175 RemovedBody161_1176

def RemovedBody161_1178 : StackLang.HolProg 64 :=
.seq RemovedBody161_1170 RemovedBody161_1177

def RemovedBody161_1179 : StackLang.HolProg 64 :=
.seq RemovedBody161_1169 RemovedBody161_1178

def RemovedBody161_1180 : StackLang.HolProg 64 :=
.seq RemovedBody161_1168 RemovedBody161_1179

def RemovedBody161_1181 : StackLang.HolProg 64 :=
.seq RemovedBody161_1167 RemovedBody161_1180

def RemovedBody161_1182 : StackLang.HolProg 64 :=
.seq RemovedBody161_1166 RemovedBody161_1181

def RemovedBody161_1183 : StackLang.HolProg 64 :=
.seq RemovedBody161_1165 RemovedBody161_1182

def RemovedBody161_1184 : StackLang.HolProg 64 :=
.seq RemovedBody161_1164 RemovedBody161_1183

def RemovedBody161_1185 : StackLang.HolProg 64 :=
.seq RemovedBody161_1163 RemovedBody161_1184

def RemovedBody161_1186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_1187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_1188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_1189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody161_1190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody161_1191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody161_1192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody161_1193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody161_1194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody161_1195 : StackLang.HolProg 64 :=
.seq RemovedBody161_1193 RemovedBody161_1194

def RemovedBody161_1196 : StackLang.HolProg 64 :=
.seq RemovedBody161_1192 RemovedBody161_1195

def RemovedBody161_1197 : StackLang.HolProg 64 :=
.seq RemovedBody161_1191 RemovedBody161_1196

def RemovedBody161_1198 : StackLang.HolProg 64 :=
.seq RemovedBody161_1190 RemovedBody161_1197

def RemovedBody161_1199 : StackLang.HolProg 64 :=
.seq RemovedBody161_1189 RemovedBody161_1198

def RemovedBody161_1200 : StackLang.HolProg 64 :=
.seq RemovedBody161_1188 RemovedBody161_1199

def RemovedBody161_1201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody161_1202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody161_1203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody161_1204 : StackLang.HolProg 64 :=
.seq RemovedBody161_1202 RemovedBody161_1203

def RemovedBody161_1205 : StackLang.HolProg 64 :=
.seq RemovedBody161_1201 RemovedBody161_1204

def RemovedBody161_1206 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody161_1207 : StackLang.HolProg 64 :=
.seq RemovedBody161_1205 RemovedBody161_1206

def RemovedBody161_1208 : StackLang.HolProg 64 :=
.call (some (RemovedBody161_1200, 0, 161, 26)) (Sum.inl 159) (some (RemovedBody161_1207, 161, 27))

def RemovedBody161_1209 : StackLang.HolProg 64 :=
.seq RemovedBody161_1187 RemovedBody161_1208

def RemovedBody161_1210 : StackLang.HolProg 64 :=
.seq RemovedBody161_1186 RemovedBody161_1209

def RemovedBody161_1211 : StackLang.HolProg 64 :=
.seq RemovedBody161_1185 RemovedBody161_1210

def RemovedBody161_1212 : StackLang.HolProg 64 :=
.seq RemovedBody161_1156 RemovedBody161_1211

def RemovedBody161_1213 : StackLang.HolProg 64 :=
.seq RemovedBody161_1153 RemovedBody161_1212

def RemovedBody161_1214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody161_1215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_1216 : StackLang.HolProg 64 :=
.seq RemovedBody161_1214 RemovedBody161_1215

def RemovedBody161_1217 : StackLang.HolProg 64 :=
.seq RemovedBody161_1213 RemovedBody161_1216

def RemovedBody161_1218 : StackLang.HolProg 64 :=
.seq RemovedBody161_1152 RemovedBody161_1217

def RemovedBody161_1219 : StackLang.HolProg 64 :=
.seq RemovedBody161_1149 RemovedBody161_1218

def RemovedBody161_1220 : StackLang.HolProg 64 :=
.seq RemovedBody161_1148 RemovedBody161_1219

def RemovedBody161_1221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody161_1222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody161_1223 : StackLang.HolProg 64 :=
.seq RemovedBody161_1221 RemovedBody161_1222

def RemovedBody161_1224 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody161_1220 RemovedBody161_1223

def RemovedBody161_1225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody161_1226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_1227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody161_1228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody161_1229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody161_1230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody161_1231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody161_1232 : StackLang.HolProg 64 :=
.seq RemovedBody161_1230 RemovedBody161_1231

def RemovedBody161_1233 : StackLang.HolProg 64 :=
.seq RemovedBody161_1229 RemovedBody161_1232

def RemovedBody161_1234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_1235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 161#64)

def RemovedBody161_1236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody161_1237 : StackLang.HolProg 64 :=
.seq RemovedBody161_1235 RemovedBody161_1236

def RemovedBody161_1238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody161_1239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody161_1240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody161_1241 : StackLang.HolProg 64 :=
.seq RemovedBody161_1239 RemovedBody161_1240

def RemovedBody161_1242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_1243 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody161_1241 RemovedBody161_1242

def RemovedBody161_1244 : StackLang.HolProg 64 :=
.seq RemovedBody161_1238 RemovedBody161_1243

def RemovedBody161_1245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody161_1246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody161_1247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 161 29

def RemovedBody161_1248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody161_1249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody161_1250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody161_1251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_1252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody161_1253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody161_1254 : StackLang.HolProg 64 :=
.seq RemovedBody161_1252 RemovedBody161_1253

def RemovedBody161_1255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody161_1256 : StackLang.HolProg 64 :=
.seq RemovedBody161_1254 RemovedBody161_1255

def RemovedBody161_1257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody161_1258 : StackLang.HolProg 64 :=
.seq RemovedBody161_1256 RemovedBody161_1257

def RemovedBody161_1259 : StackLang.HolProg 64 :=
.seq RemovedBody161_1251 RemovedBody161_1258

def RemovedBody161_1260 : StackLang.HolProg 64 :=
.seq RemovedBody161_1250 RemovedBody161_1259

def RemovedBody161_1261 : StackLang.HolProg 64 :=
.seq RemovedBody161_1249 RemovedBody161_1260

def RemovedBody161_1262 : StackLang.HolProg 64 :=
.seq RemovedBody161_1248 RemovedBody161_1261

def RemovedBody161_1263 : StackLang.HolProg 64 :=
.seq RemovedBody161_1247 RemovedBody161_1262

def RemovedBody161_1264 : StackLang.HolProg 64 :=
.seq RemovedBody161_1246 RemovedBody161_1263

def RemovedBody161_1265 : StackLang.HolProg 64 :=
.seq RemovedBody161_1245 RemovedBody161_1264

def RemovedBody161_1266 : StackLang.HolProg 64 :=
.seq RemovedBody161_1244 RemovedBody161_1265

def RemovedBody161_1267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_1268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_1269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_1270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody161_1271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody161_1272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody161_1273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody161_1274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody161_1275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody161_1276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody161_1277 : StackLang.HolProg 64 :=
.seq RemovedBody161_1275 RemovedBody161_1276

def RemovedBody161_1278 : StackLang.HolProg 64 :=
.seq RemovedBody161_1274 RemovedBody161_1277

def RemovedBody161_1279 : StackLang.HolProg 64 :=
.seq RemovedBody161_1273 RemovedBody161_1278

def RemovedBody161_1280 : StackLang.HolProg 64 :=
.seq RemovedBody161_1272 RemovedBody161_1279

def RemovedBody161_1281 : StackLang.HolProg 64 :=
.seq RemovedBody161_1271 RemovedBody161_1280

def RemovedBody161_1282 : StackLang.HolProg 64 :=
.seq RemovedBody161_1270 RemovedBody161_1281

def RemovedBody161_1283 : StackLang.HolProg 64 :=
.seq RemovedBody161_1269 RemovedBody161_1282

def RemovedBody161_1284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody161_1285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody161_1286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody161_1287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody161_1288 : StackLang.HolProg 64 :=
.seq RemovedBody161_1286 RemovedBody161_1287

def RemovedBody161_1289 : StackLang.HolProg 64 :=
.seq RemovedBody161_1285 RemovedBody161_1288

def RemovedBody161_1290 : StackLang.HolProg 64 :=
.seq RemovedBody161_1284 RemovedBody161_1289

def RemovedBody161_1291 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody161_1292 : StackLang.HolProg 64 :=
.seq RemovedBody161_1290 RemovedBody161_1291

def RemovedBody161_1293 : StackLang.HolProg 64 :=
.call (some (RemovedBody161_1283, 0, 161, 28)) (Sum.inl 167) (some (RemovedBody161_1292, 161, 29))

def RemovedBody161_1294 : StackLang.HolProg 64 :=
.seq RemovedBody161_1268 RemovedBody161_1293

def RemovedBody161_1295 : StackLang.HolProg 64 :=
.seq RemovedBody161_1267 RemovedBody161_1294

def RemovedBody161_1296 : StackLang.HolProg 64 :=
.seq RemovedBody161_1266 RemovedBody161_1295

def RemovedBody161_1297 : StackLang.HolProg 64 :=
.seq RemovedBody161_1237 RemovedBody161_1296

def RemovedBody161_1298 : StackLang.HolProg 64 :=
.seq RemovedBody161_1234 RemovedBody161_1297

def RemovedBody161_1299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody161_1300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody161_1301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_1302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody161_1303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody161_1304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_1305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody161_1306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody161_1307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody161_1308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def RemovedBody161_1309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def RemovedBody161_1310 : StackLang.HolProg 64 :=
.seq RemovedBody161_1308 RemovedBody161_1309

def RemovedBody161_1311 : StackLang.HolProg 64 :=
.seq RemovedBody161_1307 RemovedBody161_1310

def RemovedBody161_1312 : StackLang.HolProg 64 :=
.seq RemovedBody161_1306 RemovedBody161_1311

def RemovedBody161_1313 : StackLang.HolProg 64 :=
.seq RemovedBody161_1305 RemovedBody161_1312

def RemovedBody161_1314 : StackLang.HolProg 64 :=
.seq RemovedBody161_1304 RemovedBody161_1313

def RemovedBody161_1315 : StackLang.HolProg 64 :=
.seq RemovedBody161_1303 RemovedBody161_1314

def RemovedBody161_1316 : StackLang.HolProg 64 :=
.seq RemovedBody161_1302 RemovedBody161_1315

def RemovedBody161_1317 : StackLang.HolProg 64 :=
.seq RemovedBody161_1301 RemovedBody161_1316

def RemovedBody161_1318 : StackLang.HolProg 64 :=
.seq RemovedBody161_1300 RemovedBody161_1317

def RemovedBody161_1319 : StackLang.HolProg 64 :=
.seq RemovedBody161_1299 RemovedBody161_1318

def RemovedBody161_1320 : StackLang.HolProg 64 :=
.seq RemovedBody161_1298 RemovedBody161_1319

def RemovedBody161_1321 : StackLang.HolProg 64 :=
.seq RemovedBody161_1233 RemovedBody161_1320

def RemovedBody161_1322 : StackLang.HolProg 64 :=
.seq RemovedBody161_1228 RemovedBody161_1321

def RemovedBody161_1323 : StackLang.HolProg 64 :=
.seq RemovedBody161_1227 RemovedBody161_1322

def RemovedBody161_1324 : StackLang.HolProg 64 :=
.seq RemovedBody161_1226 RemovedBody161_1323

def RemovedBody161_1325 : StackLang.HolProg 64 :=
.seq RemovedBody161_1225 RemovedBody161_1324

def RemovedBody161_1326 : StackLang.HolProg 64 :=
.seq RemovedBody161_1224 RemovedBody161_1325

def RemovedBody161_1327 : StackLang.HolProg 64 :=
.seq RemovedBody161_1147 RemovedBody161_1326

def RemovedBody161_1328 : StackLang.HolProg 64 :=
.seq RemovedBody161_1146 RemovedBody161_1327

def RemovedBody161_1329 : StackLang.HolProg 64 :=
.seq RemovedBody161_1145 RemovedBody161_1328

def RemovedBody161_1330 : StackLang.HolProg 64 :=
.seq RemovedBody161_1144 RemovedBody161_1329

def RemovedBody161_1331 : StackLang.HolProg 64 :=
.seq RemovedBody161_1143 RemovedBody161_1330

def RemovedBody161_1332 : StackLang.HolProg 64 :=
.seq RemovedBody161_1142 RemovedBody161_1331

def RemovedBody161_1333 : StackLang.HolProg 64 :=
.seq RemovedBody161_1141 RemovedBody161_1332

def RemovedBody161_1334 : StackLang.HolProg 64 :=
.seq RemovedBody161_1052 RemovedBody161_1333

def RemovedBody161_1335 : StackLang.HolProg 64 :=
.seq RemovedBody161_1051 RemovedBody161_1334

def RemovedBody161_1336 : StackLang.HolProg 64 :=
.seq RemovedBody161_1050 RemovedBody161_1335

def RemovedBody161_1337 : StackLang.HolProg 64 :=
.seq RemovedBody161_1049 RemovedBody161_1336

def RemovedBody161_1338 : StackLang.HolProg 64 :=
.seq RemovedBody161_996 RemovedBody161_1337

def RemovedBody161_1339 : StackLang.HolProg 64 :=
.seq RemovedBody161_993 RemovedBody161_1338

def RemovedBody161_1340 : StackLang.HolProg 64 :=
.seq RemovedBody161_992 RemovedBody161_1339

def RemovedBody161_1341 : StackLang.HolProg 64 :=
.seq RemovedBody161_991 RemovedBody161_1340

def RemovedBody161_1342 : StackLang.HolProg 64 :=
.seq RemovedBody161_990 RemovedBody161_1341

def RemovedBody161_1343 : StackLang.HolProg 64 :=
.seq RemovedBody161_915 RemovedBody161_1342

def RemovedBody161_1344 : StackLang.HolProg 64 :=
.seq RemovedBody161_914 RemovedBody161_1343

def RemovedBody161_1345 : StackLang.HolProg 64 :=
.seq RemovedBody161_913 RemovedBody161_1344

def RemovedBody161_1346 : StackLang.HolProg 64 :=
.seq RemovedBody161_912 RemovedBody161_1345

def RemovedBody161_1347 : StackLang.HolProg 64 :=
.seq RemovedBody161_911 RemovedBody161_1346

def RemovedBody161_1348 : StackLang.HolProg 64 :=
.seq RemovedBody161_910 RemovedBody161_1347

def RemovedBody161_1349 : StackLang.HolProg 64 :=
.seq RemovedBody161_909 RemovedBody161_1348

def RemovedBody161_1350 : StackLang.HolProg 64 :=
.seq RemovedBody161_908 RemovedBody161_1349

def RemovedBody161_1351 : StackLang.HolProg 64 :=
.seq RemovedBody161_721 RemovedBody161_1350

def RemovedBody161_1352 : StackLang.HolProg 64 :=
.seq RemovedBody161_720 RemovedBody161_1351

def RemovedBody161_1353 : StackLang.HolProg 64 :=
.seq RemovedBody161_719 RemovedBody161_1352

def RemovedBody161_1354 : StackLang.HolProg 64 :=
.seq RemovedBody161_718 RemovedBody161_1353

def RemovedBody161_1355 : StackLang.HolProg 64 :=
.seq RemovedBody161_717 RemovedBody161_1354

def RemovedBody161_1356 : StackLang.HolProg 64 :=
.seq RemovedBody161_338 RemovedBody161_1355

def RemovedBody161_1357 : StackLang.HolProg 64 :=
.seq RemovedBody161_337 RemovedBody161_1356

def RemovedBody161_1358 : StackLang.HolProg 64 :=
.seq RemovedBody161_336 RemovedBody161_1357

def RemovedBody161_1359 : StackLang.HolProg 64 :=
.seq RemovedBody161_335 RemovedBody161_1358

def RemovedBody161_1360 : StackLang.HolProg 64 :=
.seq RemovedBody161_334 RemovedBody161_1359

def RemovedBody161_1361 : StackLang.HolProg 64 :=
.seq RemovedBody161_115 RemovedBody161_1360

def RemovedBody161_1362 : StackLang.HolProg 64 :=
.seq RemovedBody161_114 RemovedBody161_1361

def RemovedBody161_1363 : StackLang.HolProg 64 :=
.seq RemovedBody161_113 RemovedBody161_1362

def RemovedBody161_1364 : StackLang.HolProg 64 :=
.seq RemovedBody161_112 RemovedBody161_1363

def RemovedBody161_1365 : StackLang.HolProg 64 :=
.seq RemovedBody161_111 RemovedBody161_1364

def RemovedBody161_1366 : StackLang.HolProg 64 :=
.seq RemovedBody161_94 RemovedBody161_1365

def RemovedBody161_1367 : StackLang.HolProg 64 :=
.seq RemovedBody161_93 RemovedBody161_1366

def RemovedBody161_1368 : StackLang.HolProg 64 :=
.seq RemovedBody161_92 RemovedBody161_1367

def RemovedBody161_1369 : StackLang.HolProg 64 :=
.seq RemovedBody161_91 RemovedBody161_1368

def RemovedBody161_1370 : StackLang.HolProg 64 :=
.seq RemovedBody161_90 RemovedBody161_1369

def RemovedBody161_1371 : StackLang.HolProg 64 :=
.seq RemovedBody161_89 RemovedBody161_1370

def RemovedBody161_1372 : StackLang.HolProg 64 :=
.seq RemovedBody161_10 RemovedBody161_1371

def RemovedBody161_1373 : StackLang.HolProg 64 :=
.seq RemovedBody161_9 RemovedBody161_1372

def RemovedBody161_1374 : StackLang.HolProg 64 :=
.seq RemovedBody161_6 RemovedBody161_1373

def Removed161 : Nat × StackLang.HolProg 64 := (161, RemovedBody161_1374)
theorem Removed161_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc161 = Removed161 := by
  kernel_rfl
#print axioms Removed161_eq
end InitECandidate.Proofs.BackendStages
