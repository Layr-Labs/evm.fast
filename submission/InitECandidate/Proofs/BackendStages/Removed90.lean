import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc90
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody90_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody90_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody90_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody90_3 : StackLang.HolProg 64 :=
.seq RemovedBody90_1 RemovedBody90_2

def RemovedBody90_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody90_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody90_3 RemovedBody90_4

def RemovedBody90_6 : StackLang.HolProg 64 :=
.seq RemovedBody90_0 RemovedBody90_5

def RemovedBody90_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody90_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1073741832#64)

def RemovedBody90_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.shMemOp Flapjack.WordMemOp.load 2
  (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64)

def RemovedBody90_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1073741808#64)

def RemovedBody90_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody90_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody90_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def RemovedBody90_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody90_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody90_16 : StackLang.HolProg 64 :=
.seq RemovedBody90_14 RemovedBody90_15

def RemovedBody90_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody90_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 38#64)

def RemovedBody90_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody90_20 : StackLang.HolProg 64 :=
.seq RemovedBody90_18 RemovedBody90_19

def RemovedBody90_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody90_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody90_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody90_24 : StackLang.HolProg 64 :=
.seq RemovedBody90_22 RemovedBody90_23

def RemovedBody90_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody90_26 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody90_24 RemovedBody90_25

def RemovedBody90_27 : StackLang.HolProg 64 :=
.seq RemovedBody90_21 RemovedBody90_26

def RemovedBody90_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody90_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody90_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 90 3

def RemovedBody90_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody90_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody90_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody90_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody90_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody90_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody90_37 : StackLang.HolProg 64 :=
.seq RemovedBody90_35 RemovedBody90_36

def RemovedBody90_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody90_39 : StackLang.HolProg 64 :=
.seq RemovedBody90_37 RemovedBody90_38

def RemovedBody90_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody90_41 : StackLang.HolProg 64 :=
.seq RemovedBody90_39 RemovedBody90_40

def RemovedBody90_42 : StackLang.HolProg 64 :=
.seq RemovedBody90_34 RemovedBody90_41

def RemovedBody90_43 : StackLang.HolProg 64 :=
.seq RemovedBody90_33 RemovedBody90_42

def RemovedBody90_44 : StackLang.HolProg 64 :=
.seq RemovedBody90_32 RemovedBody90_43

def RemovedBody90_45 : StackLang.HolProg 64 :=
.seq RemovedBody90_31 RemovedBody90_44

def RemovedBody90_46 : StackLang.HolProg 64 :=
.seq RemovedBody90_30 RemovedBody90_45

def RemovedBody90_47 : StackLang.HolProg 64 :=
.seq RemovedBody90_29 RemovedBody90_46

def RemovedBody90_48 : StackLang.HolProg 64 :=
.seq RemovedBody90_28 RemovedBody90_47

def RemovedBody90_49 : StackLang.HolProg 64 :=
.seq RemovedBody90_27 RemovedBody90_48

def RemovedBody90_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody90_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody90_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody90_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody90_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody90_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody90_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody90_57 : StackLang.HolProg 64 :=
.seq RemovedBody90_55 RemovedBody90_56

def RemovedBody90_58 : StackLang.HolProg 64 :=
.seq RemovedBody90_54 RemovedBody90_57

def RemovedBody90_59 : StackLang.HolProg 64 :=
.seq RemovedBody90_53 RemovedBody90_58

def RemovedBody90_60 : StackLang.HolProg 64 :=
.seq RemovedBody90_52 RemovedBody90_59

def RemovedBody90_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody90_62 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody90_63 : StackLang.HolProg 64 :=
.seq RemovedBody90_61 RemovedBody90_62

def RemovedBody90_64 : StackLang.HolProg 64 :=
.call (some (RemovedBody90_60, 0, 90, 2)) (Sum.inl 66) (some (RemovedBody90_63, 90, 3))

def RemovedBody90_65 : StackLang.HolProg 64 :=
.seq RemovedBody90_51 RemovedBody90_64

def RemovedBody90_66 : StackLang.HolProg 64 :=
.seq RemovedBody90_50 RemovedBody90_65

def RemovedBody90_67 : StackLang.HolProg 64 :=
.seq RemovedBody90_49 RemovedBody90_66

def RemovedBody90_68 : StackLang.HolProg 64 :=
.seq RemovedBody90_20 RemovedBody90_67

def RemovedBody90_69 : StackLang.HolProg 64 :=
.seq RemovedBody90_17 RemovedBody90_68

def RemovedBody90_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody90_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody90_72 : StackLang.HolProg 64 :=
.seq RemovedBody90_70 RemovedBody90_71

def RemovedBody90_73 : StackLang.HolProg 64 :=
.seq RemovedBody90_69 RemovedBody90_72

def RemovedBody90_74 : StackLang.HolProg 64 :=
.seq RemovedBody90_16 RemovedBody90_73

def RemovedBody90_75 : StackLang.HolProg 64 :=
.seq RemovedBody90_13 RemovedBody90_74

