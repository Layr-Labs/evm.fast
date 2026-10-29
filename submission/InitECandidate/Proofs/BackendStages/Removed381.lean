import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc381
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody381_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody381_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody381_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody381_3 : StackLang.HolProg 64 :=
.seq RemovedBody381_1 RemovedBody381_2

def RemovedBody381_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody381_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody381_3 RemovedBody381_4

def RemovedBody381_6 : StackLang.HolProg 64 :=
.seq RemovedBody381_0 RemovedBody381_5

def RemovedBody381_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody381_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody381_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody381_10 : StackLang.HolProg 64 :=
.seq RemovedBody381_8 RemovedBody381_9

def RemovedBody381_11 : StackLang.HolProg 64 :=
.seq RemovedBody381_7 RemovedBody381_10

def RemovedBody381_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody381_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1119#64)

def RemovedBody381_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody381_15 : StackLang.HolProg 64 :=
.seq RemovedBody381_13 RemovedBody381_14

def RemovedBody381_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody381_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody381_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody381_19 : StackLang.HolProg 64 :=
.seq RemovedBody381_17 RemovedBody381_18

def RemovedBody381_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody381_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody381_19 RemovedBody381_20

def RemovedBody381_22 : StackLang.HolProg 64 :=
.seq RemovedBody381_16 RemovedBody381_21

def RemovedBody381_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody381_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody381_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 381 3

def RemovedBody381_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody381_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody381_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody381_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody381_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody381_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody381_32 : StackLang.HolProg 64 :=
.seq RemovedBody381_30 RemovedBody381_31

def RemovedBody381_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody381_34 : StackLang.HolProg 64 :=
.seq RemovedBody381_32 RemovedBody381_33

def RemovedBody381_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody381_36 : StackLang.HolProg 64 :=
.seq RemovedBody381_34 RemovedBody381_35

def RemovedBody381_37 : StackLang.HolProg 64 :=
.seq RemovedBody381_29 RemovedBody381_36

def RemovedBody381_38 : StackLang.HolProg 64 :=
.seq RemovedBody381_28 RemovedBody381_37

def RemovedBody381_39 : StackLang.HolProg 64 :=
.seq RemovedBody381_27 RemovedBody381_38

def RemovedBody381_40 : StackLang.HolProg 64 :=
.seq RemovedBody381_26 RemovedBody381_39

def RemovedBody381_41 : StackLang.HolProg 64 :=
.seq RemovedBody381_25 RemovedBody381_40

def RemovedBody381_42 : StackLang.HolProg 64 :=
.seq RemovedBody381_24 RemovedBody381_41

def RemovedBody381_43 : StackLang.HolProg 64 :=
.seq RemovedBody381_23 RemovedBody381_42

def RemovedBody381_44 : StackLang.HolProg 64 :=
.seq RemovedBody381_22 RemovedBody381_43

def RemovedBody381_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody381_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody381_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody381_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody381_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody381_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody381_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody381_52 : StackLang.HolProg 64 :=
.seq RemovedBody381_50 RemovedBody381_51

def RemovedBody381_53 : StackLang.HolProg 64 :=
.seq RemovedBody381_49 RemovedBody381_52

def RemovedBody381_54 : StackLang.HolProg 64 :=
.seq RemovedBody381_48 RemovedBody381_53

def RemovedBody381_55 : StackLang.HolProg 64 :=
.seq RemovedBody381_47 RemovedBody381_54

def RemovedBody381_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody381_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody381_58 : StackLang.HolProg 64 :=
.seq RemovedBody381_56 RemovedBody381_57

def RemovedBody381_59 : StackLang.HolProg 64 :=
.call (some (RemovedBody381_55, 0, 381, 2)) (Sum.inl 377) (some (RemovedBody381_58, 381, 3))

def RemovedBody381_60 : StackLang.HolProg 64 :=
.seq RemovedBody381_46 RemovedBody381_59

