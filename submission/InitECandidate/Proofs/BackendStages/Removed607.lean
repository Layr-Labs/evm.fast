import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc607
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody607_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody607_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody607_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody607_3 : StackLang.HolProg 64 :=
.seq RemovedBody607_1 RemovedBody607_2

def RemovedBody607_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody607_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody607_3 RemovedBody607_4

def RemovedBody607_6 : StackLang.HolProg 64 :=
.seq RemovedBody607_0 RemovedBody607_5

def RemovedBody607_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody607_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 120#64))

def RemovedBody607_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody607_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 128#64))

def RemovedBody607_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody607_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody607_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody607_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody607_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def RemovedBody607_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody607_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 239#64)

def RemovedBody607_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody607_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 11#64)

def RemovedBody607_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody607_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody607_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def RemovedBody607_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody607_24 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody607_25 : StackLang.HolProg 64 :=
.seq RemovedBody607_23 RemovedBody607_24

def RemovedBody607_26 : StackLang.HolProg 64 :=
.seq RemovedBody607_22 RemovedBody607_25

def RemovedBody607_27 : StackLang.HolProg 64 :=
.seq RemovedBody607_21 RemovedBody607_26

def RemovedBody607_28 : StackLang.HolProg 64 :=
.seq RemovedBody607_20 RemovedBody607_27

def RemovedBody607_29 : StackLang.HolProg 64 :=
.seq RemovedBody607_19 RemovedBody607_28

def RemovedBody607_30 : StackLang.HolProg 64 :=
.seq RemovedBody607_18 RemovedBody607_29

def RemovedBody607_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody607_32 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) RemovedBody607_30 RemovedBody607_31

def RemovedBody607_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody607_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody607_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody607_36 : StackLang.HolProg 64 :=
.seq RemovedBody607_34 RemovedBody607_35

def RemovedBody607_37 : StackLang.HolProg 64 :=
.seq RemovedBody607_33 RemovedBody607_36

def RemovedBody607_38 : StackLang.HolProg 64 :=
.seq RemovedBody607_32 RemovedBody607_37

def RemovedBody607_39 : StackLang.HolProg 64 :=
.seq RemovedBody607_17 RemovedBody607_38

def RemovedBody607_40 : StackLang.HolProg 64 :=
.seq RemovedBody607_16 RemovedBody607_39

def RemovedBody607_41 : StackLang.HolProg 64 :=
.seq RemovedBody607_15 RemovedBody607_40

def RemovedBody607_42 : StackLang.HolProg 64 :=
.seq RemovedBody607_14 RemovedBody607_41

def RemovedBody607_43 : StackLang.HolProg 64 :=
.seq RemovedBody607_13 RemovedBody607_42

def RemovedBody607_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody607_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody607_46 : StackLang.HolProg 64 :=
.seq RemovedBody607_44 RemovedBody607_45

def RemovedBody607_47 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody607_43 RemovedBody607_46

def RemovedBody607_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody607_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 65536#64)

def RemovedBody607_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody607_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody607_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 4#64)

def RemovedBody607_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody607_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody607_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def RemovedBody607_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody607_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody607_58 : StackLang.HolProg 64 :=
.seq RemovedBody607_56 RemovedBody607_57

def RemovedBody607_59 : StackLang.HolProg 64 :=
.seq RemovedBody607_55 RemovedBody607_58

def RemovedBody607_60 : StackLang.HolProg 64 :=
.seq RemovedBody607_54 RemovedBody607_59

def RemovedBody607_61 : StackLang.HolProg 64 :=
.seq RemovedBody607_53 RemovedBody607_60

def RemovedBody607_62 : StackLang.HolProg 64 :=
.seq RemovedBody607_52 RemovedBody607_61

def RemovedBody607_63 : StackLang.HolProg 64 :=
.seq RemovedBody607_51 RemovedBody607_62

def RemovedBody607_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody607_65 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody607_63 RemovedBody607_64

def RemovedBody607_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody607_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody607_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody607_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody607_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody607_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody607_72 : StackLang.HolProg 64 :=
.seq RemovedBody607_70 RemovedBody607_71

def RemovedBody607_73 : StackLang.HolProg 64 :=
.seq RemovedBody607_69 RemovedBody607_72

