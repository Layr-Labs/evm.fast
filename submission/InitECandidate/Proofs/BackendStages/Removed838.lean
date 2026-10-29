import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc838
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody838_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody838_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody838_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody838_3 : StackLang.HolProg 64 :=
.seq RemovedBody838_1 RemovedBody838_2

def RemovedBody838_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody838_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody838_3 RemovedBody838_4

def RemovedBody838_6 : StackLang.HolProg 64 :=
.seq RemovedBody838_0 RemovedBody838_5

def RemovedBody838_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody838_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody838_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody838_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody838_11 : StackLang.HolProg 64 :=
.seq RemovedBody838_9 RemovedBody838_10

def RemovedBody838_12 : StackLang.HolProg 64 :=
.seq RemovedBody838_8 RemovedBody838_11

def RemovedBody838_13 : StackLang.HolProg 64 :=
.seq RemovedBody838_7 RemovedBody838_12

def RemovedBody838_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody838_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4199#64)

def RemovedBody838_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody838_17 : StackLang.HolProg 64 :=
.seq RemovedBody838_15 RemovedBody838_16

def RemovedBody838_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody838_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody838_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody838_21 : StackLang.HolProg 64 :=
.seq RemovedBody838_19 RemovedBody838_20

def RemovedBody838_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody838_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody838_21 RemovedBody838_22

def RemovedBody838_24 : StackLang.HolProg 64 :=
.seq RemovedBody838_18 RemovedBody838_23

def RemovedBody838_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody838_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody838_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 838 3

def RemovedBody838_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody838_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody838_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody838_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody838_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody838_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody838_34 : StackLang.HolProg 64 :=
.seq RemovedBody838_32 RemovedBody838_33

def RemovedBody838_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody838_36 : StackLang.HolProg 64 :=
.seq RemovedBody838_34 RemovedBody838_35

def RemovedBody838_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody838_38 : StackLang.HolProg 64 :=
.seq RemovedBody838_36 RemovedBody838_37

def RemovedBody838_39 : StackLang.HolProg 64 :=
.seq RemovedBody838_31 RemovedBody838_38

def RemovedBody838_40 : StackLang.HolProg 64 :=
.seq RemovedBody838_30 RemovedBody838_39

def RemovedBody838_41 : StackLang.HolProg 64 :=
.seq RemovedBody838_29 RemovedBody838_40

def RemovedBody838_42 : StackLang.HolProg 64 :=
.seq RemovedBody838_28 RemovedBody838_41

def RemovedBody838_43 : StackLang.HolProg 64 :=
.seq RemovedBody838_27 RemovedBody838_42

def RemovedBody838_44 : StackLang.HolProg 64 :=
.seq RemovedBody838_26 RemovedBody838_43

def RemovedBody838_45 : StackLang.HolProg 64 :=
.seq RemovedBody838_25 RemovedBody838_44

def RemovedBody838_46 : StackLang.HolProg 64 :=
.seq RemovedBody838_24 RemovedBody838_45

def RemovedBody838_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody838_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody838_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody838_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody838_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody838_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody838_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody838_54 : StackLang.HolProg 64 :=
.seq RemovedBody838_52 RemovedBody838_53

def RemovedBody838_55 : StackLang.HolProg 64 :=
.seq RemovedBody838_51 RemovedBody838_54

def RemovedBody838_56 : StackLang.HolProg 64 :=
.seq RemovedBody838_50 RemovedBody838_55

def RemovedBody838_57 : StackLang.HolProg 64 :=
.seq RemovedBody838_49 RemovedBody838_56

def RemovedBody838_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody838_59 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody838_60 : StackLang.HolProg 64 :=
.seq RemovedBody838_58 RemovedBody838_59

def RemovedBody838_61 : StackLang.HolProg 64 :=
.call (some (RemovedBody838_57, 0, 838, 2)) (Sum.inl 69) (some (RemovedBody838_60, 838, 3))

def RemovedBody838_62 : StackLang.HolProg 64 :=
.seq RemovedBody838_48 RemovedBody838_61

def RemovedBody838_63 : StackLang.HolProg 64 :=
.seq RemovedBody838_47 RemovedBody838_62

def RemovedBody838_64 : StackLang.HolProg 64 :=
.seq RemovedBody838_46 RemovedBody838_63

