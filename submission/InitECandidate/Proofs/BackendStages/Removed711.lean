import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc711
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody711_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody711_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody711_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody711_3 : StackLang.HolProg 64 :=
.seq RemovedBody711_1 RemovedBody711_2

def RemovedBody711_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody711_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody711_3 RemovedBody711_4

def RemovedBody711_6 : StackLang.HolProg 64 :=
.seq RemovedBody711_0 RemovedBody711_5

def RemovedBody711_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody711_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody711_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3154#64)

def RemovedBody711_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody711_11 : StackLang.HolProg 64 :=
.seq RemovedBody711_9 RemovedBody711_10

def RemovedBody711_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody711_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody711_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody711_15 : StackLang.HolProg 64 :=
.seq RemovedBody711_13 RemovedBody711_14

def RemovedBody711_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody711_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody711_15 RemovedBody711_16

def RemovedBody711_18 : StackLang.HolProg 64 :=
.seq RemovedBody711_12 RemovedBody711_17

def RemovedBody711_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody711_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody711_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 711 3

def RemovedBody711_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody711_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody711_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody711_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody711_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody711_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody711_28 : StackLang.HolProg 64 :=
.seq RemovedBody711_26 RemovedBody711_27

def RemovedBody711_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody711_30 : StackLang.HolProg 64 :=
.seq RemovedBody711_28 RemovedBody711_29

def RemovedBody711_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody711_32 : StackLang.HolProg 64 :=
.seq RemovedBody711_30 RemovedBody711_31

def RemovedBody711_33 : StackLang.HolProg 64 :=
.seq RemovedBody711_25 RemovedBody711_32

def RemovedBody711_34 : StackLang.HolProg 64 :=
.seq RemovedBody711_24 RemovedBody711_33

def RemovedBody711_35 : StackLang.HolProg 64 :=
.seq RemovedBody711_23 RemovedBody711_34

def RemovedBody711_36 : StackLang.HolProg 64 :=
.seq RemovedBody711_22 RemovedBody711_35

def RemovedBody711_37 : StackLang.HolProg 64 :=
.seq RemovedBody711_21 RemovedBody711_36

def RemovedBody711_38 : StackLang.HolProg 64 :=
.seq RemovedBody711_20 RemovedBody711_37

def RemovedBody711_39 : StackLang.HolProg 64 :=
.seq RemovedBody711_19 RemovedBody711_38

def RemovedBody711_40 : StackLang.HolProg 64 :=
.seq RemovedBody711_18 RemovedBody711_39

def RemovedBody711_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody711_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody711_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody711_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody711_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody711_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody711_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody711_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 14
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody711_49 : StackLang.HolProg 64 :=
.seq RemovedBody711_47 RemovedBody711_48

def RemovedBody711_50 : StackLang.HolProg 64 :=
.seq RemovedBody711_46 RemovedBody711_49

def RemovedBody711_51 : StackLang.HolProg 64 :=
.seq RemovedBody711_45 RemovedBody711_50

def RemovedBody711_52 : StackLang.HolProg 64 :=
.seq RemovedBody711_44 RemovedBody711_51

def RemovedBody711_53 : StackLang.HolProg 64 :=
.seq RemovedBody711_43 RemovedBody711_52

def RemovedBody711_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 14
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody711_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody711_56 : StackLang.HolProg 64 :=
.seq RemovedBody711_54 RemovedBody711_55

def RemovedBody711_57 : StackLang.HolProg 64 :=
.call (some (RemovedBody711_53, 0, 711, 2)) (Sum.inl 709) (some (RemovedBody711_56, 711, 3))

def RemovedBody711_58 : StackLang.HolProg 64 :=
.seq RemovedBody711_42 RemovedBody711_57

def RemovedBody711_59 : StackLang.HolProg 64 :=
.seq RemovedBody711_41 RemovedBody711_58

def RemovedBody711_60 : StackLang.HolProg 64 :=
.seq RemovedBody711_40 RemovedBody711_59

def RemovedBody711_61 : StackLang.HolProg 64 :=
.seq RemovedBody711_11 RemovedBody711_60

def RemovedBody711_62 : StackLang.HolProg 64 :=
.seq RemovedBody711_8 RemovedBody711_61

def RemovedBody711_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody711_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody711_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody711_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody711_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def RemovedBody711_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody711_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 14

def RemovedBody711_70 : StackLang.HolProg 64 :=
.seq RemovedBody711_68 RemovedBody711_69