def RemovedBody607_74 : StackLang.HolProg 64 :=
.seq RemovedBody607_68 RemovedBody607_73

def RemovedBody607_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody607_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2329#64)

def RemovedBody607_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody607_78 : StackLang.HolProg 64 :=
.seq RemovedBody607_76 RemovedBody607_77

def RemovedBody607_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody607_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody607_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody607_82 : StackLang.HolProg 64 :=
.seq RemovedBody607_80 RemovedBody607_81

def RemovedBody607_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody607_84 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody607_82 RemovedBody607_83

def RemovedBody607_85 : StackLang.HolProg 64 :=
.seq RemovedBody607_79 RemovedBody607_84

def RemovedBody607_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody607_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody607_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 607 3

def RemovedBody607_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody607_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody607_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody607_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody607_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody607_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody607_95 : StackLang.HolProg 64 :=
.seq RemovedBody607_93 RemovedBody607_94

def RemovedBody607_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody607_97 : StackLang.HolProg 64 :=
.seq RemovedBody607_95 RemovedBody607_96

def RemovedBody607_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody607_99 : StackLang.HolProg 64 :=
.seq RemovedBody607_97 RemovedBody607_98

def RemovedBody607_100 : StackLang.HolProg 64 :=
.seq RemovedBody607_92 RemovedBody607_99

def RemovedBody607_101 : StackLang.HolProg 64 :=
.seq RemovedBody607_91 RemovedBody607_100

def RemovedBody607_102 : StackLang.HolProg 64 :=
.seq RemovedBody607_90 RemovedBody607_101

def RemovedBody607_103 : StackLang.HolProg 64 :=
.seq RemovedBody607_89 RemovedBody607_102

def RemovedBody607_104 : StackLang.HolProg 64 :=
.seq RemovedBody607_88 RemovedBody607_103

def RemovedBody607_105 : StackLang.HolProg 64 :=
.seq RemovedBody607_87 RemovedBody607_104

def RemovedBody607_106 : StackLang.HolProg 64 :=
.seq RemovedBody607_86 RemovedBody607_105

def RemovedBody607_107 : StackLang.HolProg 64 :=
.seq RemovedBody607_85 RemovedBody607_106

def RemovedBody607_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody607_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody607_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody607_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody607_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody607_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody607_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody607_115 : StackLang.HolProg 64 :=
.seq RemovedBody607_113 RemovedBody607_114

def RemovedBody607_116 : StackLang.HolProg 64 :=
.seq RemovedBody607_112 RemovedBody607_115

def RemovedBody607_117 : StackLang.HolProg 64 :=
.seq RemovedBody607_111 RemovedBody607_116

def RemovedBody607_118 : StackLang.HolProg 64 :=
.seq RemovedBody607_110 RemovedBody607_117

def RemovedBody607_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody607_120 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody607_121 : StackLang.HolProg 64 :=
.seq RemovedBody607_119 RemovedBody607_120

def RemovedBody607_122 : StackLang.HolProg 64 :=
.call (some (RemovedBody607_118, 0, 607, 2)) (Sum.inl 465) (some (RemovedBody607_121, 607, 3))

def RemovedBody607_123 : StackLang.HolProg 64 :=
.seq RemovedBody607_109 RemovedBody607_122

def RemovedBody607_124 : StackLang.HolProg 64 :=
.seq RemovedBody607_108 RemovedBody607_123

def RemovedBody607_125 : StackLang.HolProg 64 :=
.seq RemovedBody607_107 RemovedBody607_124

def RemovedBody607_126 : StackLang.HolProg 64 :=
.seq RemovedBody607_78 RemovedBody607_125

def RemovedBody607_127 : StackLang.HolProg 64 :=
.seq RemovedBody607_75 RemovedBody607_126

def RemovedBody607_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody607_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody607_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 6#64)

def RemovedBody607_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody607_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def RemovedBody607_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody607_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody607_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2330#64)

def RemovedBody607_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody607_137 : StackLang.HolProg 64 :=
.seq RemovedBody607_135 RemovedBody607_136

def RemovedBody607_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody607_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody607_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody607_141 : StackLang.HolProg 64 :=
.seq RemovedBody607_139 RemovedBody607_140

