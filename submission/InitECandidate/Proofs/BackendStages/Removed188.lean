import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc188
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody188_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody188_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody188_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody188_3 : StackLang.HolProg 64 :=
.seq RemovedBody188_1 RemovedBody188_2

def RemovedBody188_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody188_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody188_3 RemovedBody188_4

def RemovedBody188_6 : StackLang.HolProg 64 :=
.seq RemovedBody188_0 RemovedBody188_5

def RemovedBody188_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody188_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 72#64))

def RemovedBody188_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody188_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody188_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody188_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody188_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 40#64))

def RemovedBody188_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody188_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 5 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def RemovedBody188_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody188_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody188_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def RemovedBody188_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody188_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 72#64)))

def RemovedBody188_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody188_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody188_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody188_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody188_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody188_26 : StackLang.HolProg 64 :=
.seq RemovedBody188_24 RemovedBody188_25

def RemovedBody188_27 : StackLang.HolProg 64 :=
.seq RemovedBody188_23 RemovedBody188_26

def RemovedBody188_28 : StackLang.HolProg 64 :=
.seq RemovedBody188_22 RemovedBody188_27

def RemovedBody188_29 : StackLang.HolProg 64 :=
.seq RemovedBody188_21 RemovedBody188_28

def RemovedBody188_30 : StackLang.HolProg 64 :=
.seq RemovedBody188_20 RemovedBody188_29

def RemovedBody188_31 : StackLang.HolProg 64 :=
.seq RemovedBody188_19 RemovedBody188_30

def RemovedBody188_32 : StackLang.HolProg 64 :=
.seq RemovedBody188_18 RemovedBody188_31

def RemovedBody188_33 : StackLang.HolProg 64 :=
.seq RemovedBody188_17 RemovedBody188_32

def RemovedBody188_34 : StackLang.HolProg 64 :=
.seq RemovedBody188_16 RemovedBody188_33

def RemovedBody188_35 : StackLang.HolProg 64 :=
.seq RemovedBody188_15 RemovedBody188_34

def RemovedBody188_36 : StackLang.HolProg 64 :=
.seq RemovedBody188_14 RemovedBody188_35

def RemovedBody188_37 : StackLang.HolProg 64 :=
.seq RemovedBody188_13 RemovedBody188_36

def RemovedBody188_38 : StackLang.HolProg 64 :=
.seq RemovedBody188_12 RemovedBody188_37

def RemovedBody188_39 : StackLang.HolProg 64 :=
.seq RemovedBody188_11 RemovedBody188_38

def RemovedBody188_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody188_41 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) RemovedBody188_39 RemovedBody188_40

def RemovedBody188_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody188_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody188_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody188_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 64#64))

def RemovedBody188_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody188_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 80#64))

def RemovedBody188_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody188_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody188_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody188_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody188_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody188_53 : StackLang.HolProg 64 :=
.seq RemovedBody188_51 RemovedBody188_52

def RemovedBody188_54 : StackLang.HolProg 64 :=
.seq RemovedBody188_50 RemovedBody188_53

def RemovedBody188_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody188_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 215#64)

def RemovedBody188_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody188_58 : StackLang.HolProg 64 :=
.seq RemovedBody188_56 RemovedBody188_57

def RemovedBody188_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody188_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody188_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody188_62 : StackLang.HolProg 64 :=
.seq RemovedBody188_60 RemovedBody188_61

def RemovedBody188_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody188_64 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody188_62 RemovedBody188_63

def RemovedBody188_65 : StackLang.HolProg 64 :=
.seq RemovedBody188_59 RemovedBody188_64

def RemovedBody188_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody188_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody188_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 188 3

def RemovedBody188_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody188_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody188_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody188_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody188_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody188_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody188_75 : StackLang.HolProg 64 :=
.seq RemovedBody188_73 RemovedBody188_74

def RemovedBody188_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody188_77 : StackLang.HolProg 64 :=
.seq RemovedBody188_75 RemovedBody188_76

def RemovedBody188_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody188_79 : StackLang.HolProg 64 :=
.seq RemovedBody188_77 RemovedBody188_78

def RemovedBody188_80 : StackLang.HolProg 64 :=
.seq RemovedBody188_72 RemovedBody188_79

def RemovedBody188_81 : StackLang.HolProg 64 :=
.seq RemovedBody188_71 RemovedBody188_80

def RemovedBody188_82 : StackLang.HolProg 64 :=
.seq RemovedBody188_70 RemovedBody188_81

def RemovedBody188_83 : StackLang.HolProg 64 :=
.seq RemovedBody188_69 RemovedBody188_82

def RemovedBody188_84 : StackLang.HolProg 64 :=
.seq RemovedBody188_68 RemovedBody188_83

def RemovedBody188_85 : StackLang.HolProg 64 :=
.seq RemovedBody188_67 RemovedBody188_84

def RemovedBody188_86 : StackLang.HolProg 64 :=
.seq RemovedBody188_66 RemovedBody188_85

def RemovedBody188_87 : StackLang.HolProg 64 :=
.seq RemovedBody188_65 RemovedBody188_86

def RemovedBody188_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody188_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody188_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody188_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody188_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody188_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody188_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody188_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody188_96 : StackLang.HolProg 64 :=
.seq RemovedBody188_94 RemovedBody188_95

def RemovedBody188_97 : StackLang.HolProg 64 :=
.seq RemovedBody188_93 RemovedBody188_96

def RemovedBody188_98 : StackLang.HolProg 64 :=
.seq RemovedBody188_92 RemovedBody188_97

