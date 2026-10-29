import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc502
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody502_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def RemovedBody502_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody502_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody502_3 : StackLang.HolProg 64 :=
.seq RemovedBody502_1 RemovedBody502_2

def RemovedBody502_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody502_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody502_3 RemovedBody502_4

def RemovedBody502_6 : StackLang.HolProg 64 :=
.seq RemovedBody502_0 RemovedBody502_5

def RemovedBody502_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody502_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody502_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1574#64)

def RemovedBody502_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody502_11 : StackLang.HolProg 64 :=
.seq RemovedBody502_9 RemovedBody502_10

def RemovedBody502_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody502_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody502_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody502_15 : StackLang.HolProg 64 :=
.seq RemovedBody502_13 RemovedBody502_14

def RemovedBody502_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody502_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody502_15 RemovedBody502_16

def RemovedBody502_18 : StackLang.HolProg 64 :=
.seq RemovedBody502_12 RemovedBody502_17

def RemovedBody502_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody502_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody502_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 502 3

def RemovedBody502_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody502_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody502_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody502_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody502_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody502_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody502_28 : StackLang.HolProg 64 :=
.seq RemovedBody502_26 RemovedBody502_27

def RemovedBody502_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody502_30 : StackLang.HolProg 64 :=
.seq RemovedBody502_28 RemovedBody502_29

def RemovedBody502_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody502_32 : StackLang.HolProg 64 :=
.seq RemovedBody502_30 RemovedBody502_31

def RemovedBody502_33 : StackLang.HolProg 64 :=
.seq RemovedBody502_25 RemovedBody502_32

def RemovedBody502_34 : StackLang.HolProg 64 :=
.seq RemovedBody502_24 RemovedBody502_33

def RemovedBody502_35 : StackLang.HolProg 64 :=
.seq RemovedBody502_23 RemovedBody502_34

def RemovedBody502_36 : StackLang.HolProg 64 :=
.seq RemovedBody502_22 RemovedBody502_35

def RemovedBody502_37 : StackLang.HolProg 64 :=
.seq RemovedBody502_21 RemovedBody502_36

def RemovedBody502_38 : StackLang.HolProg 64 :=
.seq RemovedBody502_20 RemovedBody502_37

def RemovedBody502_39 : StackLang.HolProg 64 :=
.seq RemovedBody502_19 RemovedBody502_38

def RemovedBody502_40 : StackLang.HolProg 64 :=
.seq RemovedBody502_18 RemovedBody502_39

def RemovedBody502_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody502_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody502_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody502_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody502_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody502_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody502_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody502_48 : StackLang.HolProg 64 :=
.seq RemovedBody502_46 RemovedBody502_47

def RemovedBody502_49 : StackLang.HolProg 64 :=
.seq RemovedBody502_45 RemovedBody502_48

def RemovedBody502_50 : StackLang.HolProg 64 :=
.seq RemovedBody502_44 RemovedBody502_49

def RemovedBody502_51 : StackLang.HolProg 64 :=
.seq RemovedBody502_43 RemovedBody502_50

def RemovedBody502_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody502_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody502_54 : StackLang.HolProg 64 :=
.seq RemovedBody502_52 RemovedBody502_53

def RemovedBody502_55 : StackLang.HolProg 64 :=
.call (some (RemovedBody502_51, 0, 502, 2)) (Sum.inl 475) (some (RemovedBody502_54, 502, 3))

def RemovedBody502_56 : StackLang.HolProg 64 :=
.seq RemovedBody502_42 RemovedBody502_55

def RemovedBody502_57 : StackLang.HolProg 64 :=
.seq RemovedBody502_41 RemovedBody502_56

def RemovedBody502_58 : StackLang.HolProg 64 :=
.seq RemovedBody502_40 RemovedBody502_57

def RemovedBody502_59 : StackLang.HolProg 64 :=
.seq RemovedBody502_11 RemovedBody502_58

def RemovedBody502_60 : StackLang.HolProg 64 :=
.seq RemovedBody502_8 RemovedBody502_59

