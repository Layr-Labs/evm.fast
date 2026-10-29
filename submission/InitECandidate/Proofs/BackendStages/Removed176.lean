import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc176
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody176_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody176_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody176_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody176_3 : StackLang.HolProg 64 :=
.seq RemovedBody176_1 RemovedBody176_2

def RemovedBody176_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody176_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody176_3 RemovedBody176_4

def RemovedBody176_6 : StackLang.HolProg 64 :=
.seq RemovedBody176_0 RemovedBody176_5

def RemovedBody176_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody176_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 1#64)

def RemovedBody176_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody176_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody176_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def RemovedBody176_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody176_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 128#64)

def RemovedBody176_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody176_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody176_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody176_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody176_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody176_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody176_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody176_21 : StackLang.HolProg 64 :=
.seq RemovedBody176_19 RemovedBody176_20

def RemovedBody176_22 : StackLang.HolProg 64 :=
.seq RemovedBody176_18 RemovedBody176_21

def RemovedBody176_23 : StackLang.HolProg 64 :=
.seq RemovedBody176_17 RemovedBody176_22

def RemovedBody176_24 : StackLang.HolProg 64 :=
.seq RemovedBody176_16 RemovedBody176_23

def RemovedBody176_25 : StackLang.HolProg 64 :=
.seq RemovedBody176_15 RemovedBody176_24

def RemovedBody176_26 : StackLang.HolProg 64 :=
.seq RemovedBody176_14 RemovedBody176_25

def RemovedBody176_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody176_28 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) RemovedBody176_26 RemovedBody176_27

def RemovedBody176_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody176_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody176_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody176_32 : StackLang.HolProg 64 :=
.seq RemovedBody176_30 RemovedBody176_31

def RemovedBody176_33 : StackLang.HolProg 64 :=
.seq RemovedBody176_29 RemovedBody176_32

def RemovedBody176_34 : StackLang.HolProg 64 :=
.seq RemovedBody176_28 RemovedBody176_33

def RemovedBody176_35 : StackLang.HolProg 64 :=
.seq RemovedBody176_13 RemovedBody176_34

def RemovedBody176_36 : StackLang.HolProg 64 :=
.seq RemovedBody176_12 RemovedBody176_35

def RemovedBody176_37 : StackLang.HolProg 64 :=
.seq RemovedBody176_11 RemovedBody176_36

def RemovedBody176_38 : StackLang.HolProg 64 :=
.seq RemovedBody176_10 RemovedBody176_37

def RemovedBody176_39 : StackLang.HolProg 64 :=
.seq RemovedBody176_9 RemovedBody176_38

def RemovedBody176_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody176_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody176_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody176_43 : StackLang.HolProg 64 :=
.seq RemovedBody176_41 RemovedBody176_42

def RemovedBody176_44 : StackLang.HolProg 64 :=
.seq RemovedBody176_40 RemovedBody176_43

def RemovedBody176_45 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) RemovedBody176_39 RemovedBody176_44

def RemovedBody176_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody176_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody176_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 128#64)

def RemovedBody176_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody176_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody176_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody176_52 : StackLang.HolProg 64 :=
.seq RemovedBody176_50 RemovedBody176_51

def RemovedBody176_53 : StackLang.HolProg 64 :=
.seq RemovedBody176_49 RemovedBody176_52

def RemovedBody176_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody176_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 197#64)

def RemovedBody176_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody176_57 : StackLang.HolProg 64 :=
.seq RemovedBody176_55 RemovedBody176_56

def RemovedBody176_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody176_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody176_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody176_61 : StackLang.HolProg 64 :=
.seq RemovedBody176_59 RemovedBody176_60

def RemovedBody176_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody176_63 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody176_61 RemovedBody176_62

def RemovedBody176_64 : StackLang.HolProg 64 :=
.seq RemovedBody176_58 RemovedBody176_63

def RemovedBody176_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody176_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody176_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 176 3

def RemovedBody176_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody176_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody176_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody176_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody176_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody176_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody176_74 : StackLang.HolProg 64 :=
.seq RemovedBody176_72 RemovedBody176_73

def RemovedBody176_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody176_76 : StackLang.HolProg 64 :=
.seq RemovedBody176_74 RemovedBody176_75

def RemovedBody176_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody176_78 : StackLang.HolProg 64 :=
.seq RemovedBody176_76 RemovedBody176_77

def RemovedBody176_79 : StackLang.HolProg 64 :=
.seq RemovedBody176_71 RemovedBody176_78

def RemovedBody176_80 : StackLang.HolProg 64 :=
.seq RemovedBody176_70 RemovedBody176_79

def RemovedBody176_81 : StackLang.HolProg 64 :=
.seq RemovedBody176_69 RemovedBody176_80

def RemovedBody176_82 : StackLang.HolProg 64 :=
.seq RemovedBody176_68 RemovedBody176_81

