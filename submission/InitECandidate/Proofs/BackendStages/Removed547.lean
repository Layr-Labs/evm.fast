import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc547
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody547_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody547_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody547_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody547_3 : StackLang.HolProg 64 :=
.seq RemovedBody547_1 RemovedBody547_2

def RemovedBody547_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody547_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody547_3 RemovedBody547_4

def RemovedBody547_6 : StackLang.HolProg 64 :=
.seq RemovedBody547_0 RemovedBody547_5

def RemovedBody547_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody547_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody547_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1827#64)

def RemovedBody547_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody547_11 : StackLang.HolProg 64 :=
.seq RemovedBody547_9 RemovedBody547_10

def RemovedBody547_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody547_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody547_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody547_15 : StackLang.HolProg 64 :=
.seq RemovedBody547_13 RemovedBody547_14

def RemovedBody547_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody547_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody547_15 RemovedBody547_16

def RemovedBody547_18 : StackLang.HolProg 64 :=
.seq RemovedBody547_12 RemovedBody547_17

def RemovedBody547_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody547_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody547_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 547 3

def RemovedBody547_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody547_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody547_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody547_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody547_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody547_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody547_28 : StackLang.HolProg 64 :=
.seq RemovedBody547_26 RemovedBody547_27

def RemovedBody547_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody547_30 : StackLang.HolProg 64 :=
.seq RemovedBody547_28 RemovedBody547_29

def RemovedBody547_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody547_32 : StackLang.HolProg 64 :=
.seq RemovedBody547_30 RemovedBody547_31

def RemovedBody547_33 : StackLang.HolProg 64 :=
.seq RemovedBody547_25 RemovedBody547_32

def RemovedBody547_34 : StackLang.HolProg 64 :=
.seq RemovedBody547_24 RemovedBody547_33

def RemovedBody547_35 : StackLang.HolProg 64 :=
.seq RemovedBody547_23 RemovedBody547_34

def RemovedBody547_36 : StackLang.HolProg 64 :=
.seq RemovedBody547_22 RemovedBody547_35

def RemovedBody547_37 : StackLang.HolProg 64 :=
.seq RemovedBody547_21 RemovedBody547_36

def RemovedBody547_38 : StackLang.HolProg 64 :=
.seq RemovedBody547_20 RemovedBody547_37

def RemovedBody547_39 : StackLang.HolProg 64 :=
.seq RemovedBody547_19 RemovedBody547_38

def RemovedBody547_40 : StackLang.HolProg 64 :=
.seq RemovedBody547_18 RemovedBody547_39

def RemovedBody547_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody547_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody547_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody547_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody547_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody547_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody547_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody547_48 : StackLang.HolProg 64 :=
.seq RemovedBody547_46 RemovedBody547_47

def RemovedBody547_49 : StackLang.HolProg 64 :=
.seq RemovedBody547_45 RemovedBody547_48

def RemovedBody547_50 : StackLang.HolProg 64 :=
.seq RemovedBody547_44 RemovedBody547_49

def RemovedBody547_51 : StackLang.HolProg 64 :=
.seq RemovedBody547_43 RemovedBody547_50

def RemovedBody547_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody547_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody547_54 : StackLang.HolProg 64 :=
.seq RemovedBody547_52 RemovedBody547_53

def RemovedBody547_55 : StackLang.HolProg 64 :=
.call (some (RemovedBody547_51, 0, 547, 2)) (Sum.inl 392) (some (RemovedBody547_54, 547, 3))

def RemovedBody547_56 : StackLang.HolProg 64 :=
.seq RemovedBody547_42 RemovedBody547_55

def RemovedBody547_57 : StackLang.HolProg 64 :=
.seq RemovedBody547_41 RemovedBody547_56

def RemovedBody547_58 : StackLang.HolProg 64 :=
.seq RemovedBody547_40 RemovedBody547_57

def RemovedBody547_59 : StackLang.HolProg 64 :=
.seq RemovedBody547_11 RemovedBody547_58

def RemovedBody547_60 : StackLang.HolProg 64 :=
.seq RemovedBody547_8 RemovedBody547_59

def RemovedBody547_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody547_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody547_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody547_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody547_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def RemovedBody547_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 176#64))

def RemovedBody547_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody547_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody547_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1828#64)

def RemovedBody547_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody547_71 : StackLang.HolProg 64 :=
.seq RemovedBody547_69 RemovedBody547_70

def RemovedBody547_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody547_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody547_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody547_75 : StackLang.HolProg 64 :=
.seq RemovedBody547_73 RemovedBody547_74

def RemovedBody547_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody547_77 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody547_75 RemovedBody547_76

def RemovedBody547_78 : StackLang.HolProg 64 :=
.seq RemovedBody547_72 RemovedBody547_77

def RemovedBody547_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody547_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody547_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 547 5

def RemovedBody547_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody547_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody547_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody547_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody547_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody547_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody547_88 : StackLang.HolProg 64 :=
.seq RemovedBody547_86 RemovedBody547_87

