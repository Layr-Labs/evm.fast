import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc177
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody177_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody177_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody177_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody177_3 : StackLang.HolProg 64 :=
.seq RemovedBody177_1 RemovedBody177_2

def RemovedBody177_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody177_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody177_3 RemovedBody177_4

def RemovedBody177_6 : StackLang.HolProg 64 :=
.seq RemovedBody177_0 RemovedBody177_5

def RemovedBody177_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody177_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody177_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody177_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody177_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 128#64)

def RemovedBody177_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody177_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody177_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody177_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody177_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody177_17 : StackLang.HolProg 64 :=
.seq RemovedBody177_15 RemovedBody177_16

def RemovedBody177_18 : StackLang.HolProg 64 :=
.seq RemovedBody177_14 RemovedBody177_17

def RemovedBody177_19 : StackLang.HolProg 64 :=
.seq RemovedBody177_13 RemovedBody177_18

def RemovedBody177_20 : StackLang.HolProg 64 :=
.seq RemovedBody177_12 RemovedBody177_19

def RemovedBody177_21 : StackLang.HolProg 64 :=
.seq RemovedBody177_11 RemovedBody177_20

def RemovedBody177_22 : StackLang.HolProg 64 :=
.seq RemovedBody177_10 RemovedBody177_21

def RemovedBody177_23 : StackLang.HolProg 64 :=
.seq RemovedBody177_9 RemovedBody177_22

def RemovedBody177_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody177_25 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) RemovedBody177_23 RemovedBody177_24

def RemovedBody177_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody177_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody177_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody177_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 128#64)

def RemovedBody177_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody177_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody177_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody177_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody177_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody177_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody177_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody177_37 : StackLang.HolProg 64 :=
.seq RemovedBody177_35 RemovedBody177_36

def RemovedBody177_38 : StackLang.HolProg 64 :=
.seq RemovedBody177_34 RemovedBody177_37

def RemovedBody177_39 : StackLang.HolProg 64 :=
.seq RemovedBody177_33 RemovedBody177_38

def RemovedBody177_40 : StackLang.HolProg 64 :=
.seq RemovedBody177_32 RemovedBody177_39

def RemovedBody177_41 : StackLang.HolProg 64 :=
.seq RemovedBody177_31 RemovedBody177_40

def RemovedBody177_42 : StackLang.HolProg 64 :=
.seq RemovedBody177_30 RemovedBody177_41

def RemovedBody177_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody177_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody177_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody177_46 : StackLang.HolProg 64 :=
.seq RemovedBody177_44 RemovedBody177_45

def RemovedBody177_47 : StackLang.HolProg 64 :=
.seq RemovedBody177_43 RemovedBody177_46

def RemovedBody177_48 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody177_42 RemovedBody177_47

def RemovedBody177_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody177_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody177_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody177_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody177_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody177_54 : StackLang.HolProg 64 :=
.seq RemovedBody177_52 RemovedBody177_53

def RemovedBody177_55 : StackLang.HolProg 64 :=
.seq RemovedBody177_51 RemovedBody177_54

def RemovedBody177_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody177_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 199#64)

def RemovedBody177_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody177_59 : StackLang.HolProg 64 :=
.seq RemovedBody177_57 RemovedBody177_58

def RemovedBody177_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody177_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody177_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody177_63 : StackLang.HolProg 64 :=
.seq RemovedBody177_61 RemovedBody177_62

def RemovedBody177_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody177_65 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody177_63 RemovedBody177_64

def RemovedBody177_66 : StackLang.HolProg 64 :=
.seq RemovedBody177_60 RemovedBody177_65

def RemovedBody177_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody177_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody177_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 177 3

def RemovedBody177_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody177_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody177_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody177_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody177_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody177_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody177_76 : StackLang.HolProg 64 :=
.seq RemovedBody177_74 RemovedBody177_75

def RemovedBody177_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody177_78 : StackLang.HolProg 64 :=
.seq RemovedBody177_76 RemovedBody177_77

def RemovedBody177_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody177_80 : StackLang.HolProg 64 :=
.seq RemovedBody177_78 RemovedBody177_79

def RemovedBody177_81 : StackLang.HolProg 64 :=
.seq RemovedBody177_73 RemovedBody177_80

def RemovedBody177_82 : StackLang.HolProg 64 :=
.seq RemovedBody177_72 RemovedBody177_81

def RemovedBody177_83 : StackLang.HolProg 64 :=
.seq RemovedBody177_71 RemovedBody177_82

def RemovedBody177_84 : StackLang.HolProg 64 :=
.seq RemovedBody177_70 RemovedBody177_83

def RemovedBody177_85 : StackLang.HolProg 64 :=
.seq RemovedBody177_69 RemovedBody177_84

def RemovedBody177_86 : StackLang.HolProg 64 :=
.seq RemovedBody177_68 RemovedBody177_85

