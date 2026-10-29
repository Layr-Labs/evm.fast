import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc829
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody829_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody829_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody829_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody829_3 : StackLang.HolProg 64 :=
.seq RemovedBody829_1 RemovedBody829_2

def RemovedBody829_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody829_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody829_3 RemovedBody829_4

def RemovedBody829_6 : StackLang.HolProg 64 :=
.seq RemovedBody829_0 RemovedBody829_5

def RemovedBody829_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody829_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 18#64)

def RemovedBody829_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody829_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody829_11 : StackLang.HolProg 64 :=
.seq RemovedBody829_9 RemovedBody829_10

def RemovedBody829_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody829_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4121#64)

def RemovedBody829_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody829_15 : StackLang.HolProg 64 :=
.seq RemovedBody829_13 RemovedBody829_14

def RemovedBody829_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody829_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody829_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody829_19 : StackLang.HolProg 64 :=
.seq RemovedBody829_17 RemovedBody829_18

def RemovedBody829_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody829_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody829_19 RemovedBody829_20

def RemovedBody829_22 : StackLang.HolProg 64 :=
.seq RemovedBody829_16 RemovedBody829_21

def RemovedBody829_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody829_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody829_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 829 3

def RemovedBody829_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody829_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody829_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody829_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody829_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody829_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody829_32 : StackLang.HolProg 64 :=
.seq RemovedBody829_30 RemovedBody829_31

def RemovedBody829_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody829_34 : StackLang.HolProg 64 :=
.seq RemovedBody829_32 RemovedBody829_33

def RemovedBody829_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody829_36 : StackLang.HolProg 64 :=
.seq RemovedBody829_34 RemovedBody829_35

def RemovedBody829_37 : StackLang.HolProg 64 :=
.seq RemovedBody829_29 RemovedBody829_36

def RemovedBody829_38 : StackLang.HolProg 64 :=
.seq RemovedBody829_28 RemovedBody829_37

def RemovedBody829_39 : StackLang.HolProg 64 :=
.seq RemovedBody829_27 RemovedBody829_38

def RemovedBody829_40 : StackLang.HolProg 64 :=
.seq RemovedBody829_26 RemovedBody829_39

def RemovedBody829_41 : StackLang.HolProg 64 :=
.seq RemovedBody829_25 RemovedBody829_40

def RemovedBody829_42 : StackLang.HolProg 64 :=
.seq RemovedBody829_24 RemovedBody829_41

def RemovedBody829_43 : StackLang.HolProg 64 :=
.seq RemovedBody829_23 RemovedBody829_42

def RemovedBody829_44 : StackLang.HolProg 64 :=
.seq RemovedBody829_22 RemovedBody829_43

def RemovedBody829_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody829_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody829_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody829_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody829_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody829_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody829_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody829_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody829_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody829_54 : StackLang.HolProg 64 :=
.seq RemovedBody829_52 RemovedBody829_53

def RemovedBody829_55 : StackLang.HolProg 64 :=
.seq RemovedBody829_51 RemovedBody829_54

def RemovedBody829_56 : StackLang.HolProg 64 :=
.seq RemovedBody829_50 RemovedBody829_55

def RemovedBody829_57 : StackLang.HolProg 64 :=
.seq RemovedBody829_49 RemovedBody829_56

def RemovedBody829_58 : StackLang.HolProg 64 :=
.seq RemovedBody829_48 RemovedBody829_57

def RemovedBody829_59 : StackLang.HolProg 64 :=
.seq RemovedBody829_47 RemovedBody829_58

def RemovedBody829_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody829_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody829_62 : StackLang.HolProg 64 :=
.seq RemovedBody829_60 RemovedBody829_61

def RemovedBody829_63 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody829_64 : StackLang.HolProg 64 :=
.seq RemovedBody829_62 RemovedBody829_63