def RemovedBody176_83 : StackLang.HolProg 64 :=
.seq RemovedBody176_67 RemovedBody176_82

def RemovedBody176_84 : StackLang.HolProg 64 :=
.seq RemovedBody176_66 RemovedBody176_83

def RemovedBody176_85 : StackLang.HolProg 64 :=
.seq RemovedBody176_65 RemovedBody176_84

def RemovedBody176_86 : StackLang.HolProg 64 :=
.seq RemovedBody176_64 RemovedBody176_85

def RemovedBody176_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody176_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody176_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody176_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody176_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody176_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody176_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody176_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody176_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody176_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody176_97 : StackLang.HolProg 64 :=
.seq RemovedBody176_95 RemovedBody176_96

def RemovedBody176_98 : StackLang.HolProg 64 :=
.seq RemovedBody176_94 RemovedBody176_97

def RemovedBody176_99 : StackLang.HolProg 64 :=
.seq RemovedBody176_93 RemovedBody176_98

def RemovedBody176_100 : StackLang.HolProg 64 :=
.seq RemovedBody176_92 RemovedBody176_99

def RemovedBody176_101 : StackLang.HolProg 64 :=
.seq RemovedBody176_91 RemovedBody176_100

def RemovedBody176_102 : StackLang.HolProg 64 :=
.seq RemovedBody176_90 RemovedBody176_101

def RemovedBody176_103 : StackLang.HolProg 64 :=
.seq RemovedBody176_89 RemovedBody176_102

def RemovedBody176_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody176_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody176_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody176_107 : StackLang.HolProg 64 :=
.seq RemovedBody176_105 RemovedBody176_106

def RemovedBody176_108 : StackLang.HolProg 64 :=
.seq RemovedBody176_104 RemovedBody176_107

def RemovedBody176_109 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody176_110 : StackLang.HolProg 64 :=
.seq RemovedBody176_108 RemovedBody176_109

def RemovedBody176_111 : StackLang.HolProg 64 :=
.call (some (RemovedBody176_103, 0, 176, 2)) (Sum.inl 174) (some (RemovedBody176_110, 176, 3))

def RemovedBody176_112 : StackLang.HolProg 64 :=
.seq RemovedBody176_88 RemovedBody176_111

def RemovedBody176_113 : StackLang.HolProg 64 :=
.seq RemovedBody176_87 RemovedBody176_112

def RemovedBody176_114 : StackLang.HolProg 64 :=
.seq RemovedBody176_86 RemovedBody176_113

def RemovedBody176_115 : StackLang.HolProg 64 :=
.seq RemovedBody176_57 RemovedBody176_114

def RemovedBody176_116 : StackLang.HolProg 64 :=
.seq RemovedBody176_54 RemovedBody176_115

def RemovedBody176_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody176_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody176_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody176_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody176_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody176_122 : StackLang.HolProg 64 :=
.seq RemovedBody176_120 RemovedBody176_121

def RemovedBody176_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody176_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 198#64)

def RemovedBody176_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody176_126 : StackLang.HolProg 64 :=
.seq RemovedBody176_124 RemovedBody176_125

def RemovedBody176_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody176_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody176_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody176_130 : StackLang.HolProg 64 :=
.seq RemovedBody176_128 RemovedBody176_129

def RemovedBody176_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody176_132 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody176_130 RemovedBody176_131

def RemovedBody176_133 : StackLang.HolProg 64 :=
.seq RemovedBody176_127 RemovedBody176_132

def RemovedBody176_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody176_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody176_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 176 5

def RemovedBody176_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody176_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody176_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody176_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody176_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody176_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody176_143 : StackLang.HolProg 64 :=
.seq RemovedBody176_141 RemovedBody176_142

def RemovedBody176_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody176_145 : StackLang.HolProg 64 :=
.seq RemovedBody176_143 RemovedBody176_144

def RemovedBody176_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody176_147 : StackLang.HolProg 64 :=
.seq RemovedBody176_145 RemovedBody176_146

def RemovedBody176_148 : StackLang.HolProg 64 :=
.seq RemovedBody176_140 RemovedBody176_147

def RemovedBody176_149 : StackLang.HolProg 64 :=
.seq RemovedBody176_139 RemovedBody176_148

def RemovedBody176_150 : StackLang.HolProg 64 :=
.seq RemovedBody176_138 RemovedBody176_149

def RemovedBody176_151 : StackLang.HolProg 64 :=
.seq RemovedBody176_137 RemovedBody176_150

def RemovedBody176_152 : StackLang.HolProg 64 :=
.seq RemovedBody176_136 RemovedBody176_151

def RemovedBody176_153 : StackLang.HolProg 64 :=
.seq RemovedBody176_135 RemovedBody176_152

def RemovedBody176_154 : StackLang.HolProg 64 :=
.seq RemovedBody176_134 RemovedBody176_153

