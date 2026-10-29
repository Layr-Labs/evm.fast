import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc164
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody164_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 72#64)))

def RemovedBody164_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody164_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody164_3 : StackLang.HolProg 64 :=
.seq RemovedBody164_1 RemovedBody164_2

def RemovedBody164_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody164_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody164_3 RemovedBody164_4

def RemovedBody164_6 : StackLang.HolProg 64 :=
.seq RemovedBody164_0 RemovedBody164_5

def RemovedBody164_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody164_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def RemovedBody164_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody164_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody164_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 1#64)

def RemovedBody164_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody164_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody164_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody164_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody164_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody164_17 : StackLang.HolProg 64 :=
.seq RemovedBody164_15 RemovedBody164_16

def RemovedBody164_18 : StackLang.HolProg 64 :=
.seq RemovedBody164_14 RemovedBody164_17

def RemovedBody164_19 : StackLang.HolProg 64 :=
.seq RemovedBody164_13 RemovedBody164_18

def RemovedBody164_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody164_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def RemovedBody164_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody164_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody164_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody164_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody164_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody164_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody164_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def RemovedBody164_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody164_30 : StackLang.HolProg 64 :=
.seq RemovedBody164_28 RemovedBody164_29

def RemovedBody164_31 : StackLang.HolProg 64 :=
.seq RemovedBody164_27 RemovedBody164_30

def RemovedBody164_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody164_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody164_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedBody164_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody164_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def RemovedBody164_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody164_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def RemovedBody164_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody164_40 : StackLang.HolProg 64 :=
.seq RemovedBody164_38 RemovedBody164_39

def RemovedBody164_41 : StackLang.HolProg 64 :=
.seq RemovedBody164_37 RemovedBody164_40

def RemovedBody164_42 : StackLang.HolProg 64 :=
.seq RemovedBody164_36 RemovedBody164_41

def RemovedBody164_43 : StackLang.HolProg 64 :=
.seq RemovedBody164_35 RemovedBody164_42

def RemovedBody164_44 : StackLang.HolProg 64 :=
.seq RemovedBody164_34 RemovedBody164_43

def RemovedBody164_45 : StackLang.HolProg 64 :=
.seq RemovedBody164_33 RemovedBody164_44

def RemovedBody164_46 : StackLang.HolProg 64 :=
.seq RemovedBody164_32 RemovedBody164_45

def RemovedBody164_47 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody164_31 RemovedBody164_46

def RemovedBody164_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody164_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody164_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody164_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody164_52 : StackLang.HolProg 64 :=
.seq RemovedBody164_50 RemovedBody164_51

def RemovedBody164_53 : StackLang.HolProg 64 :=
.seq RemovedBody164_49 RemovedBody164_52

def RemovedBody164_54 : StackLang.HolProg 64 :=
.seq RemovedBody164_48 RemovedBody164_53

def RemovedBody164_55 : StackLang.HolProg 64 :=
.seq RemovedBody164_47 RemovedBody164_54

def RemovedBody164_56 : StackLang.HolProg 64 :=
.seq RemovedBody164_26 RemovedBody164_55

def RemovedBody164_57 : StackLang.HolProg 64 :=
.seq RemovedBody164_25 RemovedBody164_56

def RemovedBody164_58 : StackLang.HolProg 64 :=
.seq RemovedBody164_24 RemovedBody164_57

def RemovedBody164_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody164_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody164_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody164_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody164_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody164_64 : StackLang.HolProg 64 :=
.seq RemovedBody164_62 RemovedBody164_63

def RemovedBody164_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody164_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody164_67 : StackLang.HolProg 64 :=
.seq RemovedBody164_65 RemovedBody164_66

def RemovedBody164_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody164_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody164_70 : StackLang.HolProg 64 :=
.seq RemovedBody164_68 RemovedBody164_69

def RemovedBody164_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody164_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody164_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody164_74 : StackLang.HolProg 64 :=
.seq RemovedBody164_72 RemovedBody164_73

def RemovedBody164_75 : StackLang.HolProg 64 :=
.seq RemovedBody164_71 RemovedBody164_74