def RemovedBody838_65 : StackLang.HolProg 64 :=
.seq RemovedBody838_17 RemovedBody838_64

def RemovedBody838_66 : StackLang.HolProg 64 :=
.seq RemovedBody838_14 RemovedBody838_65

def RemovedBody838_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody838_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def RemovedBody838_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody838_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody838_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4200#64)

def RemovedBody838_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody838_73 : StackLang.HolProg 64 :=
.seq RemovedBody838_71 RemovedBody838_72

def RemovedBody838_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody838_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody838_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody838_77 : StackLang.HolProg 64 :=
.seq RemovedBody838_75 RemovedBody838_76

def RemovedBody838_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody838_79 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody838_77 RemovedBody838_78

def RemovedBody838_80 : StackLang.HolProg 64 :=
.seq RemovedBody838_74 RemovedBody838_79

def RemovedBody838_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody838_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody838_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 838 5

def RemovedBody838_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody838_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody838_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody838_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody838_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody838_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody838_90 : StackLang.HolProg 64 :=
.seq RemovedBody838_88 RemovedBody838_89

def RemovedBody838_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody838_92 : StackLang.HolProg 64 :=
.seq RemovedBody838_90 RemovedBody838_91

def RemovedBody838_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody838_94 : StackLang.HolProg 64 :=
.seq RemovedBody838_92 RemovedBody838_93

def RemovedBody838_95 : StackLang.HolProg 64 :=
.seq RemovedBody838_87 RemovedBody838_94

def RemovedBody838_96 : StackLang.HolProg 64 :=
.seq RemovedBody838_86 RemovedBody838_95

def RemovedBody838_97 : StackLang.HolProg 64 :=
.seq RemovedBody838_85 RemovedBody838_96

def RemovedBody838_98 : StackLang.HolProg 64 :=
.seq RemovedBody838_84 RemovedBody838_97

def RemovedBody838_99 : StackLang.HolProg 64 :=
.seq RemovedBody838_83 RemovedBody838_98

def RemovedBody838_100 : StackLang.HolProg 64 :=
.seq RemovedBody838_82 RemovedBody838_99

def RemovedBody838_101 : StackLang.HolProg 64 :=
.seq RemovedBody838_81 RemovedBody838_100

def RemovedBody838_102 : StackLang.HolProg 64 :=
.seq RemovedBody838_80 RemovedBody838_101

def RemovedBody838_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody838_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody838_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody838_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody838_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody838_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody838_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody838_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody838_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody838_112 : StackLang.HolProg 64 :=
.seq RemovedBody838_110 RemovedBody838_111

def RemovedBody838_113 : StackLang.HolProg 64 :=
.seq RemovedBody838_109 RemovedBody838_112

def RemovedBody838_114 : StackLang.HolProg 64 :=
.seq RemovedBody838_108 RemovedBody838_113

def RemovedBody838_115 : StackLang.HolProg 64 :=
.seq RemovedBody838_107 RemovedBody838_114

def RemovedBody838_116 : StackLang.HolProg 64 :=
.seq RemovedBody838_106 RemovedBody838_115

def RemovedBody838_117 : StackLang.HolProg 64 :=
.seq RemovedBody838_105 RemovedBody838_116

def RemovedBody838_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody838_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody838_120 : StackLang.HolProg 64 :=
.seq RemovedBody838_118 RemovedBody838_119

def RemovedBody838_121 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody838_122 : StackLang.HolProg 64 :=
.seq RemovedBody838_120 RemovedBody838_121

def RemovedBody838_123 : StackLang.HolProg 64 :=
.call (some (RemovedBody838_117, 0, 838, 4)) (Sum.inl 68) (some (RemovedBody838_122, 838, 5))

def RemovedBody838_124 : StackLang.HolProg 64 :=
.seq RemovedBody838_104 RemovedBody838_123

def RemovedBody838_125 : StackLang.HolProg 64 :=
.seq RemovedBody838_103 RemovedBody838_124

def RemovedBody838_126 : StackLang.HolProg 64 :=
.seq RemovedBody838_102 RemovedBody838_125

def RemovedBody838_127 : StackLang.HolProg 64 :=
.seq RemovedBody838_73 RemovedBody838_126

def RemovedBody838_128 : StackLang.HolProg 64 :=
.seq RemovedBody838_70 RemovedBody838_127

