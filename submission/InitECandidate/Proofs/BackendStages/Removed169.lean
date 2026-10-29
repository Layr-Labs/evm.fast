import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc169
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody169_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def RemovedBody169_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody169_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody169_3 : StackLang.HolProg 64 :=
.seq RemovedBody169_1 RemovedBody169_2

def RemovedBody169_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody169_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody169_3 RemovedBody169_4

def RemovedBody169_6 : StackLang.HolProg 64 :=
.seq RemovedBody169_0 RemovedBody169_5

def RemovedBody169_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody169_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody169_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody169_10 : StackLang.HolProg 64 :=
.seq RemovedBody169_8 RemovedBody169_9

def RemovedBody169_11 : StackLang.HolProg 64 :=
.seq RemovedBody169_7 RemovedBody169_10

def RemovedBody169_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody169_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 187#64)

def RemovedBody169_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody169_15 : StackLang.HolProg 64 :=
.seq RemovedBody169_13 RemovedBody169_14

def RemovedBody169_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody169_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody169_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody169_19 : StackLang.HolProg 64 :=
.seq RemovedBody169_17 RemovedBody169_18

def RemovedBody169_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody169_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody169_19 RemovedBody169_20

def RemovedBody169_22 : StackLang.HolProg 64 :=
.seq RemovedBody169_16 RemovedBody169_21

def RemovedBody169_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody169_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody169_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 169 3

def RemovedBody169_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody169_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody169_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody169_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody169_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody169_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody169_32 : StackLang.HolProg 64 :=
.seq RemovedBody169_30 RemovedBody169_31

def RemovedBody169_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody169_34 : StackLang.HolProg 64 :=
.seq RemovedBody169_32 RemovedBody169_33

def RemovedBody169_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody169_36 : StackLang.HolProg 64 :=
.seq RemovedBody169_34 RemovedBody169_35

def RemovedBody169_37 : StackLang.HolProg 64 :=
.seq RemovedBody169_29 RemovedBody169_36

def RemovedBody169_38 : StackLang.HolProg 64 :=
.seq RemovedBody169_28 RemovedBody169_37

def RemovedBody169_39 : StackLang.HolProg 64 :=
.seq RemovedBody169_27 RemovedBody169_38

def RemovedBody169_40 : StackLang.HolProg 64 :=
.seq RemovedBody169_26 RemovedBody169_39

def RemovedBody169_41 : StackLang.HolProg 64 :=
.seq RemovedBody169_25 RemovedBody169_40

def RemovedBody169_42 : StackLang.HolProg 64 :=
.seq RemovedBody169_24 RemovedBody169_41

def RemovedBody169_43 : StackLang.HolProg 64 :=
.seq RemovedBody169_23 RemovedBody169_42

def RemovedBody169_44 : StackLang.HolProg 64 :=
.seq RemovedBody169_22 RemovedBody169_43

def RemovedBody169_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody169_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody169_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody169_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody169_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody169_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody169_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody169_52 : StackLang.HolProg 64 :=
.seq RemovedBody169_50 RemovedBody169_51

def RemovedBody169_53 : StackLang.HolProg 64 :=
.seq RemovedBody169_49 RemovedBody169_52

def RemovedBody169_54 : StackLang.HolProg 64 :=
.seq RemovedBody169_48 RemovedBody169_53

def RemovedBody169_55 : StackLang.HolProg 64 :=
.seq RemovedBody169_47 RemovedBody169_54

def RemovedBody169_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody169_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody169_58 : StackLang.HolProg 64 :=
.seq RemovedBody169_56 RemovedBody169_57

def RemovedBody169_59 : StackLang.HolProg 64 :=
.call (some (RemovedBody169_55, 0, 169, 2)) (Sum.inl 167) (some (RemovedBody169_58, 169, 3))

def RemovedBody169_60 : StackLang.HolProg 64 :=
.seq RemovedBody169_46 RemovedBody169_59

def RemovedBody169_61 : StackLang.HolProg 64 :=
.seq RemovedBody169_45 RemovedBody169_60

def RemovedBody169_62 : StackLang.HolProg 64 :=
.seq RemovedBody169_44 RemovedBody169_61

def RemovedBody169_63 : StackLang.HolProg 64 :=
.seq RemovedBody169_15 RemovedBody169_62

def RemovedBody169_64 : StackLang.HolProg 64 :=
.seq RemovedBody169_12 RemovedBody169_63

