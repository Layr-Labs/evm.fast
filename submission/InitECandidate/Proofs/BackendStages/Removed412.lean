import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc412
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody412_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody412_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody412_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody412_3 : StackLang.HolProg 64 :=
.seq RemovedBody412_1 RemovedBody412_2

def RemovedBody412_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody412_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody412_3 RemovedBody412_4

def RemovedBody412_6 : StackLang.HolProg 64 :=
.seq RemovedBody412_0 RemovedBody412_5

def RemovedBody412_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody412_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody412_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1231#64)

def RemovedBody412_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody412_11 : StackLang.HolProg 64 :=
.seq RemovedBody412_9 RemovedBody412_10

def RemovedBody412_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody412_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody412_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody412_15 : StackLang.HolProg 64 :=
.seq RemovedBody412_13 RemovedBody412_14

def RemovedBody412_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody412_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody412_15 RemovedBody412_16

def RemovedBody412_18 : StackLang.HolProg 64 :=
.seq RemovedBody412_12 RemovedBody412_17

def RemovedBody412_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody412_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody412_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 412 3

def RemovedBody412_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody412_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody412_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody412_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody412_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody412_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody412_28 : StackLang.HolProg 64 :=
.seq RemovedBody412_26 RemovedBody412_27

def RemovedBody412_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody412_30 : StackLang.HolProg 64 :=
.seq RemovedBody412_28 RemovedBody412_29

def RemovedBody412_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody412_32 : StackLang.HolProg 64 :=
.seq RemovedBody412_30 RemovedBody412_31

def RemovedBody412_33 : StackLang.HolProg 64 :=
.seq RemovedBody412_25 RemovedBody412_32

def RemovedBody412_34 : StackLang.HolProg 64 :=
.seq RemovedBody412_24 RemovedBody412_33

def RemovedBody412_35 : StackLang.HolProg 64 :=
.seq RemovedBody412_23 RemovedBody412_34

def RemovedBody412_36 : StackLang.HolProg 64 :=
.seq RemovedBody412_22 RemovedBody412_35

def RemovedBody412_37 : StackLang.HolProg 64 :=
.seq RemovedBody412_21 RemovedBody412_36

def RemovedBody412_38 : StackLang.HolProg 64 :=
.seq RemovedBody412_20 RemovedBody412_37

def RemovedBody412_39 : StackLang.HolProg 64 :=
.seq RemovedBody412_19 RemovedBody412_38

def RemovedBody412_40 : StackLang.HolProg 64 :=
.seq RemovedBody412_18 RemovedBody412_39

def RemovedBody412_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody412_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody412_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody412_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody412_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody412_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody412_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody412_48 : StackLang.HolProg 64 :=
.seq RemovedBody412_46 RemovedBody412_47

def RemovedBody412_49 : StackLang.HolProg 64 :=
.seq RemovedBody412_45 RemovedBody412_48

def RemovedBody412_50 : StackLang.HolProg 64 :=
.seq RemovedBody412_44 RemovedBody412_49

def RemovedBody412_51 : StackLang.HolProg 64 :=
.seq RemovedBody412_43 RemovedBody412_50

def RemovedBody412_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody412_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody412_54 : StackLang.HolProg 64 :=
.seq RemovedBody412_52 RemovedBody412_53

def RemovedBody412_55 : StackLang.HolProg 64 :=
.call (some (RemovedBody412_51, 0, 412, 2)) (Sum.inl 392) (some (RemovedBody412_54, 412, 3))

def RemovedBody412_56 : StackLang.HolProg 64 :=
.seq RemovedBody412_42 RemovedBody412_55

def RemovedBody412_57 : StackLang.HolProg 64 :=
.seq RemovedBody412_41 RemovedBody412_56

def RemovedBody412_58 : StackLang.HolProg 64 :=
.seq RemovedBody412_40 RemovedBody412_57

def RemovedBody412_59 : StackLang.HolProg 64 :=
.seq RemovedBody412_11 RemovedBody412_58

def RemovedBody412_60 : StackLang.HolProg 64 :=
.seq RemovedBody412_8 RemovedBody412_59

def RemovedBody412_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody412_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody412_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody412_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody412_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551432#64))

def RemovedBody412_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 64#64))

def RemovedBody412_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody412_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody412_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1232#64)