def RemovedBody607_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody607_143 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody607_141 RemovedBody607_142

def RemovedBody607_144 : StackLang.HolProg 64 :=
.seq RemovedBody607_138 RemovedBody607_143

def RemovedBody607_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody607_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody607_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 607 5

def RemovedBody607_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody607_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody607_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody607_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody607_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody607_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody607_154 : StackLang.HolProg 64 :=
.seq RemovedBody607_152 RemovedBody607_153

def RemovedBody607_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody607_156 : StackLang.HolProg 64 :=
.seq RemovedBody607_154 RemovedBody607_155

def RemovedBody607_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody607_158 : StackLang.HolProg 64 :=
.seq RemovedBody607_156 RemovedBody607_157

def RemovedBody607_159 : StackLang.HolProg 64 :=
.seq RemovedBody607_151 RemovedBody607_158

def RemovedBody607_160 : StackLang.HolProg 64 :=
.seq RemovedBody607_150 RemovedBody607_159

def RemovedBody607_161 : StackLang.HolProg 64 :=
.seq RemovedBody607_149 RemovedBody607_160

def RemovedBody607_162 : StackLang.HolProg 64 :=
.seq RemovedBody607_148 RemovedBody607_161

def RemovedBody607_163 : StackLang.HolProg 64 :=
.seq RemovedBody607_147 RemovedBody607_162

def RemovedBody607_164 : StackLang.HolProg 64 :=
.seq RemovedBody607_146 RemovedBody607_163

def RemovedBody607_165 : StackLang.HolProg 64 :=
.seq RemovedBody607_145 RemovedBody607_164

def RemovedBody607_166 : StackLang.HolProg 64 :=
.seq RemovedBody607_144 RemovedBody607_165

def RemovedBody607_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody607_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody607_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody607_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody607_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody607_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody607_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody607_174 : StackLang.HolProg 64 :=
.seq RemovedBody607_172 RemovedBody607_173

def RemovedBody607_175 : StackLang.HolProg 64 :=
.seq RemovedBody607_171 RemovedBody607_174

def RemovedBody607_176 : StackLang.HolProg 64 :=
.seq RemovedBody607_170 RemovedBody607_175

def RemovedBody607_177 : StackLang.HolProg 64 :=
.seq RemovedBody607_169 RemovedBody607_176

def RemovedBody607_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody607_179 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody607_180 : StackLang.HolProg 64 :=
.seq RemovedBody607_178 RemovedBody607_179

def RemovedBody607_181 : StackLang.HolProg 64 :=
.call (some (RemovedBody607_177, 0, 607, 4)) (Sum.inl 470) (some (RemovedBody607_180, 607, 5))

def RemovedBody607_182 : StackLang.HolProg 64 :=
.seq RemovedBody607_168 RemovedBody607_181

def RemovedBody607_183 : StackLang.HolProg 64 :=
.seq RemovedBody607_167 RemovedBody607_182

def RemovedBody607_184 : StackLang.HolProg 64 :=
.seq RemovedBody607_166 RemovedBody607_183

def RemovedBody607_185 : StackLang.HolProg 64 :=
.seq RemovedBody607_137 RemovedBody607_184

def RemovedBody607_186 : StackLang.HolProg 64 :=
.seq RemovedBody607_134 RemovedBody607_185

def RemovedBody607_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody607_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody607_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1530#64)

def RemovedBody607_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody607_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def RemovedBody607_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody607_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody607_194 : StackLang.HolProg 64 :=
.seq RemovedBody607_192 RemovedBody607_193

def RemovedBody607_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody607_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2331#64)

def RemovedBody607_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody607_198 : StackLang.HolProg 64 :=
.seq RemovedBody607_196 RemovedBody607_197

def RemovedBody607_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody607_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody607_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody607_202 : StackLang.HolProg 64 :=
.seq RemovedBody607_200 RemovedBody607_201

def RemovedBody607_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody607_204 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody607_202 RemovedBody607_203

def RemovedBody607_205 : StackLang.HolProg 64 :=
.seq RemovedBody607_199 RemovedBody607_204

def RemovedBody607_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody607_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody607_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 607 7

def RemovedBody607_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody607_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody607_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody607_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody607_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody607_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody607_215 : StackLang.HolProg 64 :=
.seq RemovedBody607_213 RemovedBody607_214