def RemovedBody838_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody838_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody838_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody838_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody838_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody838_134 : StackLang.HolProg 64 :=
.seq RemovedBody838_132 RemovedBody838_133

def RemovedBody838_135 : StackLang.HolProg 64 :=
.seq RemovedBody838_131 RemovedBody838_134

def RemovedBody838_136 : StackLang.HolProg 64 :=
.seq RemovedBody838_130 RemovedBody838_135

def RemovedBody838_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody838_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4201#64)

def RemovedBody838_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody838_140 : StackLang.HolProg 64 :=
.seq RemovedBody838_138 RemovedBody838_139

def RemovedBody838_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody838_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody838_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody838_144 : StackLang.HolProg 64 :=
.seq RemovedBody838_142 RemovedBody838_143

def RemovedBody838_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody838_146 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody838_144 RemovedBody838_145

def RemovedBody838_147 : StackLang.HolProg 64 :=
.seq RemovedBody838_141 RemovedBody838_146

def RemovedBody838_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody838_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody838_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 838 7

def RemovedBody838_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody838_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody838_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody838_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody838_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody838_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody838_157 : StackLang.HolProg 64 :=
.seq RemovedBody838_155 RemovedBody838_156

def RemovedBody838_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody838_159 : StackLang.HolProg 64 :=
.seq RemovedBody838_157 RemovedBody838_158

def RemovedBody838_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody838_161 : StackLang.HolProg 64 :=
.seq RemovedBody838_159 RemovedBody838_160

def RemovedBody838_162 : StackLang.HolProg 64 :=
.seq RemovedBody838_154 RemovedBody838_161

def RemovedBody838_163 : StackLang.HolProg 64 :=
.seq RemovedBody838_153 RemovedBody838_162

def RemovedBody838_164 : StackLang.HolProg 64 :=
.seq RemovedBody838_152 RemovedBody838_163

def RemovedBody838_165 : StackLang.HolProg 64 :=
.seq RemovedBody838_151 RemovedBody838_164

def RemovedBody838_166 : StackLang.HolProg 64 :=
.seq RemovedBody838_150 RemovedBody838_165

def RemovedBody838_167 : StackLang.HolProg 64 :=
.seq RemovedBody838_149 RemovedBody838_166

def RemovedBody838_168 : StackLang.HolProg 64 :=
.seq RemovedBody838_148 RemovedBody838_167

def RemovedBody838_169 : StackLang.HolProg 64 :=
.seq RemovedBody838_147 RemovedBody838_168

def RemovedBody838_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody838_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody838_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody838_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody838_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody838_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody838_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody838_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody838_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody838_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody838_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody838_181 : StackLang.HolProg 64 :=
.seq RemovedBody838_179 RemovedBody838_180

def RemovedBody838_182 : StackLang.HolProg 64 :=
.seq RemovedBody838_178 RemovedBody838_181

def RemovedBody838_183 : StackLang.HolProg 64 :=
.seq RemovedBody838_177 RemovedBody838_182

def RemovedBody838_184 : StackLang.HolProg 64 :=
.seq RemovedBody838_176 RemovedBody838_183

def RemovedBody838_185 : StackLang.HolProg 64 :=
.seq RemovedBody838_175 RemovedBody838_184

def RemovedBody838_186 : StackLang.HolProg 64 :=
.seq RemovedBody838_174 RemovedBody838_185

def RemovedBody838_187 : StackLang.HolProg 64 :=
.seq RemovedBody838_173 RemovedBody838_186

def RemovedBody838_188 : StackLang.HolProg 64 :=
.seq RemovedBody838_172 RemovedBody838_187

def RemovedBody838_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody838_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody838_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody838_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody838_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody838_194 : StackLang.HolProg 64 :=
.seq RemovedBody838_192 RemovedBody838_193

def RemovedBody838_195 : StackLang.HolProg 64 :=
.seq RemovedBody838_191 RemovedBody838_194

def RemovedBody838_196 : StackLang.HolProg 64 :=
.seq RemovedBody838_190 RemovedBody838_195

def RemovedBody838_197 : StackLang.HolProg 64 :=
.seq RemovedBody838_189 RemovedBody838_196

def RemovedBody838_198 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody838_199 : StackLang.HolProg 64 :=
.seq RemovedBody838_197 RemovedBody838_198