def RemovedBody164_76 : StackLang.HolProg 64 :=
.seq RemovedBody164_70 RemovedBody164_75

def RemovedBody164_77 : StackLang.HolProg 64 :=
.seq RemovedBody164_67 RemovedBody164_76

def RemovedBody164_78 : StackLang.HolProg 64 :=
.seq RemovedBody164_64 RemovedBody164_77

def RemovedBody164_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody164_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 176#64)

def RemovedBody164_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody164_82 : StackLang.HolProg 64 :=
.seq RemovedBody164_80 RemovedBody164_81

def RemovedBody164_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody164_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody164_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody164_86 : StackLang.HolProg 64 :=
.seq RemovedBody164_84 RemovedBody164_85

def RemovedBody164_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody164_88 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody164_86 RemovedBody164_87

def RemovedBody164_89 : StackLang.HolProg 64 :=
.seq RemovedBody164_83 RemovedBody164_88

def RemovedBody164_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody164_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody164_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 164 3

def RemovedBody164_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody164_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody164_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody164_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody164_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody164_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody164_99 : StackLang.HolProg 64 :=
.seq RemovedBody164_97 RemovedBody164_98

def RemovedBody164_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody164_101 : StackLang.HolProg 64 :=
.seq RemovedBody164_99 RemovedBody164_100

def RemovedBody164_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody164_103 : StackLang.HolProg 64 :=
.seq RemovedBody164_101 RemovedBody164_102

def RemovedBody164_104 : StackLang.HolProg 64 :=
.seq RemovedBody164_96 RemovedBody164_103

def RemovedBody164_105 : StackLang.HolProg 64 :=
.seq RemovedBody164_95 RemovedBody164_104

def RemovedBody164_106 : StackLang.HolProg 64 :=
.seq RemovedBody164_94 RemovedBody164_105

def RemovedBody164_107 : StackLang.HolProg 64 :=
.seq RemovedBody164_93 RemovedBody164_106

def RemovedBody164_108 : StackLang.HolProg 64 :=
.seq RemovedBody164_92 RemovedBody164_107

def RemovedBody164_109 : StackLang.HolProg 64 :=
.seq RemovedBody164_91 RemovedBody164_108

def RemovedBody164_110 : StackLang.HolProg 64 :=
.seq RemovedBody164_90 RemovedBody164_109

def RemovedBody164_111 : StackLang.HolProg 64 :=
.seq RemovedBody164_89 RemovedBody164_110

def RemovedBody164_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody164_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody164_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody164_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody164_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody164_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody164_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody164_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody164_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody164_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody164_122 : StackLang.HolProg 64 :=
.seq RemovedBody164_120 RemovedBody164_121

def RemovedBody164_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody164_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody164_125 : StackLang.HolProg 64 :=
.seq RemovedBody164_123 RemovedBody164_124

def RemovedBody164_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody164_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody164_128 : StackLang.HolProg 64 :=
.seq RemovedBody164_126 RemovedBody164_127

def RemovedBody164_129 : StackLang.HolProg 64 :=
.seq RemovedBody164_125 RemovedBody164_128

def RemovedBody164_130 : StackLang.HolProg 64 :=
.seq RemovedBody164_122 RemovedBody164_129

def RemovedBody164_131 : StackLang.HolProg 64 :=
.seq RemovedBody164_119 RemovedBody164_130

def RemovedBody164_132 : StackLang.HolProg 64 :=
.seq RemovedBody164_118 RemovedBody164_131

def RemovedBody164_133 : StackLang.HolProg 64 :=
.seq RemovedBody164_117 RemovedBody164_132

def RemovedBody164_134 : StackLang.HolProg 64 :=
.seq RemovedBody164_116 RemovedBody164_133

def RemovedBody164_135 : StackLang.HolProg 64 :=
.seq RemovedBody164_115 RemovedBody164_134

def RemovedBody164_136 : StackLang.HolProg 64 :=
.seq RemovedBody164_114 RemovedBody164_135

def RemovedBody164_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody164_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody164_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody164_140 : StackLang.HolProg 64 :=
.seq RemovedBody164_138 RemovedBody164_139

