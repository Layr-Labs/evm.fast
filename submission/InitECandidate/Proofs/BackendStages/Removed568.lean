import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc568
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody568_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody568_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody568_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody568_3 : StackLang.HolProg 64 :=
.seq RemovedBody568_1 RemovedBody568_2

def RemovedBody568_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody568_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody568_3 RemovedBody568_4

def RemovedBody568_6 : StackLang.HolProg 64 :=
.seq RemovedBody568_0 RemovedBody568_5

def RemovedBody568_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody568_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody568_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody568_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody568_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1960#64)

def RemovedBody568_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody568_13 : StackLang.HolProg 64 :=
.seq RemovedBody568_11 RemovedBody568_12

def RemovedBody568_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody568_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody568_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody568_17 : StackLang.HolProg 64 :=
.seq RemovedBody568_15 RemovedBody568_16

def RemovedBody568_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody568_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody568_17 RemovedBody568_18

def RemovedBody568_20 : StackLang.HolProg 64 :=
.seq RemovedBody568_14 RemovedBody568_19

def RemovedBody568_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody568_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody568_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 568 3

def RemovedBody568_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody568_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody568_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody568_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody568_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody568_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody568_30 : StackLang.HolProg 64 :=
.seq RemovedBody568_28 RemovedBody568_29

def RemovedBody568_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody568_32 : StackLang.HolProg 64 :=
.seq RemovedBody568_30 RemovedBody568_31

def RemovedBody568_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody568_34 : StackLang.HolProg 64 :=
.seq RemovedBody568_32 RemovedBody568_33

def RemovedBody568_35 : StackLang.HolProg 64 :=
.seq RemovedBody568_27 RemovedBody568_34

def RemovedBody568_36 : StackLang.HolProg 64 :=
.seq RemovedBody568_26 RemovedBody568_35

def RemovedBody568_37 : StackLang.HolProg 64 :=
.seq RemovedBody568_25 RemovedBody568_36

def RemovedBody568_38 : StackLang.HolProg 64 :=
.seq RemovedBody568_24 RemovedBody568_37

def RemovedBody568_39 : StackLang.HolProg 64 :=
.seq RemovedBody568_23 RemovedBody568_38

def RemovedBody568_40 : StackLang.HolProg 64 :=
.seq RemovedBody568_22 RemovedBody568_39

def RemovedBody568_41 : StackLang.HolProg 64 :=
.seq RemovedBody568_21 RemovedBody568_40

def RemovedBody568_42 : StackLang.HolProg 64 :=
.seq RemovedBody568_20 RemovedBody568_41

def RemovedBody568_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody568_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody568_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody568_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody568_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody568_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody568_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody568_50 : StackLang.HolProg 64 :=
.seq RemovedBody568_48 RemovedBody568_49

def RemovedBody568_51 : StackLang.HolProg 64 :=
.seq RemovedBody568_47 RemovedBody568_50

def RemovedBody568_52 : StackLang.HolProg 64 :=
.seq RemovedBody568_46 RemovedBody568_51

def RemovedBody568_53 : StackLang.HolProg 64 :=
.seq RemovedBody568_45 RemovedBody568_52

def RemovedBody568_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody568_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody568_56 : StackLang.HolProg 64 :=
.seq RemovedBody568_54 RemovedBody568_55

def RemovedBody568_57 : StackLang.HolProg 64 :=
.call (some (RemovedBody568_53, 0, 568, 2)) (Sum.inl 470) (some (RemovedBody568_56, 568, 3))

def RemovedBody568_58 : StackLang.HolProg 64 :=
.seq RemovedBody568_44 RemovedBody568_57

def RemovedBody568_59 : StackLang.HolProg 64 :=
.seq RemovedBody568_43 RemovedBody568_58

def RemovedBody568_60 : StackLang.HolProg 64 :=
.seq RemovedBody568_42 RemovedBody568_59

def RemovedBody568_61 : StackLang.HolProg 64 :=
.seq RemovedBody568_13 RemovedBody568_60

def RemovedBody568_62 : StackLang.HolProg 64 :=
.seq RemovedBody568_10 RemovedBody568_61

def RemovedBody568_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody568_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody568_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody568_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody568_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def RemovedBody568_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 152#64))

def RemovedBody568_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody568_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody568_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1961#64)

def RemovedBody568_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody568_73 : StackLang.HolProg 64 :=
.seq RemovedBody568_71 RemovedBody568_72

def RemovedBody568_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody568_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody568_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody568_77 : StackLang.HolProg 64 :=
.seq RemovedBody568_75 RemovedBody568_76

def RemovedBody568_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody568_79 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody568_77 RemovedBody568_78

def RemovedBody568_80 : StackLang.HolProg 64 :=
.seq RemovedBody568_74 RemovedBody568_79