def RemovedBody188_99 : StackLang.HolProg 64 :=
.seq RemovedBody188_91 RemovedBody188_98

def RemovedBody188_100 : StackLang.HolProg 64 :=
.seq RemovedBody188_90 RemovedBody188_99

def RemovedBody188_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody188_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody188_103 : StackLang.HolProg 64 :=
.seq RemovedBody188_101 RemovedBody188_102

def RemovedBody188_104 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody188_105 : StackLang.HolProg 64 :=
.seq RemovedBody188_103 RemovedBody188_104

def RemovedBody188_106 : StackLang.HolProg 64 :=
.call (some (RemovedBody188_100, 0, 188, 2)) (Sum.inl 191) (some (RemovedBody188_105, 188, 3))

def RemovedBody188_107 : StackLang.HolProg 64 :=
.seq RemovedBody188_89 RemovedBody188_106

def RemovedBody188_108 : StackLang.HolProg 64 :=
.seq RemovedBody188_88 RemovedBody188_107

def RemovedBody188_109 : StackLang.HolProg 64 :=
.seq RemovedBody188_87 RemovedBody188_108

def RemovedBody188_110 : StackLang.HolProg 64 :=
.seq RemovedBody188_58 RemovedBody188_109

def RemovedBody188_111 : StackLang.HolProg 64 :=
.seq RemovedBody188_55 RemovedBody188_110

def RemovedBody188_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody188_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody188_114 : StackLang.HolProg 64 :=
.seq RemovedBody188_112 RemovedBody188_113

def RemovedBody188_115 : StackLang.HolProg 64 :=
.seq RemovedBody188_111 RemovedBody188_114

def RemovedBody188_116 : StackLang.HolProg 64 :=
.seq RemovedBody188_54 RemovedBody188_115

def RemovedBody188_117 : StackLang.HolProg 64 :=
.seq RemovedBody188_49 RemovedBody188_116

def RemovedBody188_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody188_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody188_120 : StackLang.HolProg 64 :=
.seq RemovedBody188_118 RemovedBody188_119

def RemovedBody188_121 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody188_117 RemovedBody188_120

def RemovedBody188_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody188_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody188_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 64#64))

def RemovedBody188_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody188_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def RemovedBody188_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody188_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody188_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody188_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def RemovedBody188_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody188_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody188_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody188_134 : StackLang.HolProg 64 :=
.seq RemovedBody188_132 RemovedBody188_133

def RemovedBody188_135 : StackLang.HolProg 64 :=
.seq RemovedBody188_131 RemovedBody188_134

def RemovedBody188_136 : StackLang.HolProg 64 :=
.seq RemovedBody188_130 RemovedBody188_135

def RemovedBody188_137 : StackLang.HolProg 64 :=
.seq RemovedBody188_129 RemovedBody188_136

def RemovedBody188_138 : StackLang.HolProg 64 :=
.seq RemovedBody188_128 RemovedBody188_137

def RemovedBody188_139 : StackLang.HolProg 64 :=
.seq RemovedBody188_127 RemovedBody188_138

def RemovedBody188_140 : StackLang.HolProg 64 :=
.seq RemovedBody188_126 RemovedBody188_139

def RemovedBody188_141 : StackLang.HolProg 64 :=
.seq RemovedBody188_125 RemovedBody188_140

def RemovedBody188_142 : StackLang.HolProg 64 :=
.seq RemovedBody188_124 RemovedBody188_141

def RemovedBody188_143 : StackLang.HolProg 64 :=
.seq RemovedBody188_123 RemovedBody188_142

def RemovedBody188_144 : StackLang.HolProg 64 :=
.seq RemovedBody188_122 RemovedBody188_143

def RemovedBody188_145 : StackLang.HolProg 64 :=
.seq RemovedBody188_121 RemovedBody188_144

def RemovedBody188_146 : StackLang.HolProg 64 :=
.seq RemovedBody188_48 RemovedBody188_145

def RemovedBody188_147 : StackLang.HolProg 64 :=
.seq RemovedBody188_47 RemovedBody188_146

def RemovedBody188_148 : StackLang.HolProg 64 :=
.seq RemovedBody188_46 RemovedBody188_147

def RemovedBody188_149 : StackLang.HolProg 64 :=
.seq RemovedBody188_45 RemovedBody188_148

def RemovedBody188_150 : StackLang.HolProg 64 :=
.seq RemovedBody188_44 RemovedBody188_149

def RemovedBody188_151 : StackLang.HolProg 64 :=
.seq RemovedBody188_43 RemovedBody188_150

def RemovedBody188_152 : StackLang.HolProg 64 :=
.seq RemovedBody188_42 RemovedBody188_151

def RemovedBody188_153 : StackLang.HolProg 64 :=
.seq RemovedBody188_41 RemovedBody188_152

def RemovedBody188_154 : StackLang.HolProg 64 :=
.seq RemovedBody188_10 RemovedBody188_153

def RemovedBody188_155 : StackLang.HolProg 64 :=
.seq RemovedBody188_9 RemovedBody188_154

def RemovedBody188_156 : StackLang.HolProg 64 :=
.seq RemovedBody188_8 RemovedBody188_155

def RemovedBody188_157 : StackLang.HolProg 64 :=
.seq RemovedBody188_7 RemovedBody188_156

def RemovedBody188_158 : StackLang.HolProg 64 :=
.seq RemovedBody188_6 RemovedBody188_157

def Removed188 : Nat × StackLang.HolProg 64 := (188, RemovedBody188_158)
theorem Removed188_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc188 = Removed188 := by
  kernel_rfl
#print axioms Removed188_eq
end InitECandidate.Proofs.BackendStages