def RemovedBody502_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody502_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody502_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody502_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody502_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody502_66 : StackLang.HolProg 64 :=
.seq RemovedBody502_64 RemovedBody502_65

def RemovedBody502_67 : StackLang.HolProg 64 :=
.seq RemovedBody502_63 RemovedBody502_66

def RemovedBody502_68 : StackLang.HolProg 64 :=
.seq RemovedBody502_62 RemovedBody502_67

def RemovedBody502_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody502_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1575#64)

def RemovedBody502_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody502_72 : StackLang.HolProg 64 :=
.seq RemovedBody502_70 RemovedBody502_71

def RemovedBody502_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody502_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody502_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody502_76 : StackLang.HolProg 64 :=
.seq RemovedBody502_74 RemovedBody502_75

def RemovedBody502_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody502_78 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody502_76 RemovedBody502_77

def RemovedBody502_79 : StackLang.HolProg 64 :=
.seq RemovedBody502_73 RemovedBody502_78

def RemovedBody502_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody502_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody502_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 502 5

def RemovedBody502_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody502_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody502_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody502_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody502_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody502_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody502_89 : StackLang.HolProg 64 :=
.seq RemovedBody502_87 RemovedBody502_88

def RemovedBody502_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody502_91 : StackLang.HolProg 64 :=
.seq RemovedBody502_89 RemovedBody502_90

def RemovedBody502_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody502_93 : StackLang.HolProg 64 :=
.seq RemovedBody502_91 RemovedBody502_92

def RemovedBody502_94 : StackLang.HolProg 64 :=
.seq RemovedBody502_86 RemovedBody502_93

def RemovedBody502_95 : StackLang.HolProg 64 :=
.seq RemovedBody502_85 RemovedBody502_94

def RemovedBody502_96 : StackLang.HolProg 64 :=
.seq RemovedBody502_84 RemovedBody502_95

def RemovedBody502_97 : StackLang.HolProg 64 :=
.seq RemovedBody502_83 RemovedBody502_96

def RemovedBody502_98 : StackLang.HolProg 64 :=
.seq RemovedBody502_82 RemovedBody502_97

def RemovedBody502_99 : StackLang.HolProg 64 :=
.seq RemovedBody502_81 RemovedBody502_98

def RemovedBody502_100 : StackLang.HolProg 64 :=
.seq RemovedBody502_80 RemovedBody502_99

def RemovedBody502_101 : StackLang.HolProg 64 :=
.seq RemovedBody502_79 RemovedBody502_100

def RemovedBody502_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody502_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody502_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody502_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody502_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody502_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody502_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody502_109 : StackLang.HolProg 64 :=
.seq RemovedBody502_107 RemovedBody502_108

def RemovedBody502_110 : StackLang.HolProg 64 :=
.seq RemovedBody502_106 RemovedBody502_109

def RemovedBody502_111 : StackLang.HolProg 64 :=
.seq RemovedBody502_105 RemovedBody502_110

def RemovedBody502_112 : StackLang.HolProg 64 :=
.seq RemovedBody502_104 RemovedBody502_111

def RemovedBody502_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody502_114 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody502_115 : StackLang.HolProg 64 :=
.seq RemovedBody502_113 RemovedBody502_114

def RemovedBody502_116 : StackLang.HolProg 64 :=
.call (some (RemovedBody502_112, 0, 502, 4)) (Sum.inl 475) (some (RemovedBody502_115, 502, 5))

def RemovedBody502_117 : StackLang.HolProg 64 :=
.seq RemovedBody502_103 RemovedBody502_116

def RemovedBody502_118 : StackLang.HolProg 64 :=
.seq RemovedBody502_102 RemovedBody502_117

def RemovedBody502_119 : StackLang.HolProg 64 :=
.seq RemovedBody502_101 RemovedBody502_118

def RemovedBody502_120 : StackLang.HolProg 64 :=
.seq RemovedBody502_72 RemovedBody502_119

def RemovedBody502_121 : StackLang.HolProg 64 :=
.seq RemovedBody502_69 RemovedBody502_120