def RemovedBody169_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody169_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody169_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def RemovedBody169_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody169_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody169_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 188#64)

def RemovedBody169_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody169_72 : StackLang.HolProg 64 :=
.seq RemovedBody169_70 RemovedBody169_71

def RemovedBody169_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody169_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody169_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody169_76 : StackLang.HolProg 64 :=
.seq RemovedBody169_74 RemovedBody169_75

def RemovedBody169_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody169_78 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody169_76 RemovedBody169_77

def RemovedBody169_79 : StackLang.HolProg 64 :=
.seq RemovedBody169_73 RemovedBody169_78

def RemovedBody169_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody169_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody169_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 169 5

def RemovedBody169_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody169_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody169_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody169_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody169_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody169_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody169_89 : StackLang.HolProg 64 :=
.seq RemovedBody169_87 RemovedBody169_88

def RemovedBody169_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody169_91 : StackLang.HolProg 64 :=
.seq RemovedBody169_89 RemovedBody169_90

def RemovedBody169_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody169_93 : StackLang.HolProg 64 :=
.seq RemovedBody169_91 RemovedBody169_92

def RemovedBody169_94 : StackLang.HolProg 64 :=
.seq RemovedBody169_86 RemovedBody169_93

def RemovedBody169_95 : StackLang.HolProg 64 :=
.seq RemovedBody169_85 RemovedBody169_94

def RemovedBody169_96 : StackLang.HolProg 64 :=
.seq RemovedBody169_84 RemovedBody169_95

def RemovedBody169_97 : StackLang.HolProg 64 :=
.seq RemovedBody169_83 RemovedBody169_96

def RemovedBody169_98 : StackLang.HolProg 64 :=
.seq RemovedBody169_82 RemovedBody169_97

def RemovedBody169_99 : StackLang.HolProg 64 :=
.seq RemovedBody169_81 RemovedBody169_98

def RemovedBody169_100 : StackLang.HolProg 64 :=
.seq RemovedBody169_80 RemovedBody169_99

def RemovedBody169_101 : StackLang.HolProg 64 :=
.seq RemovedBody169_79 RemovedBody169_100

def RemovedBody169_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody169_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody169_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody169_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody169_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody169_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody169_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody169_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody169_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody169_111 : StackLang.HolProg 64 :=
.seq RemovedBody169_109 RemovedBody169_110

def RemovedBody169_112 : StackLang.HolProg 64 :=
.seq RemovedBody169_108 RemovedBody169_111

def RemovedBody169_113 : StackLang.HolProg 64 :=
.seq RemovedBody169_107 RemovedBody169_112

def RemovedBody169_114 : StackLang.HolProg 64 :=
.seq RemovedBody169_106 RemovedBody169_113

def RemovedBody169_115 : StackLang.HolProg 64 :=
.seq RemovedBody169_105 RemovedBody169_114

def RemovedBody169_116 : StackLang.HolProg 64 :=
.seq RemovedBody169_104 RemovedBody169_115

def RemovedBody169_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody169_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody169_119 : StackLang.HolProg 64 :=
.seq RemovedBody169_117 RemovedBody169_118

def RemovedBody169_120 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody169_121 : StackLang.HolProg 64 :=
.seq RemovedBody169_119 RemovedBody169_120

def RemovedBody169_122 : StackLang.HolProg 64 :=
.call (some (RemovedBody169_116, 0, 169, 4)) (Sum.inl 68) (some (RemovedBody169_121, 169, 5))

def RemovedBody169_123 : StackLang.HolProg 64 :=
.seq RemovedBody169_103 RemovedBody169_122

def RemovedBody169_124 : StackLang.HolProg 64 :=
.seq RemovedBody169_102 RemovedBody169_123

def RemovedBody169_125 : StackLang.HolProg 64 :=
.seq RemovedBody169_101 RemovedBody169_124

def RemovedBody169_126 : StackLang.HolProg 64 :=
.seq RemovedBody169_72 RemovedBody169_125

def RemovedBody169_127 : StackLang.HolProg 64 :=
.seq RemovedBody169_69 RemovedBody169_126

def RemovedBody169_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody169_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def RemovedBody169_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody169_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody169_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody169_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody169_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody169_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody169_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody169_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody169_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody169_139 : StackLang.HolProg 64 :=
.seq RemovedBody169_137 RemovedBody169_138