def RemovedBody90_76 : StackLang.HolProg 64 :=
.seq RemovedBody90_12 RemovedBody90_75

def RemovedBody90_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody90_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody90_79 : StackLang.HolProg 64 :=
.seq RemovedBody90_77 RemovedBody90_78

def RemovedBody90_80 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody90_76 RemovedBody90_79

def RemovedBody90_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody90_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody90_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody90_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody90_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody90_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 39#64)

def RemovedBody90_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody90_88 : StackLang.HolProg 64 :=
.seq RemovedBody90_86 RemovedBody90_87

def RemovedBody90_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody90_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody90_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody90_92 : StackLang.HolProg 64 :=
.seq RemovedBody90_90 RemovedBody90_91

def RemovedBody90_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody90_94 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody90_92 RemovedBody90_93

def RemovedBody90_95 : StackLang.HolProg 64 :=
.seq RemovedBody90_89 RemovedBody90_94

def RemovedBody90_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody90_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody90_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 90 5

def RemovedBody90_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody90_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody90_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody90_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody90_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody90_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody90_105 : StackLang.HolProg 64 :=
.seq RemovedBody90_103 RemovedBody90_104

def RemovedBody90_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody90_107 : StackLang.HolProg 64 :=
.seq RemovedBody90_105 RemovedBody90_106

def RemovedBody90_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody90_109 : StackLang.HolProg 64 :=
.seq RemovedBody90_107 RemovedBody90_108

def RemovedBody90_110 : StackLang.HolProg 64 :=
.seq RemovedBody90_102 RemovedBody90_109

def RemovedBody90_111 : StackLang.HolProg 64 :=
.seq RemovedBody90_101 RemovedBody90_110

def RemovedBody90_112 : StackLang.HolProg 64 :=
.seq RemovedBody90_100 RemovedBody90_111

def RemovedBody90_113 : StackLang.HolProg 64 :=
.seq RemovedBody90_99 RemovedBody90_112

def RemovedBody90_114 : StackLang.HolProg 64 :=
.seq RemovedBody90_98 RemovedBody90_113

def RemovedBody90_115 : StackLang.HolProg 64 :=
.seq RemovedBody90_97 RemovedBody90_114

def RemovedBody90_116 : StackLang.HolProg 64 :=
.seq RemovedBody90_96 RemovedBody90_115

def RemovedBody90_117 : StackLang.HolProg 64 :=
.seq RemovedBody90_95 RemovedBody90_116

def RemovedBody90_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody90_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody90_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody90_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody90_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody90_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody90_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody90_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody90_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody90_127 : StackLang.HolProg 64 :=
.seq RemovedBody90_125 RemovedBody90_126

def RemovedBody90_128 : StackLang.HolProg 64 :=
.seq RemovedBody90_124 RemovedBody90_127

def RemovedBody90_129 : StackLang.HolProg 64 :=
.seq RemovedBody90_123 RemovedBody90_128

def RemovedBody90_130 : StackLang.HolProg 64 :=
.seq RemovedBody90_122 RemovedBody90_129

def RemovedBody90_131 : StackLang.HolProg 64 :=
.seq RemovedBody90_121 RemovedBody90_130

def RemovedBody90_132 : StackLang.HolProg 64 :=
.seq RemovedBody90_120 RemovedBody90_131

def RemovedBody90_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody90_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody90_135 : StackLang.HolProg 64 :=
.seq RemovedBody90_133 RemovedBody90_134

def RemovedBody90_136 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody90_137 : StackLang.HolProg 64 :=
.seq RemovedBody90_135 RemovedBody90_136

def RemovedBody90_138 : StackLang.HolProg 64 :=
.call (some (RemovedBody90_132, 0, 90, 4)) (Sum.inl 68) (some (RemovedBody90_137, 90, 5))

def RemovedBody90_139 : StackLang.HolProg 64 :=
.seq RemovedBody90_119 RemovedBody90_138

def RemovedBody90_140 : StackLang.HolProg 64 :=
.seq RemovedBody90_118 RemovedBody90_139

def RemovedBody90_141 : StackLang.HolProg 64 :=
.seq RemovedBody90_117 RemovedBody90_140

def RemovedBody90_142 : StackLang.HolProg 64 :=
.seq RemovedBody90_88 RemovedBody90_141

def RemovedBody90_143 : StackLang.HolProg 64 :=
.seq RemovedBody90_85 RemovedBody90_142

def RemovedBody90_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody90_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody90_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody90_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody90_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody90_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody90_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody90_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody90_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1073741840#64)

def RemovedBody90_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody90_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.shMemOp Flapjack.WordMemOp.load 3
  (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64)

def RemovedBody90_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody90_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody90_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody90_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def RemovedBody90_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody90_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody90_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody90_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody90_163 : StackLang.HolProg 64 :=
.seq RemovedBody90_161 RemovedBody90_162

def RemovedBody90_164 : StackLang.HolProg 64 :=
.seq RemovedBody90_160 RemovedBody90_163

