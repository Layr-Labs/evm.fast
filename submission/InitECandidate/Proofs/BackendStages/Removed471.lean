import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc471
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody471_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody471_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody471_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody471_3 : StackLang.HolProg 64 :=
.seq RemovedBody471_1 RemovedBody471_2

def RemovedBody471_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody471_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody471_3 RemovedBody471_4

def RemovedBody471_6 : StackLang.HolProg 64 :=
.seq RemovedBody471_0 RemovedBody471_5

def RemovedBody471_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody471_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody471_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody471_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody471_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 18446744073709551360#64))

def RemovedBody471_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 72#64))

def RemovedBody471_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody471_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 64#64))

def RemovedBody471_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody471_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody471_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody471_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 72#64)))

def RemovedBody471_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody471_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody471_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody471_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def RemovedBody471_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody471_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody471_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody471_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody471_27 : StackLang.HolProg 64 :=
.seq RemovedBody471_25 RemovedBody471_26

def RemovedBody471_28 : StackLang.HolProg 64 :=
.seq RemovedBody471_24 RemovedBody471_27

def RemovedBody471_29 : StackLang.HolProg 64 :=
.seq RemovedBody471_23 RemovedBody471_28

def RemovedBody471_30 : StackLang.HolProg 64 :=
.seq RemovedBody471_22 RemovedBody471_29

def RemovedBody471_31 : StackLang.HolProg 64 :=
.seq RemovedBody471_21 RemovedBody471_30

def RemovedBody471_32 : StackLang.HolProg 64 :=
.seq RemovedBody471_20 RemovedBody471_31

def RemovedBody471_33 : StackLang.HolProg 64 :=
.seq RemovedBody471_19 RemovedBody471_32

def RemovedBody471_34 : StackLang.HolProg 64 :=
.seq RemovedBody471_18 RemovedBody471_33

def RemovedBody471_35 : StackLang.HolProg 64 :=
.seq RemovedBody471_17 RemovedBody471_34

def RemovedBody471_36 : StackLang.HolProg 64 :=
.seq RemovedBody471_16 RemovedBody471_35

def RemovedBody471_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody471_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody471_39 : StackLang.HolProg 64 :=
.seq RemovedBody471_37 RemovedBody471_38

def RemovedBody471_40 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody471_36 RemovedBody471_39

def RemovedBody471_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody471_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody471_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody471_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody471_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody471_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody471_47 : StackLang.HolProg 64 :=
.seq RemovedBody471_45 RemovedBody471_46

def RemovedBody471_48 : StackLang.HolProg 64 :=
.seq RemovedBody471_44 RemovedBody471_47

def RemovedBody471_49 : StackLang.HolProg 64 :=
.seq RemovedBody471_43 RemovedBody471_48

def RemovedBody471_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody471_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1494#64)

def RemovedBody471_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody471_53 : StackLang.HolProg 64 :=
.seq RemovedBody471_51 RemovedBody471_52

def RemovedBody471_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody471_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody471_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody471_57 : StackLang.HolProg 64 :=
.seq RemovedBody471_55 RemovedBody471_56

def RemovedBody471_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody471_59 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody471_57 RemovedBody471_58

def RemovedBody471_60 : StackLang.HolProg 64 :=
.seq RemovedBody471_54 RemovedBody471_59

def RemovedBody471_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody471_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody471_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 471 3

def RemovedBody471_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody471_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody471_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody471_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody471_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody471_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody471_70 : StackLang.HolProg 64 :=
.seq RemovedBody471_68 RemovedBody471_69

def RemovedBody471_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody471_72 : StackLang.HolProg 64 :=
.seq RemovedBody471_70 RemovedBody471_71

def RemovedBody471_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody471_74 : StackLang.HolProg 64 :=
.seq RemovedBody471_72 RemovedBody471_73

def RemovedBody471_75 : StackLang.HolProg 64 :=
.seq RemovedBody471_67 RemovedBody471_74

def RemovedBody471_76 : StackLang.HolProg 64 :=
.seq RemovedBody471_66 RemovedBody471_75

def RemovedBody471_77 : StackLang.HolProg 64 :=
.seq RemovedBody471_65 RemovedBody471_76

def RemovedBody471_78 : StackLang.HolProg 64 :=
.seq RemovedBody471_64 RemovedBody471_77

def RemovedBody471_79 : StackLang.HolProg 64 :=
.seq RemovedBody471_63 RemovedBody471_78

def RemovedBody471_80 : StackLang.HolProg 64 :=
.seq RemovedBody471_62 RemovedBody471_79

def RemovedBody471_81 : StackLang.HolProg 64 :=
.seq RemovedBody471_61 RemovedBody471_80

def RemovedBody471_82 : StackLang.HolProg 64 :=
.seq RemovedBody471_60 RemovedBody471_81

def RemovedBody471_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody471_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody471_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody471_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody471_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody471_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody471_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody471_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody471_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody471_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody471_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody471_94 : StackLang.HolProg 64 :=
.seq RemovedBody471_92 RemovedBody471_93