def RemovedBody164_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody164_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody164_143 : StackLang.HolProg 64 :=
.seq RemovedBody164_141 RemovedBody164_142

def RemovedBody164_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody164_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody164_146 : StackLang.HolProg 64 :=
.seq RemovedBody164_144 RemovedBody164_145

def RemovedBody164_147 : StackLang.HolProg 64 :=
.seq RemovedBody164_143 RemovedBody164_146

def RemovedBody164_148 : StackLang.HolProg 64 :=
.seq RemovedBody164_140 RemovedBody164_147

def RemovedBody164_149 : StackLang.HolProg 64 :=
.seq RemovedBody164_137 RemovedBody164_148

def RemovedBody164_150 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody164_151 : StackLang.HolProg 64 :=
.seq RemovedBody164_149 RemovedBody164_150

def RemovedBody164_152 : StackLang.HolProg 64 :=
.call (some (RemovedBody164_136, 0, 164, 2)) (Sum.inl 163) (some (RemovedBody164_151, 164, 3))

def RemovedBody164_153 : StackLang.HolProg 64 :=
.seq RemovedBody164_113 RemovedBody164_152

def RemovedBody164_154 : StackLang.HolProg 64 :=
.seq RemovedBody164_112 RemovedBody164_153

def RemovedBody164_155 : StackLang.HolProg 64 :=
.seq RemovedBody164_111 RemovedBody164_154

def RemovedBody164_156 : StackLang.HolProg 64 :=
.seq RemovedBody164_82 RemovedBody164_155

def RemovedBody164_157 : StackLang.HolProg 64 :=
.seq RemovedBody164_79 RemovedBody164_156

def RemovedBody164_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody164_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody164_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody164_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody164_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody164_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody164_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody164_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody164_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 24#64)

def RemovedBody164_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody164_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody164_169 : StackLang.HolProg 64 :=
.seq RemovedBody164_167 RemovedBody164_168

def RemovedBody164_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody164_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 177#64)

def RemovedBody164_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody164_173 : StackLang.HolProg 64 :=
.seq RemovedBody164_171 RemovedBody164_172

def RemovedBody164_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody164_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody164_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody164_177 : StackLang.HolProg 64 :=
.seq RemovedBody164_175 RemovedBody164_176

def RemovedBody164_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody164_179 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody164_177 RemovedBody164_178

def RemovedBody164_180 : StackLang.HolProg 64 :=
.seq RemovedBody164_174 RemovedBody164_179

def RemovedBody164_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody164_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody164_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 164 5

def RemovedBody164_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody164_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody164_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody164_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody164_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody164_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody164_190 : StackLang.HolProg 64 :=
.seq RemovedBody164_188 RemovedBody164_189

def RemovedBody164_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody164_192 : StackLang.HolProg 64 :=
.seq RemovedBody164_190 RemovedBody164_191

def RemovedBody164_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody164_194 : StackLang.HolProg 64 :=
.seq RemovedBody164_192 RemovedBody164_193

def RemovedBody164_195 : StackLang.HolProg 64 :=
.seq RemovedBody164_187 RemovedBody164_194

def RemovedBody164_196 : StackLang.HolProg 64 :=
.seq RemovedBody164_186 RemovedBody164_195

def RemovedBody164_197 : StackLang.HolProg 64 :=
.seq RemovedBody164_185 RemovedBody164_196

def RemovedBody164_198 : StackLang.HolProg 64 :=
.seq RemovedBody164_184 RemovedBody164_197

def RemovedBody164_199 : StackLang.HolProg 64 :=
.seq RemovedBody164_183 RemovedBody164_198

def RemovedBody164_200 : StackLang.HolProg 64 :=
.seq RemovedBody164_182 RemovedBody164_199

def RemovedBody164_201 : StackLang.HolProg 64 :=
.seq RemovedBody164_181 RemovedBody164_200

def RemovedBody164_202 : StackLang.HolProg 64 :=
.seq RemovedBody164_180 RemovedBody164_201

def RemovedBody164_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody164_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody164_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody164_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody164_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody164_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody164_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody164_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody164_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody164_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody164_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody164_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody164_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody164_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody164_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody164_218 : StackLang.HolProg 64 :=
.seq RemovedBody164_216 RemovedBody164_217

