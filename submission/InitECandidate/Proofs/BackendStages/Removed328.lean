import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc328
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody328_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody328_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody328_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody328_3 : StackLang.HolProg 64 :=
.seq RemovedBody328_1 RemovedBody328_2

def RemovedBody328_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody328_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody328_3 RemovedBody328_4

def RemovedBody328_6 : StackLang.HolProg 64 :=
.seq RemovedBody328_0 RemovedBody328_5

def RemovedBody328_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody328_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 24#64))

def RemovedBody328_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody328_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody328_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody328_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody328_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody328_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody328_15 : StackLang.HolProg 64 :=
.seq RemovedBody328_13 RemovedBody328_14

def RemovedBody328_16 : StackLang.HolProg 64 :=
.seq RemovedBody328_12 RemovedBody328_15

def RemovedBody328_17 : StackLang.HolProg 64 :=
.seq RemovedBody328_11 RemovedBody328_16

def RemovedBody328_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody328_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) RemovedBody328_17 RemovedBody328_18

def RemovedBody328_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody328_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody328_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody328_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 8#64))

def RemovedBody328_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody328_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody328_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 13#64)

def RemovedBody328_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody328_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody328_29 : StackLang.HolProg 64 :=
.seq RemovedBody328_27 RemovedBody328_28

def RemovedBody328_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody328_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 926#64)

def RemovedBody328_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody328_33 : StackLang.HolProg 64 :=
.seq RemovedBody328_31 RemovedBody328_32

def RemovedBody328_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody328_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody328_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody328_37 : StackLang.HolProg 64 :=
.seq RemovedBody328_35 RemovedBody328_36

def RemovedBody328_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody328_39 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody328_37 RemovedBody328_38

def RemovedBody328_40 : StackLang.HolProg 64 :=
.seq RemovedBody328_34 RemovedBody328_39

def RemovedBody328_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody328_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody328_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 328 3

def RemovedBody328_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody328_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody328_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody328_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody328_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody328_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody328_50 : StackLang.HolProg 64 :=
.seq RemovedBody328_48 RemovedBody328_49

def RemovedBody328_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody328_52 : StackLang.HolProg 64 :=
.seq RemovedBody328_50 RemovedBody328_51

def RemovedBody328_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody328_54 : StackLang.HolProg 64 :=
.seq RemovedBody328_52 RemovedBody328_53

def RemovedBody328_55 : StackLang.HolProg 64 :=
.seq RemovedBody328_47 RemovedBody328_54

def RemovedBody328_56 : StackLang.HolProg 64 :=
.seq RemovedBody328_46 RemovedBody328_55

def RemovedBody328_57 : StackLang.HolProg 64 :=
.seq RemovedBody328_45 RemovedBody328_56

def RemovedBody328_58 : StackLang.HolProg 64 :=
.seq RemovedBody328_44 RemovedBody328_57

def RemovedBody328_59 : StackLang.HolProg 64 :=
.seq RemovedBody328_43 RemovedBody328_58

def RemovedBody328_60 : StackLang.HolProg 64 :=
.seq RemovedBody328_42 RemovedBody328_59

def RemovedBody328_61 : StackLang.HolProg 64 :=
.seq RemovedBody328_41 RemovedBody328_60

def RemovedBody328_62 : StackLang.HolProg 64 :=
.seq RemovedBody328_40 RemovedBody328_61

def RemovedBody328_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody328_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody328_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody328_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody328_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody328_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody328_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody328_70 : StackLang.HolProg 64 :=
.seq RemovedBody328_68 RemovedBody328_69

def RemovedBody328_71 : StackLang.HolProg 64 :=
.seq RemovedBody328_67 RemovedBody328_70

def RemovedBody328_72 : StackLang.HolProg 64 :=
.seq RemovedBody328_66 RemovedBody328_71

def RemovedBody328_73 : StackLang.HolProg 64 :=
.seq RemovedBody328_65 RemovedBody328_72

def RemovedBody328_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody328_75 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody328_76 : StackLang.HolProg 64 :=
.seq RemovedBody328_74 RemovedBody328_75

def RemovedBody328_77 : StackLang.HolProg 64 :=
.call (some (RemovedBody328_73, 0, 328, 2)) (Sum.inl 286) (some (RemovedBody328_76, 328, 3))

def RemovedBody328_78 : StackLang.HolProg 64 :=
.seq RemovedBody328_64 RemovedBody328_77

def RemovedBody328_79 : StackLang.HolProg 64 :=
.seq RemovedBody328_63 RemovedBody328_78