def RemovedBody502_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody502_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 5#64)

def RemovedBody502_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody502_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody502_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody502_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody502_128 : StackLang.HolProg 64 :=
.seq RemovedBody502_126 RemovedBody502_127

def RemovedBody502_129 : StackLang.HolProg 64 :=
.seq RemovedBody502_125 RemovedBody502_128

def RemovedBody502_130 : StackLang.HolProg 64 :=
.seq RemovedBody502_124 RemovedBody502_129

def RemovedBody502_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody502_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1576#64)

def RemovedBody502_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody502_134 : StackLang.HolProg 64 :=
.seq RemovedBody502_132 RemovedBody502_133

def RemovedBody502_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody502_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody502_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody502_138 : StackLang.HolProg 64 :=
.seq RemovedBody502_136 RemovedBody502_137

def RemovedBody502_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody502_140 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody502_138 RemovedBody502_139

def RemovedBody502_141 : StackLang.HolProg 64 :=
.seq RemovedBody502_135 RemovedBody502_140

def RemovedBody502_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody502_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody502_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 502 7

def RemovedBody502_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody502_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody502_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody502_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody502_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody502_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody502_151 : StackLang.HolProg 64 :=
.seq RemovedBody502_149 RemovedBody502_150

def RemovedBody502_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody502_153 : StackLang.HolProg 64 :=
.seq RemovedBody502_151 RemovedBody502_152

def RemovedBody502_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody502_155 : StackLang.HolProg 64 :=
.seq RemovedBody502_153 RemovedBody502_154

def RemovedBody502_156 : StackLang.HolProg 64 :=
.seq RemovedBody502_148 RemovedBody502_155

def RemovedBody502_157 : StackLang.HolProg 64 :=
.seq RemovedBody502_147 RemovedBody502_156

def RemovedBody502_158 : StackLang.HolProg 64 :=
.seq RemovedBody502_146 RemovedBody502_157

def RemovedBody502_159 : StackLang.HolProg 64 :=
.seq RemovedBody502_145 RemovedBody502_158

def RemovedBody502_160 : StackLang.HolProg 64 :=
.seq RemovedBody502_144 RemovedBody502_159

def RemovedBody502_161 : StackLang.HolProg 64 :=
.seq RemovedBody502_143 RemovedBody502_160

def RemovedBody502_162 : StackLang.HolProg 64 :=
.seq RemovedBody502_142 RemovedBody502_161

def RemovedBody502_163 : StackLang.HolProg 64 :=
.seq RemovedBody502_141 RemovedBody502_162

def RemovedBody502_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody502_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody502_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody502_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody502_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody502_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody502_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody502_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody502_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody502_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody502_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody502_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody502_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody502_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody502_178 : StackLang.HolProg 64 :=
.seq RemovedBody502_176 RemovedBody502_177

def RemovedBody502_179 : StackLang.HolProg 64 :=
.seq RemovedBody502_175 RemovedBody502_178

def RemovedBody502_180 : StackLang.HolProg 64 :=
.seq RemovedBody502_174 RemovedBody502_179

def RemovedBody502_181 : StackLang.HolProg 64 :=
.seq RemovedBody502_173 RemovedBody502_180

def RemovedBody502_182 : StackLang.HolProg 64 :=
.seq RemovedBody502_172 RemovedBody502_181

def RemovedBody502_183 : StackLang.HolProg 64 :=
.seq RemovedBody502_171 RemovedBody502_182

def RemovedBody502_184 : StackLang.HolProg 64 :=
.seq RemovedBody502_170 RemovedBody502_183

def RemovedBody502_185 : StackLang.HolProg 64 :=
.seq RemovedBody502_169 RemovedBody502_184

def RemovedBody502_186 : StackLang.HolProg 64 :=
.seq RemovedBody502_168 RemovedBody502_185

def RemovedBody502_187 : StackLang.HolProg 64 :=
.seq RemovedBody502_167 RemovedBody502_186

def RemovedBody502_188 : StackLang.HolProg 64 :=
.seq RemovedBody502_166 RemovedBody502_187