def RemovedBody164_219 : StackLang.HolProg 64 :=
.seq RemovedBody164_215 RemovedBody164_218

def RemovedBody164_220 : StackLang.HolProg 64 :=
.seq RemovedBody164_214 RemovedBody164_219

def RemovedBody164_221 : StackLang.HolProg 64 :=
.seq RemovedBody164_213 RemovedBody164_220

def RemovedBody164_222 : StackLang.HolProg 64 :=
.seq RemovedBody164_212 RemovedBody164_221

def RemovedBody164_223 : StackLang.HolProg 64 :=
.seq RemovedBody164_211 RemovedBody164_222

def RemovedBody164_224 : StackLang.HolProg 64 :=
.seq RemovedBody164_210 RemovedBody164_223

def RemovedBody164_225 : StackLang.HolProg 64 :=
.seq RemovedBody164_209 RemovedBody164_224

def RemovedBody164_226 : StackLang.HolProg 64 :=
.seq RemovedBody164_208 RemovedBody164_225

def RemovedBody164_227 : StackLang.HolProg 64 :=
.seq RemovedBody164_207 RemovedBody164_226

def RemovedBody164_228 : StackLang.HolProg 64 :=
.seq RemovedBody164_206 RemovedBody164_227

def RemovedBody164_229 : StackLang.HolProg 64 :=
.seq RemovedBody164_205 RemovedBody164_228

def RemovedBody164_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody164_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody164_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody164_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody164_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody164_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody164_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody164_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody164_238 : StackLang.HolProg 64 :=
.seq RemovedBody164_236 RemovedBody164_237

def RemovedBody164_239 : StackLang.HolProg 64 :=
.seq RemovedBody164_235 RemovedBody164_238

def RemovedBody164_240 : StackLang.HolProg 64 :=
.seq RemovedBody164_234 RemovedBody164_239

def RemovedBody164_241 : StackLang.HolProg 64 :=
.seq RemovedBody164_233 RemovedBody164_240

def RemovedBody164_242 : StackLang.HolProg 64 :=
.seq RemovedBody164_232 RemovedBody164_241

def RemovedBody164_243 : StackLang.HolProg 64 :=
.seq RemovedBody164_231 RemovedBody164_242

def RemovedBody164_244 : StackLang.HolProg 64 :=
.seq RemovedBody164_230 RemovedBody164_243

def RemovedBody164_245 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody164_246 : StackLang.HolProg 64 :=
.seq RemovedBody164_244 RemovedBody164_245

def RemovedBody164_247 : StackLang.HolProg 64 :=
.call (some (RemovedBody164_229, 0, 164, 4)) (Sum.inl 74) (some (RemovedBody164_246, 164, 5))

def RemovedBody164_248 : StackLang.HolProg 64 :=
.seq RemovedBody164_204 RemovedBody164_247

def RemovedBody164_249 : StackLang.HolProg 64 :=
.seq RemovedBody164_203 RemovedBody164_248

def RemovedBody164_250 : StackLang.HolProg 64 :=
.seq RemovedBody164_202 RemovedBody164_249

def RemovedBody164_251 : StackLang.HolProg 64 :=
.seq RemovedBody164_173 RemovedBody164_250

def RemovedBody164_252 : StackLang.HolProg 64 :=
.seq RemovedBody164_170 RemovedBody164_251

def RemovedBody164_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody164_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody164_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedBody164_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody164_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody164_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody164_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody164_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody164_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody164_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody164_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody164_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody164_265 : StackLang.HolProg 64 :=
.seq RemovedBody164_263 RemovedBody164_264

def RemovedBody164_266 : StackLang.HolProg 64 :=
.seq RemovedBody164_262 RemovedBody164_265

def RemovedBody164_267 : StackLang.HolProg 64 :=
.seq RemovedBody164_261 RemovedBody164_266

def RemovedBody164_268 : StackLang.HolProg 64 :=
.seq RemovedBody164_260 RemovedBody164_267

def RemovedBody164_269 : StackLang.HolProg 64 :=
.seq RemovedBody164_259 RemovedBody164_268