def RemovedBody328_80 : StackLang.HolProg 64 :=
.seq RemovedBody328_62 RemovedBody328_79

def RemovedBody328_81 : StackLang.HolProg 64 :=
.seq RemovedBody328_33 RemovedBody328_80

def RemovedBody328_82 : StackLang.HolProg 64 :=
.seq RemovedBody328_30 RemovedBody328_81

def RemovedBody328_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody328_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody328_85 : StackLang.HolProg 64 :=
.seq RemovedBody328_83 RemovedBody328_84

def RemovedBody328_86 : StackLang.HolProg 64 :=
.seq RemovedBody328_82 RemovedBody328_85

def RemovedBody328_87 : StackLang.HolProg 64 :=
.seq RemovedBody328_29 RemovedBody328_86

def RemovedBody328_88 : StackLang.HolProg 64 :=
.seq RemovedBody328_26 RemovedBody328_87

def RemovedBody328_89 : StackLang.HolProg 64 :=
.seq RemovedBody328_25 RemovedBody328_88

def RemovedBody328_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody328_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody328_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody328_93 : StackLang.HolProg 64 :=
.seq RemovedBody328_91 RemovedBody328_92

def RemovedBody328_94 : StackLang.HolProg 64 :=
.seq RemovedBody328_90 RemovedBody328_93

def RemovedBody328_95 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) RemovedBody328_89 RemovedBody328_94

def RemovedBody328_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody328_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def RemovedBody328_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody328_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody328_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 927#64)

def RemovedBody328_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody328_102 : StackLang.HolProg 64 :=
.seq RemovedBody328_100 RemovedBody328_101

def RemovedBody328_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody328_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody328_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody328_106 : StackLang.HolProg 64 :=
.seq RemovedBody328_104 RemovedBody328_105

def RemovedBody328_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody328_108 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody328_106 RemovedBody328_107

def RemovedBody328_109 : StackLang.HolProg 64 :=
.seq RemovedBody328_103 RemovedBody328_108

def RemovedBody328_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody328_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody328_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 328 5

def RemovedBody328_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody328_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody328_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody328_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody328_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody328_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody328_119 : StackLang.HolProg 64 :=
.seq RemovedBody328_117 RemovedBody328_118

def RemovedBody328_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody328_121 : StackLang.HolProg 64 :=
.seq RemovedBody328_119 RemovedBody328_120

def RemovedBody328_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody328_123 : StackLang.HolProg 64 :=
.seq RemovedBody328_121 RemovedBody328_122

def RemovedBody328_124 : StackLang.HolProg 64 :=
.seq RemovedBody328_116 RemovedBody328_123

def RemovedBody328_125 : StackLang.HolProg 64 :=
.seq RemovedBody328_115 RemovedBody328_124

def RemovedBody328_126 : StackLang.HolProg 64 :=
.seq RemovedBody328_114 RemovedBody328_125

def RemovedBody328_127 : StackLang.HolProg 64 :=
.seq RemovedBody328_113 RemovedBody328_126

def RemovedBody328_128 : StackLang.HolProg 64 :=
.seq RemovedBody328_112 RemovedBody328_127

def RemovedBody328_129 : StackLang.HolProg 64 :=
.seq RemovedBody328_111 RemovedBody328_128

def RemovedBody328_130 : StackLang.HolProg 64 :=
.seq RemovedBody328_110 RemovedBody328_129

def RemovedBody328_131 : StackLang.HolProg 64 :=
.seq RemovedBody328_109 RemovedBody328_130

def RemovedBody328_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody328_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody328_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody328_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody328_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody328_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody328_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody328_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody328_140 : StackLang.HolProg 64 :=
.seq RemovedBody328_138 RemovedBody328_139

def RemovedBody328_141 : StackLang.HolProg 64 :=
.seq RemovedBody328_137 RemovedBody328_140

def RemovedBody328_142 : StackLang.HolProg 64 :=
.seq RemovedBody328_136 RemovedBody328_141

def RemovedBody328_143 : StackLang.HolProg 64 :=
.seq RemovedBody328_135 RemovedBody328_142

def RemovedBody328_144 : StackLang.HolProg 64 :=
.seq RemovedBody328_134 RemovedBody328_143

def RemovedBody328_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody328_146 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody328_147 : StackLang.HolProg 64 :=
.seq RemovedBody328_145 RemovedBody328_146

def RemovedBody328_148 : StackLang.HolProg 64 :=
.call (some (RemovedBody328_144, 0, 328, 4)) (Sum.inl 68) (some (RemovedBody328_147, 328, 5))