def RemovedBody547_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody547_90 : StackLang.HolProg 64 :=
.seq RemovedBody547_88 RemovedBody547_89

def RemovedBody547_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody547_92 : StackLang.HolProg 64 :=
.seq RemovedBody547_90 RemovedBody547_91

def RemovedBody547_93 : StackLang.HolProg 64 :=
.seq RemovedBody547_85 RemovedBody547_92

def RemovedBody547_94 : StackLang.HolProg 64 :=
.seq RemovedBody547_84 RemovedBody547_93

def RemovedBody547_95 : StackLang.HolProg 64 :=
.seq RemovedBody547_83 RemovedBody547_94

def RemovedBody547_96 : StackLang.HolProg 64 :=
.seq RemovedBody547_82 RemovedBody547_95

def RemovedBody547_97 : StackLang.HolProg 64 :=
.seq RemovedBody547_81 RemovedBody547_96

def RemovedBody547_98 : StackLang.HolProg 64 :=
.seq RemovedBody547_80 RemovedBody547_97

def RemovedBody547_99 : StackLang.HolProg 64 :=
.seq RemovedBody547_79 RemovedBody547_98

def RemovedBody547_100 : StackLang.HolProg 64 :=
.seq RemovedBody547_78 RemovedBody547_99

def RemovedBody547_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody547_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody547_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody547_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody547_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody547_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody547_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody547_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody547_109 : StackLang.HolProg 64 :=
.seq RemovedBody547_107 RemovedBody547_108

def RemovedBody547_110 : StackLang.HolProg 64 :=
.seq RemovedBody547_106 RemovedBody547_109

def RemovedBody547_111 : StackLang.HolProg 64 :=
.seq RemovedBody547_105 RemovedBody547_110

def RemovedBody547_112 : StackLang.HolProg 64 :=
.seq RemovedBody547_104 RemovedBody547_111

def RemovedBody547_113 : StackLang.HolProg 64 :=
.seq RemovedBody547_103 RemovedBody547_112

def RemovedBody547_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody547_115 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody547_116 : StackLang.HolProg 64 :=
.seq RemovedBody547_114 RemovedBody547_115

def RemovedBody547_117 : StackLang.HolProg 64 :=
.call (some (RemovedBody547_113, 0, 547, 4)) (Sum.inl 187) (some (RemovedBody547_116, 547, 5))

def RemovedBody547_118 : StackLang.HolProg 64 :=
.seq RemovedBody547_102 RemovedBody547_117

def RemovedBody547_119 : StackLang.HolProg 64 :=
.seq RemovedBody547_101 RemovedBody547_118

def RemovedBody547_120 : StackLang.HolProg 64 :=
.seq RemovedBody547_100 RemovedBody547_119

def RemovedBody547_121 : StackLang.HolProg 64 :=
.seq RemovedBody547_71 RemovedBody547_120

def RemovedBody547_122 : StackLang.HolProg 64 :=
.seq RemovedBody547_68 RemovedBody547_121

def RemovedBody547_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody547_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody547_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody547_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody547_127 : StackLang.HolProg 64 :=
.seq RemovedBody547_125 RemovedBody547_126

def RemovedBody547_128 : StackLang.HolProg 64 :=
.seq RemovedBody547_124 RemovedBody547_127

def RemovedBody547_129 : StackLang.HolProg 64 :=
.seq RemovedBody547_123 RemovedBody547_128

def RemovedBody547_130 : StackLang.HolProg 64 :=
.seq RemovedBody547_122 RemovedBody547_129

def RemovedBody547_131 : StackLang.HolProg 64 :=
.seq RemovedBody547_67 RemovedBody547_130

def RemovedBody547_132 : StackLang.HolProg 64 :=
.seq RemovedBody547_66 RemovedBody547_131

def RemovedBody547_133 : StackLang.HolProg 64 :=
.seq RemovedBody547_65 RemovedBody547_132

def RemovedBody547_134 : StackLang.HolProg 64 :=
.seq RemovedBody547_64 RemovedBody547_133

def RemovedBody547_135 : StackLang.HolProg 64 :=
.seq RemovedBody547_63 RemovedBody547_134

def RemovedBody547_136 : StackLang.HolProg 64 :=
.seq RemovedBody547_62 RemovedBody547_135

def RemovedBody547_137 : StackLang.HolProg 64 :=
.seq RemovedBody547_61 RemovedBody547_136

def RemovedBody547_138 : StackLang.HolProg 64 :=
.seq RemovedBody547_60 RemovedBody547_137

def RemovedBody547_139 : StackLang.HolProg 64 :=
.seq RemovedBody547_7 RemovedBody547_138

def RemovedBody547_140 : StackLang.HolProg 64 :=
.seq RemovedBody547_6 RemovedBody547_139

def Removed547 : Nat × StackLang.HolProg 64 := (547, RemovedBody547_140)
theorem Removed547_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc547 = Removed547 := by
  kernel_rfl
#print axioms Removed547_eq
end InitECandidate.Proofs.BackendStages
