import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc548
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody548_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody548_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody548_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody548_3 : StackLang.HolProg 64 :=
.seq RemovedBody548_1 RemovedBody548_2

def RemovedBody548_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody548_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody548_3 RemovedBody548_4

def RemovedBody548_6 : StackLang.HolProg 64 :=
.seq RemovedBody548_0 RemovedBody548_5

def RemovedBody548_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody548_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody548_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1829#64)

def RemovedBody548_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody548_11 : StackLang.HolProg 64 :=
.seq RemovedBody548_9 RemovedBody548_10

def RemovedBody548_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody548_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody548_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody548_15 : StackLang.HolProg 64 :=
.seq RemovedBody548_13 RemovedBody548_14

def RemovedBody548_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody548_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody548_15 RemovedBody548_16

def RemovedBody548_18 : StackLang.HolProg 64 :=
.seq RemovedBody548_12 RemovedBody548_17

def RemovedBody548_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody548_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody548_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 548 3

def RemovedBody548_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody548_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody548_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody548_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody548_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody548_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody548_28 : StackLang.HolProg 64 :=
.seq RemovedBody548_26 RemovedBody548_27

def RemovedBody548_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody548_30 : StackLang.HolProg 64 :=
.seq RemovedBody548_28 RemovedBody548_29

def RemovedBody548_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody548_32 : StackLang.HolProg 64 :=
.seq RemovedBody548_30 RemovedBody548_31

def RemovedBody548_33 : StackLang.HolProg 64 :=
.seq RemovedBody548_25 RemovedBody548_32

def RemovedBody548_34 : StackLang.HolProg 64 :=
.seq RemovedBody548_24 RemovedBody548_33

def RemovedBody548_35 : StackLang.HolProg 64 :=
.seq RemovedBody548_23 RemovedBody548_34

def RemovedBody548_36 : StackLang.HolProg 64 :=
.seq RemovedBody548_22 RemovedBody548_35

def RemovedBody548_37 : StackLang.HolProg 64 :=
.seq RemovedBody548_21 RemovedBody548_36

def RemovedBody548_38 : StackLang.HolProg 64 :=
.seq RemovedBody548_20 RemovedBody548_37

def RemovedBody548_39 : StackLang.HolProg 64 :=
.seq RemovedBody548_19 RemovedBody548_38

def RemovedBody548_40 : StackLang.HolProg 64 :=
.seq RemovedBody548_18 RemovedBody548_39

def RemovedBody548_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody548_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody548_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody548_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody548_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody548_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody548_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody548_48 : StackLang.HolProg 64 :=
.seq RemovedBody548_46 RemovedBody548_47

def RemovedBody548_49 : StackLang.HolProg 64 :=
.seq RemovedBody548_45 RemovedBody548_48

def RemovedBody548_50 : StackLang.HolProg 64 :=
.seq RemovedBody548_44 RemovedBody548_49

def RemovedBody548_51 : StackLang.HolProg 64 :=
.seq RemovedBody548_43 RemovedBody548_50

def RemovedBody548_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody548_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody548_54 : StackLang.HolProg 64 :=
.seq RemovedBody548_52 RemovedBody548_53

def RemovedBody548_55 : StackLang.HolProg 64 :=
.call (some (RemovedBody548_51, 0, 548, 2)) (Sum.inl 392) (some (RemovedBody548_54, 548, 3))

def RemovedBody548_56 : StackLang.HolProg 64 :=
.seq RemovedBody548_42 RemovedBody548_55

def RemovedBody548_57 : StackLang.HolProg 64 :=
.seq RemovedBody548_41 RemovedBody548_56

def RemovedBody548_58 : StackLang.HolProg 64 :=
.seq RemovedBody548_40 RemovedBody548_57

def RemovedBody548_59 : StackLang.HolProg 64 :=
.seq RemovedBody548_11 RemovedBody548_58

def RemovedBody548_60 : StackLang.HolProg 64 :=
.seq RemovedBody548_8 RemovedBody548_59

def RemovedBody548_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody548_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody548_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody548_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody548_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def RemovedBody548_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 176#64))

def RemovedBody548_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody548_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1#64)

def RemovedBody548_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody548_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody548_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1830#64)

def RemovedBody548_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody548_73 : StackLang.HolProg 64 :=
.seq RemovedBody548_71 RemovedBody548_72

def RemovedBody548_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody548_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody548_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody548_77 : StackLang.HolProg 64 :=
.seq RemovedBody548_75 RemovedBody548_76

def RemovedBody548_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody548_79 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody548_77 RemovedBody548_78

def RemovedBody548_80 : StackLang.HolProg 64 :=
.seq RemovedBody548_74 RemovedBody548_79

def RemovedBody548_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody548_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody548_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 548 5

def RemovedBody548_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody548_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody548_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody548_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody548_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody548_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody548_90 : StackLang.HolProg 64 :=
.seq RemovedBody548_88 RemovedBody548_89

def RemovedBody548_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody548_92 : StackLang.HolProg 64 :=
.seq RemovedBody548_90 RemovedBody548_91