def RemovedBody471_95 : StackLang.HolProg 64 :=
.seq RemovedBody471_91 RemovedBody471_94

def RemovedBody471_96 : StackLang.HolProg 64 :=
.seq RemovedBody471_90 RemovedBody471_95

def RemovedBody471_97 : StackLang.HolProg 64 :=
.seq RemovedBody471_89 RemovedBody471_96

def RemovedBody471_98 : StackLang.HolProg 64 :=
.seq RemovedBody471_88 RemovedBody471_97

def RemovedBody471_99 : StackLang.HolProg 64 :=
.seq RemovedBody471_87 RemovedBody471_98

def RemovedBody471_100 : StackLang.HolProg 64 :=
.seq RemovedBody471_86 RemovedBody471_99

def RemovedBody471_101 : StackLang.HolProg 64 :=
.seq RemovedBody471_85 RemovedBody471_100

def RemovedBody471_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody471_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody471_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody471_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody471_106 : StackLang.HolProg 64 :=
.seq RemovedBody471_104 RemovedBody471_105

def RemovedBody471_107 : StackLang.HolProg 64 :=
.seq RemovedBody471_103 RemovedBody471_106

def RemovedBody471_108 : StackLang.HolProg 64 :=
.seq RemovedBody471_102 RemovedBody471_107

def RemovedBody471_109 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody471_110 : StackLang.HolProg 64 :=
.seq RemovedBody471_108 RemovedBody471_109

def RemovedBody471_111 : StackLang.HolProg 64 :=
.call (some (RemovedBody471_101, 0, 471, 2)) (Sum.inl 463) (some (RemovedBody471_110, 471, 3))

def RemovedBody471_112 : StackLang.HolProg 64 :=
.seq RemovedBody471_84 RemovedBody471_111

def RemovedBody471_113 : StackLang.HolProg 64 :=
.seq RemovedBody471_83 RemovedBody471_112

def RemovedBody471_114 : StackLang.HolProg 64 :=
.seq RemovedBody471_82 RemovedBody471_113

def RemovedBody471_115 : StackLang.HolProg 64 :=
.seq RemovedBody471_53 RemovedBody471_114

def RemovedBody471_116 : StackLang.HolProg 64 :=
.seq RemovedBody471_50 RemovedBody471_115

def RemovedBody471_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody471_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody471_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody471_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody471_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody471_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody471_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody471_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody471_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def RemovedBody471_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 72#64)))

def RemovedBody471_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody471_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody471_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def RemovedBody471_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody471_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def RemovedBody471_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def RemovedBody471_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody471_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody471_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody471_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def RemovedBody471_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody471_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def RemovedBody471_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def RemovedBody471_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody471_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 192#64))

def RemovedBody471_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody471_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody471_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody471_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody471_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody471_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody471_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def RemovedBody471_149 : StackLang.HolProg 64 :=
.seq RemovedBody471_147 RemovedBody471_148

def RemovedBody471_150 : StackLang.HolProg 64 :=
.seq RemovedBody471_146 RemovedBody471_149

def RemovedBody471_151 : StackLang.HolProg 64 :=
.seq RemovedBody471_145 RemovedBody471_150

def RemovedBody471_152 : StackLang.HolProg 64 :=
.seq RemovedBody471_144 RemovedBody471_151

def RemovedBody471_153 : StackLang.HolProg 64 :=
.seq RemovedBody471_143 RemovedBody471_152

def RemovedBody471_154 : StackLang.HolProg 64 :=
.seq RemovedBody471_142 RemovedBody471_153

def RemovedBody471_155 : StackLang.HolProg 64 :=
.seq RemovedBody471_141 RemovedBody471_154

def RemovedBody471_156 : StackLang.HolProg 64 :=
.seq RemovedBody471_140 RemovedBody471_155

def RemovedBody471_157 : StackLang.HolProg 64 :=
.seq RemovedBody471_139 RemovedBody471_156

def RemovedBody471_158 : StackLang.HolProg 64 :=
.seq RemovedBody471_138 RemovedBody471_157

def RemovedBody471_159 : StackLang.HolProg 64 :=
.seq RemovedBody471_137 RemovedBody471_158

def RemovedBody471_160 : StackLang.HolProg 64 :=
.seq RemovedBody471_136 RemovedBody471_159

def RemovedBody471_161 : StackLang.HolProg 64 :=
.seq RemovedBody471_135 RemovedBody471_160

def RemovedBody471_162 : StackLang.HolProg 64 :=
.seq RemovedBody471_134 RemovedBody471_161

def RemovedBody471_163 : StackLang.HolProg 64 :=
.seq RemovedBody471_133 RemovedBody471_162

def RemovedBody471_164 : StackLang.HolProg 64 :=
.seq RemovedBody471_132 RemovedBody471_163

def RemovedBody471_165 : StackLang.HolProg 64 :=
.seq RemovedBody471_131 RemovedBody471_164