def RemovedBody177_87 : StackLang.HolProg 64 :=
.seq RemovedBody177_67 RemovedBody177_86

def RemovedBody177_88 : StackLang.HolProg 64 :=
.seq RemovedBody177_66 RemovedBody177_87

def RemovedBody177_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody177_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody177_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody177_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody177_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody177_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody177_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody177_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody177_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody177_98 : StackLang.HolProg 64 :=
.seq RemovedBody177_96 RemovedBody177_97

def RemovedBody177_99 : StackLang.HolProg 64 :=
.seq RemovedBody177_95 RemovedBody177_98

def RemovedBody177_100 : StackLang.HolProg 64 :=
.seq RemovedBody177_94 RemovedBody177_99

def RemovedBody177_101 : StackLang.HolProg 64 :=
.seq RemovedBody177_93 RemovedBody177_100

def RemovedBody177_102 : StackLang.HolProg 64 :=
.seq RemovedBody177_92 RemovedBody177_101

def RemovedBody177_103 : StackLang.HolProg 64 :=
.seq RemovedBody177_91 RemovedBody177_102

def RemovedBody177_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody177_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody177_106 : StackLang.HolProg 64 :=
.seq RemovedBody177_104 RemovedBody177_105

def RemovedBody177_107 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody177_108 : StackLang.HolProg 64 :=
.seq RemovedBody177_106 RemovedBody177_107

def RemovedBody177_109 : StackLang.HolProg 64 :=
.call (some (RemovedBody177_103, 0, 177, 2)) (Sum.inl 172) (some (RemovedBody177_108, 177, 3))

def RemovedBody177_110 : StackLang.HolProg 64 :=
.seq RemovedBody177_90 RemovedBody177_109

def RemovedBody177_111 : StackLang.HolProg 64 :=
.seq RemovedBody177_89 RemovedBody177_110

def RemovedBody177_112 : StackLang.HolProg 64 :=
.seq RemovedBody177_88 RemovedBody177_111

def RemovedBody177_113 : StackLang.HolProg 64 :=
.seq RemovedBody177_59 RemovedBody177_112

def RemovedBody177_114 : StackLang.HolProg 64 :=
.seq RemovedBody177_56 RemovedBody177_113

def RemovedBody177_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody177_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody177_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 128#64)))

def RemovedBody177_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedBody177_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody177_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody177_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody177_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody177_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 200#64)

def RemovedBody177_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody177_125 : StackLang.HolProg 64 :=
.seq RemovedBody177_123 RemovedBody177_124

def RemovedBody177_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody177_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody177_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody177_129 : StackLang.HolProg 64 :=
.seq RemovedBody177_127 RemovedBody177_128

def RemovedBody177_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody177_131 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody177_129 RemovedBody177_130

def RemovedBody177_132 : StackLang.HolProg 64 :=
.seq RemovedBody177_126 RemovedBody177_131

def RemovedBody177_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody177_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody177_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 177 5

def RemovedBody177_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody177_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody177_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody177_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody177_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody177_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody177_142 : StackLang.HolProg 64 :=
.seq RemovedBody177_140 RemovedBody177_141

def RemovedBody177_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody177_144 : StackLang.HolProg 64 :=
.seq RemovedBody177_142 RemovedBody177_143

def RemovedBody177_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody177_146 : StackLang.HolProg 64 :=
.seq RemovedBody177_144 RemovedBody177_145

def RemovedBody177_147 : StackLang.HolProg 64 :=
.seq RemovedBody177_139 RemovedBody177_146

def RemovedBody177_148 : StackLang.HolProg 64 :=
.seq RemovedBody177_138 RemovedBody177_147

def RemovedBody177_149 : StackLang.HolProg 64 :=
.seq RemovedBody177_137 RemovedBody177_148

def RemovedBody177_150 : StackLang.HolProg 64 :=
.seq RemovedBody177_136 RemovedBody177_149

def RemovedBody177_151 : StackLang.HolProg 64 :=
.seq RemovedBody177_135 RemovedBody177_150

def RemovedBody177_152 : StackLang.HolProg 64 :=
.seq RemovedBody177_134 RemovedBody177_151

def RemovedBody177_153 : StackLang.HolProg 64 :=
.seq RemovedBody177_133 RemovedBody177_152

def RemovedBody177_154 : StackLang.HolProg 64 :=
.seq RemovedBody177_132 RemovedBody177_153

def RemovedBody177_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody177_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody177_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody177_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody177_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody177_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody177_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody177_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody177_163 : StackLang.HolProg 64 :=
.seq RemovedBody177_161 RemovedBody177_162

def RemovedBody177_164 : StackLang.HolProg 64 :=
.seq RemovedBody177_160 RemovedBody177_163

def RemovedBody177_165 : StackLang.HolProg 64 :=
.seq RemovedBody177_159 RemovedBody177_164