def RemovedBody548_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody548_94 : StackLang.HolProg 64 :=
.seq RemovedBody548_92 RemovedBody548_93

def RemovedBody548_95 : StackLang.HolProg 64 :=
.seq RemovedBody548_87 RemovedBody548_94

def RemovedBody548_96 : StackLang.HolProg 64 :=
.seq RemovedBody548_86 RemovedBody548_95

def RemovedBody548_97 : StackLang.HolProg 64 :=
.seq RemovedBody548_85 RemovedBody548_96

def RemovedBody548_98 : StackLang.HolProg 64 :=
.seq RemovedBody548_84 RemovedBody548_97

def RemovedBody548_99 : StackLang.HolProg 64 :=
.seq RemovedBody548_83 RemovedBody548_98

def RemovedBody548_100 : StackLang.HolProg 64 :=
.seq RemovedBody548_82 RemovedBody548_99

def RemovedBody548_101 : StackLang.HolProg 64 :=
.seq RemovedBody548_81 RemovedBody548_100

def RemovedBody548_102 : StackLang.HolProg 64 :=
.seq RemovedBody548_80 RemovedBody548_101

def RemovedBody548_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody548_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody548_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody548_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody548_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody548_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody548_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody548_110 : StackLang.HolProg 64 :=
.seq RemovedBody548_108 RemovedBody548_109

def RemovedBody548_111 : StackLang.HolProg 64 :=
.seq RemovedBody548_107 RemovedBody548_110

def RemovedBody548_112 : StackLang.HolProg 64 :=
.seq RemovedBody548_106 RemovedBody548_111

def RemovedBody548_113 : StackLang.HolProg 64 :=
.seq RemovedBody548_105 RemovedBody548_112

def RemovedBody548_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody548_115 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody548_116 : StackLang.HolProg 64 :=
.seq RemovedBody548_114 RemovedBody548_115

def RemovedBody548_117 : StackLang.HolProg 64 :=
.call (some (RemovedBody548_113, 0, 548, 4)) (Sum.inl 192) (some (RemovedBody548_116, 548, 5))

def RemovedBody548_118 : StackLang.HolProg 64 :=
.seq RemovedBody548_104 RemovedBody548_117

def RemovedBody548_119 : StackLang.HolProg 64 :=
.seq RemovedBody548_103 RemovedBody548_118

def RemovedBody548_120 : StackLang.HolProg 64 :=
.seq RemovedBody548_102 RemovedBody548_119

def RemovedBody548_121 : StackLang.HolProg 64 :=
.seq RemovedBody548_73 RemovedBody548_120

def RemovedBody548_122 : StackLang.HolProg 64 :=
.seq RemovedBody548_70 RemovedBody548_121

def RemovedBody548_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody548_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody548_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody548_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody548_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody548_128 : StackLang.HolProg 64 :=
.seq RemovedBody548_126 RemovedBody548_127

def RemovedBody548_129 : StackLang.HolProg 64 :=
.seq RemovedBody548_125 RemovedBody548_128

def RemovedBody548_130 : StackLang.HolProg 64 :=
.seq RemovedBody548_124 RemovedBody548_129

def RemovedBody548_131 : StackLang.HolProg 64 :=
.seq RemovedBody548_123 RemovedBody548_130

def RemovedBody548_132 : StackLang.HolProg 64 :=
.seq RemovedBody548_122 RemovedBody548_131

def RemovedBody548_133 : StackLang.HolProg 64 :=
.seq RemovedBody548_69 RemovedBody548_132

def RemovedBody548_134 : StackLang.HolProg 64 :=
.seq RemovedBody548_68 RemovedBody548_133

def RemovedBody548_135 : StackLang.HolProg 64 :=
.seq RemovedBody548_67 RemovedBody548_134

def RemovedBody548_136 : StackLang.HolProg 64 :=
.seq RemovedBody548_66 RemovedBody548_135

def RemovedBody548_137 : StackLang.HolProg 64 :=
.seq RemovedBody548_65 RemovedBody548_136

def RemovedBody548_138 : StackLang.HolProg 64 :=
.seq RemovedBody548_64 RemovedBody548_137

def RemovedBody548_139 : StackLang.HolProg 64 :=
.seq RemovedBody548_63 RemovedBody548_138

def RemovedBody548_140 : StackLang.HolProg 64 :=
.seq RemovedBody548_62 RemovedBody548_139

def RemovedBody548_141 : StackLang.HolProg 64 :=
.seq RemovedBody548_61 RemovedBody548_140

def RemovedBody548_142 : StackLang.HolProg 64 :=
.seq RemovedBody548_60 RemovedBody548_141

def RemovedBody548_143 : StackLang.HolProg 64 :=
.seq RemovedBody548_7 RemovedBody548_142

def RemovedBody548_144 : StackLang.HolProg 64 :=
.seq RemovedBody548_6 RemovedBody548_143

def Removed548 : Nat × StackLang.HolProg 64 := (548, RemovedBody548_144)
theorem Removed548_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc548 = Removed548 := by
  kernel_rfl
#print axioms Removed548_eq
end InitECandidate.Proofs.BackendStages