def RemovedBody381_61 : StackLang.HolProg 64 :=
.seq RemovedBody381_45 RemovedBody381_60

def RemovedBody381_62 : StackLang.HolProg 64 :=
.seq RemovedBody381_44 RemovedBody381_61

def RemovedBody381_63 : StackLang.HolProg 64 :=
.seq RemovedBody381_15 RemovedBody381_62

def RemovedBody381_64 : StackLang.HolProg 64 :=
.seq RemovedBody381_12 RemovedBody381_63

def RemovedBody381_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody381_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody381_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody381_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1120#64)

def RemovedBody381_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody381_70 : StackLang.HolProg 64 :=
.seq RemovedBody381_68 RemovedBody381_69

def RemovedBody381_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody381_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody381_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody381_74 : StackLang.HolProg 64 :=
.seq RemovedBody381_72 RemovedBody381_73

def RemovedBody381_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody381_76 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody381_74 RemovedBody381_75

def RemovedBody381_77 : StackLang.HolProg 64 :=
.seq RemovedBody381_71 RemovedBody381_76

def RemovedBody381_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody381_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody381_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 381 5

def RemovedBody381_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody381_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody381_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody381_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody381_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody381_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody381_87 : StackLang.HolProg 64 :=
.seq RemovedBody381_85 RemovedBody381_86

def RemovedBody381_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody381_89 : StackLang.HolProg 64 :=
.seq RemovedBody381_87 RemovedBody381_88

def RemovedBody381_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody381_91 : StackLang.HolProg 64 :=
.seq RemovedBody381_89 RemovedBody381_90

def RemovedBody381_92 : StackLang.HolProg 64 :=
.seq RemovedBody381_84 RemovedBody381_91

def RemovedBody381_93 : StackLang.HolProg 64 :=
.seq RemovedBody381_83 RemovedBody381_92

def RemovedBody381_94 : StackLang.HolProg 64 :=
.seq RemovedBody381_82 RemovedBody381_93

def RemovedBody381_95 : StackLang.HolProg 64 :=
.seq RemovedBody381_81 RemovedBody381_94

def RemovedBody381_96 : StackLang.HolProg 64 :=
.seq RemovedBody381_80 RemovedBody381_95

def RemovedBody381_97 : StackLang.HolProg 64 :=
.seq RemovedBody381_79 RemovedBody381_96

def RemovedBody381_98 : StackLang.HolProg 64 :=
.seq RemovedBody381_78 RemovedBody381_97

def RemovedBody381_99 : StackLang.HolProg 64 :=
.seq RemovedBody381_77 RemovedBody381_98

def RemovedBody381_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody381_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody381_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody381_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody381_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody381_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody381_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody381_107 : StackLang.HolProg 64 :=
.seq RemovedBody381_105 RemovedBody381_106

def RemovedBody381_108 : StackLang.HolProg 64 :=
.seq RemovedBody381_104 RemovedBody381_107

def RemovedBody381_109 : StackLang.HolProg 64 :=
.seq RemovedBody381_103 RemovedBody381_108

def RemovedBody381_110 : StackLang.HolProg 64 :=
.seq RemovedBody381_102 RemovedBody381_109

def RemovedBody381_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody381_112 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody381_113 : StackLang.HolProg 64 :=
.seq RemovedBody381_111 RemovedBody381_112

def RemovedBody381_114 : StackLang.HolProg 64 :=
.call (some (RemovedBody381_110, 0, 381, 4)) (Sum.inl 69) (some (RemovedBody381_113, 381, 5))

def RemovedBody381_115 : StackLang.HolProg 64 :=
.seq RemovedBody381_101 RemovedBody381_114

def RemovedBody381_116 : StackLang.HolProg 64 :=
.seq RemovedBody381_100 RemovedBody381_115

def RemovedBody381_117 : StackLang.HolProg 64 :=
.seq RemovedBody381_99 RemovedBody381_116

def RemovedBody381_118 : StackLang.HolProg 64 :=
.seq RemovedBody381_70 RemovedBody381_117