def RemovedBody838_200 : StackLang.HolProg 64 :=
.call (some (RemovedBody838_188, 0, 838, 6)) (Sum.inl 158) (some (RemovedBody838_199, 838, 7))

def RemovedBody838_201 : StackLang.HolProg 64 :=
.seq RemovedBody838_171 RemovedBody838_200

def RemovedBody838_202 : StackLang.HolProg 64 :=
.seq RemovedBody838_170 RemovedBody838_201

def RemovedBody838_203 : StackLang.HolProg 64 :=
.seq RemovedBody838_169 RemovedBody838_202

def RemovedBody838_204 : StackLang.HolProg 64 :=
.seq RemovedBody838_140 RemovedBody838_203

def RemovedBody838_205 : StackLang.HolProg 64 :=
.seq RemovedBody838_137 RemovedBody838_204

def RemovedBody838_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody838_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def RemovedBody838_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody838_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody838_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody838_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 6#64)

def RemovedBody838_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody838_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody838_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody838_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def RemovedBody838_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody838_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody838_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def RemovedBody838_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody838_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody838_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody838_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2047#64)))

def RemovedBody838_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 2047#64)

def RemovedBody838_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody838_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 4 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody838_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody838_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 6 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody838_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 1#64)

def RemovedBody838_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 7#64)

def RemovedBody838_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody838_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def RemovedBody838_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 4 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody838_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody838_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody838_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody838_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody838_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def RemovedBody838_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody838_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody838_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def RemovedBody838_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody838_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def RemovedBody838_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody838_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody838_245 : StackLang.HolProg 64 :=
.seq RemovedBody838_243 RemovedBody838_244

def RemovedBody838_246 : StackLang.HolProg 64 :=
.seq RemovedBody838_242 RemovedBody838_245

def RemovedBody838_247 : StackLang.HolProg 64 :=
.seq RemovedBody838_241 RemovedBody838_246

def RemovedBody838_248 : StackLang.HolProg 64 :=
.seq RemovedBody838_240 RemovedBody838_247

def RemovedBody838_249 : StackLang.HolProg 64 :=
.seq RemovedBody838_239 RemovedBody838_248

def RemovedBody838_250 : StackLang.HolProg 64 :=
.seq RemovedBody838_238 RemovedBody838_249

def RemovedBody838_251 : StackLang.HolProg 64 :=
.seq RemovedBody838_237 RemovedBody838_250

def RemovedBody838_252 : StackLang.HolProg 64 :=
.seq RemovedBody838_236 RemovedBody838_251

def RemovedBody838_253 : StackLang.HolProg 64 :=
.seq RemovedBody838_235 RemovedBody838_252

def RemovedBody838_254 : StackLang.HolProg 64 :=
.seq RemovedBody838_234 RemovedBody838_253

def RemovedBody838_255 : StackLang.HolProg 64 :=
.seq RemovedBody838_233 RemovedBody838_254

def RemovedBody838_256 : StackLang.HolProg 64 :=
.seq RemovedBody838_232 RemovedBody838_255

def RemovedBody838_257 : StackLang.HolProg 64 :=
.seq RemovedBody838_231 RemovedBody838_256

def RemovedBody838_258 : StackLang.HolProg 64 :=
.seq RemovedBody838_230 RemovedBody838_257

def RemovedBody838_259 : StackLang.HolProg 64 :=
.seq RemovedBody838_229 RemovedBody838_258

def RemovedBody838_260 : StackLang.HolProg 64 :=
.seq RemovedBody838_228 RemovedBody838_259

def RemovedBody838_261 : StackLang.HolProg 64 :=
.seq RemovedBody838_227 RemovedBody838_260

def RemovedBody838_262 : StackLang.HolProg 64 :=
.seq RemovedBody838_226 RemovedBody838_261

def RemovedBody838_263 : StackLang.HolProg 64 :=
.seq RemovedBody838_225 RemovedBody838_262

def RemovedBody838_264 : StackLang.HolProg 64 :=
.seq RemovedBody838_224 RemovedBody838_263

def RemovedBody838_265 : StackLang.HolProg 64 :=
.seq RemovedBody838_223 RemovedBody838_264

def RemovedBody838_266 : StackLang.HolProg 64 :=
.seq RemovedBody838_222 RemovedBody838_265

def RemovedBody838_267 : StackLang.HolProg 64 :=
.seq RemovedBody838_221 RemovedBody838_266