def RemovedBody607_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody607_217 : StackLang.HolProg 64 :=
.seq RemovedBody607_215 RemovedBody607_216

def RemovedBody607_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody607_219 : StackLang.HolProg 64 :=
.seq RemovedBody607_217 RemovedBody607_218

def RemovedBody607_220 : StackLang.HolProg 64 :=
.seq RemovedBody607_212 RemovedBody607_219

def RemovedBody607_221 : StackLang.HolProg 64 :=
.seq RemovedBody607_211 RemovedBody607_220

def RemovedBody607_222 : StackLang.HolProg 64 :=
.seq RemovedBody607_210 RemovedBody607_221

def RemovedBody607_223 : StackLang.HolProg 64 :=
.seq RemovedBody607_209 RemovedBody607_222

def RemovedBody607_224 : StackLang.HolProg 64 :=
.seq RemovedBody607_208 RemovedBody607_223

def RemovedBody607_225 : StackLang.HolProg 64 :=
.seq RemovedBody607_207 RemovedBody607_224

def RemovedBody607_226 : StackLang.HolProg 64 :=
.seq RemovedBody607_206 RemovedBody607_225

def RemovedBody607_227 : StackLang.HolProg 64 :=
.seq RemovedBody607_205 RemovedBody607_226

def RemovedBody607_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody607_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody607_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody607_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody607_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody607_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody607_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody607_235 : StackLang.HolProg 64 :=
.seq RemovedBody607_233 RemovedBody607_234

def RemovedBody607_236 : StackLang.HolProg 64 :=
.seq RemovedBody607_232 RemovedBody607_235

def RemovedBody607_237 : StackLang.HolProg 64 :=
.seq RemovedBody607_231 RemovedBody607_236

def RemovedBody607_238 : StackLang.HolProg 64 :=
.seq RemovedBody607_230 RemovedBody607_237

def RemovedBody607_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody607_240 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody607_241 : StackLang.HolProg 64 :=
.seq RemovedBody607_239 RemovedBody607_240

def RemovedBody607_242 : StackLang.HolProg 64 :=
.call (some (RemovedBody607_238, 0, 607, 6)) (Sum.inl 471) (some (RemovedBody607_241, 607, 7))

def RemovedBody607_243 : StackLang.HolProg 64 :=
.seq RemovedBody607_229 RemovedBody607_242

def RemovedBody607_244 : StackLang.HolProg 64 :=
.seq RemovedBody607_228 RemovedBody607_243

def RemovedBody607_245 : StackLang.HolProg 64 :=
.seq RemovedBody607_227 RemovedBody607_244

def RemovedBody607_246 : StackLang.HolProg 64 :=
.seq RemovedBody607_198 RemovedBody607_245

def RemovedBody607_247 : StackLang.HolProg 64 :=
.seq RemovedBody607_195 RemovedBody607_246

def RemovedBody607_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody607_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody607_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody607_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody607_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody607_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2332#64)

def RemovedBody607_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody607_255 : StackLang.HolProg 64 :=
.seq RemovedBody607_253 RemovedBody607_254

def RemovedBody607_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody607_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody607_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody607_259 : StackLang.HolProg 64 :=
.seq RemovedBody607_257 RemovedBody607_258

def RemovedBody607_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody607_261 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody607_259 RemovedBody607_260

def RemovedBody607_262 : StackLang.HolProg 64 :=
.seq RemovedBody607_256 RemovedBody607_261

def RemovedBody607_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody607_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody607_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 607 9

def RemovedBody607_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody607_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody607_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody607_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody607_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody607_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody607_272 : StackLang.HolProg 64 :=
.seq RemovedBody607_270 RemovedBody607_271

def RemovedBody607_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody607_274 : StackLang.HolProg 64 :=
.seq RemovedBody607_272 RemovedBody607_273

def RemovedBody607_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody607_276 : StackLang.HolProg 64 :=
.seq RemovedBody607_274 RemovedBody607_275

def RemovedBody607_277 : StackLang.HolProg 64 :=
.seq RemovedBody607_269 RemovedBody607_276

def RemovedBody607_278 : StackLang.HolProg 64 :=
.seq RemovedBody607_268 RemovedBody607_277

