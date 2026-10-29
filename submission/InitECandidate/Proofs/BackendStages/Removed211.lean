import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc211
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody211_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody211_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody211_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody211_3 : StackLang.HolProg 64 :=
.seq RemovedBody211_1 RemovedBody211_2

def RemovedBody211_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody211_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody211_3 RemovedBody211_4

def RemovedBody211_6 : StackLang.HolProg 64 :=
.seq RemovedBody211_0 RemovedBody211_5

def RemovedBody211_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody211_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 13 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody211_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 14 0#64)

def RemovedBody211_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody211_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody211_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 13 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def RemovedBody211_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody211_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody211_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody211_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody211_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 13 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def RemovedBody211_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody211_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody211_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody211_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody211_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 13 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def RemovedBody211_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody211_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody211_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody211_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody211_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody211_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody211_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody211_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody211_31 : StackLang.HolProg 64 :=
.seq RemovedBody211_29 RemovedBody211_30

def RemovedBody211_32 : StackLang.HolProg 64 :=
.seq RemovedBody211_28 RemovedBody211_31

def RemovedBody211_33 : StackLang.HolProg 64 :=
.seq RemovedBody211_27 RemovedBody211_32

def RemovedBody211_34 : StackLang.HolProg 64 :=
.seq RemovedBody211_26 RemovedBody211_33

def RemovedBody211_35 : StackLang.HolProg 64 :=
.seq RemovedBody211_25 RemovedBody211_34

def RemovedBody211_36 : StackLang.HolProg 64 :=
.seq RemovedBody211_24 RemovedBody211_35

def RemovedBody211_37 : StackLang.HolProg 64 :=
.seq RemovedBody211_23 RemovedBody211_36

def RemovedBody211_38 : StackLang.HolProg 64 :=
.seq RemovedBody211_22 RemovedBody211_37

def RemovedBody211_39 : StackLang.HolProg 64 :=
.seq RemovedBody211_21 RemovedBody211_38

def RemovedBody211_40 : StackLang.HolProg 64 :=
.seq RemovedBody211_20 RemovedBody211_39

def RemovedBody211_41 : StackLang.HolProg 64 :=
.seq RemovedBody211_19 RemovedBody211_40

def RemovedBody211_42 : StackLang.HolProg 64 :=
.seq RemovedBody211_18 RemovedBody211_41

def RemovedBody211_43 : StackLang.HolProg 64 :=
.seq RemovedBody211_17 RemovedBody211_42

def RemovedBody211_44 : StackLang.HolProg 64 :=
.seq RemovedBody211_16 RemovedBody211_43

def RemovedBody211_45 : StackLang.HolProg 64 :=
.seq RemovedBody211_15 RemovedBody211_44

def RemovedBody211_46 : StackLang.HolProg 64 :=
.seq RemovedBody211_14 RemovedBody211_45

def RemovedBody211_47 : StackLang.HolProg 64 :=
.seq RemovedBody211_13 RemovedBody211_46

def RemovedBody211_48 : StackLang.HolProg 64 :=
.seq RemovedBody211_12 RemovedBody211_47

def RemovedBody211_49 : StackLang.HolProg 64 :=
.seq RemovedBody211_11 RemovedBody211_48

def RemovedBody211_50 : StackLang.HolProg 64 :=
.seq RemovedBody211_10 RemovedBody211_49

def RemovedBody211_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody211_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody211_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody211_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody211_55 : StackLang.HolProg 64 :=
.seq RemovedBody211_53 RemovedBody211_54

def RemovedBody211_56 : StackLang.HolProg 64 :=
.seq RemovedBody211_52 RemovedBody211_55

def RemovedBody211_57 : StackLang.HolProg 64 :=
.seq RemovedBody211_51 RemovedBody211_56

def RemovedBody211_58 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 13 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 14) RemovedBody211_50 RemovedBody211_57

def RemovedBody211_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody211_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody211_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def RemovedBody211_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def RemovedBody211_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def RemovedBody211_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def RemovedBody211_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody211_66 : StackLang.HolProg 64 :=
.seq RemovedBody211_64 RemovedBody211_65

def RemovedBody211_67 : StackLang.HolProg 64 :=
.seq RemovedBody211_63 RemovedBody211_66