def RemovedBody502_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody502_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody502_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody502_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody502_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody502_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody502_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody502_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody502_197 : StackLang.HolProg 64 :=
.seq RemovedBody502_195 RemovedBody502_196

def RemovedBody502_198 : StackLang.HolProg 64 :=
.seq RemovedBody502_194 RemovedBody502_197

def RemovedBody502_199 : StackLang.HolProg 64 :=
.seq RemovedBody502_193 RemovedBody502_198

def RemovedBody502_200 : StackLang.HolProg 64 :=
.seq RemovedBody502_192 RemovedBody502_199

def RemovedBody502_201 : StackLang.HolProg 64 :=
.seq RemovedBody502_191 RemovedBody502_200

def RemovedBody502_202 : StackLang.HolProg 64 :=
.seq RemovedBody502_190 RemovedBody502_201

def RemovedBody502_203 : StackLang.HolProg 64 :=
.seq RemovedBody502_189 RemovedBody502_202

def RemovedBody502_204 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody502_205 : StackLang.HolProg 64 :=
.seq RemovedBody502_203 RemovedBody502_204

def RemovedBody502_206 : StackLang.HolProg 64 :=
.call (some (RemovedBody502_188, 0, 502, 6)) (Sum.inl 470) (some (RemovedBody502_205, 502, 7))

def RemovedBody502_207 : StackLang.HolProg 64 :=
.seq RemovedBody502_165 RemovedBody502_206

def RemovedBody502_208 : StackLang.HolProg 64 :=
.seq RemovedBody502_164 RemovedBody502_207

def RemovedBody502_209 : StackLang.HolProg 64 :=
.seq RemovedBody502_163 RemovedBody502_208

def RemovedBody502_210 : StackLang.HolProg 64 :=
.seq RemovedBody502_134 RemovedBody502_209

def RemovedBody502_211 : StackLang.HolProg 64 :=
.seq RemovedBody502_131 RemovedBody502_210

def RemovedBody502_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody502_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody502_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody502_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1577#64)

def RemovedBody502_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody502_217 : StackLang.HolProg 64 :=
.seq RemovedBody502_215 RemovedBody502_216

def RemovedBody502_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody502_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody502_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody502_221 : StackLang.HolProg 64 :=
.seq RemovedBody502_219 RemovedBody502_220

def RemovedBody502_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody502_223 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody502_221 RemovedBody502_222

def RemovedBody502_224 : StackLang.HolProg 64 :=
.seq RemovedBody502_218 RemovedBody502_223

def RemovedBody502_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody502_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody502_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 502 9

def RemovedBody502_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody502_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody502_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody502_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody502_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody502_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody502_234 : StackLang.HolProg 64 :=
.seq RemovedBody502_232 RemovedBody502_233

def RemovedBody502_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody502_236 : StackLang.HolProg 64 :=
.seq RemovedBody502_234 RemovedBody502_235

def RemovedBody502_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody502_238 : StackLang.HolProg 64 :=
.seq RemovedBody502_236 RemovedBody502_237

def RemovedBody502_239 : StackLang.HolProg 64 :=
.seq RemovedBody502_231 RemovedBody502_238

def RemovedBody502_240 : StackLang.HolProg 64 :=
.seq RemovedBody502_230 RemovedBody502_239

def RemovedBody502_241 : StackLang.HolProg 64 :=
.seq RemovedBody502_229 RemovedBody502_240

def RemovedBody502_242 : StackLang.HolProg 64 :=
.seq RemovedBody502_228 RemovedBody502_241

def RemovedBody502_243 : StackLang.HolProg 64 :=
.seq RemovedBody502_227 RemovedBody502_242

def RemovedBody502_244 : StackLang.HolProg 64 :=
.seq RemovedBody502_226 RemovedBody502_243

def RemovedBody502_245 : StackLang.HolProg 64 :=
.seq RemovedBody502_225 RemovedBody502_244

def RemovedBody502_246 : StackLang.HolProg 64 :=
.seq RemovedBody502_224 RemovedBody502_245