def RemovedBody412_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody412_71 : StackLang.HolProg 64 :=
.seq RemovedBody412_69 RemovedBody412_70

def RemovedBody412_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody412_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody412_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody412_75 : StackLang.HolProg 64 :=
.seq RemovedBody412_73 RemovedBody412_74

def RemovedBody412_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody412_77 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody412_75 RemovedBody412_76

def RemovedBody412_78 : StackLang.HolProg 64 :=
.seq RemovedBody412_72 RemovedBody412_77

def RemovedBody412_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody412_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody412_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 412 5

def RemovedBody412_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody412_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody412_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody412_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody412_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody412_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody412_88 : StackLang.HolProg 64 :=
.seq RemovedBody412_86 RemovedBody412_87

def RemovedBody412_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody412_90 : StackLang.HolProg 64 :=
.seq RemovedBody412_88 RemovedBody412_89

def RemovedBody412_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody412_92 : StackLang.HolProg 64 :=
.seq RemovedBody412_90 RemovedBody412_91

def RemovedBody412_93 : StackLang.HolProg 64 :=
.seq RemovedBody412_85 RemovedBody412_92

def RemovedBody412_94 : StackLang.HolProg 64 :=
.seq RemovedBody412_84 RemovedBody412_93

def RemovedBody412_95 : StackLang.HolProg 64 :=
.seq RemovedBody412_83 RemovedBody412_94

def RemovedBody412_96 : StackLang.HolProg 64 :=
.seq RemovedBody412_82 RemovedBody412_95

def RemovedBody412_97 : StackLang.HolProg 64 :=
.seq RemovedBody412_81 RemovedBody412_96

def RemovedBody412_98 : StackLang.HolProg 64 :=
.seq RemovedBody412_80 RemovedBody412_97

def RemovedBody412_99 : StackLang.HolProg 64 :=
.seq RemovedBody412_79 RemovedBody412_98

def RemovedBody412_100 : StackLang.HolProg 64 :=
.seq RemovedBody412_78 RemovedBody412_99

def RemovedBody412_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody412_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody412_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody412_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody412_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody412_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody412_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody412_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody412_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody412_110 : StackLang.HolProg 64 :=
.seq RemovedBody412_108 RemovedBody412_109

def RemovedBody412_111 : StackLang.HolProg 64 :=
.seq RemovedBody412_107 RemovedBody412_110

def RemovedBody412_112 : StackLang.HolProg 64 :=
.seq RemovedBody412_106 RemovedBody412_111

def RemovedBody412_113 : StackLang.HolProg 64 :=
.seq RemovedBody412_105 RemovedBody412_112

def RemovedBody412_114 : StackLang.HolProg 64 :=
.seq RemovedBody412_104 RemovedBody412_113

def RemovedBody412_115 : StackLang.HolProg 64 :=
.seq RemovedBody412_103 RemovedBody412_114

def RemovedBody412_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody412_117 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody412_118 : StackLang.HolProg 64 :=
.seq RemovedBody412_116 RemovedBody412_117

def RemovedBody412_119 : StackLang.HolProg 64 :=
.call (some (RemovedBody412_115, 0, 412, 4)) (Sum.inl 186) (some (RemovedBody412_118, 412, 5))

def RemovedBody412_120 : StackLang.HolProg 64 :=
.seq RemovedBody412_102 RemovedBody412_119

def RemovedBody412_121 : StackLang.HolProg 64 :=
.seq RemovedBody412_101 RemovedBody412_120

def RemovedBody412_122 : StackLang.HolProg 64 :=
.seq RemovedBody412_100 RemovedBody412_121

def RemovedBody412_123 : StackLang.HolProg 64 :=
.seq RemovedBody412_71 RemovedBody412_122

def RemovedBody412_124 : StackLang.HolProg 64 :=
.seq RemovedBody412_68 RemovedBody412_123

def RemovedBody412_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody412_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody412_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody412_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody412_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody412_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody412_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody412_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody412_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody412_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody412_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def RemovedBody412_136 : StackLang.HolProg 64 :=
.seq RemovedBody412_134 RemovedBody412_135

def RemovedBody412_137 : StackLang.HolProg 64 :=
.seq RemovedBody412_133 RemovedBody412_136

def RemovedBody412_138 : StackLang.HolProg 64 :=
.seq RemovedBody412_132 RemovedBody412_137