def RemovedBody177_166 : StackLang.HolProg 64 :=
.seq RemovedBody177_158 RemovedBody177_165

def RemovedBody177_167 : StackLang.HolProg 64 :=
.seq RemovedBody177_157 RemovedBody177_166

def RemovedBody177_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody177_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody177_170 : StackLang.HolProg 64 :=
.seq RemovedBody177_168 RemovedBody177_169

def RemovedBody177_171 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody177_172 : StackLang.HolProg 64 :=
.seq RemovedBody177_170 RemovedBody177_171

def RemovedBody177_173 : StackLang.HolProg 64 :=
.call (some (RemovedBody177_167, 0, 177, 4)) (Sum.inl 173) (some (RemovedBody177_172, 177, 5))

def RemovedBody177_174 : StackLang.HolProg 64 :=
.seq RemovedBody177_156 RemovedBody177_173

def RemovedBody177_175 : StackLang.HolProg 64 :=
.seq RemovedBody177_155 RemovedBody177_174

def RemovedBody177_176 : StackLang.HolProg 64 :=
.seq RemovedBody177_154 RemovedBody177_175

def RemovedBody177_177 : StackLang.HolProg 64 :=
.seq RemovedBody177_125 RemovedBody177_176

def RemovedBody177_178 : StackLang.HolProg 64 :=
.seq RemovedBody177_122 RemovedBody177_177

def RemovedBody177_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody177_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody177_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody177_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody177_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody177_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def RemovedBody177_185 : StackLang.HolProg 64 :=
.seq RemovedBody177_183 RemovedBody177_184

def RemovedBody177_186 : StackLang.HolProg 64 :=
.seq RemovedBody177_182 RemovedBody177_185

def RemovedBody177_187 : StackLang.HolProg 64 :=
.seq RemovedBody177_181 RemovedBody177_186

def RemovedBody177_188 : StackLang.HolProg 64 :=
.seq RemovedBody177_180 RemovedBody177_187

def RemovedBody177_189 : StackLang.HolProg 64 :=
.seq RemovedBody177_179 RemovedBody177_188

def RemovedBody177_190 : StackLang.HolProg 64 :=
.seq RemovedBody177_178 RemovedBody177_189

def RemovedBody177_191 : StackLang.HolProg 64 :=
.seq RemovedBody177_121 RemovedBody177_190

def RemovedBody177_192 : StackLang.HolProg 64 :=
.seq RemovedBody177_120 RemovedBody177_191

def RemovedBody177_193 : StackLang.HolProg 64 :=
.seq RemovedBody177_119 RemovedBody177_192

def RemovedBody177_194 : StackLang.HolProg 64 :=
.seq RemovedBody177_118 RemovedBody177_193

def RemovedBody177_195 : StackLang.HolProg 64 :=
.seq RemovedBody177_117 RemovedBody177_194

def RemovedBody177_196 : StackLang.HolProg 64 :=
.seq RemovedBody177_116 RemovedBody177_195

def RemovedBody177_197 : StackLang.HolProg 64 :=
.seq RemovedBody177_115 RemovedBody177_196

def RemovedBody177_198 : StackLang.HolProg 64 :=
.seq RemovedBody177_114 RemovedBody177_197

def RemovedBody177_199 : StackLang.HolProg 64 :=
.seq RemovedBody177_55 RemovedBody177_198

def RemovedBody177_200 : StackLang.HolProg 64 :=
.seq RemovedBody177_50 RemovedBody177_199

def RemovedBody177_201 : StackLang.HolProg 64 :=
.seq RemovedBody177_49 RemovedBody177_200

def RemovedBody177_202 : StackLang.HolProg 64 :=
.seq RemovedBody177_48 RemovedBody177_201

def RemovedBody177_203 : StackLang.HolProg 64 :=
.seq RemovedBody177_29 RemovedBody177_202

def RemovedBody177_204 : StackLang.HolProg 64 :=
.seq RemovedBody177_28 RemovedBody177_203

def RemovedBody177_205 : StackLang.HolProg 64 :=
.seq RemovedBody177_27 RemovedBody177_204

def RemovedBody177_206 : StackLang.HolProg 64 :=
.seq RemovedBody177_26 RemovedBody177_205

def RemovedBody177_207 : StackLang.HolProg 64 :=
.seq RemovedBody177_25 RemovedBody177_206

def RemovedBody177_208 : StackLang.HolProg 64 :=
.seq RemovedBody177_8 RemovedBody177_207

def RemovedBody177_209 : StackLang.HolProg 64 :=
.seq RemovedBody177_7 RemovedBody177_208

def RemovedBody177_210 : StackLang.HolProg 64 :=
.seq RemovedBody177_6 RemovedBody177_209

def Removed177 : Nat × StackLang.HolProg 64 := (177, RemovedBody177_210)
theorem Removed177_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc177 = Removed177 := by
  kernel_rfl
#print axioms Removed177_eq
end InitECandidate.Proofs.BackendStages