def RemovedBody829_65 : StackLang.HolProg 64 :=
.call (some (RemovedBody829_59, 0, 829, 2)) (Sum.inl 80) (some (RemovedBody829_64, 829, 3))

def RemovedBody829_66 : StackLang.HolProg 64 :=
.seq RemovedBody829_46 RemovedBody829_65

def RemovedBody829_67 : StackLang.HolProg 64 :=
.seq RemovedBody829_45 RemovedBody829_66

def RemovedBody829_68 : StackLang.HolProg 64 :=
.seq RemovedBody829_44 RemovedBody829_67

def RemovedBody829_69 : StackLang.HolProg 64 :=
.seq RemovedBody829_15 RemovedBody829_68

def RemovedBody829_70 : StackLang.HolProg 64 :=
.seq RemovedBody829_12 RemovedBody829_69

def RemovedBody829_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody829_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody829_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody829_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody829_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody829_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody829_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody829_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def RemovedBody829_79 : StackLang.HolProg 64 :=
.seq RemovedBody829_77 RemovedBody829_78

def RemovedBody829_80 : StackLang.HolProg 64 :=
.seq RemovedBody829_76 RemovedBody829_79

def RemovedBody829_81 : StackLang.HolProg 64 :=
.seq RemovedBody829_75 RemovedBody829_80

def RemovedBody829_82 : StackLang.HolProg 64 :=
.seq RemovedBody829_74 RemovedBody829_81

def RemovedBody829_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody829_84 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody829_82 RemovedBody829_83

def RemovedBody829_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody829_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody829_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody829_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18#64)))

def RemovedBody829_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedBody829_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody829_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 19#64)))

def RemovedBody829_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody829_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody829_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1#64)

def RemovedBody829_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody829_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody829_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody829_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody829_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 18#64)

def RemovedBody829_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody829_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody829_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def RemovedBody829_103 : StackLang.HolProg 64 :=
.seq RemovedBody829_101 RemovedBody829_102

def RemovedBody829_104 : StackLang.HolProg 64 :=
.seq RemovedBody829_100 RemovedBody829_103

def RemovedBody829_105 : StackLang.HolProg 64 :=
.seq RemovedBody829_99 RemovedBody829_104

def RemovedBody829_106 : StackLang.HolProg 64 :=
.seq RemovedBody829_98 RemovedBody829_105

def RemovedBody829_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody829_108 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody829_106 RemovedBody829_107

def RemovedBody829_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody829_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody829_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody829_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody829_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody829_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def RemovedBody829_115 : StackLang.HolProg 64 :=
.seq RemovedBody829_113 RemovedBody829_114

def RemovedBody829_116 : StackLang.HolProg 64 :=
.seq RemovedBody829_112 RemovedBody829_115

def RemovedBody829_117 : StackLang.HolProg 64 :=
.seq RemovedBody829_111 RemovedBody829_116

def RemovedBody829_118 : StackLang.HolProg 64 :=
.seq RemovedBody829_110 RemovedBody829_117

def RemovedBody829_119 : StackLang.HolProg 64 :=
.seq RemovedBody829_109 RemovedBody829_118

def RemovedBody829_120 : StackLang.HolProg 64 :=
.seq RemovedBody829_108 RemovedBody829_119

def RemovedBody829_121 : StackLang.HolProg 64 :=
.seq RemovedBody829_97 RemovedBody829_120

def RemovedBody829_122 : StackLang.HolProg 64 :=
.seq RemovedBody829_96 RemovedBody829_121

def RemovedBody829_123 : StackLang.HolProg 64 :=
.seq RemovedBody829_95 RemovedBody829_122

def RemovedBody829_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody829_125 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody829_123 RemovedBody829_124

def RemovedBody829_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody829_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody829_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody829_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody829_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody829_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody829_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody829_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody829_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def RemovedBody829_135 : StackLang.HolProg 64 :=
.seq RemovedBody829_133 RemovedBody829_134

