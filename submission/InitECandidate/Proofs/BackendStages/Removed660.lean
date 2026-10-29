import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc660
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody660_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody660_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody660_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody660_3 : StackLang.HolProg 64 :=
.seq RemovedBody660_1 RemovedBody660_2

def RemovedBody660_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody660_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody660_3 RemovedBody660_4

def RemovedBody660_6 : StackLang.HolProg 64 :=
.seq RemovedBody660_0 RemovedBody660_5

def RemovedBody660_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody660_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody660_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody660_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody660_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody660_12 : StackLang.HolProg 64 :=
.seq RemovedBody660_10 RemovedBody660_11

def RemovedBody660_13 : StackLang.HolProg 64 :=
.seq RemovedBody660_9 RemovedBody660_12

def RemovedBody660_14 : StackLang.HolProg 64 :=
.seq RemovedBody660_8 RemovedBody660_13

def RemovedBody660_15 : StackLang.HolProg 64 :=
.seq RemovedBody660_7 RemovedBody660_14

def RemovedBody660_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody660_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2750#64)

def RemovedBody660_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody660_19 : StackLang.HolProg 64 :=
.seq RemovedBody660_17 RemovedBody660_18

def RemovedBody660_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody660_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody660_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody660_23 : StackLang.HolProg 64 :=
.seq RemovedBody660_21 RemovedBody660_22

def RemovedBody660_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody660_25 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody660_23 RemovedBody660_24

def RemovedBody660_26 : StackLang.HolProg 64 :=
.seq RemovedBody660_20 RemovedBody660_25

def RemovedBody660_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody660_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody660_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 660 3

def RemovedBody660_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody660_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody660_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody660_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody660_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody660_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody660_36 : StackLang.HolProg 64 :=
.seq RemovedBody660_34 RemovedBody660_35

def RemovedBody660_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody660_38 : StackLang.HolProg 64 :=
.seq RemovedBody660_36 RemovedBody660_37

def RemovedBody660_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody660_40 : StackLang.HolProg 64 :=
.seq RemovedBody660_38 RemovedBody660_39

def RemovedBody660_41 : StackLang.HolProg 64 :=
.seq RemovedBody660_33 RemovedBody660_40

def RemovedBody660_42 : StackLang.HolProg 64 :=
.seq RemovedBody660_32 RemovedBody660_41

def RemovedBody660_43 : StackLang.HolProg 64 :=
.seq RemovedBody660_31 RemovedBody660_42

def RemovedBody660_44 : StackLang.HolProg 64 :=
.seq RemovedBody660_30 RemovedBody660_43

def RemovedBody660_45 : StackLang.HolProg 64 :=
.seq RemovedBody660_29 RemovedBody660_44

def RemovedBody660_46 : StackLang.HolProg 64 :=
.seq RemovedBody660_28 RemovedBody660_45

def RemovedBody660_47 : StackLang.HolProg 64 :=
.seq RemovedBody660_27 RemovedBody660_46

def RemovedBody660_48 : StackLang.HolProg 64 :=
.seq RemovedBody660_26 RemovedBody660_47

def RemovedBody660_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody660_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody660_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody660_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody660_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody660_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody660_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody660_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody660_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody660_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody660_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody660_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody660_61 : StackLang.HolProg 64 :=
.seq RemovedBody660_59 RemovedBody660_60

def RemovedBody660_62 : StackLang.HolProg 64 :=
.seq RemovedBody660_58 RemovedBody660_61

def RemovedBody660_63 : StackLang.HolProg 64 :=
.seq RemovedBody660_57 RemovedBody660_62

def RemovedBody660_64 : StackLang.HolProg 64 :=
.seq RemovedBody660_56 RemovedBody660_63

def RemovedBody660_65 : StackLang.HolProg 64 :=
.seq RemovedBody660_55 RemovedBody660_64

def RemovedBody660_66 : StackLang.HolProg 64 :=
.seq RemovedBody660_54 RemovedBody660_65

def RemovedBody660_67 : StackLang.HolProg 64 :=
.seq RemovedBody660_53 RemovedBody660_66

def RemovedBody660_68 : StackLang.HolProg 64 :=
.seq RemovedBody660_52 RemovedBody660_67

def RemovedBody660_69 : StackLang.HolProg 64 :=
.seq RemovedBody660_51 RemovedBody660_68

def RemovedBody660_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody660_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody660_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody660_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody660_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody660_75 : StackLang.HolProg 64 :=
.seq RemovedBody660_73 RemovedBody660_74

def RemovedBody660_76 : StackLang.HolProg 64 :=
.seq RemovedBody660_72 RemovedBody660_75

def RemovedBody660_77 : StackLang.HolProg 64 :=
.seq RemovedBody660_71 RemovedBody660_76