def RemovedBody607_279 : StackLang.HolProg 64 :=
.seq RemovedBody607_267 RemovedBody607_278

def RemovedBody607_280 : StackLang.HolProg 64 :=
.seq RemovedBody607_266 RemovedBody607_279

def RemovedBody607_281 : StackLang.HolProg 64 :=
.seq RemovedBody607_265 RemovedBody607_280

def RemovedBody607_282 : StackLang.HolProg 64 :=
.seq RemovedBody607_264 RemovedBody607_281

def RemovedBody607_283 : StackLang.HolProg 64 :=
.seq RemovedBody607_263 RemovedBody607_282

def RemovedBody607_284 : StackLang.HolProg 64 :=
.seq RemovedBody607_262 RemovedBody607_283

def RemovedBody607_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody607_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody607_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody607_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody607_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody607_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody607_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody607_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody607_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody607_294 : StackLang.HolProg 64 :=
.seq RemovedBody607_292 RemovedBody607_293

def RemovedBody607_295 : StackLang.HolProg 64 :=
.seq RemovedBody607_291 RemovedBody607_294

def RemovedBody607_296 : StackLang.HolProg 64 :=
.seq RemovedBody607_290 RemovedBody607_295

def RemovedBody607_297 : StackLang.HolProg 64 :=
.seq RemovedBody607_289 RemovedBody607_296

def RemovedBody607_298 : StackLang.HolProg 64 :=
.seq RemovedBody607_288 RemovedBody607_297

def RemovedBody607_299 : StackLang.HolProg 64 :=
.seq RemovedBody607_287 RemovedBody607_298

def RemovedBody607_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody607_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody607_302 : StackLang.HolProg 64 :=
.seq RemovedBody607_300 RemovedBody607_301

def RemovedBody607_303 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody607_304 : StackLang.HolProg 64 :=
.seq RemovedBody607_302 RemovedBody607_303

def RemovedBody607_305 : StackLang.HolProg 64 :=
.call (some (RemovedBody607_299, 0, 607, 8)) (Sum.inl 68) (some (RemovedBody607_304, 607, 9))

def RemovedBody607_306 : StackLang.HolProg 64 :=
.seq RemovedBody607_286 RemovedBody607_305

def RemovedBody607_307 : StackLang.HolProg 64 :=
.seq RemovedBody607_285 RemovedBody607_306

def RemovedBody607_308 : StackLang.HolProg 64 :=
.seq RemovedBody607_284 RemovedBody607_307

def RemovedBody607_309 : StackLang.HolProg 64 :=
.seq RemovedBody607_255 RemovedBody607_308

def RemovedBody607_310 : StackLang.HolProg 64 :=
.seq RemovedBody607_252 RemovedBody607_309

def RemovedBody607_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody607_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody607_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody607_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody607_315 : StackLang.HolProg 64 :=
.seq RemovedBody607_313 RemovedBody607_314

def RemovedBody607_316 : StackLang.HolProg 64 :=
.seq RemovedBody607_312 RemovedBody607_315

def RemovedBody607_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody607_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2333#64)

def RemovedBody607_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody607_320 : StackLang.HolProg 64 :=
.seq RemovedBody607_318 RemovedBody607_319

def RemovedBody607_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody607_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody607_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody607_324 : StackLang.HolProg 64 :=
.seq RemovedBody607_322 RemovedBody607_323

def RemovedBody607_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody607_326 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody607_324 RemovedBody607_325

def RemovedBody607_327 : StackLang.HolProg 64 :=
.seq RemovedBody607_321 RemovedBody607_326

def RemovedBody607_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody607_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody607_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 607 11

def RemovedBody607_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody607_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody607_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody607_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody607_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody607_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody607_337 : StackLang.HolProg 64 :=
.seq RemovedBody607_335 RemovedBody607_336

def RemovedBody607_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody607_339 : StackLang.HolProg 64 :=
.seq RemovedBody607_337 RemovedBody607_338

def RemovedBody607_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody607_341 : StackLang.HolProg 64 :=
.seq RemovedBody607_339 RemovedBody607_340

def RemovedBody607_342 : StackLang.HolProg 64 :=
.seq RemovedBody607_334 RemovedBody607_341