def RemovedBody169_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody169_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody169_142 : StackLang.HolProg 64 :=
.seq RemovedBody169_140 RemovedBody169_141

def RemovedBody169_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody169_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody169_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody169_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody169_147 : StackLang.HolProg 64 :=
.seq RemovedBody169_145 RemovedBody169_146

def RemovedBody169_148 : StackLang.HolProg 64 :=
.seq RemovedBody169_144 RemovedBody169_147

def RemovedBody169_149 : StackLang.HolProg 64 :=
.seq RemovedBody169_143 RemovedBody169_148

def RemovedBody169_150 : StackLang.HolProg 64 :=
.seq RemovedBody169_142 RemovedBody169_149

def RemovedBody169_151 : StackLang.HolProg 64 :=
.seq RemovedBody169_139 RemovedBody169_150

def RemovedBody169_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody169_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 189#64)

def RemovedBody169_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody169_155 : StackLang.HolProg 64 :=
.seq RemovedBody169_153 RemovedBody169_154

def RemovedBody169_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody169_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody169_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody169_159 : StackLang.HolProg 64 :=
.seq RemovedBody169_157 RemovedBody169_158

def RemovedBody169_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody169_161 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody169_159 RemovedBody169_160

def RemovedBody169_162 : StackLang.HolProg 64 :=
.seq RemovedBody169_156 RemovedBody169_161

def RemovedBody169_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody169_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody169_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 169 7

def RemovedBody169_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody169_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody169_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody169_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody169_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody169_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody169_172 : StackLang.HolProg 64 :=
.seq RemovedBody169_170 RemovedBody169_171

def RemovedBody169_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody169_174 : StackLang.HolProg 64 :=
.seq RemovedBody169_172 RemovedBody169_173

def RemovedBody169_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody169_176 : StackLang.HolProg 64 :=
.seq RemovedBody169_174 RemovedBody169_175

def RemovedBody169_177 : StackLang.HolProg 64 :=
.seq RemovedBody169_169 RemovedBody169_176

def RemovedBody169_178 : StackLang.HolProg 64 :=
.seq RemovedBody169_168 RemovedBody169_177

def RemovedBody169_179 : StackLang.HolProg 64 :=
.seq RemovedBody169_167 RemovedBody169_178

def RemovedBody169_180 : StackLang.HolProg 64 :=
.seq RemovedBody169_166 RemovedBody169_179

def RemovedBody169_181 : StackLang.HolProg 64 :=
.seq RemovedBody169_165 RemovedBody169_180

def RemovedBody169_182 : StackLang.HolProg 64 :=
.seq RemovedBody169_164 RemovedBody169_181

def RemovedBody169_183 : StackLang.HolProg 64 :=
.seq RemovedBody169_163 RemovedBody169_182

def RemovedBody169_184 : StackLang.HolProg 64 :=
.seq RemovedBody169_162 RemovedBody169_183

def RemovedBody169_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody169_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody169_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody169_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody169_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody169_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody169_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody169_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody169_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody169_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody169_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody169_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody169_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody169_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody169_199 : StackLang.HolProg 64 :=
.seq RemovedBody169_197 RemovedBody169_198

def RemovedBody169_200 : StackLang.HolProg 64 :=
.seq RemovedBody169_196 RemovedBody169_199

def RemovedBody169_201 : StackLang.HolProg 64 :=
.seq RemovedBody169_195 RemovedBody169_200

def RemovedBody169_202 : StackLang.HolProg 64 :=
.seq RemovedBody169_194 RemovedBody169_201

def RemovedBody169_203 : StackLang.HolProg 64 :=
.seq RemovedBody169_193 RemovedBody169_202

def RemovedBody169_204 : StackLang.HolProg 64 :=
.seq RemovedBody169_192 RemovedBody169_203

def RemovedBody169_205 : StackLang.HolProg 64 :=
.seq RemovedBody169_191 RemovedBody169_204

def RemovedBody169_206 : StackLang.HolProg 64 :=
.seq RemovedBody169_190 RemovedBody169_205

def RemovedBody169_207 : StackLang.HolProg 64 :=
.seq RemovedBody169_189 RemovedBody169_206

def RemovedBody169_208 : StackLang.HolProg 64 :=
.seq RemovedBody169_188 RemovedBody169_207

def RemovedBody169_209 : StackLang.HolProg 64 :=
.seq RemovedBody169_187 RemovedBody169_208