def RemovedBody711_71 : StackLang.HolProg 64 :=
.seq RemovedBody711_67 RemovedBody711_70

def RemovedBody711_72 : StackLang.HolProg 64 :=
.seq RemovedBody711_66 RemovedBody711_71

def RemovedBody711_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody711_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody711_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody711_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def RemovedBody711_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody711_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody711_79 : StackLang.HolProg 64 :=
.seq RemovedBody711_77 RemovedBody711_78

def RemovedBody711_80 : StackLang.HolProg 64 :=
.seq RemovedBody711_76 RemovedBody711_79

def RemovedBody711_81 : StackLang.HolProg 64 :=
.seq RemovedBody711_75 RemovedBody711_80

def RemovedBody711_82 : StackLang.HolProg 64 :=
.seq RemovedBody711_74 RemovedBody711_81

def RemovedBody711_83 : StackLang.HolProg 64 :=
.seq RemovedBody711_73 RemovedBody711_82

def RemovedBody711_84 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 7 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody711_72 RemovedBody711_83

def RemovedBody711_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody711_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody711_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def RemovedBody711_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def RemovedBody711_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def RemovedBody711_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def RemovedBody711_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def RemovedBody711_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody711_93 : StackLang.HolProg 64 :=
.seq RemovedBody711_91 RemovedBody711_92

def RemovedBody711_94 : StackLang.HolProg 64 :=
.seq RemovedBody711_90 RemovedBody711_93

def RemovedBody711_95 : StackLang.HolProg 64 :=
.seq RemovedBody711_89 RemovedBody711_94

def RemovedBody711_96 : StackLang.HolProg 64 :=
.seq RemovedBody711_88 RemovedBody711_95

def RemovedBody711_97 : StackLang.HolProg 64 :=
.seq RemovedBody711_87 RemovedBody711_96

def RemovedBody711_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 1873798617647539866#64)

def RemovedBody711_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 5412103778470702295#64)

def RemovedBody711_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 7239337960414712511#64)

def RemovedBody711_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 7435674573564081700#64)

def RemovedBody711_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 2210141511517208575#64)

def RemovedBody711_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 13402431016077863595#64)

def RemovedBody711_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 14
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody711_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody711_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3155#64)

def RemovedBody711_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody711_108 : StackLang.HolProg 64 :=
.seq RemovedBody711_106 RemovedBody711_107

def RemovedBody711_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody711_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody711_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody711_112 : StackLang.HolProg 64 :=
.seq RemovedBody711_110 RemovedBody711_111

def RemovedBody711_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody711_114 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody711_112 RemovedBody711_113

def RemovedBody711_115 : StackLang.HolProg 64 :=
.seq RemovedBody711_109 RemovedBody711_114

def RemovedBody711_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody711_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody711_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 711 5

def RemovedBody711_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody711_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody711_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody711_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody711_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody711_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody711_125 : StackLang.HolProg 64 :=
.seq RemovedBody711_123 RemovedBody711_124

def RemovedBody711_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody711_127 : StackLang.HolProg 64 :=
.seq RemovedBody711_125 RemovedBody711_126

def RemovedBody711_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody711_129 : StackLang.HolProg 64 :=
.seq RemovedBody711_127 RemovedBody711_128

def RemovedBody711_130 : StackLang.HolProg 64 :=
.seq RemovedBody711_122 RemovedBody711_129

def RemovedBody711_131 : StackLang.HolProg 64 :=
.seq RemovedBody711_121 RemovedBody711_130

def RemovedBody711_132 : StackLang.HolProg 64 :=
.seq RemovedBody711_120 RemovedBody711_131

def RemovedBody711_133 : StackLang.HolProg 64 :=
.seq RemovedBody711_119 RemovedBody711_132

def RemovedBody711_134 : StackLang.HolProg 64 :=
.seq RemovedBody711_118 RemovedBody711_133

def RemovedBody711_135 : StackLang.HolProg 64 :=
.seq RemovedBody711_117 RemovedBody711_134

def RemovedBody711_136 : StackLang.HolProg 64 :=
.seq RemovedBody711_116 RemovedBody711_135

def RemovedBody711_137 : StackLang.HolProg 64 :=
.seq RemovedBody711_115 RemovedBody711_136

def RemovedBody711_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody711_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody711_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody711_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody711_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody711_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody711_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody711_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody711_146 : StackLang.HolProg 64 :=
.seq RemovedBody711_144 RemovedBody711_145