def RemovedBody607_343 : StackLang.HolProg 64 :=
.seq RemovedBody607_333 RemovedBody607_342

def RemovedBody607_344 : StackLang.HolProg 64 :=
.seq RemovedBody607_332 RemovedBody607_343

def RemovedBody607_345 : StackLang.HolProg 64 :=
.seq RemovedBody607_331 RemovedBody607_344

def RemovedBody607_346 : StackLang.HolProg 64 :=
.seq RemovedBody607_330 RemovedBody607_345

def RemovedBody607_347 : StackLang.HolProg 64 :=
.seq RemovedBody607_329 RemovedBody607_346

def RemovedBody607_348 : StackLang.HolProg 64 :=
.seq RemovedBody607_328 RemovedBody607_347

def RemovedBody607_349 : StackLang.HolProg 64 :=
.seq RemovedBody607_327 RemovedBody607_348

def RemovedBody607_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody607_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody607_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody607_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody607_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody607_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody607_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody607_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody607_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody607_359 : StackLang.HolProg 64 :=
.seq RemovedBody607_357 RemovedBody607_358

def RemovedBody607_360 : StackLang.HolProg 64 :=
.seq RemovedBody607_356 RemovedBody607_359

def RemovedBody607_361 : StackLang.HolProg 64 :=
.seq RemovedBody607_355 RemovedBody607_360

def RemovedBody607_362 : StackLang.HolProg 64 :=
.seq RemovedBody607_354 RemovedBody607_361

def RemovedBody607_363 : StackLang.HolProg 64 :=
.seq RemovedBody607_353 RemovedBody607_362

def RemovedBody607_364 : StackLang.HolProg 64 :=
.seq RemovedBody607_352 RemovedBody607_363

def RemovedBody607_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody607_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody607_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody607_368 : StackLang.HolProg 64 :=
.seq RemovedBody607_366 RemovedBody607_367

def RemovedBody607_369 : StackLang.HolProg 64 :=
.seq RemovedBody607_365 RemovedBody607_368

def RemovedBody607_370 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody607_371 : StackLang.HolProg 64 :=
.seq RemovedBody607_369 RemovedBody607_370

def RemovedBody607_372 : StackLang.HolProg 64 :=
.call (some (RemovedBody607_364, 0, 607, 10)) (Sum.inl 77) (some (RemovedBody607_371, 607, 11))

def RemovedBody607_373 : StackLang.HolProg 64 :=
.seq RemovedBody607_351 RemovedBody607_372

def RemovedBody607_374 : StackLang.HolProg 64 :=
.seq RemovedBody607_350 RemovedBody607_373

def RemovedBody607_375 : StackLang.HolProg 64 :=
.seq RemovedBody607_349 RemovedBody607_374

def RemovedBody607_376 : StackLang.HolProg 64 :=
.seq RemovedBody607_320 RemovedBody607_375

def RemovedBody607_377 : StackLang.HolProg 64 :=
.seq RemovedBody607_317 RemovedBody607_376

def RemovedBody607_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody607_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody607_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 32#64))

def RemovedBody607_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody607_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody607_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2334#64)

def RemovedBody607_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody607_385 : StackLang.HolProg 64 :=
.seq RemovedBody607_383 RemovedBody607_384

def RemovedBody607_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody607_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody607_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody607_389 : StackLang.HolProg 64 :=
.seq RemovedBody607_387 RemovedBody607_388

def RemovedBody607_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody607_391 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody607_389 RemovedBody607_390

def RemovedBody607_392 : StackLang.HolProg 64 :=
.seq RemovedBody607_386 RemovedBody607_391

def RemovedBody607_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody607_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody607_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 607 13

def RemovedBody607_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody607_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody607_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody607_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody607_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody607_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody607_402 : StackLang.HolProg 64 :=
.seq RemovedBody607_400 RemovedBody607_401

def RemovedBody607_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody607_404 : StackLang.HolProg 64 :=
.seq RemovedBody607_402 RemovedBody607_403

def RemovedBody607_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody607_406 : StackLang.HolProg 64 :=
.seq RemovedBody607_404 RemovedBody607_405

def RemovedBody607_407 : StackLang.HolProg 64 :=
.seq RemovedBody607_399 RemovedBody607_406