def RemovedBody568_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody568_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody568_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 568 5

def RemovedBody568_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody568_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody568_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody568_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody568_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody568_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody568_90 : StackLang.HolProg 64 :=
.seq RemovedBody568_88 RemovedBody568_89

def RemovedBody568_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody568_92 : StackLang.HolProg 64 :=
.seq RemovedBody568_90 RemovedBody568_91

def RemovedBody568_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody568_94 : StackLang.HolProg 64 :=
.seq RemovedBody568_92 RemovedBody568_93

def RemovedBody568_95 : StackLang.HolProg 64 :=
.seq RemovedBody568_87 RemovedBody568_94

def RemovedBody568_96 : StackLang.HolProg 64 :=
.seq RemovedBody568_86 RemovedBody568_95

def RemovedBody568_97 : StackLang.HolProg 64 :=
.seq RemovedBody568_85 RemovedBody568_96

def RemovedBody568_98 : StackLang.HolProg 64 :=
.seq RemovedBody568_84 RemovedBody568_97

def RemovedBody568_99 : StackLang.HolProg 64 :=
.seq RemovedBody568_83 RemovedBody568_98

def RemovedBody568_100 : StackLang.HolProg 64 :=
.seq RemovedBody568_82 RemovedBody568_99

def RemovedBody568_101 : StackLang.HolProg 64 :=
.seq RemovedBody568_81 RemovedBody568_100

def RemovedBody568_102 : StackLang.HolProg 64 :=
.seq RemovedBody568_80 RemovedBody568_101

def RemovedBody568_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody568_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody568_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody568_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody568_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody568_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody568_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody568_110 : StackLang.HolProg 64 :=
.seq RemovedBody568_108 RemovedBody568_109

def RemovedBody568_111 : StackLang.HolProg 64 :=
.seq RemovedBody568_107 RemovedBody568_110

def RemovedBody568_112 : StackLang.HolProg 64 :=
.seq RemovedBody568_106 RemovedBody568_111

def RemovedBody568_113 : StackLang.HolProg 64 :=
.seq RemovedBody568_105 RemovedBody568_112

def RemovedBody568_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody568_115 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody568_116 : StackLang.HolProg 64 :=
.seq RemovedBody568_114 RemovedBody568_115

def RemovedBody568_117 : StackLang.HolProg 64 :=
.call (some (RemovedBody568_113, 0, 568, 4)) (Sum.inl 477) (some (RemovedBody568_116, 568, 5))

def RemovedBody568_118 : StackLang.HolProg 64 :=
.seq RemovedBody568_104 RemovedBody568_117

def RemovedBody568_119 : StackLang.HolProg 64 :=
.seq RemovedBody568_103 RemovedBody568_118

def RemovedBody568_120 : StackLang.HolProg 64 :=
.seq RemovedBody568_102 RemovedBody568_119

def RemovedBody568_121 : StackLang.HolProg 64 :=
.seq RemovedBody568_73 RemovedBody568_120

def RemovedBody568_122 : StackLang.HolProg 64 :=
.seq RemovedBody568_70 RemovedBody568_121

def RemovedBody568_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody568_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody568_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody568_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody568_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1962#64)

def RemovedBody568_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody568_129 : StackLang.HolProg 64 :=
.seq RemovedBody568_127 RemovedBody568_128

def RemovedBody568_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody568_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody568_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody568_133 : StackLang.HolProg 64 :=
.seq RemovedBody568_131 RemovedBody568_132

def RemovedBody568_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody568_135 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody568_133 RemovedBody568_134

def RemovedBody568_136 : StackLang.HolProg 64 :=
.seq RemovedBody568_130 RemovedBody568_135

def RemovedBody568_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody568_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody568_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 568 7

def RemovedBody568_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody568_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody568_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody568_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody568_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody568_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody568_146 : StackLang.HolProg 64 :=
.seq RemovedBody568_144 RemovedBody568_145

def RemovedBody568_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody568_148 : StackLang.HolProg 64 :=
.seq RemovedBody568_146 RemovedBody568_147

def RemovedBody568_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody568_150 : StackLang.HolProg 64 :=
.seq RemovedBody568_148 RemovedBody568_149

def RemovedBody568_151 : StackLang.HolProg 64 :=
.seq RemovedBody568_143 RemovedBody568_150

def RemovedBody568_152 : StackLang.HolProg 64 :=
.seq RemovedBody568_142 RemovedBody568_151

def RemovedBody568_153 : StackLang.HolProg 64 :=
.seq RemovedBody568_141 RemovedBody568_152

def RemovedBody568_154 : StackLang.HolProg 64 :=
.seq RemovedBody568_140 RemovedBody568_153

def RemovedBody568_155 : StackLang.HolProg 64 :=
.seq RemovedBody568_139 RemovedBody568_154