def RemovedBody211_68 : StackLang.HolProg 64 :=
.seq RemovedBody211_62 RemovedBody211_67

def RemovedBody211_69 : StackLang.HolProg 64 :=
.seq RemovedBody211_61 RemovedBody211_68

def RemovedBody211_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody211_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 270#64)

def RemovedBody211_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody211_73 : StackLang.HolProg 64 :=
.seq RemovedBody211_71 RemovedBody211_72

def RemovedBody211_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody211_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody211_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody211_77 : StackLang.HolProg 64 :=
.seq RemovedBody211_75 RemovedBody211_76

def RemovedBody211_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody211_79 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody211_77 RemovedBody211_78

def RemovedBody211_80 : StackLang.HolProg 64 :=
.seq RemovedBody211_74 RemovedBody211_79

def RemovedBody211_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody211_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody211_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 211 3

def RemovedBody211_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody211_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody211_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody211_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody211_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody211_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody211_90 : StackLang.HolProg 64 :=
.seq RemovedBody211_88 RemovedBody211_89

def RemovedBody211_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody211_92 : StackLang.HolProg 64 :=
.seq RemovedBody211_90 RemovedBody211_91

def RemovedBody211_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody211_94 : StackLang.HolProg 64 :=
.seq RemovedBody211_92 RemovedBody211_93

def RemovedBody211_95 : StackLang.HolProg 64 :=
.seq RemovedBody211_87 RemovedBody211_94

def RemovedBody211_96 : StackLang.HolProg 64 :=
.seq RemovedBody211_86 RemovedBody211_95

def RemovedBody211_97 : StackLang.HolProg 64 :=
.seq RemovedBody211_85 RemovedBody211_96

def RemovedBody211_98 : StackLang.HolProg 64 :=
.seq RemovedBody211_84 RemovedBody211_97

def RemovedBody211_99 : StackLang.HolProg 64 :=
.seq RemovedBody211_83 RemovedBody211_98

def RemovedBody211_100 : StackLang.HolProg 64 :=
.seq RemovedBody211_82 RemovedBody211_99

def RemovedBody211_101 : StackLang.HolProg 64 :=
.seq RemovedBody211_81 RemovedBody211_100

def RemovedBody211_102 : StackLang.HolProg 64 :=
.seq RemovedBody211_80 RemovedBody211_101

def RemovedBody211_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody211_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody211_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody211_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody211_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody211_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody211_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody211_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody211_111 : StackLang.HolProg 64 :=
.seq RemovedBody211_109 RemovedBody211_110

def RemovedBody211_112 : StackLang.HolProg 64 :=
.seq RemovedBody211_108 RemovedBody211_111

def RemovedBody211_113 : StackLang.HolProg 64 :=
.seq RemovedBody211_107 RemovedBody211_112

def RemovedBody211_114 : StackLang.HolProg 64 :=
.seq RemovedBody211_106 RemovedBody211_113

def RemovedBody211_115 : StackLang.HolProg 64 :=
.seq RemovedBody211_105 RemovedBody211_114

def RemovedBody211_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody211_117 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody211_118 : StackLang.HolProg 64 :=
.seq RemovedBody211_116 RemovedBody211_117

def RemovedBody211_119 : StackLang.HolProg 64 :=
.call (some (RemovedBody211_115, 0, 211, 2)) (Sum.inl 115) (some (RemovedBody211_118, 211, 3))

def RemovedBody211_120 : StackLang.HolProg 64 :=
.seq RemovedBody211_104 RemovedBody211_119

def RemovedBody211_121 : StackLang.HolProg 64 :=
.seq RemovedBody211_103 RemovedBody211_120

def RemovedBody211_122 : StackLang.HolProg 64 :=
.seq RemovedBody211_102 RemovedBody211_121

def RemovedBody211_123 : StackLang.HolProg 64 :=
.seq RemovedBody211_73 RemovedBody211_122

def RemovedBody211_124 : StackLang.HolProg 64 :=
.seq RemovedBody211_70 RemovedBody211_123

def RemovedBody211_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody211_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody211_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def RemovedBody211_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody211_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody211_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody211_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody211_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def RemovedBody211_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody211_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody211_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody211_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody211_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def RemovedBody211_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody211_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody211_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody211_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody211_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def RemovedBody211_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody211_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody211_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody211_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody211_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody211_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 6