def RemovedBody838_268 : StackLang.HolProg 64 :=
.seq RemovedBody838_220 RemovedBody838_267

def RemovedBody838_269 : StackLang.HolProg 64 :=
.seq RemovedBody838_219 RemovedBody838_268

def RemovedBody838_270 : StackLang.HolProg 64 :=
.seq RemovedBody838_218 RemovedBody838_269

def RemovedBody838_271 : StackLang.HolProg 64 :=
.seq RemovedBody838_217 RemovedBody838_270

def RemovedBody838_272 : StackLang.HolProg 64 :=
.seq RemovedBody838_216 RemovedBody838_271

def RemovedBody838_273 : StackLang.HolProg 64 :=
.seq RemovedBody838_215 RemovedBody838_272

def RemovedBody838_274 : StackLang.HolProg 64 :=
.seq RemovedBody838_214 RemovedBody838_273

def RemovedBody838_275 : StackLang.HolProg 64 :=
.seq RemovedBody838_213 RemovedBody838_274

def RemovedBody838_276 : StackLang.HolProg 64 :=
.seq RemovedBody838_212 RemovedBody838_275

def RemovedBody838_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody838_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody838_279 : StackLang.HolProg 64 :=
.seq RemovedBody838_277 RemovedBody838_278

def RemovedBody838_280 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) RemovedBody838_276 RemovedBody838_279

def RemovedBody838_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody838_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody838_283 : StackLang.HolProg 64 :=
.seq RemovedBody838_281 RemovedBody838_282

def RemovedBody838_284 : StackLang.HolProg 64 :=
.seq RemovedBody838_280 RemovedBody838_283

def RemovedBody838_285 : StackLang.HolProg 64 :=
.seq RemovedBody838_211 RemovedBody838_284

def RemovedBody838_286 : StackLang.HolProg 64 :=
.seq RemovedBody838_210 RemovedBody838_285

def RemovedBody838_287 : StackLang.HolProg 64 :=
.loop RemovedBody838_286

def RemovedBody838_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody838_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody838_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody838_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4202#64)

def RemovedBody838_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody838_293 : StackLang.HolProg 64 :=
.seq RemovedBody838_291 RemovedBody838_292

def RemovedBody838_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody838_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody838_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody838_297 : StackLang.HolProg 64 :=
.seq RemovedBody838_295 RemovedBody838_296

def RemovedBody838_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody838_299 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody838_297 RemovedBody838_298

def RemovedBody838_300 : StackLang.HolProg 64 :=
.seq RemovedBody838_294 RemovedBody838_299

def RemovedBody838_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody838_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody838_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 838 9

def RemovedBody838_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody838_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody838_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody838_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody838_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody838_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody838_310 : StackLang.HolProg 64 :=
.seq RemovedBody838_308 RemovedBody838_309

def RemovedBody838_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody838_312 : StackLang.HolProg 64 :=
.seq RemovedBody838_310 RemovedBody838_311

def RemovedBody838_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody838_314 : StackLang.HolProg 64 :=
.seq RemovedBody838_312 RemovedBody838_313

def RemovedBody838_315 : StackLang.HolProg 64 :=
.seq RemovedBody838_307 RemovedBody838_314

def RemovedBody838_316 : StackLang.HolProg 64 :=
.seq RemovedBody838_306 RemovedBody838_315

def RemovedBody838_317 : StackLang.HolProg 64 :=
.seq RemovedBody838_305 RemovedBody838_316

def RemovedBody838_318 : StackLang.HolProg 64 :=
.seq RemovedBody838_304 RemovedBody838_317

def RemovedBody838_319 : StackLang.HolProg 64 :=
.seq RemovedBody838_303 RemovedBody838_318

def RemovedBody838_320 : StackLang.HolProg 64 :=
.seq RemovedBody838_302 RemovedBody838_319

def RemovedBody838_321 : StackLang.HolProg 64 :=
.seq RemovedBody838_301 RemovedBody838_320

def RemovedBody838_322 : StackLang.HolProg 64 :=
.seq RemovedBody838_300 RemovedBody838_321

def RemovedBody838_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody838_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody838_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody838_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody838_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody838_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody838_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody838_330 : StackLang.HolProg 64 :=
.seq RemovedBody838_328 RemovedBody838_329