def RemovedBody381_119 : StackLang.HolProg 64 :=
.seq RemovedBody381_67 RemovedBody381_118

def RemovedBody381_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody381_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 72#64)

def RemovedBody381_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody381_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody381_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1121#64)

def RemovedBody381_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody381_126 : StackLang.HolProg 64 :=
.seq RemovedBody381_124 RemovedBody381_125

def RemovedBody381_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody381_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody381_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody381_130 : StackLang.HolProg 64 :=
.seq RemovedBody381_128 RemovedBody381_129

def RemovedBody381_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody381_132 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody381_130 RemovedBody381_131

def RemovedBody381_133 : StackLang.HolProg 64 :=
.seq RemovedBody381_127 RemovedBody381_132

def RemovedBody381_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody381_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody381_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 381 7

def RemovedBody381_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody381_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody381_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody381_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody381_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody381_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody381_143 : StackLang.HolProg 64 :=
.seq RemovedBody381_141 RemovedBody381_142

def RemovedBody381_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody381_145 : StackLang.HolProg 64 :=
.seq RemovedBody381_143 RemovedBody381_144

def RemovedBody381_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody381_147 : StackLang.HolProg 64 :=
.seq RemovedBody381_145 RemovedBody381_146

def RemovedBody381_148 : StackLang.HolProg 64 :=
.seq RemovedBody381_140 RemovedBody381_147

def RemovedBody381_149 : StackLang.HolProg 64 :=
.seq RemovedBody381_139 RemovedBody381_148

def RemovedBody381_150 : StackLang.HolProg 64 :=
.seq RemovedBody381_138 RemovedBody381_149

def RemovedBody381_151 : StackLang.HolProg 64 :=
.seq RemovedBody381_137 RemovedBody381_150

def RemovedBody381_152 : StackLang.HolProg 64 :=
.seq RemovedBody381_136 RemovedBody381_151

def RemovedBody381_153 : StackLang.HolProg 64 :=
.seq RemovedBody381_135 RemovedBody381_152

def RemovedBody381_154 : StackLang.HolProg 64 :=
.seq RemovedBody381_134 RemovedBody381_153

def RemovedBody381_155 : StackLang.HolProg 64 :=
.seq RemovedBody381_133 RemovedBody381_154

def RemovedBody381_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody381_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody381_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody381_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody381_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody381_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody381_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody381_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody381_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody381_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody381_166 : StackLang.HolProg 64 :=
.seq RemovedBody381_164 RemovedBody381_165

def RemovedBody381_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody381_168 : StackLang.HolProg 64 :=
.seq RemovedBody381_166 RemovedBody381_167

def RemovedBody381_169 : StackLang.HolProg 64 :=
.seq RemovedBody381_163 RemovedBody381_168

def RemovedBody381_170 : StackLang.HolProg 64 :=
.seq RemovedBody381_162 RemovedBody381_169

def RemovedBody381_171 : StackLang.HolProg 64 :=
.seq RemovedBody381_161 RemovedBody381_170

def RemovedBody381_172 : StackLang.HolProg 64 :=
.seq RemovedBody381_160 RemovedBody381_171

def RemovedBody381_173 : StackLang.HolProg 64 :=
.seq RemovedBody381_159 RemovedBody381_172

def RemovedBody381_174 : StackLang.HolProg 64 :=
.seq RemovedBody381_158 RemovedBody381_173

def RemovedBody381_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody381_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody381_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody381_178 : StackLang.HolProg 64 :=
.seq RemovedBody381_176 RemovedBody381_177

def RemovedBody381_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody381_180 : StackLang.HolProg 64 :=
.seq RemovedBody381_178 RemovedBody381_179

def RemovedBody381_181 : StackLang.HolProg 64 :=
.seq RemovedBody381_175 RemovedBody381_180

def RemovedBody381_182 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody381_183 : StackLang.HolProg 64 :=
.seq RemovedBody381_181 RemovedBody381_182