def RemovedBody90_165 : StackLang.HolProg 64 :=
.seq RemovedBody90_159 RemovedBody90_164

def RemovedBody90_166 : StackLang.HolProg 64 :=
.seq RemovedBody90_158 RemovedBody90_165

def RemovedBody90_167 : StackLang.HolProg 64 :=
.seq RemovedBody90_157 RemovedBody90_166

def RemovedBody90_168 : StackLang.HolProg 64 :=
.seq RemovedBody90_156 RemovedBody90_167

def RemovedBody90_169 : StackLang.HolProg 64 :=
.seq RemovedBody90_155 RemovedBody90_168

def RemovedBody90_170 : StackLang.HolProg 64 :=
.seq RemovedBody90_154 RemovedBody90_169

def RemovedBody90_171 : StackLang.HolProg 64 :=
.seq RemovedBody90_153 RemovedBody90_170

def RemovedBody90_172 : StackLang.HolProg 64 :=
.seq RemovedBody90_152 RemovedBody90_171

def RemovedBody90_173 : StackLang.HolProg 64 :=
.seq RemovedBody90_151 RemovedBody90_172

def RemovedBody90_174 : StackLang.HolProg 64 :=
.seq RemovedBody90_150 RemovedBody90_173

def RemovedBody90_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody90_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody90_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody90_178 : StackLang.HolProg 64 :=
.seq RemovedBody90_176 RemovedBody90_177

def RemovedBody90_179 : StackLang.HolProg 64 :=
.seq RemovedBody90_175 RemovedBody90_178

def RemovedBody90_180 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody90_174 RemovedBody90_179

def RemovedBody90_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody90_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody90_183 : StackLang.HolProg 64 :=
.seq RemovedBody90_181 RemovedBody90_182

def RemovedBody90_184 : StackLang.HolProg 64 :=
.seq RemovedBody90_180 RemovedBody90_183

def RemovedBody90_185 : StackLang.HolProg 64 :=
.seq RemovedBody90_149 RemovedBody90_184

def RemovedBody90_186 : StackLang.HolProg 64 :=
.loop RemovedBody90_185

def RemovedBody90_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody90_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody90_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody90_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def RemovedBody90_191 : StackLang.HolProg 64 :=
.seq RemovedBody90_189 RemovedBody90_190

def RemovedBody90_192 : StackLang.HolProg 64 :=
.seq RemovedBody90_188 RemovedBody90_191

def RemovedBody90_193 : StackLang.HolProg 64 :=
.seq RemovedBody90_187 RemovedBody90_192

def RemovedBody90_194 : StackLang.HolProg 64 :=
.seq RemovedBody90_186 RemovedBody90_193

def RemovedBody90_195 : StackLang.HolProg 64 :=
.seq RemovedBody90_148 RemovedBody90_194

def RemovedBody90_196 : StackLang.HolProg 64 :=
.seq RemovedBody90_147 RemovedBody90_195

def RemovedBody90_197 : StackLang.HolProg 64 :=
.seq RemovedBody90_146 RemovedBody90_196

def RemovedBody90_198 : StackLang.HolProg 64 :=
.seq RemovedBody90_145 RemovedBody90_197

def RemovedBody90_199 : StackLang.HolProg 64 :=
.seq RemovedBody90_144 RemovedBody90_198

def RemovedBody90_200 : StackLang.HolProg 64 :=
.seq RemovedBody90_143 RemovedBody90_199

def RemovedBody90_201 : StackLang.HolProg 64 :=
.seq RemovedBody90_84 RemovedBody90_200

def RemovedBody90_202 : StackLang.HolProg 64 :=
.seq RemovedBody90_83 RemovedBody90_201

def RemovedBody90_203 : StackLang.HolProg 64 :=
.seq RemovedBody90_82 RemovedBody90_202

def RemovedBody90_204 : StackLang.HolProg 64 :=
.seq RemovedBody90_81 RemovedBody90_203

def RemovedBody90_205 : StackLang.HolProg 64 :=
.seq RemovedBody90_80 RemovedBody90_204

def RemovedBody90_206 : StackLang.HolProg 64 :=
.seq RemovedBody90_11 RemovedBody90_205

def RemovedBody90_207 : StackLang.HolProg 64 :=
.seq RemovedBody90_10 RemovedBody90_206

def RemovedBody90_208 : StackLang.HolProg 64 :=
.seq RemovedBody90_9 RemovedBody90_207

def RemovedBody90_209 : StackLang.HolProg 64 :=
.seq RemovedBody90_8 RemovedBody90_208

def RemovedBody90_210 : StackLang.HolProg 64 :=
.seq RemovedBody90_7 RemovedBody90_209

def RemovedBody90_211 : StackLang.HolProg 64 :=
.seq RemovedBody90_6 RemovedBody90_210

def Removed90 : Nat × StackLang.HolProg 64 := (90, RemovedBody90_211)
theorem Removed90_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc90 = Removed90 := by
  kernel_rfl
#print axioms Removed90_eq
end InitECandidate.Proofs.BackendStages