def RemovedBody164_270 : StackLang.HolProg 64 :=
.seq RemovedBody164_258 RemovedBody164_269

def RemovedBody164_271 : StackLang.HolProg 64 :=
.seq RemovedBody164_257 RemovedBody164_270

def RemovedBody164_272 : StackLang.HolProg 64 :=
.seq RemovedBody164_256 RemovedBody164_271

def RemovedBody164_273 : StackLang.HolProg 64 :=
.seq RemovedBody164_255 RemovedBody164_272

def RemovedBody164_274 : StackLang.HolProg 64 :=
.seq RemovedBody164_254 RemovedBody164_273

def RemovedBody164_275 : StackLang.HolProg 64 :=
.seq RemovedBody164_253 RemovedBody164_274

def RemovedBody164_276 : StackLang.HolProg 64 :=
.seq RemovedBody164_252 RemovedBody164_275

def RemovedBody164_277 : StackLang.HolProg 64 :=
.seq RemovedBody164_169 RemovedBody164_276

def RemovedBody164_278 : StackLang.HolProg 64 :=
.seq RemovedBody164_166 RemovedBody164_277

def RemovedBody164_279 : StackLang.HolProg 64 :=
.seq RemovedBody164_165 RemovedBody164_278

def RemovedBody164_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody164_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody164_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody164_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody164_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody164_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody164_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody164_287 : StackLang.HolProg 64 :=
.seq RemovedBody164_285 RemovedBody164_286

def RemovedBody164_288 : StackLang.HolProg 64 :=
.seq RemovedBody164_284 RemovedBody164_287

def RemovedBody164_289 : StackLang.HolProg 64 :=
.seq RemovedBody164_283 RemovedBody164_288

def RemovedBody164_290 : StackLang.HolProg 64 :=
.seq RemovedBody164_282 RemovedBody164_289

def RemovedBody164_291 : StackLang.HolProg 64 :=
.seq RemovedBody164_281 RemovedBody164_290

def RemovedBody164_292 : StackLang.HolProg 64 :=
.seq RemovedBody164_280 RemovedBody164_291

def RemovedBody164_293 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody164_279 RemovedBody164_292

def RemovedBody164_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody164_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody164_296 : StackLang.HolProg 64 :=
.seq RemovedBody164_294 RemovedBody164_295

def RemovedBody164_297 : StackLang.HolProg 64 :=
.seq RemovedBody164_293 RemovedBody164_296

def RemovedBody164_298 : StackLang.HolProg 64 :=
.seq RemovedBody164_164 RemovedBody164_297

def RemovedBody164_299 : StackLang.HolProg 64 :=
.seq RemovedBody164_163 RemovedBody164_298

def RemovedBody164_300 : StackLang.HolProg 64 :=
.seq RemovedBody164_162 RemovedBody164_299

def RemovedBody164_301 : StackLang.HolProg 64 :=
.seq RemovedBody164_161 RemovedBody164_300

def RemovedBody164_302 : StackLang.HolProg 64 :=
.seq RemovedBody164_160 RemovedBody164_301

def RemovedBody164_303 : StackLang.HolProg 64 :=
.seq RemovedBody164_159 RemovedBody164_302

def RemovedBody164_304 : StackLang.HolProg 64 :=
.seq RemovedBody164_158 RemovedBody164_303

def RemovedBody164_305 : StackLang.HolProg 64 :=
.seq RemovedBody164_157 RemovedBody164_304

def RemovedBody164_306 : StackLang.HolProg 64 :=
.seq RemovedBody164_78 RemovedBody164_305

def RemovedBody164_307 : StackLang.HolProg 64 :=
.seq RemovedBody164_61 RemovedBody164_306

def RemovedBody164_308 : StackLang.HolProg 64 :=
.seq RemovedBody164_60 RemovedBody164_307

def RemovedBody164_309 : StackLang.HolProg 64 :=
.seq RemovedBody164_59 RemovedBody164_308

def RemovedBody164_310 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) RemovedBody164_58 RemovedBody164_309

def RemovedBody164_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody164_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody164_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody164_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody164_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody164_316 : StackLang.HolProg 64 :=
.seq RemovedBody164_314 RemovedBody164_315