def RemovedBody607_408 : StackLang.HolProg 64 :=
.seq RemovedBody607_398 RemovedBody607_407

def RemovedBody607_409 : StackLang.HolProg 64 :=
.seq RemovedBody607_397 RemovedBody607_408

def RemovedBody607_410 : StackLang.HolProg 64 :=
.seq RemovedBody607_396 RemovedBody607_409

def RemovedBody607_411 : StackLang.HolProg 64 :=
.seq RemovedBody607_395 RemovedBody607_410

def RemovedBody607_412 : StackLang.HolProg 64 :=
.seq RemovedBody607_394 RemovedBody607_411

def RemovedBody607_413 : StackLang.HolProg 64 :=
.seq RemovedBody607_393 RemovedBody607_412

def RemovedBody607_414 : StackLang.HolProg 64 :=
.seq RemovedBody607_392 RemovedBody607_413

def RemovedBody607_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody607_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody607_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody607_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody607_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody607_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody607_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody607_422 : StackLang.HolProg 64 :=
.seq RemovedBody607_420 RemovedBody607_421

def RemovedBody607_423 : StackLang.HolProg 64 :=
.seq RemovedBody607_419 RemovedBody607_422

def RemovedBody607_424 : StackLang.HolProg 64 :=
.seq RemovedBody607_418 RemovedBody607_423

def RemovedBody607_425 : StackLang.HolProg 64 :=
.seq RemovedBody607_417 RemovedBody607_424

def RemovedBody607_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody607_427 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody607_428 : StackLang.HolProg 64 :=
.seq RemovedBody607_426 RemovedBody607_427

def RemovedBody607_429 : StackLang.HolProg 64 :=
.call (some (RemovedBody607_425, 0, 607, 12)) (Sum.inl 431) (some (RemovedBody607_428, 607, 13))

def RemovedBody607_430 : StackLang.HolProg 64 :=
.seq RemovedBody607_416 RemovedBody607_429

def RemovedBody607_431 : StackLang.HolProg 64 :=
.seq RemovedBody607_415 RemovedBody607_430

def RemovedBody607_432 : StackLang.HolProg 64 :=
.seq RemovedBody607_414 RemovedBody607_431

def RemovedBody607_433 : StackLang.HolProg 64 :=
.seq RemovedBody607_385 RemovedBody607_432

def RemovedBody607_434 : StackLang.HolProg 64 :=
.seq RemovedBody607_382 RemovedBody607_433

def RemovedBody607_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody607_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody607_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody607_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody607_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody607_440 : StackLang.HolProg 64 :=
.seq RemovedBody607_438 RemovedBody607_439

def RemovedBody607_441 : StackLang.HolProg 64 :=
.seq RemovedBody607_437 RemovedBody607_440

def RemovedBody607_442 : StackLang.HolProg 64 :=
.seq RemovedBody607_436 RemovedBody607_441

def RemovedBody607_443 : StackLang.HolProg 64 :=
.seq RemovedBody607_435 RemovedBody607_442

def RemovedBody607_444 : StackLang.HolProg 64 :=
.seq RemovedBody607_434 RemovedBody607_443

def RemovedBody607_445 : StackLang.HolProg 64 :=
.seq RemovedBody607_381 RemovedBody607_444

def RemovedBody607_446 : StackLang.HolProg 64 :=
.seq RemovedBody607_380 RemovedBody607_445

def RemovedBody607_447 : StackLang.HolProg 64 :=
.seq RemovedBody607_379 RemovedBody607_446

def RemovedBody607_448 : StackLang.HolProg 64 :=
.seq RemovedBody607_378 RemovedBody607_447

def RemovedBody607_449 : StackLang.HolProg 64 :=
.seq RemovedBody607_377 RemovedBody607_448

def RemovedBody607_450 : StackLang.HolProg 64 :=
.seq RemovedBody607_316 RemovedBody607_449

def RemovedBody607_451 : StackLang.HolProg 64 :=
.seq RemovedBody607_311 RemovedBody607_450

def RemovedBody607_452 : StackLang.HolProg 64 :=
.seq RemovedBody607_310 RemovedBody607_451

def RemovedBody607_453 : StackLang.HolProg 64 :=
.seq RemovedBody607_251 RemovedBody607_452

def RemovedBody607_454 : StackLang.HolProg 64 :=
.seq RemovedBody607_250 RemovedBody607_453