def RemovedBody838_331 : StackLang.HolProg 64 :=
.seq RemovedBody838_327 RemovedBody838_330

def RemovedBody838_332 : StackLang.HolProg 64 :=
.seq RemovedBody838_326 RemovedBody838_331

def RemovedBody838_333 : StackLang.HolProg 64 :=
.seq RemovedBody838_325 RemovedBody838_332

def RemovedBody838_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody838_335 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody838_336 : StackLang.HolProg 64 :=
.seq RemovedBody838_334 RemovedBody838_335

def RemovedBody838_337 : StackLang.HolProg 64 :=
.call (some (RemovedBody838_333, 0, 838, 8)) (Sum.inl 70) (some (RemovedBody838_336, 838, 9))

def RemovedBody838_338 : StackLang.HolProg 64 :=
.seq RemovedBody838_324 RemovedBody838_337

def RemovedBody838_339 : StackLang.HolProg 64 :=
.seq RemovedBody838_323 RemovedBody838_338

def RemovedBody838_340 : StackLang.HolProg 64 :=
.seq RemovedBody838_322 RemovedBody838_339

def RemovedBody838_341 : StackLang.HolProg 64 :=
.seq RemovedBody838_293 RemovedBody838_340

def RemovedBody838_342 : StackLang.HolProg 64 :=
.seq RemovedBody838_290 RemovedBody838_341

def RemovedBody838_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody838_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody838_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody838_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody838_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody838_348 : StackLang.HolProg 64 :=
.seq RemovedBody838_346 RemovedBody838_347

def RemovedBody838_349 : StackLang.HolProg 64 :=
.seq RemovedBody838_345 RemovedBody838_348

def RemovedBody838_350 : StackLang.HolProg 64 :=
.seq RemovedBody838_344 RemovedBody838_349

def RemovedBody838_351 : StackLang.HolProg 64 :=
.seq RemovedBody838_343 RemovedBody838_350

def RemovedBody838_352 : StackLang.HolProg 64 :=
.seq RemovedBody838_342 RemovedBody838_351

def RemovedBody838_353 : StackLang.HolProg 64 :=
.seq RemovedBody838_289 RemovedBody838_352

def RemovedBody838_354 : StackLang.HolProg 64 :=
.seq RemovedBody838_288 RemovedBody838_353

def RemovedBody838_355 : StackLang.HolProg 64 :=
.seq RemovedBody838_287 RemovedBody838_354

def RemovedBody838_356 : StackLang.HolProg 64 :=
.seq RemovedBody838_209 RemovedBody838_355

def RemovedBody838_357 : StackLang.HolProg 64 :=
.seq RemovedBody838_208 RemovedBody838_356

def RemovedBody838_358 : StackLang.HolProg 64 :=
.seq RemovedBody838_207 RemovedBody838_357

def RemovedBody838_359 : StackLang.HolProg 64 :=
.seq RemovedBody838_206 RemovedBody838_358

def RemovedBody838_360 : StackLang.HolProg 64 :=
.seq RemovedBody838_205 RemovedBody838_359

def RemovedBody838_361 : StackLang.HolProg 64 :=
.seq RemovedBody838_136 RemovedBody838_360

def RemovedBody838_362 : StackLang.HolProg 64 :=
.seq RemovedBody838_129 RemovedBody838_361

def RemovedBody838_363 : StackLang.HolProg 64 :=
.seq RemovedBody838_128 RemovedBody838_362

def RemovedBody838_364 : StackLang.HolProg 64 :=
.seq RemovedBody838_69 RemovedBody838_363

def RemovedBody838_365 : StackLang.HolProg 64 :=
.seq RemovedBody838_68 RemovedBody838_364

def RemovedBody838_366 : StackLang.HolProg 64 :=
.seq RemovedBody838_67 RemovedBody838_365

def RemovedBody838_367 : StackLang.HolProg 64 :=
.seq RemovedBody838_66 RemovedBody838_366

def RemovedBody838_368 : StackLang.HolProg 64 :=
.seq RemovedBody838_13 RemovedBody838_367

def RemovedBody838_369 : StackLang.HolProg 64 :=
.seq RemovedBody838_6 RemovedBody838_368

def Removed838 : Nat × StackLang.HolProg 64 := (838, RemovedBody838_369)
theorem Removed838_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc838 = Removed838 := by
  kernel_rfl
#print axioms Removed838_eq
end InitECandidate.Proofs.BackendStages