def RemovedBody502_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody502_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody502_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody502_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody502_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody502_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody502_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody502_254 : StackLang.HolProg 64 :=
.seq RemovedBody502_252 RemovedBody502_253

def RemovedBody502_255 : StackLang.HolProg 64 :=
.seq RemovedBody502_251 RemovedBody502_254

def RemovedBody502_256 : StackLang.HolProg 64 :=
.seq RemovedBody502_250 RemovedBody502_255

def RemovedBody502_257 : StackLang.HolProg 64 :=
.seq RemovedBody502_249 RemovedBody502_256

def RemovedBody502_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody502_259 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody502_260 : StackLang.HolProg 64 :=
.seq RemovedBody502_258 RemovedBody502_259

def RemovedBody502_261 : StackLang.HolProg 64 :=
.call (some (RemovedBody502_257, 0, 502, 8)) (Sum.inl 131) (some (RemovedBody502_260, 502, 9))

def RemovedBody502_262 : StackLang.HolProg 64 :=
.seq RemovedBody502_248 RemovedBody502_261

def RemovedBody502_263 : StackLang.HolProg 64 :=
.seq RemovedBody502_247 RemovedBody502_262

def RemovedBody502_264 : StackLang.HolProg 64 :=
.seq RemovedBody502_246 RemovedBody502_263

def RemovedBody502_265 : StackLang.HolProg 64 :=
.seq RemovedBody502_217 RemovedBody502_264

def RemovedBody502_266 : StackLang.HolProg 64 :=
.seq RemovedBody502_214 RemovedBody502_265

def RemovedBody502_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody502_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody502_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody502_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1578#64)

def RemovedBody502_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody502_272 : StackLang.HolProg 64 :=
.seq RemovedBody502_270 RemovedBody502_271

def RemovedBody502_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody502_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody502_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody502_276 : StackLang.HolProg 64 :=
.seq RemovedBody502_274 RemovedBody502_275

def RemovedBody502_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody502_278 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody502_276 RemovedBody502_277

def RemovedBody502_279 : StackLang.HolProg 64 :=
.seq RemovedBody502_273 RemovedBody502_278

def RemovedBody502_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody502_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody502_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 502 11

def RemovedBody502_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody502_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody502_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody502_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody502_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody502_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody502_289 : StackLang.HolProg 64 :=
.seq RemovedBody502_287 RemovedBody502_288

def RemovedBody502_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody502_291 : StackLang.HolProg 64 :=
.seq RemovedBody502_289 RemovedBody502_290

def RemovedBody502_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody502_293 : StackLang.HolProg 64 :=
.seq RemovedBody502_291 RemovedBody502_292

def RemovedBody502_294 : StackLang.HolProg 64 :=
.seq RemovedBody502_286 RemovedBody502_293

def RemovedBody502_295 : StackLang.HolProg 64 :=
.seq RemovedBody502_285 RemovedBody502_294

def RemovedBody502_296 : StackLang.HolProg 64 :=
.seq RemovedBody502_284 RemovedBody502_295

def RemovedBody502_297 : StackLang.HolProg 64 :=
.seq RemovedBody502_283 RemovedBody502_296

def RemovedBody502_298 : StackLang.HolProg 64 :=
.seq RemovedBody502_282 RemovedBody502_297

def RemovedBody502_299 : StackLang.HolProg 64 :=
.seq RemovedBody502_281 RemovedBody502_298

def RemovedBody502_300 : StackLang.HolProg 64 :=
.seq RemovedBody502_280 RemovedBody502_299

def RemovedBody502_301 : StackLang.HolProg 64 :=
.seq RemovedBody502_279 RemovedBody502_300

def RemovedBody502_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody502_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody502_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody502_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody502_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody502_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody502_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody502_309 : StackLang.HolProg 64 :=
.seq RemovedBody502_307 RemovedBody502_308

def RemovedBody502_310 : StackLang.HolProg 64 :=
.seq RemovedBody502_306 RemovedBody502_309

def RemovedBody502_311 : StackLang.HolProg 64 :=
.seq RemovedBody502_305 RemovedBody502_310