def RemovedBody381_184 : StackLang.HolProg 64 :=
.call (some (RemovedBody381_174, 0, 381, 6)) (Sum.inl 68) (some (RemovedBody381_183, 381, 7))

def RemovedBody381_185 : StackLang.HolProg 64 :=
.seq RemovedBody381_157 RemovedBody381_184

def RemovedBody381_186 : StackLang.HolProg 64 :=
.seq RemovedBody381_156 RemovedBody381_185

def RemovedBody381_187 : StackLang.HolProg 64 :=
.seq RemovedBody381_155 RemovedBody381_186

def RemovedBody381_188 : StackLang.HolProg 64 :=
.seq RemovedBody381_126 RemovedBody381_187

def RemovedBody381_189 : StackLang.HolProg 64 :=
.seq RemovedBody381_123 RemovedBody381_188

def RemovedBody381_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody381_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody381_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 4#64)

def RemovedBody381_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedBody381_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody381_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody381_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody381_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody381_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1122#64)

def RemovedBody381_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody381_200 : StackLang.HolProg 64 :=
.seq RemovedBody381_198 RemovedBody381_199

def RemovedBody381_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody381_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody381_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody381_204 : StackLang.HolProg 64 :=
.seq RemovedBody381_202 RemovedBody381_203

def RemovedBody381_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody381_206 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody381_204 RemovedBody381_205

def RemovedBody381_207 : StackLang.HolProg 64 :=
.seq RemovedBody381_201 RemovedBody381_206

def RemovedBody381_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody381_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody381_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 381 9

def RemovedBody381_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody381_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody381_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody381_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody381_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody381_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody381_217 : StackLang.HolProg 64 :=
.seq RemovedBody381_215 RemovedBody381_216

def RemovedBody381_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody381_219 : StackLang.HolProg 64 :=
.seq RemovedBody381_217 RemovedBody381_218

def RemovedBody381_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody381_221 : StackLang.HolProg 64 :=
.seq RemovedBody381_219 RemovedBody381_220

def RemovedBody381_222 : StackLang.HolProg 64 :=
.seq RemovedBody381_214 RemovedBody381_221

def RemovedBody381_223 : StackLang.HolProg 64 :=
.seq RemovedBody381_213 RemovedBody381_222

def RemovedBody381_224 : StackLang.HolProg 64 :=
.seq RemovedBody381_212 RemovedBody381_223

def RemovedBody381_225 : StackLang.HolProg 64 :=
.seq RemovedBody381_211 RemovedBody381_224

def RemovedBody381_226 : StackLang.HolProg 64 :=
.seq RemovedBody381_210 RemovedBody381_225

def RemovedBody381_227 : StackLang.HolProg 64 :=
.seq RemovedBody381_209 RemovedBody381_226

def RemovedBody381_228 : StackLang.HolProg 64 :=
.seq RemovedBody381_208 RemovedBody381_227

def RemovedBody381_229 : StackLang.HolProg 64 :=
.seq RemovedBody381_207 RemovedBody381_228

def RemovedBody381_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody381_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody381_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody381_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody381_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody381_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody381_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody381_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody381_238 : StackLang.HolProg 64 :=
.seq RemovedBody381_236 RemovedBody381_237

def RemovedBody381_239 : StackLang.HolProg 64 :=
.seq RemovedBody381_235 RemovedBody381_238

def RemovedBody381_240 : StackLang.HolProg 64 :=
.seq RemovedBody381_234 RemovedBody381_239

def RemovedBody381_241 : StackLang.HolProg 64 :=
.seq RemovedBody381_233 RemovedBody381_240

def RemovedBody381_242 : StackLang.HolProg 64 :=
.seq RemovedBody381_232 RemovedBody381_241

def RemovedBody381_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody381_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody381_245 : StackLang.HolProg 64 :=
.seq RemovedBody381_243 RemovedBody381_244

def RemovedBody381_246 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody381_247 : StackLang.HolProg 64 :=
.seq RemovedBody381_245 RemovedBody381_246