def RemovedBody660_78 : StackLang.HolProg 64 :=
.seq RemovedBody660_70 RemovedBody660_77

def RemovedBody660_79 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody660_80 : StackLang.HolProg 64 :=
.seq RemovedBody660_78 RemovedBody660_79

def RemovedBody660_81 : StackLang.HolProg 64 :=
.call (some (RemovedBody660_69, 0, 660, 2)) (Sum.inl 102) (some (RemovedBody660_80, 660, 3))

def RemovedBody660_82 : StackLang.HolProg 64 :=
.seq RemovedBody660_50 RemovedBody660_81

def RemovedBody660_83 : StackLang.HolProg 64 :=
.seq RemovedBody660_49 RemovedBody660_82

def RemovedBody660_84 : StackLang.HolProg 64 :=
.seq RemovedBody660_48 RemovedBody660_83

def RemovedBody660_85 : StackLang.HolProg 64 :=
.seq RemovedBody660_19 RemovedBody660_84

def RemovedBody660_86 : StackLang.HolProg 64 :=
.seq RemovedBody660_16 RemovedBody660_85

def RemovedBody660_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody660_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody660_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody660_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody660_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody660_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody660_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody660_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody660_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody660_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody660_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody660_98 : StackLang.HolProg 64 :=
.seq RemovedBody660_96 RemovedBody660_97

def RemovedBody660_99 : StackLang.HolProg 64 :=
.seq RemovedBody660_95 RemovedBody660_98

def RemovedBody660_100 : StackLang.HolProg 64 :=
.seq RemovedBody660_94 RemovedBody660_99

def RemovedBody660_101 : StackLang.HolProg 64 :=
.seq RemovedBody660_93 RemovedBody660_100

def RemovedBody660_102 : StackLang.HolProg 64 :=
.seq RemovedBody660_92 RemovedBody660_101

def RemovedBody660_103 : StackLang.HolProg 64 :=
.seq RemovedBody660_91 RemovedBody660_102

def RemovedBody660_104 : StackLang.HolProg 64 :=
.seq RemovedBody660_90 RemovedBody660_103

def RemovedBody660_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody660_106 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody660_104 RemovedBody660_105

def RemovedBody660_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody660_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody660_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody660_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 3486998266802970665#64)

def RemovedBody660_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 13281191951274694749#64)

def RemovedBody660_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 10917124144477883021#64)

def RemovedBody660_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 4332616871279656263#64)

def RemovedBody660_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody660_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody660_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody660_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 117

def RemovedBody660_118 : StackLang.HolProg 64 :=
.seq RemovedBody660_116 RemovedBody660_117

def RemovedBody660_119 : StackLang.HolProg 64 :=
.seq RemovedBody660_115 RemovedBody660_118

def RemovedBody660_120 : StackLang.HolProg 64 :=
.seq RemovedBody660_114 RemovedBody660_119

def RemovedBody660_121 : StackLang.HolProg 64 :=
.seq RemovedBody660_113 RemovedBody660_120

def RemovedBody660_122 : StackLang.HolProg 64 :=
.seq RemovedBody660_112 RemovedBody660_121

def RemovedBody660_123 : StackLang.HolProg 64 :=
.seq RemovedBody660_111 RemovedBody660_122

def RemovedBody660_124 : StackLang.HolProg 64 :=
.seq RemovedBody660_110 RemovedBody660_123

def RemovedBody660_125 : StackLang.HolProg 64 :=
.seq RemovedBody660_109 RemovedBody660_124

def RemovedBody660_126 : StackLang.HolProg 64 :=
.seq RemovedBody660_108 RemovedBody660_125

def RemovedBody660_127 : StackLang.HolProg 64 :=
.seq RemovedBody660_107 RemovedBody660_126

def RemovedBody660_128 : StackLang.HolProg 64 :=
.seq RemovedBody660_106 RemovedBody660_127

def RemovedBody660_129 : StackLang.HolProg 64 :=
.seq RemovedBody660_89 RemovedBody660_128

def RemovedBody660_130 : StackLang.HolProg 64 :=
.seq RemovedBody660_88 RemovedBody660_129

def RemovedBody660_131 : StackLang.HolProg 64 :=
.seq RemovedBody660_87 RemovedBody660_130

def RemovedBody660_132 : StackLang.HolProg 64 :=
.seq RemovedBody660_86 RemovedBody660_131

def RemovedBody660_133 : StackLang.HolProg 64 :=
.seq RemovedBody660_15 RemovedBody660_132

def RemovedBody660_134 : StackLang.HolProg 64 :=
.seq RemovedBody660_6 RemovedBody660_133

def Removed660 : Nat × StackLang.HolProg 64 := (660, RemovedBody660_134)
theorem Removed660_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc660 = Removed660 := by
  kernel_rfl
#print axioms Removed660_eq
end InitECandidate.Proofs.BackendStages