def RemovedBody829_136 : StackLang.HolProg 64 :=
.seq RemovedBody829_132 RemovedBody829_135

def RemovedBody829_137 : StackLang.HolProg 64 :=
.seq RemovedBody829_131 RemovedBody829_136

def RemovedBody829_138 : StackLang.HolProg 64 :=
.seq RemovedBody829_130 RemovedBody829_137

def RemovedBody829_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody829_140 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody829_138 RemovedBody829_139

def RemovedBody829_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody829_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody829_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody829_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 1#64)

def RemovedBody829_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody829_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody829_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody829_148 : StackLang.HolProg 64 :=
.seq RemovedBody829_146 RemovedBody829_147

def RemovedBody829_149 : StackLang.HolProg 64 :=
.seq RemovedBody829_145 RemovedBody829_148

def RemovedBody829_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody829_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody829_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody829_153 : StackLang.HolProg 64 :=
.seq RemovedBody829_151 RemovedBody829_152

def RemovedBody829_154 : StackLang.HolProg 64 :=
.seq RemovedBody829_150 RemovedBody829_153

def RemovedBody829_155 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody829_149 RemovedBody829_154

def RemovedBody829_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody829_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 17#64)

def RemovedBody829_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody829_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody829_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 1#64)

def RemovedBody829_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody829_162 : StackLang.HolProg 64 :=
.seq RemovedBody829_160 RemovedBody829_161

def RemovedBody829_163 : StackLang.HolProg 64 :=
.seq RemovedBody829_159 RemovedBody829_162

def RemovedBody829_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody829_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def RemovedBody829_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody829_167 : StackLang.HolProg 64 :=
.seq RemovedBody829_165 RemovedBody829_166

def RemovedBody829_168 : StackLang.HolProg 64 :=
.seq RemovedBody829_164 RemovedBody829_167

def RemovedBody829_169 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) RemovedBody829_163 RemovedBody829_168

def RemovedBody829_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody829_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody829_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody829_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody829_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody829_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def RemovedBody829_176 : StackLang.HolProg 64 :=
.seq RemovedBody829_174 RemovedBody829_175

def RemovedBody829_177 : StackLang.HolProg 64 :=
.seq RemovedBody829_173 RemovedBody829_176

def RemovedBody829_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody829_179 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 0#64) RemovedBody829_177 RemovedBody829_178

def RemovedBody829_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody829_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody829_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody829_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody829_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def RemovedBody829_185 : StackLang.HolProg 64 :=
.seq RemovedBody829_183 RemovedBody829_184

def RemovedBody829_186 : StackLang.HolProg 64 :=
.seq RemovedBody829_182 RemovedBody829_185

def RemovedBody829_187 : StackLang.HolProg 64 :=
.seq RemovedBody829_181 RemovedBody829_186

def RemovedBody829_188 : StackLang.HolProg 64 :=
.seq RemovedBody829_180 RemovedBody829_187

def RemovedBody829_189 : StackLang.HolProg 64 :=
.seq RemovedBody829_179 RemovedBody829_188

def RemovedBody829_190 : StackLang.HolProg 64 :=
.seq RemovedBody829_172 RemovedBody829_189

def RemovedBody829_191 : StackLang.HolProg 64 :=
.seq RemovedBody829_171 RemovedBody829_190

def RemovedBody829_192 : StackLang.HolProg 64 :=
.seq RemovedBody829_170 RemovedBody829_191

def RemovedBody829_193 : StackLang.HolProg 64 :=
.seq RemovedBody829_169 RemovedBody829_192

def RemovedBody829_194 : StackLang.HolProg 64 :=
.seq RemovedBody829_158 RemovedBody829_193

def RemovedBody829_195 : StackLang.HolProg 64 :=
.seq RemovedBody829_157 RemovedBody829_194

def RemovedBody829_196 : StackLang.HolProg 64 :=
.seq RemovedBody829_156 RemovedBody829_195