def RemovedBody328_149 : StackLang.HolProg 64 :=
.seq RemovedBody328_133 RemovedBody328_148

def RemovedBody328_150 : StackLang.HolProg 64 :=
.seq RemovedBody328_132 RemovedBody328_149

def RemovedBody328_151 : StackLang.HolProg 64 :=
.seq RemovedBody328_131 RemovedBody328_150

def RemovedBody328_152 : StackLang.HolProg 64 :=
.seq RemovedBody328_102 RemovedBody328_151

def RemovedBody328_153 : StackLang.HolProg 64 :=
.seq RemovedBody328_99 RemovedBody328_152

def RemovedBody328_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody328_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody328_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def RemovedBody328_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody328_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def RemovedBody328_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody328_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody328_161 : StackLang.HolProg 64 :=
.seq RemovedBody328_159 RemovedBody328_160

def RemovedBody328_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody328_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 928#64)

def RemovedBody328_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody328_165 : StackLang.HolProg 64 :=
.seq RemovedBody328_163 RemovedBody328_164

def RemovedBody328_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody328_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody328_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody328_169 : StackLang.HolProg 64 :=
.seq RemovedBody328_167 RemovedBody328_168

def RemovedBody328_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody328_171 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody328_169 RemovedBody328_170

def RemovedBody328_172 : StackLang.HolProg 64 :=
.seq RemovedBody328_166 RemovedBody328_171

def RemovedBody328_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody328_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody328_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 328 7

def RemovedBody328_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody328_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody328_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody328_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody328_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody328_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody328_182 : StackLang.HolProg 64 :=
.seq RemovedBody328_180 RemovedBody328_181

def RemovedBody328_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody328_184 : StackLang.HolProg 64 :=
.seq RemovedBody328_182 RemovedBody328_183

def RemovedBody328_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody328_186 : StackLang.HolProg 64 :=
.seq RemovedBody328_184 RemovedBody328_185

def RemovedBody328_187 : StackLang.HolProg 64 :=
.seq RemovedBody328_179 RemovedBody328_186

def RemovedBody328_188 : StackLang.HolProg 64 :=
.seq RemovedBody328_178 RemovedBody328_187

def RemovedBody328_189 : StackLang.HolProg 64 :=
.seq RemovedBody328_177 RemovedBody328_188

def RemovedBody328_190 : StackLang.HolProg 64 :=
.seq RemovedBody328_176 RemovedBody328_189

def RemovedBody328_191 : StackLang.HolProg 64 :=
.seq RemovedBody328_175 RemovedBody328_190

def RemovedBody328_192 : StackLang.HolProg 64 :=
.seq RemovedBody328_174 RemovedBody328_191

def RemovedBody328_193 : StackLang.HolProg 64 :=
.seq RemovedBody328_173 RemovedBody328_192

def RemovedBody328_194 : StackLang.HolProg 64 :=
.seq RemovedBody328_172 RemovedBody328_193

def RemovedBody328_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody328_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody328_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody328_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody328_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody328_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody328_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody328_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody328_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody328_204 : StackLang.HolProg 64 :=
.seq RemovedBody328_202 RemovedBody328_203

def RemovedBody328_205 : StackLang.HolProg 64 :=
.seq RemovedBody328_201 RemovedBody328_204

def RemovedBody328_206 : StackLang.HolProg 64 :=
.seq RemovedBody328_200 RemovedBody328_205

def RemovedBody328_207 : StackLang.HolProg 64 :=
.seq RemovedBody328_199 RemovedBody328_206

def RemovedBody328_208 : StackLang.HolProg 64 :=
.seq RemovedBody328_198 RemovedBody328_207

def RemovedBody328_209 : StackLang.HolProg 64 :=
.seq RemovedBody328_197 RemovedBody328_208

def RemovedBody328_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody328_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody328_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody328_213 : StackLang.HolProg 64 :=
.seq RemovedBody328_211 RemovedBody328_212

def RemovedBody328_214 : StackLang.HolProg 64 :=
.seq RemovedBody328_210 RemovedBody328_213

def RemovedBody328_215 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody328_216 : StackLang.HolProg 64 :=
.seq RemovedBody328_214 RemovedBody328_215

def RemovedBody328_217 : StackLang.HolProg 64 :=
.call (some (RemovedBody328_209, 0, 328, 6)) (Sum.inl 158) (some (RemovedBody328_216, 328, 7))

def RemovedBody328_218 : StackLang.HolProg 64 :=
.seq RemovedBody328_196 RemovedBody328_217