def RemovedBody381_248 : StackLang.HolProg 64 :=
.call (some (RemovedBody381_242, 0, 381, 8)) (Sum.inl 379) (some (RemovedBody381_247, 381, 9))

def RemovedBody381_249 : StackLang.HolProg 64 :=
.seq RemovedBody381_231 RemovedBody381_248

def RemovedBody381_250 : StackLang.HolProg 64 :=
.seq RemovedBody381_230 RemovedBody381_249

def RemovedBody381_251 : StackLang.HolProg 64 :=
.seq RemovedBody381_229 RemovedBody381_250

def RemovedBody381_252 : StackLang.HolProg 64 :=
.seq RemovedBody381_200 RemovedBody381_251

def RemovedBody381_253 : StackLang.HolProg 64 :=
.seq RemovedBody381_197 RemovedBody381_252

def RemovedBody381_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody381_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody381_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody381_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1123#64)

def RemovedBody381_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody381_259 : StackLang.HolProg 64 :=
.seq RemovedBody381_257 RemovedBody381_258

def RemovedBody381_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody381_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody381_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody381_263 : StackLang.HolProg 64 :=
.seq RemovedBody381_261 RemovedBody381_262

def RemovedBody381_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody381_265 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody381_263 RemovedBody381_264

def RemovedBody381_266 : StackLang.HolProg 64 :=
.seq RemovedBody381_260 RemovedBody381_265

def RemovedBody381_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody381_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody381_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 381 11

def RemovedBody381_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody381_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody381_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody381_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody381_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody381_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody381_276 : StackLang.HolProg 64 :=
.seq RemovedBody381_274 RemovedBody381_275

def RemovedBody381_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody381_278 : StackLang.HolProg 64 :=
.seq RemovedBody381_276 RemovedBody381_277

def RemovedBody381_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody381_280 : StackLang.HolProg 64 :=
.seq RemovedBody381_278 RemovedBody381_279

def RemovedBody381_281 : StackLang.HolProg 64 :=
.seq RemovedBody381_273 RemovedBody381_280

def RemovedBody381_282 : StackLang.HolProg 64 :=
.seq RemovedBody381_272 RemovedBody381_281

def RemovedBody381_283 : StackLang.HolProg 64 :=
.seq RemovedBody381_271 RemovedBody381_282

def RemovedBody381_284 : StackLang.HolProg 64 :=
.seq RemovedBody381_270 RemovedBody381_283

def RemovedBody381_285 : StackLang.HolProg 64 :=
.seq RemovedBody381_269 RemovedBody381_284

def RemovedBody381_286 : StackLang.HolProg 64 :=
.seq RemovedBody381_268 RemovedBody381_285

def RemovedBody381_287 : StackLang.HolProg 64 :=
.seq RemovedBody381_267 RemovedBody381_286

def RemovedBody381_288 : StackLang.HolProg 64 :=
.seq RemovedBody381_266 RemovedBody381_287

def RemovedBody381_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody381_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody381_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody381_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody381_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody381_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody381_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody381_296 : StackLang.HolProg 64 :=
.seq RemovedBody381_294 RemovedBody381_295

def RemovedBody381_297 : StackLang.HolProg 64 :=
.seq RemovedBody381_293 RemovedBody381_296

def RemovedBody381_298 : StackLang.HolProg 64 :=
.seq RemovedBody381_292 RemovedBody381_297

def RemovedBody381_299 : StackLang.HolProg 64 :=
.seq RemovedBody381_291 RemovedBody381_298

def RemovedBody381_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody381_301 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody381_302 : StackLang.HolProg 64 :=
.seq RemovedBody381_300 RemovedBody381_301

def RemovedBody381_303 : StackLang.HolProg 64 :=
.call (some (RemovedBody381_299, 0, 381, 10)) (Sum.inl 380) (some (RemovedBody381_302, 381, 11))

def RemovedBody381_304 : StackLang.HolProg 64 :=
.seq RemovedBody381_290 RemovedBody381_303