def RemovedBody169_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody169_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody169_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody169_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody169_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody169_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody169_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody169_217 : StackLang.HolProg 64 :=
.seq RemovedBody169_215 RemovedBody169_216

def RemovedBody169_218 : StackLang.HolProg 64 :=
.seq RemovedBody169_214 RemovedBody169_217

def RemovedBody169_219 : StackLang.HolProg 64 :=
.seq RemovedBody169_213 RemovedBody169_218

def RemovedBody169_220 : StackLang.HolProg 64 :=
.seq RemovedBody169_212 RemovedBody169_219

def RemovedBody169_221 : StackLang.HolProg 64 :=
.seq RemovedBody169_211 RemovedBody169_220

def RemovedBody169_222 : StackLang.HolProg 64 :=
.seq RemovedBody169_210 RemovedBody169_221

def RemovedBody169_223 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody169_224 : StackLang.HolProg 64 :=
.seq RemovedBody169_222 RemovedBody169_223

def RemovedBody169_225 : StackLang.HolProg 64 :=
.call (some (RemovedBody169_209, 0, 169, 6)) (Sum.inl 168) (some (RemovedBody169_224, 169, 7))

def RemovedBody169_226 : StackLang.HolProg 64 :=
.seq RemovedBody169_186 RemovedBody169_225

def RemovedBody169_227 : StackLang.HolProg 64 :=
.seq RemovedBody169_185 RemovedBody169_226

def RemovedBody169_228 : StackLang.HolProg 64 :=
.seq RemovedBody169_184 RemovedBody169_227

def RemovedBody169_229 : StackLang.HolProg 64 :=
.seq RemovedBody169_155 RemovedBody169_228

def RemovedBody169_230 : StackLang.HolProg 64 :=
.seq RemovedBody169_152 RemovedBody169_229

def RemovedBody169_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody169_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody169_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def RemovedBody169_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody169_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody169_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody169_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody169_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody169_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody169_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody169_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody169_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody169_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody169_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody169_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody169_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody169_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody169_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody169_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody169_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody169_251 : StackLang.HolProg 64 :=
.seq RemovedBody169_249 RemovedBody169_250

def RemovedBody169_252 : StackLang.HolProg 64 :=
.seq RemovedBody169_248 RemovedBody169_251

def RemovedBody169_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody169_254 : StackLang.HolProg 64 :=
.seq RemovedBody169_252 RemovedBody169_253

def RemovedBody169_255 : StackLang.HolProg 64 :=
.seq RemovedBody169_247 RemovedBody169_254

def RemovedBody169_256 : StackLang.HolProg 64 :=
.seq RemovedBody169_246 RemovedBody169_255

def RemovedBody169_257 : StackLang.HolProg 64 :=
.seq RemovedBody169_245 RemovedBody169_256

def RemovedBody169_258 : StackLang.HolProg 64 :=
.seq RemovedBody169_244 RemovedBody169_257

def RemovedBody169_259 : StackLang.HolProg 64 :=
.seq RemovedBody169_243 RemovedBody169_258

def RemovedBody169_260 : StackLang.HolProg 64 :=
.seq RemovedBody169_242 RemovedBody169_259

def RemovedBody169_261 : StackLang.HolProg 64 :=
.seq RemovedBody169_241 RemovedBody169_260

def RemovedBody169_262 : StackLang.HolProg 64 :=
.seq RemovedBody169_240 RemovedBody169_261

def RemovedBody169_263 : StackLang.HolProg 64 :=
.seq RemovedBody169_239 RemovedBody169_262

def RemovedBody169_264 : StackLang.HolProg 64 :=
.seq RemovedBody169_238 RemovedBody169_263

def RemovedBody169_265 : StackLang.HolProg 64 :=
.seq RemovedBody169_237 RemovedBody169_264

def RemovedBody169_266 : StackLang.HolProg 64 :=
.seq RemovedBody169_236 RemovedBody169_265

def RemovedBody169_267 : StackLang.HolProg 64 :=
.seq RemovedBody169_235 RemovedBody169_266

def RemovedBody169_268 : StackLang.HolProg 64 :=
.seq RemovedBody169_234 RemovedBody169_267

def RemovedBody169_269 : StackLang.HolProg 64 :=
.seq RemovedBody169_233 RemovedBody169_268

def RemovedBody169_270 : StackLang.HolProg 64 :=
.seq RemovedBody169_232 RemovedBody169_269