def RemovedBody412_139 : StackLang.HolProg 64 :=
.seq RemovedBody412_131 RemovedBody412_138

def RemovedBody412_140 : StackLang.HolProg 64 :=
.seq RemovedBody412_130 RemovedBody412_139

def RemovedBody412_141 : StackLang.HolProg 64 :=
.seq RemovedBody412_129 RemovedBody412_140

def RemovedBody412_142 : StackLang.HolProg 64 :=
.seq RemovedBody412_128 RemovedBody412_141

def RemovedBody412_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody412_144 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody412_142 RemovedBody412_143

def RemovedBody412_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody412_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody412_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody412_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedBody412_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody412_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def RemovedBody412_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody412_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def RemovedBody412_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody412_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 24#64))

def RemovedBody412_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody412_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody412_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def RemovedBody412_158 : StackLang.HolProg 64 :=
.seq RemovedBody412_156 RemovedBody412_157

def RemovedBody412_159 : StackLang.HolProg 64 :=
.seq RemovedBody412_155 RemovedBody412_158

def RemovedBody412_160 : StackLang.HolProg 64 :=
.seq RemovedBody412_154 RemovedBody412_159

def RemovedBody412_161 : StackLang.HolProg 64 :=
.seq RemovedBody412_153 RemovedBody412_160

def RemovedBody412_162 : StackLang.HolProg 64 :=
.seq RemovedBody412_152 RemovedBody412_161

def RemovedBody412_163 : StackLang.HolProg 64 :=
.seq RemovedBody412_151 RemovedBody412_162

def RemovedBody412_164 : StackLang.HolProg 64 :=
.seq RemovedBody412_150 RemovedBody412_163

def RemovedBody412_165 : StackLang.HolProg 64 :=
.seq RemovedBody412_149 RemovedBody412_164

def RemovedBody412_166 : StackLang.HolProg 64 :=
.seq RemovedBody412_148 RemovedBody412_165

def RemovedBody412_167 : StackLang.HolProg 64 :=
.seq RemovedBody412_147 RemovedBody412_166

def RemovedBody412_168 : StackLang.HolProg 64 :=
.seq RemovedBody412_146 RemovedBody412_167

def RemovedBody412_169 : StackLang.HolProg 64 :=
.seq RemovedBody412_145 RemovedBody412_168

def RemovedBody412_170 : StackLang.HolProg 64 :=
.seq RemovedBody412_144 RemovedBody412_169

def RemovedBody412_171 : StackLang.HolProg 64 :=
.seq RemovedBody412_127 RemovedBody412_170

def RemovedBody412_172 : StackLang.HolProg 64 :=
.seq RemovedBody412_126 RemovedBody412_171

def RemovedBody412_173 : StackLang.HolProg 64 :=
.seq RemovedBody412_125 RemovedBody412_172

def RemovedBody412_174 : StackLang.HolProg 64 :=
.seq RemovedBody412_124 RemovedBody412_173

def RemovedBody412_175 : StackLang.HolProg 64 :=
.seq RemovedBody412_67 RemovedBody412_174

def RemovedBody412_176 : StackLang.HolProg 64 :=
.seq RemovedBody412_66 RemovedBody412_175

def RemovedBody412_177 : StackLang.HolProg 64 :=
.seq RemovedBody412_65 RemovedBody412_176

def RemovedBody412_178 : StackLang.HolProg 64 :=
.seq RemovedBody412_64 RemovedBody412_177

def RemovedBody412_179 : StackLang.HolProg 64 :=
.seq RemovedBody412_63 RemovedBody412_178

def RemovedBody412_180 : StackLang.HolProg 64 :=
.seq RemovedBody412_62 RemovedBody412_179

def RemovedBody412_181 : StackLang.HolProg 64 :=
.seq RemovedBody412_61 RemovedBody412_180

def RemovedBody412_182 : StackLang.HolProg 64 :=
.seq RemovedBody412_60 RemovedBody412_181

def RemovedBody412_183 : StackLang.HolProg 64 :=
.seq RemovedBody412_7 RemovedBody412_182

def RemovedBody412_184 : StackLang.HolProg 64 :=
.seq RemovedBody412_6 RemovedBody412_183

def Removed412 : Nat × StackLang.HolProg 64 := (412, RemovedBody412_184)
theorem Removed412_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc412 = Removed412 := by
  kernel_rfl
#print axioms Removed412_eq
end InitECandidate.Proofs.BackendStages