def RemovedBody607_455 : StackLang.HolProg 64 :=
.seq RemovedBody607_249 RemovedBody607_454

def RemovedBody607_456 : StackLang.HolProg 64 :=
.seq RemovedBody607_248 RemovedBody607_455

def RemovedBody607_457 : StackLang.HolProg 64 :=
.seq RemovedBody607_247 RemovedBody607_456

def RemovedBody607_458 : StackLang.HolProg 64 :=
.seq RemovedBody607_194 RemovedBody607_457

def RemovedBody607_459 : StackLang.HolProg 64 :=
.seq RemovedBody607_191 RemovedBody607_458

def RemovedBody607_460 : StackLang.HolProg 64 :=
.seq RemovedBody607_190 RemovedBody607_459

def RemovedBody607_461 : StackLang.HolProg 64 :=
.seq RemovedBody607_189 RemovedBody607_460

def RemovedBody607_462 : StackLang.HolProg 64 :=
.seq RemovedBody607_188 RemovedBody607_461

def RemovedBody607_463 : StackLang.HolProg 64 :=
.seq RemovedBody607_187 RemovedBody607_462

def RemovedBody607_464 : StackLang.HolProg 64 :=
.seq RemovedBody607_186 RemovedBody607_463

def RemovedBody607_465 : StackLang.HolProg 64 :=
.seq RemovedBody607_133 RemovedBody607_464

def RemovedBody607_466 : StackLang.HolProg 64 :=
.seq RemovedBody607_132 RemovedBody607_465

def RemovedBody607_467 : StackLang.HolProg 64 :=
.seq RemovedBody607_131 RemovedBody607_466

def RemovedBody607_468 : StackLang.HolProg 64 :=
.seq RemovedBody607_130 RemovedBody607_467

def RemovedBody607_469 : StackLang.HolProg 64 :=
.seq RemovedBody607_129 RemovedBody607_468

def RemovedBody607_470 : StackLang.HolProg 64 :=
.seq RemovedBody607_128 RemovedBody607_469

def RemovedBody607_471 : StackLang.HolProg 64 :=
.seq RemovedBody607_127 RemovedBody607_470

def RemovedBody607_472 : StackLang.HolProg 64 :=
.seq RemovedBody607_74 RemovedBody607_471

def RemovedBody607_473 : StackLang.HolProg 64 :=
.seq RemovedBody607_67 RemovedBody607_472

def RemovedBody607_474 : StackLang.HolProg 64 :=
.seq RemovedBody607_66 RemovedBody607_473

def RemovedBody607_475 : StackLang.HolProg 64 :=
.seq RemovedBody607_65 RemovedBody607_474

def RemovedBody607_476 : StackLang.HolProg 64 :=
.seq RemovedBody607_50 RemovedBody607_475

def RemovedBody607_477 : StackLang.HolProg 64 :=
.seq RemovedBody607_49 RemovedBody607_476

def RemovedBody607_478 : StackLang.HolProg 64 :=
.seq RemovedBody607_48 RemovedBody607_477

def RemovedBody607_479 : StackLang.HolProg 64 :=
.seq RemovedBody607_47 RemovedBody607_478

def RemovedBody607_480 : StackLang.HolProg 64 :=
.seq RemovedBody607_12 RemovedBody607_479

def RemovedBody607_481 : StackLang.HolProg 64 :=
.seq RemovedBody607_11 RemovedBody607_480

def RemovedBody607_482 : StackLang.HolProg 64 :=
.seq RemovedBody607_10 RemovedBody607_481

def RemovedBody607_483 : StackLang.HolProg 64 :=
.seq RemovedBody607_9 RemovedBody607_482

def RemovedBody607_484 : StackLang.HolProg 64 :=
.seq RemovedBody607_8 RemovedBody607_483

def RemovedBody607_485 : StackLang.HolProg 64 :=
.seq RemovedBody607_7 RemovedBody607_484

def RemovedBody607_486 : StackLang.HolProg 64 :=
.seq RemovedBody607_6 RemovedBody607_485

def Removed607 : Nat × StackLang.HolProg 64 := (607, RemovedBody607_486)
theorem Removed607_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc607 = Removed607 := by
  kernel_rfl
#print axioms Removed607_eq
end InitECandidate.Proofs.BackendStages