def RemovedBody568_156 : StackLang.HolProg 64 :=
.seq RemovedBody568_138 RemovedBody568_155

def RemovedBody568_157 : StackLang.HolProg 64 :=
.seq RemovedBody568_137 RemovedBody568_156

def RemovedBody568_158 : StackLang.HolProg 64 :=
.seq RemovedBody568_136 RemovedBody568_157

def RemovedBody568_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody568_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody568_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody568_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody568_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody568_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody568_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody568_166 : StackLang.HolProg 64 :=
.seq RemovedBody568_164 RemovedBody568_165

def RemovedBody568_167 : StackLang.HolProg 64 :=
.seq RemovedBody568_163 RemovedBody568_166

def RemovedBody568_168 : StackLang.HolProg 64 :=
.seq RemovedBody568_162 RemovedBody568_167

def RemovedBody568_169 : StackLang.HolProg 64 :=
.seq RemovedBody568_161 RemovedBody568_168

def RemovedBody568_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody568_171 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody568_172 : StackLang.HolProg 64 :=
.seq RemovedBody568_170 RemovedBody568_171

def RemovedBody568_173 : StackLang.HolProg 64 :=
.call (some (RemovedBody568_169, 0, 568, 6)) (Sum.inl 490) (some (RemovedBody568_172, 568, 7))

def RemovedBody568_174 : StackLang.HolProg 64 :=
.seq RemovedBody568_160 RemovedBody568_173

def RemovedBody568_175 : StackLang.HolProg 64 :=
.seq RemovedBody568_159 RemovedBody568_174

def RemovedBody568_176 : StackLang.HolProg 64 :=
.seq RemovedBody568_158 RemovedBody568_175

def RemovedBody568_177 : StackLang.HolProg 64 :=
.seq RemovedBody568_129 RemovedBody568_176

def RemovedBody568_178 : StackLang.HolProg 64 :=
.seq RemovedBody568_126 RemovedBody568_177

def RemovedBody568_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody568_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody568_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody568_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody568_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody568_184 : StackLang.HolProg 64 :=
.seq RemovedBody568_182 RemovedBody568_183

def RemovedBody568_185 : StackLang.HolProg 64 :=
.seq RemovedBody568_181 RemovedBody568_184

def RemovedBody568_186 : StackLang.HolProg 64 :=
.seq RemovedBody568_180 RemovedBody568_185

def RemovedBody568_187 : StackLang.HolProg 64 :=
.seq RemovedBody568_179 RemovedBody568_186

def RemovedBody568_188 : StackLang.HolProg 64 :=
.seq RemovedBody568_178 RemovedBody568_187

def RemovedBody568_189 : StackLang.HolProg 64 :=
.seq RemovedBody568_125 RemovedBody568_188

def RemovedBody568_190 : StackLang.HolProg 64 :=
.seq RemovedBody568_124 RemovedBody568_189

def RemovedBody568_191 : StackLang.HolProg 64 :=
.seq RemovedBody568_123 RemovedBody568_190

def RemovedBody568_192 : StackLang.HolProg 64 :=
.seq RemovedBody568_122 RemovedBody568_191

def RemovedBody568_193 : StackLang.HolProg 64 :=
.seq RemovedBody568_69 RemovedBody568_192

def RemovedBody568_194 : StackLang.HolProg 64 :=
.seq RemovedBody568_68 RemovedBody568_193

def RemovedBody568_195 : StackLang.HolProg 64 :=
.seq RemovedBody568_67 RemovedBody568_194

def RemovedBody568_196 : StackLang.HolProg 64 :=
.seq RemovedBody568_66 RemovedBody568_195

def RemovedBody568_197 : StackLang.HolProg 64 :=
.seq RemovedBody568_65 RemovedBody568_196

def RemovedBody568_198 : StackLang.HolProg 64 :=
.seq RemovedBody568_64 RemovedBody568_197

def RemovedBody568_199 : StackLang.HolProg 64 :=
.seq RemovedBody568_63 RemovedBody568_198

def RemovedBody568_200 : StackLang.HolProg 64 :=
.seq RemovedBody568_62 RemovedBody568_199

def RemovedBody568_201 : StackLang.HolProg 64 :=
.seq RemovedBody568_9 RemovedBody568_200

def RemovedBody568_202 : StackLang.HolProg 64 :=
.seq RemovedBody568_8 RemovedBody568_201

def RemovedBody568_203 : StackLang.HolProg 64 :=
.seq RemovedBody568_7 RemovedBody568_202

def RemovedBody568_204 : StackLang.HolProg 64 :=
.seq RemovedBody568_6 RemovedBody568_203

def Removed568 : Nat × StackLang.HolProg 64 := (568, RemovedBody568_204)
theorem Removed568_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc568 = Removed568 := by
  kernel_rfl
#print axioms Removed568_eq
end InitECandidate.Proofs.BackendStages