def RemovedBody711_147 : StackLang.HolProg 64 :=
.seq RemovedBody711_143 RemovedBody711_146

def RemovedBody711_148 : StackLang.HolProg 64 :=
.seq RemovedBody711_142 RemovedBody711_147

def RemovedBody711_149 : StackLang.HolProg 64 :=
.seq RemovedBody711_141 RemovedBody711_148

def RemovedBody711_150 : StackLang.HolProg 64 :=
.seq RemovedBody711_140 RemovedBody711_149

def RemovedBody711_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody711_152 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody711_153 : StackLang.HolProg 64 :=
.seq RemovedBody711_151 RemovedBody711_152

def RemovedBody711_154 : StackLang.HolProg 64 :=
.call (some (RemovedBody711_150, 0, 711, 4)) (Sum.inl 708) (some (RemovedBody711_153, 711, 5))

def RemovedBody711_155 : StackLang.HolProg 64 :=
.seq RemovedBody711_139 RemovedBody711_154

def RemovedBody711_156 : StackLang.HolProg 64 :=
.seq RemovedBody711_138 RemovedBody711_155

def RemovedBody711_157 : StackLang.HolProg 64 :=
.seq RemovedBody711_137 RemovedBody711_156

def RemovedBody711_158 : StackLang.HolProg 64 :=
.seq RemovedBody711_108 RemovedBody711_157

def RemovedBody711_159 : StackLang.HolProg 64 :=
.seq RemovedBody711_105 RemovedBody711_158

def RemovedBody711_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody711_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def RemovedBody711_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody711_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody711_164 : StackLang.HolProg 64 :=
.seq RemovedBody711_162 RemovedBody711_163

def RemovedBody711_165 : StackLang.HolProg 64 :=
.seq RemovedBody711_161 RemovedBody711_164

def RemovedBody711_166 : StackLang.HolProg 64 :=
.seq RemovedBody711_160 RemovedBody711_165

def RemovedBody711_167 : StackLang.HolProg 64 :=
.seq RemovedBody711_159 RemovedBody711_166

def RemovedBody711_168 : StackLang.HolProg 64 :=
.seq RemovedBody711_104 RemovedBody711_167

def RemovedBody711_169 : StackLang.HolProg 64 :=
.seq RemovedBody711_103 RemovedBody711_168

def RemovedBody711_170 : StackLang.HolProg 64 :=
.seq RemovedBody711_102 RemovedBody711_169

def RemovedBody711_171 : StackLang.HolProg 64 :=
.seq RemovedBody711_101 RemovedBody711_170

def RemovedBody711_172 : StackLang.HolProg 64 :=
.seq RemovedBody711_100 RemovedBody711_171

def RemovedBody711_173 : StackLang.HolProg 64 :=
.seq RemovedBody711_99 RemovedBody711_172

def RemovedBody711_174 : StackLang.HolProg 64 :=
.seq RemovedBody711_98 RemovedBody711_173

def RemovedBody711_175 : StackLang.HolProg 64 :=
.seq RemovedBody711_97 RemovedBody711_174

def RemovedBody711_176 : StackLang.HolProg 64 :=
.seq RemovedBody711_86 RemovedBody711_175

def RemovedBody711_177 : StackLang.HolProg 64 :=
.seq RemovedBody711_85 RemovedBody711_176

def RemovedBody711_178 : StackLang.HolProg 64 :=
.seq RemovedBody711_84 RemovedBody711_177

def RemovedBody711_179 : StackLang.HolProg 64 :=
.seq RemovedBody711_65 RemovedBody711_178

def RemovedBody711_180 : StackLang.HolProg 64 :=
.seq RemovedBody711_64 RemovedBody711_179

def RemovedBody711_181 : StackLang.HolProg 64 :=
.seq RemovedBody711_63 RemovedBody711_180

def RemovedBody711_182 : StackLang.HolProg 64 :=
.seq RemovedBody711_62 RemovedBody711_181

def RemovedBody711_183 : StackLang.HolProg 64 :=
.seq RemovedBody711_7 RemovedBody711_182

def RemovedBody711_184 : StackLang.HolProg 64 :=
.seq RemovedBody711_6 RemovedBody711_183

def Removed711 : Nat × StackLang.HolProg 64 := (711, RemovedBody711_184)
theorem Removed711_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc711 = Removed711 := by
  kernel_rfl
#print axioms Removed711_eq
end InitECandidate.Proofs.BackendStages