def RemovedBody381_305 : StackLang.HolProg 64 :=
.seq RemovedBody381_289 RemovedBody381_304

def RemovedBody381_306 : StackLang.HolProg 64 :=
.seq RemovedBody381_288 RemovedBody381_305

def RemovedBody381_307 : StackLang.HolProg 64 :=
.seq RemovedBody381_259 RemovedBody381_306

def RemovedBody381_308 : StackLang.HolProg 64 :=
.seq RemovedBody381_256 RemovedBody381_307

def RemovedBody381_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody381_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody381_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody381_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1124#64)

def RemovedBody381_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody381_314 : StackLang.HolProg 64 :=
.seq RemovedBody381_312 RemovedBody381_313

def RemovedBody381_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody381_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody381_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody381_318 : StackLang.HolProg 64 :=
.seq RemovedBody381_316 RemovedBody381_317

def RemovedBody381_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody381_320 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody381_318 RemovedBody381_319

def RemovedBody381_321 : StackLang.HolProg 64 :=
.seq RemovedBody381_315 RemovedBody381_320

def RemovedBody381_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody381_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody381_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 381 13

def RemovedBody381_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody381_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody381_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody381_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody381_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody381_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody381_331 : StackLang.HolProg 64 :=
.seq RemovedBody381_329 RemovedBody381_330

def RemovedBody381_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody381_333 : StackLang.HolProg 64 :=
.seq RemovedBody381_331 RemovedBody381_332

def RemovedBody381_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody381_335 : StackLang.HolProg 64 :=
.seq RemovedBody381_333 RemovedBody381_334

def RemovedBody381_336 : StackLang.HolProg 64 :=
.seq RemovedBody381_328 RemovedBody381_335

def RemovedBody381_337 : StackLang.HolProg 64 :=
.seq RemovedBody381_327 RemovedBody381_336

def RemovedBody381_338 : StackLang.HolProg 64 :=
.seq RemovedBody381_326 RemovedBody381_337

def RemovedBody381_339 : StackLang.HolProg 64 :=
.seq RemovedBody381_325 RemovedBody381_338

def RemovedBody381_340 : StackLang.HolProg 64 :=
.seq RemovedBody381_324 RemovedBody381_339

def RemovedBody381_341 : StackLang.HolProg 64 :=
.seq RemovedBody381_323 RemovedBody381_340

def RemovedBody381_342 : StackLang.HolProg 64 :=
.seq RemovedBody381_322 RemovedBody381_341

def RemovedBody381_343 : StackLang.HolProg 64 :=
.seq RemovedBody381_321 RemovedBody381_342

def RemovedBody381_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody381_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody381_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody381_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody381_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody381_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody381_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody381_351 : StackLang.HolProg 64 :=
.seq RemovedBody381_349 RemovedBody381_350

def RemovedBody381_352 : StackLang.HolProg 64 :=
.seq RemovedBody381_348 RemovedBody381_351

def RemovedBody381_353 : StackLang.HolProg 64 :=
.seq RemovedBody381_347 RemovedBody381_352

def RemovedBody381_354 : StackLang.HolProg 64 :=
.seq RemovedBody381_346 RemovedBody381_353

def RemovedBody381_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody381_356 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody381_357 : StackLang.HolProg 64 :=
.seq RemovedBody381_355 RemovedBody381_356

def RemovedBody381_358 : StackLang.HolProg 64 :=
.call (some (RemovedBody381_354, 0, 381, 12)) (Sum.inl 70) (some (RemovedBody381_357, 381, 13))

def RemovedBody381_359 : StackLang.HolProg 64 :=
.seq RemovedBody381_345 RemovedBody381_358

def RemovedBody381_360 : StackLang.HolProg 64 :=
.seq RemovedBody381_344 RemovedBody381_359

def RemovedBody381_361 : StackLang.HolProg 64 :=
.seq RemovedBody381_343 RemovedBody381_360