def RemovedBody169_271 : StackLang.HolProg 64 :=
.seq RemovedBody169_231 RemovedBody169_270

def RemovedBody169_272 : StackLang.HolProg 64 :=
.seq RemovedBody169_230 RemovedBody169_271

def RemovedBody169_273 : StackLang.HolProg 64 :=
.seq RemovedBody169_151 RemovedBody169_272

def RemovedBody169_274 : StackLang.HolProg 64 :=
.seq RemovedBody169_136 RemovedBody169_273

def RemovedBody169_275 : StackLang.HolProg 64 :=
.seq RemovedBody169_135 RemovedBody169_274

def RemovedBody169_276 : StackLang.HolProg 64 :=
.seq RemovedBody169_134 RemovedBody169_275

def RemovedBody169_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody169_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody169_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody169_280 : StackLang.HolProg 64 :=
.seq RemovedBody169_278 RemovedBody169_279

def RemovedBody169_281 : StackLang.HolProg 64 :=
.seq RemovedBody169_277 RemovedBody169_280

def RemovedBody169_282 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody169_276 RemovedBody169_281

def RemovedBody169_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody169_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody169_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody169_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody169_287 : StackLang.HolProg 64 :=
.seq RemovedBody169_285 RemovedBody169_286

def RemovedBody169_288 : StackLang.HolProg 64 :=
.seq RemovedBody169_284 RemovedBody169_287

def RemovedBody169_289 : StackLang.HolProg 64 :=
.seq RemovedBody169_283 RemovedBody169_288

def RemovedBody169_290 : StackLang.HolProg 64 :=
.seq RemovedBody169_282 RemovedBody169_289

def RemovedBody169_291 : StackLang.HolProg 64 :=
.seq RemovedBody169_133 RemovedBody169_290

def RemovedBody169_292 : StackLang.HolProg 64 :=
.loop RemovedBody169_291

def RemovedBody169_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody169_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody169_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody169_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def RemovedBody169_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def RemovedBody169_298 : StackLang.HolProg 64 :=
.seq RemovedBody169_296 RemovedBody169_297

def RemovedBody169_299 : StackLang.HolProg 64 :=
.seq RemovedBody169_295 RemovedBody169_298

def RemovedBody169_300 : StackLang.HolProg 64 :=
.seq RemovedBody169_294 RemovedBody169_299

def RemovedBody169_301 : StackLang.HolProg 64 :=
.seq RemovedBody169_293 RemovedBody169_300

def RemovedBody169_302 : StackLang.HolProg 64 :=
.seq RemovedBody169_292 RemovedBody169_301

def RemovedBody169_303 : StackLang.HolProg 64 :=
.seq RemovedBody169_132 RemovedBody169_302

def RemovedBody169_304 : StackLang.HolProg 64 :=
.seq RemovedBody169_131 RemovedBody169_303

def RemovedBody169_305 : StackLang.HolProg 64 :=
.seq RemovedBody169_130 RemovedBody169_304

def RemovedBody169_306 : StackLang.HolProg 64 :=
.seq RemovedBody169_129 RemovedBody169_305

def RemovedBody169_307 : StackLang.HolProg 64 :=
.seq RemovedBody169_128 RemovedBody169_306

def RemovedBody169_308 : StackLang.HolProg 64 :=
.seq RemovedBody169_127 RemovedBody169_307

def RemovedBody169_309 : StackLang.HolProg 64 :=
.seq RemovedBody169_68 RemovedBody169_308

def RemovedBody169_310 : StackLang.HolProg 64 :=
.seq RemovedBody169_67 RemovedBody169_309

def RemovedBody169_311 : StackLang.HolProg 64 :=
.seq RemovedBody169_66 RemovedBody169_310

def RemovedBody169_312 : StackLang.HolProg 64 :=
.seq RemovedBody169_65 RemovedBody169_311

def RemovedBody169_313 : StackLang.HolProg 64 :=
.seq RemovedBody169_64 RemovedBody169_312

def RemovedBody169_314 : StackLang.HolProg 64 :=
.seq RemovedBody169_11 RemovedBody169_313

def RemovedBody169_315 : StackLang.HolProg 64 :=
.seq RemovedBody169_6 RemovedBody169_314

def Removed169 : Nat × StackLang.HolProg 64 := (169, RemovedBody169_315)
theorem Removed169_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc169 = Removed169 := by
  kernel_rfl
#print axioms Removed169_eq
end InitECandidate.Proofs.BackendStages