def RemovedBody502_312 : StackLang.HolProg 64 :=
.seq RemovedBody502_304 RemovedBody502_311

def RemovedBody502_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody502_314 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody502_315 : StackLang.HolProg 64 :=
.seq RemovedBody502_313 RemovedBody502_314

def RemovedBody502_316 : StackLang.HolProg 64 :=
.call (some (RemovedBody502_312, 0, 502, 10)) (Sum.inl 476) (some (RemovedBody502_315, 502, 11))

def RemovedBody502_317 : StackLang.HolProg 64 :=
.seq RemovedBody502_303 RemovedBody502_316

def RemovedBody502_318 : StackLang.HolProg 64 :=
.seq RemovedBody502_302 RemovedBody502_317

def RemovedBody502_319 : StackLang.HolProg 64 :=
.seq RemovedBody502_301 RemovedBody502_318

def RemovedBody502_320 : StackLang.HolProg 64 :=
.seq RemovedBody502_272 RemovedBody502_319

def RemovedBody502_321 : StackLang.HolProg 64 :=
.seq RemovedBody502_269 RemovedBody502_320

def RemovedBody502_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody502_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody502_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody502_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody502_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1579#64)

def RemovedBody502_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody502_328 : StackLang.HolProg 64 :=
.seq RemovedBody502_326 RemovedBody502_327

def RemovedBody502_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody502_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody502_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody502_332 : StackLang.HolProg 64 :=
.seq RemovedBody502_330 RemovedBody502_331

def RemovedBody502_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody502_334 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody502_332 RemovedBody502_333

def RemovedBody502_335 : StackLang.HolProg 64 :=
.seq RemovedBody502_329 RemovedBody502_334

def RemovedBody502_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody502_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody502_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 502 13

def RemovedBody502_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody502_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody502_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody502_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody502_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody502_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody502_345 : StackLang.HolProg 64 :=
.seq RemovedBody502_343 RemovedBody502_344

def RemovedBody502_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody502_347 : StackLang.HolProg 64 :=
.seq RemovedBody502_345 RemovedBody502_346

def RemovedBody502_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody502_349 : StackLang.HolProg 64 :=
.seq RemovedBody502_347 RemovedBody502_348

def RemovedBody502_350 : StackLang.HolProg 64 :=
.seq RemovedBody502_342 RemovedBody502_349

def RemovedBody502_351 : StackLang.HolProg 64 :=
.seq RemovedBody502_341 RemovedBody502_350

def RemovedBody502_352 : StackLang.HolProg 64 :=
.seq RemovedBody502_340 RemovedBody502_351

def RemovedBody502_353 : StackLang.HolProg 64 :=
.seq RemovedBody502_339 RemovedBody502_352

def RemovedBody502_354 : StackLang.HolProg 64 :=
.seq RemovedBody502_338 RemovedBody502_353

def RemovedBody502_355 : StackLang.HolProg 64 :=
.seq RemovedBody502_337 RemovedBody502_354

def RemovedBody502_356 : StackLang.HolProg 64 :=
.seq RemovedBody502_336 RemovedBody502_355

def RemovedBody502_357 : StackLang.HolProg 64 :=
.seq RemovedBody502_335 RemovedBody502_356

def RemovedBody502_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody502_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody502_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody502_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody502_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody502_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody502_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody502_365 : StackLang.HolProg 64 :=
.seq RemovedBody502_363 RemovedBody502_364

def RemovedBody502_366 : StackLang.HolProg 64 :=
.seq RemovedBody502_362 RemovedBody502_365

def RemovedBody502_367 : StackLang.HolProg 64 :=
.seq RemovedBody502_361 RemovedBody502_366

def RemovedBody502_368 : StackLang.HolProg 64 :=
.seq RemovedBody502_360 RemovedBody502_367

def RemovedBody502_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody502_370 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody502_371 : StackLang.HolProg 64 :=
.seq RemovedBody502_369 RemovedBody502_370