def RemovedBody381_362 : StackLang.HolProg 64 :=
.seq RemovedBody381_314 RemovedBody381_361

def RemovedBody381_363 : StackLang.HolProg 64 :=
.seq RemovedBody381_311 RemovedBody381_362

def RemovedBody381_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody381_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody381_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody381_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody381_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody381_369 : StackLang.HolProg 64 :=
.seq RemovedBody381_367 RemovedBody381_368

def RemovedBody381_370 : StackLang.HolProg 64 :=
.seq RemovedBody381_366 RemovedBody381_369

def RemovedBody381_371 : StackLang.HolProg 64 :=
.seq RemovedBody381_365 RemovedBody381_370

def RemovedBody381_372 : StackLang.HolProg 64 :=
.seq RemovedBody381_364 RemovedBody381_371

def RemovedBody381_373 : StackLang.HolProg 64 :=
.seq RemovedBody381_363 RemovedBody381_372

def RemovedBody381_374 : StackLang.HolProg 64 :=
.seq RemovedBody381_310 RemovedBody381_373

def RemovedBody381_375 : StackLang.HolProg 64 :=
.seq RemovedBody381_309 RemovedBody381_374

def RemovedBody381_376 : StackLang.HolProg 64 :=
.seq RemovedBody381_308 RemovedBody381_375

def RemovedBody381_377 : StackLang.HolProg 64 :=
.seq RemovedBody381_255 RemovedBody381_376

def RemovedBody381_378 : StackLang.HolProg 64 :=
.seq RemovedBody381_254 RemovedBody381_377

def RemovedBody381_379 : StackLang.HolProg 64 :=
.seq RemovedBody381_253 RemovedBody381_378

def RemovedBody381_380 : StackLang.HolProg 64 :=
.seq RemovedBody381_196 RemovedBody381_379

def RemovedBody381_381 : StackLang.HolProg 64 :=
.seq RemovedBody381_195 RemovedBody381_380

def RemovedBody381_382 : StackLang.HolProg 64 :=
.seq RemovedBody381_194 RemovedBody381_381

def RemovedBody381_383 : StackLang.HolProg 64 :=
.seq RemovedBody381_193 RemovedBody381_382

def RemovedBody381_384 : StackLang.HolProg 64 :=
.seq RemovedBody381_192 RemovedBody381_383

def RemovedBody381_385 : StackLang.HolProg 64 :=
.seq RemovedBody381_191 RemovedBody381_384

def RemovedBody381_386 : StackLang.HolProg 64 :=
.seq RemovedBody381_190 RemovedBody381_385

def RemovedBody381_387 : StackLang.HolProg 64 :=
.seq RemovedBody381_189 RemovedBody381_386

def RemovedBody381_388 : StackLang.HolProg 64 :=
.seq RemovedBody381_122 RemovedBody381_387

def RemovedBody381_389 : StackLang.HolProg 64 :=
.seq RemovedBody381_121 RemovedBody381_388

def RemovedBody381_390 : StackLang.HolProg 64 :=
.seq RemovedBody381_120 RemovedBody381_389

def RemovedBody381_391 : StackLang.HolProg 64 :=
.seq RemovedBody381_119 RemovedBody381_390

def RemovedBody381_392 : StackLang.HolProg 64 :=
.seq RemovedBody381_66 RemovedBody381_391

def RemovedBody381_393 : StackLang.HolProg 64 :=
.seq RemovedBody381_65 RemovedBody381_392

def RemovedBody381_394 : StackLang.HolProg 64 :=
.seq RemovedBody381_64 RemovedBody381_393

def RemovedBody381_395 : StackLang.HolProg 64 :=
.seq RemovedBody381_11 RemovedBody381_394

def RemovedBody381_396 : StackLang.HolProg 64 :=
.seq RemovedBody381_6 RemovedBody381_395

def Removed381 : Nat × StackLang.HolProg 64 := (381, RemovedBody381_396)
theorem Removed381_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc381 = Removed381 := by
  kernel_rfl
#print axioms Removed381_eq
end InitECandidate.Proofs.BackendStages