def RemovedBody328_219 : StackLang.HolProg 64 :=
.seq RemovedBody328_195 RemovedBody328_218

def RemovedBody328_220 : StackLang.HolProg 64 :=
.seq RemovedBody328_194 RemovedBody328_219

def RemovedBody328_221 : StackLang.HolProg 64 :=
.seq RemovedBody328_165 RemovedBody328_220

def RemovedBody328_222 : StackLang.HolProg 64 :=
.seq RemovedBody328_162 RemovedBody328_221

def RemovedBody328_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody328_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody328_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody328_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody328_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody328_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody328_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody328_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def RemovedBody328_231 : StackLang.HolProg 64 :=
.seq RemovedBody328_229 RemovedBody328_230

def RemovedBody328_232 : StackLang.HolProg 64 :=
.seq RemovedBody328_228 RemovedBody328_231

def RemovedBody328_233 : StackLang.HolProg 64 :=
.seq RemovedBody328_227 RemovedBody328_232

def RemovedBody328_234 : StackLang.HolProg 64 :=
.seq RemovedBody328_226 RemovedBody328_233

def RemovedBody328_235 : StackLang.HolProg 64 :=
.seq RemovedBody328_225 RemovedBody328_234

def RemovedBody328_236 : StackLang.HolProg 64 :=
.seq RemovedBody328_224 RemovedBody328_235

def RemovedBody328_237 : StackLang.HolProg 64 :=
.seq RemovedBody328_223 RemovedBody328_236

def RemovedBody328_238 : StackLang.HolProg 64 :=
.seq RemovedBody328_222 RemovedBody328_237

def RemovedBody328_239 : StackLang.HolProg 64 :=
.seq RemovedBody328_161 RemovedBody328_238

def RemovedBody328_240 : StackLang.HolProg 64 :=
.seq RemovedBody328_158 RemovedBody328_239

def RemovedBody328_241 : StackLang.HolProg 64 :=
.seq RemovedBody328_157 RemovedBody328_240

def RemovedBody328_242 : StackLang.HolProg 64 :=
.seq RemovedBody328_156 RemovedBody328_241

def RemovedBody328_243 : StackLang.HolProg 64 :=
.seq RemovedBody328_155 RemovedBody328_242

def RemovedBody328_244 : StackLang.HolProg 64 :=
.seq RemovedBody328_154 RemovedBody328_243

def RemovedBody328_245 : StackLang.HolProg 64 :=
.seq RemovedBody328_153 RemovedBody328_244

def RemovedBody328_246 : StackLang.HolProg 64 :=
.seq RemovedBody328_98 RemovedBody328_245

def RemovedBody328_247 : StackLang.HolProg 64 :=
.seq RemovedBody328_97 RemovedBody328_246

def RemovedBody328_248 : StackLang.HolProg 64 :=
.seq RemovedBody328_96 RemovedBody328_247

def RemovedBody328_249 : StackLang.HolProg 64 :=
.seq RemovedBody328_95 RemovedBody328_248

def RemovedBody328_250 : StackLang.HolProg 64 :=
.seq RemovedBody328_24 RemovedBody328_249

def RemovedBody328_251 : StackLang.HolProg 64 :=
.seq RemovedBody328_23 RemovedBody328_250

def RemovedBody328_252 : StackLang.HolProg 64 :=
.seq RemovedBody328_22 RemovedBody328_251

def RemovedBody328_253 : StackLang.HolProg 64 :=
.seq RemovedBody328_21 RemovedBody328_252

def RemovedBody328_254 : StackLang.HolProg 64 :=
.seq RemovedBody328_20 RemovedBody328_253

def RemovedBody328_255 : StackLang.HolProg 64 :=
.seq RemovedBody328_19 RemovedBody328_254

def RemovedBody328_256 : StackLang.HolProg 64 :=
.seq RemovedBody328_10 RemovedBody328_255

def RemovedBody328_257 : StackLang.HolProg 64 :=
.seq RemovedBody328_9 RemovedBody328_256

def RemovedBody328_258 : StackLang.HolProg 64 :=
.seq RemovedBody328_8 RemovedBody328_257

def RemovedBody328_259 : StackLang.HolProg 64 :=
.seq RemovedBody328_7 RemovedBody328_258

def RemovedBody328_260 : StackLang.HolProg 64 :=
.seq RemovedBody328_6 RemovedBody328_259

def Removed328 : Nat × StackLang.HolProg 64 := (328, RemovedBody328_260)
theorem Removed328_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc328 = Removed328 := by
  kernel_rfl
#print axioms Removed328_eq
end InitECandidate.Proofs.BackendStages