def RemovedBody502_372 : StackLang.HolProg 64 :=
.call (some (RemovedBody502_368, 0, 502, 12)) (Sum.inl 490) (some (RemovedBody502_371, 502, 13))

def RemovedBody502_373 : StackLang.HolProg 64 :=
.seq RemovedBody502_359 RemovedBody502_372

def RemovedBody502_374 : StackLang.HolProg 64 :=
.seq RemovedBody502_358 RemovedBody502_373

def RemovedBody502_375 : StackLang.HolProg 64 :=
.seq RemovedBody502_357 RemovedBody502_374

def RemovedBody502_376 : StackLang.HolProg 64 :=
.seq RemovedBody502_328 RemovedBody502_375

def RemovedBody502_377 : StackLang.HolProg 64 :=
.seq RemovedBody502_325 RemovedBody502_376

def RemovedBody502_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody502_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody502_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody502_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def RemovedBody502_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody502_383 : StackLang.HolProg 64 :=
.seq RemovedBody502_381 RemovedBody502_382

def RemovedBody502_384 : StackLang.HolProg 64 :=
.seq RemovedBody502_380 RemovedBody502_383

def RemovedBody502_385 : StackLang.HolProg 64 :=
.seq RemovedBody502_379 RemovedBody502_384

def RemovedBody502_386 : StackLang.HolProg 64 :=
.seq RemovedBody502_378 RemovedBody502_385

def RemovedBody502_387 : StackLang.HolProg 64 :=
.seq RemovedBody502_377 RemovedBody502_386

def RemovedBody502_388 : StackLang.HolProg 64 :=
.seq RemovedBody502_324 RemovedBody502_387

def RemovedBody502_389 : StackLang.HolProg 64 :=
.seq RemovedBody502_323 RemovedBody502_388

def RemovedBody502_390 : StackLang.HolProg 64 :=
.seq RemovedBody502_322 RemovedBody502_389

def RemovedBody502_391 : StackLang.HolProg 64 :=
.seq RemovedBody502_321 RemovedBody502_390

def RemovedBody502_392 : StackLang.HolProg 64 :=
.seq RemovedBody502_268 RemovedBody502_391

def RemovedBody502_393 : StackLang.HolProg 64 :=
.seq RemovedBody502_267 RemovedBody502_392

def RemovedBody502_394 : StackLang.HolProg 64 :=
.seq RemovedBody502_266 RemovedBody502_393

def RemovedBody502_395 : StackLang.HolProg 64 :=
.seq RemovedBody502_213 RemovedBody502_394

def RemovedBody502_396 : StackLang.HolProg 64 :=
.seq RemovedBody502_212 RemovedBody502_395

def RemovedBody502_397 : StackLang.HolProg 64 :=
.seq RemovedBody502_211 RemovedBody502_396

def RemovedBody502_398 : StackLang.HolProg 64 :=
.seq RemovedBody502_130 RemovedBody502_397

def RemovedBody502_399 : StackLang.HolProg 64 :=
.seq RemovedBody502_123 RemovedBody502_398

def RemovedBody502_400 : StackLang.HolProg 64 :=
.seq RemovedBody502_122 RemovedBody502_399

def RemovedBody502_401 : StackLang.HolProg 64 :=
.seq RemovedBody502_121 RemovedBody502_400

def RemovedBody502_402 : StackLang.HolProg 64 :=
.seq RemovedBody502_68 RemovedBody502_401

def RemovedBody502_403 : StackLang.HolProg 64 :=
.seq RemovedBody502_61 RemovedBody502_402

def RemovedBody502_404 : StackLang.HolProg 64 :=
.seq RemovedBody502_60 RemovedBody502_403

def RemovedBody502_405 : StackLang.HolProg 64 :=
.seq RemovedBody502_7 RemovedBody502_404

def RemovedBody502_406 : StackLang.HolProg 64 :=
.seq RemovedBody502_6 RemovedBody502_405

def Removed502 : Nat × StackLang.HolProg 64 := (502, RemovedBody502_406)
theorem Removed502_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc502 = Removed502 := by
  kernel_rfl
#print axioms Removed502_eq
end InitECandidate.Proofs.BackendStages