def RemovedBody176_155 : StackLang.HolProg 64 :=
.seq RemovedBody176_133 RemovedBody176_154

def RemovedBody176_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody176_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody176_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody176_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody176_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody176_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody176_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody176_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody176_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody176_165 : StackLang.HolProg 64 :=
.seq RemovedBody176_163 RemovedBody176_164

def RemovedBody176_166 : StackLang.HolProg 64 :=
.seq RemovedBody176_162 RemovedBody176_165

def RemovedBody176_167 : StackLang.HolProg 64 :=
.seq RemovedBody176_161 RemovedBody176_166

def RemovedBody176_168 : StackLang.HolProg 64 :=
.seq RemovedBody176_160 RemovedBody176_167

def RemovedBody176_169 : StackLang.HolProg 64 :=
.seq RemovedBody176_159 RemovedBody176_168

def RemovedBody176_170 : StackLang.HolProg 64 :=
.seq RemovedBody176_158 RemovedBody176_169

def RemovedBody176_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody176_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody176_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody176_174 : StackLang.HolProg 64 :=
.seq RemovedBody176_172 RemovedBody176_173

def RemovedBody176_175 : StackLang.HolProg 64 :=
.seq RemovedBody176_171 RemovedBody176_174

def RemovedBody176_176 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody176_177 : StackLang.HolProg 64 :=
.seq RemovedBody176_175 RemovedBody176_176

def RemovedBody176_178 : StackLang.HolProg 64 :=
.call (some (RemovedBody176_170, 0, 176, 4)) (Sum.inl 77) (some (RemovedBody176_177, 176, 5))

def RemovedBody176_179 : StackLang.HolProg 64 :=
.seq RemovedBody176_157 RemovedBody176_178

def RemovedBody176_180 : StackLang.HolProg 64 :=
.seq RemovedBody176_156 RemovedBody176_179

def RemovedBody176_181 : StackLang.HolProg 64 :=
.seq RemovedBody176_155 RemovedBody176_180

def RemovedBody176_182 : StackLang.HolProg 64 :=
.seq RemovedBody176_126 RemovedBody176_181

def RemovedBody176_183 : StackLang.HolProg 64 :=
.seq RemovedBody176_123 RemovedBody176_182

def RemovedBody176_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody176_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody176_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody176_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody176_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody176_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def RemovedBody176_190 : StackLang.HolProg 64 :=
.seq RemovedBody176_188 RemovedBody176_189

def RemovedBody176_191 : StackLang.HolProg 64 :=
.seq RemovedBody176_187 RemovedBody176_190

def RemovedBody176_192 : StackLang.HolProg 64 :=
.seq RemovedBody176_186 RemovedBody176_191

def RemovedBody176_193 : StackLang.HolProg 64 :=
.seq RemovedBody176_185 RemovedBody176_192

def RemovedBody176_194 : StackLang.HolProg 64 :=
.seq RemovedBody176_184 RemovedBody176_193

def RemovedBody176_195 : StackLang.HolProg 64 :=
.seq RemovedBody176_183 RemovedBody176_194

def RemovedBody176_196 : StackLang.HolProg 64 :=
.seq RemovedBody176_122 RemovedBody176_195

def RemovedBody176_197 : StackLang.HolProg 64 :=
.seq RemovedBody176_119 RemovedBody176_196

def RemovedBody176_198 : StackLang.HolProg 64 :=
.seq RemovedBody176_118 RemovedBody176_197

def RemovedBody176_199 : StackLang.HolProg 64 :=
.seq RemovedBody176_117 RemovedBody176_198

def RemovedBody176_200 : StackLang.HolProg 64 :=
.seq RemovedBody176_116 RemovedBody176_199

def RemovedBody176_201 : StackLang.HolProg 64 :=
.seq RemovedBody176_53 RemovedBody176_200

def RemovedBody176_202 : StackLang.HolProg 64 :=
.seq RemovedBody176_48 RemovedBody176_201

def RemovedBody176_203 : StackLang.HolProg 64 :=
.seq RemovedBody176_47 RemovedBody176_202

def RemovedBody176_204 : StackLang.HolProg 64 :=
.seq RemovedBody176_46 RemovedBody176_203

def RemovedBody176_205 : StackLang.HolProg 64 :=
.seq RemovedBody176_45 RemovedBody176_204

def RemovedBody176_206 : StackLang.HolProg 64 :=
.seq RemovedBody176_8 RemovedBody176_205

def RemovedBody176_207 : StackLang.HolProg 64 :=
.seq RemovedBody176_7 RemovedBody176_206

def RemovedBody176_208 : StackLang.HolProg 64 :=
.seq RemovedBody176_6 RemovedBody176_207

def Removed176 : Nat × StackLang.HolProg 64 := (176, RemovedBody176_208)
theorem Removed176_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc176 = Removed176 := by
  kernel_rfl
#print axioms Removed176_eq
end InitECandidate.Proofs.BackendStages