def RemovedBody211_149 : StackLang.HolProg 64 :=
.seq RemovedBody211_147 RemovedBody211_148

def RemovedBody211_150 : StackLang.HolProg 64 :=
.seq RemovedBody211_146 RemovedBody211_149

def RemovedBody211_151 : StackLang.HolProg 64 :=
.seq RemovedBody211_145 RemovedBody211_150

def RemovedBody211_152 : StackLang.HolProg 64 :=
.seq RemovedBody211_144 RemovedBody211_151

def RemovedBody211_153 : StackLang.HolProg 64 :=
.seq RemovedBody211_143 RemovedBody211_152

def RemovedBody211_154 : StackLang.HolProg 64 :=
.seq RemovedBody211_142 RemovedBody211_153

def RemovedBody211_155 : StackLang.HolProg 64 :=
.seq RemovedBody211_141 RemovedBody211_154

def RemovedBody211_156 : StackLang.HolProg 64 :=
.seq RemovedBody211_140 RemovedBody211_155

def RemovedBody211_157 : StackLang.HolProg 64 :=
.seq RemovedBody211_139 RemovedBody211_156

def RemovedBody211_158 : StackLang.HolProg 64 :=
.seq RemovedBody211_138 RemovedBody211_157

def RemovedBody211_159 : StackLang.HolProg 64 :=
.seq RemovedBody211_137 RemovedBody211_158

def RemovedBody211_160 : StackLang.HolProg 64 :=
.seq RemovedBody211_136 RemovedBody211_159

def RemovedBody211_161 : StackLang.HolProg 64 :=
.seq RemovedBody211_135 RemovedBody211_160

def RemovedBody211_162 : StackLang.HolProg 64 :=
.seq RemovedBody211_134 RemovedBody211_161

def RemovedBody211_163 : StackLang.HolProg 64 :=
.seq RemovedBody211_133 RemovedBody211_162

def RemovedBody211_164 : StackLang.HolProg 64 :=
.seq RemovedBody211_132 RemovedBody211_163

def RemovedBody211_165 : StackLang.HolProg 64 :=
.seq RemovedBody211_131 RemovedBody211_164

def RemovedBody211_166 : StackLang.HolProg 64 :=
.seq RemovedBody211_130 RemovedBody211_165

def RemovedBody211_167 : StackLang.HolProg 64 :=
.seq RemovedBody211_129 RemovedBody211_166

def RemovedBody211_168 : StackLang.HolProg 64 :=
.seq RemovedBody211_128 RemovedBody211_167

def RemovedBody211_169 : StackLang.HolProg 64 :=
.seq RemovedBody211_127 RemovedBody211_168

def RemovedBody211_170 : StackLang.HolProg 64 :=
.seq RemovedBody211_126 RemovedBody211_169

def RemovedBody211_171 : StackLang.HolProg 64 :=
.seq RemovedBody211_125 RemovedBody211_170

def RemovedBody211_172 : StackLang.HolProg 64 :=
.seq RemovedBody211_124 RemovedBody211_171

def RemovedBody211_173 : StackLang.HolProg 64 :=
.seq RemovedBody211_69 RemovedBody211_172

def RemovedBody211_174 : StackLang.HolProg 64 :=
.seq RemovedBody211_60 RemovedBody211_173

def RemovedBody211_175 : StackLang.HolProg 64 :=
.seq RemovedBody211_59 RemovedBody211_174

def RemovedBody211_176 : StackLang.HolProg 64 :=
.seq RemovedBody211_58 RemovedBody211_175

def RemovedBody211_177 : StackLang.HolProg 64 :=
.seq RemovedBody211_9 RemovedBody211_176

def RemovedBody211_178 : StackLang.HolProg 64 :=
.seq RemovedBody211_8 RemovedBody211_177

def RemovedBody211_179 : StackLang.HolProg 64 :=
.seq RemovedBody211_7 RemovedBody211_178

def RemovedBody211_180 : StackLang.HolProg 64 :=
.seq RemovedBody211_6 RemovedBody211_179

def Removed211 : Nat × StackLang.HolProg 64 := (211, RemovedBody211_180)
theorem Removed211_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc211 = Removed211 := by
  kernel_rfl
#print axioms Removed211_eq
end InitECandidate.Proofs.BackendStages