def RemovedBody829_197 : StackLang.HolProg 64 :=
.seq RemovedBody829_155 RemovedBody829_196

def RemovedBody829_198 : StackLang.HolProg 64 :=
.seq RemovedBody829_144 RemovedBody829_197

def RemovedBody829_199 : StackLang.HolProg 64 :=
.seq RemovedBody829_143 RemovedBody829_198

def RemovedBody829_200 : StackLang.HolProg 64 :=
.seq RemovedBody829_142 RemovedBody829_199

def RemovedBody829_201 : StackLang.HolProg 64 :=
.seq RemovedBody829_141 RemovedBody829_200

def RemovedBody829_202 : StackLang.HolProg 64 :=
.seq RemovedBody829_140 RemovedBody829_201

def RemovedBody829_203 : StackLang.HolProg 64 :=
.seq RemovedBody829_129 RemovedBody829_202

def RemovedBody829_204 : StackLang.HolProg 64 :=
.seq RemovedBody829_128 RemovedBody829_203

def RemovedBody829_205 : StackLang.HolProg 64 :=
.seq RemovedBody829_127 RemovedBody829_204

def RemovedBody829_206 : StackLang.HolProg 64 :=
.seq RemovedBody829_126 RemovedBody829_205

def RemovedBody829_207 : StackLang.HolProg 64 :=
.seq RemovedBody829_125 RemovedBody829_206

def RemovedBody829_208 : StackLang.HolProg 64 :=
.seq RemovedBody829_94 RemovedBody829_207

def RemovedBody829_209 : StackLang.HolProg 64 :=
.seq RemovedBody829_93 RemovedBody829_208

def RemovedBody829_210 : StackLang.HolProg 64 :=
.seq RemovedBody829_92 RemovedBody829_209

def RemovedBody829_211 : StackLang.HolProg 64 :=
.seq RemovedBody829_91 RemovedBody829_210

def RemovedBody829_212 : StackLang.HolProg 64 :=
.seq RemovedBody829_90 RemovedBody829_211

def RemovedBody829_213 : StackLang.HolProg 64 :=
.seq RemovedBody829_89 RemovedBody829_212

def RemovedBody829_214 : StackLang.HolProg 64 :=
.seq RemovedBody829_88 RemovedBody829_213

def RemovedBody829_215 : StackLang.HolProg 64 :=
.seq RemovedBody829_87 RemovedBody829_214

def RemovedBody829_216 : StackLang.HolProg 64 :=
.seq RemovedBody829_86 RemovedBody829_215

def RemovedBody829_217 : StackLang.HolProg 64 :=
.seq RemovedBody829_85 RemovedBody829_216

def RemovedBody829_218 : StackLang.HolProg 64 :=
.seq RemovedBody829_84 RemovedBody829_217

def RemovedBody829_219 : StackLang.HolProg 64 :=
.seq RemovedBody829_73 RemovedBody829_218

def RemovedBody829_220 : StackLang.HolProg 64 :=
.seq RemovedBody829_72 RemovedBody829_219

def RemovedBody829_221 : StackLang.HolProg 64 :=
.seq RemovedBody829_71 RemovedBody829_220

def RemovedBody829_222 : StackLang.HolProg 64 :=
.seq RemovedBody829_70 RemovedBody829_221

def RemovedBody829_223 : StackLang.HolProg 64 :=
.seq RemovedBody829_11 RemovedBody829_222

def RemovedBody829_224 : StackLang.HolProg 64 :=
.seq RemovedBody829_8 RemovedBody829_223

def RemovedBody829_225 : StackLang.HolProg 64 :=
.seq RemovedBody829_7 RemovedBody829_224

def RemovedBody829_226 : StackLang.HolProg 64 :=
.seq RemovedBody829_6 RemovedBody829_225

def Removed829 : Nat × StackLang.HolProg 64 := (829, RemovedBody829_226)
theorem Removed829_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc829 = Removed829 := by
  kernel_rfl
#print axioms Removed829_eq
end InitECandidate.Proofs.BackendStages