def RemovedBody471_166 : StackLang.HolProg 64 :=
.seq RemovedBody471_130 RemovedBody471_165

def RemovedBody471_167 : StackLang.HolProg 64 :=
.seq RemovedBody471_129 RemovedBody471_166

def RemovedBody471_168 : StackLang.HolProg 64 :=
.seq RemovedBody471_128 RemovedBody471_167

def RemovedBody471_169 : StackLang.HolProg 64 :=
.seq RemovedBody471_127 RemovedBody471_168

def RemovedBody471_170 : StackLang.HolProg 64 :=
.seq RemovedBody471_126 RemovedBody471_169

def RemovedBody471_171 : StackLang.HolProg 64 :=
.seq RemovedBody471_125 RemovedBody471_170

def RemovedBody471_172 : StackLang.HolProg 64 :=
.seq RemovedBody471_124 RemovedBody471_171

def RemovedBody471_173 : StackLang.HolProg 64 :=
.seq RemovedBody471_123 RemovedBody471_172

def RemovedBody471_174 : StackLang.HolProg 64 :=
.seq RemovedBody471_122 RemovedBody471_173

def RemovedBody471_175 : StackLang.HolProg 64 :=
.seq RemovedBody471_121 RemovedBody471_174

def RemovedBody471_176 : StackLang.HolProg 64 :=
.seq RemovedBody471_120 RemovedBody471_175

def RemovedBody471_177 : StackLang.HolProg 64 :=
.seq RemovedBody471_119 RemovedBody471_176

def RemovedBody471_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody471_179 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody471_177 RemovedBody471_178

def RemovedBody471_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody471_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody471_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 4#64)

def RemovedBody471_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody471_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody471_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def RemovedBody471_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody471_187 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody471_188 : StackLang.HolProg 64 :=
.seq RemovedBody471_186 RemovedBody471_187

def RemovedBody471_189 : StackLang.HolProg 64 :=
.seq RemovedBody471_185 RemovedBody471_188

def RemovedBody471_190 : StackLang.HolProg 64 :=
.seq RemovedBody471_184 RemovedBody471_189

def RemovedBody471_191 : StackLang.HolProg 64 :=
.seq RemovedBody471_183 RemovedBody471_190

def RemovedBody471_192 : StackLang.HolProg 64 :=
.seq RemovedBody471_182 RemovedBody471_191

def RemovedBody471_193 : StackLang.HolProg 64 :=
.seq RemovedBody471_181 RemovedBody471_192

def RemovedBody471_194 : StackLang.HolProg 64 :=
.seq RemovedBody471_180 RemovedBody471_193

def RemovedBody471_195 : StackLang.HolProg 64 :=
.seq RemovedBody471_179 RemovedBody471_194

def RemovedBody471_196 : StackLang.HolProg 64 :=
.seq RemovedBody471_118 RemovedBody471_195

def RemovedBody471_197 : StackLang.HolProg 64 :=
.seq RemovedBody471_117 RemovedBody471_196

def RemovedBody471_198 : StackLang.HolProg 64 :=
.seq RemovedBody471_116 RemovedBody471_197

def RemovedBody471_199 : StackLang.HolProg 64 :=
.seq RemovedBody471_49 RemovedBody471_198

def RemovedBody471_200 : StackLang.HolProg 64 :=
.seq RemovedBody471_42 RemovedBody471_199

def RemovedBody471_201 : StackLang.HolProg 64 :=
.seq RemovedBody471_41 RemovedBody471_200

def RemovedBody471_202 : StackLang.HolProg 64 :=
.seq RemovedBody471_40 RemovedBody471_201

def RemovedBody471_203 : StackLang.HolProg 64 :=
.seq RemovedBody471_15 RemovedBody471_202

def RemovedBody471_204 : StackLang.HolProg 64 :=
.seq RemovedBody471_14 RemovedBody471_203

def RemovedBody471_205 : StackLang.HolProg 64 :=
.seq RemovedBody471_13 RemovedBody471_204

def RemovedBody471_206 : StackLang.HolProg 64 :=
.seq RemovedBody471_12 RemovedBody471_205

def RemovedBody471_207 : StackLang.HolProg 64 :=
.seq RemovedBody471_11 RemovedBody471_206

def RemovedBody471_208 : StackLang.HolProg 64 :=
.seq RemovedBody471_10 RemovedBody471_207

def RemovedBody471_209 : StackLang.HolProg 64 :=
.seq RemovedBody471_9 RemovedBody471_208

def RemovedBody471_210 : StackLang.HolProg 64 :=
.seq RemovedBody471_8 RemovedBody471_209

def RemovedBody471_211 : StackLang.HolProg 64 :=
.seq RemovedBody471_7 RemovedBody471_210

def RemovedBody471_212 : StackLang.HolProg 64 :=
.seq RemovedBody471_6 RemovedBody471_211

def Removed471 : Nat × StackLang.HolProg 64 := (471, RemovedBody471_212)
theorem Removed471_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc471 = Removed471 := by
  kernel_rfl
#print axioms Removed471_eq
end InitECandidate.Proofs.BackendStages