def RemovedBody164_317 : StackLang.HolProg 64 :=
.seq RemovedBody164_313 RemovedBody164_316

def RemovedBody164_318 : StackLang.HolProg 64 :=
.seq RemovedBody164_312 RemovedBody164_317

def RemovedBody164_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody164_320 : StackLang.HolProg 64 :=
.seq RemovedBody164_318 RemovedBody164_319

def RemovedBody164_321 : StackLang.HolProg 64 :=
.seq RemovedBody164_311 RemovedBody164_320

def RemovedBody164_322 : StackLang.HolProg 64 :=
.seq RemovedBody164_310 RemovedBody164_321

def RemovedBody164_323 : StackLang.HolProg 64 :=
.seq RemovedBody164_23 RemovedBody164_322

def RemovedBody164_324 : StackLang.HolProg 64 :=
.seq RemovedBody164_22 RemovedBody164_323

def RemovedBody164_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody164_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody164_327 : StackLang.HolProg 64 :=
.seq RemovedBody164_325 RemovedBody164_326

def RemovedBody164_328 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody164_324 RemovedBody164_327

def RemovedBody164_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody164_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody164_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody164_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody164_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody164_334 : StackLang.HolProg 64 :=
.seq RemovedBody164_332 RemovedBody164_333

def RemovedBody164_335 : StackLang.HolProg 64 :=
.seq RemovedBody164_331 RemovedBody164_334

def RemovedBody164_336 : StackLang.HolProg 64 :=
.seq RemovedBody164_330 RemovedBody164_335

def RemovedBody164_337 : StackLang.HolProg 64 :=
.seq RemovedBody164_329 RemovedBody164_336

def RemovedBody164_338 : StackLang.HolProg 64 :=
.seq RemovedBody164_328 RemovedBody164_337

def RemovedBody164_339 : StackLang.HolProg 64 :=
.seq RemovedBody164_21 RemovedBody164_338

def RemovedBody164_340 : StackLang.HolProg 64 :=
.seq RemovedBody164_20 RemovedBody164_339

def RemovedBody164_341 : StackLang.HolProg 64 :=
.loop RemovedBody164_340

def RemovedBody164_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody164_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody164_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody164_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody164_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 72#64)))

def RemovedBody164_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def RemovedBody164_348 : StackLang.HolProg 64 :=
.seq RemovedBody164_346 RemovedBody164_347

def RemovedBody164_349 : StackLang.HolProg 64 :=
.seq RemovedBody164_345 RemovedBody164_348

def RemovedBody164_350 : StackLang.HolProg 64 :=
.seq RemovedBody164_344 RemovedBody164_349

def RemovedBody164_351 : StackLang.HolProg 64 :=
.seq RemovedBody164_343 RemovedBody164_350

def RemovedBody164_352 : StackLang.HolProg 64 :=
.seq RemovedBody164_342 RemovedBody164_351

def RemovedBody164_353 : StackLang.HolProg 64 :=
.seq RemovedBody164_341 RemovedBody164_352

def RemovedBody164_354 : StackLang.HolProg 64 :=
.seq RemovedBody164_19 RemovedBody164_353

def RemovedBody164_355 : StackLang.HolProg 64 :=
.seq RemovedBody164_12 RemovedBody164_354

def RemovedBody164_356 : StackLang.HolProg 64 :=
.seq RemovedBody164_11 RemovedBody164_355

def RemovedBody164_357 : StackLang.HolProg 64 :=
.seq RemovedBody164_10 RemovedBody164_356

def RemovedBody164_358 : StackLang.HolProg 64 :=
.seq RemovedBody164_9 RemovedBody164_357

def RemovedBody164_359 : StackLang.HolProg 64 :=
.seq RemovedBody164_8 RemovedBody164_358

def RemovedBody164_360 : StackLang.HolProg 64 :=
.seq RemovedBody164_7 RemovedBody164_359

def RemovedBody164_361 : StackLang.HolProg 64 :=
.seq RemovedBody164_6 RemovedBody164_360

def Removed164 : Nat × StackLang.HolProg 64 := (164, RemovedBody164_361)
theorem Removed164_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc164 = Removed164 := by
  kernel_rfl
#print axioms Removed164_eq
end InitECandidate.Proofs.BackendStages
