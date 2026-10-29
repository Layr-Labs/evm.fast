import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc658
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody658_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody658_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody658_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody658_3 : StackLang.HolProg 64 :=
.seq RemovedBody658_1 RemovedBody658_2

def RemovedBody658_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody658_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody658_3 RemovedBody658_4

def RemovedBody658_6 : StackLang.HolProg 64 :=
.seq RemovedBody658_0 RemovedBody658_5

def RemovedBody658_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody658_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody658_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2745#64)

def RemovedBody658_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody658_11 : StackLang.HolProg 64 :=
.seq RemovedBody658_9 RemovedBody658_10

def RemovedBody658_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody658_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody658_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody658_15 : StackLang.HolProg 64 :=
.seq RemovedBody658_13 RemovedBody658_14

def RemovedBody658_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody658_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody658_15 RemovedBody658_16

def RemovedBody658_18 : StackLang.HolProg 64 :=
.seq RemovedBody658_12 RemovedBody658_17

def RemovedBody658_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody658_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody658_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 658 3

def RemovedBody658_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody658_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody658_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody658_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody658_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody658_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody658_28 : StackLang.HolProg 64 :=
.seq RemovedBody658_26 RemovedBody658_27

def RemovedBody658_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody658_30 : StackLang.HolProg 64 :=
.seq RemovedBody658_28 RemovedBody658_29

def RemovedBody658_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody658_32 : StackLang.HolProg 64 :=
.seq RemovedBody658_30 RemovedBody658_31

def RemovedBody658_33 : StackLang.HolProg 64 :=
.seq RemovedBody658_25 RemovedBody658_32

def RemovedBody658_34 : StackLang.HolProg 64 :=
.seq RemovedBody658_24 RemovedBody658_33

def RemovedBody658_35 : StackLang.HolProg 64 :=
.seq RemovedBody658_23 RemovedBody658_34

def RemovedBody658_36 : StackLang.HolProg 64 :=
.seq RemovedBody658_22 RemovedBody658_35

def RemovedBody658_37 : StackLang.HolProg 64 :=
.seq RemovedBody658_21 RemovedBody658_36

def RemovedBody658_38 : StackLang.HolProg 64 :=
.seq RemovedBody658_20 RemovedBody658_37

def RemovedBody658_39 : StackLang.HolProg 64 :=
.seq RemovedBody658_19 RemovedBody658_38

def RemovedBody658_40 : StackLang.HolProg 64 :=
.seq RemovedBody658_18 RemovedBody658_39

def RemovedBody658_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody658_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody658_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody658_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody658_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody658_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody658_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody658_48 : StackLang.HolProg 64 :=
.seq RemovedBody658_46 RemovedBody658_47

def RemovedBody658_49 : StackLang.HolProg 64 :=
.seq RemovedBody658_45 RemovedBody658_48

def RemovedBody658_50 : StackLang.HolProg 64 :=
.seq RemovedBody658_44 RemovedBody658_49

def RemovedBody658_51 : StackLang.HolProg 64 :=
.seq RemovedBody658_43 RemovedBody658_50

def RemovedBody658_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody658_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody658_54 : StackLang.HolProg 64 :=
.seq RemovedBody658_52 RemovedBody658_53

def RemovedBody658_55 : StackLang.HolProg 64 :=
.call (some (RemovedBody658_51, 0, 658, 2)) (Sum.inl 116) (some (RemovedBody658_54, 658, 3))

def RemovedBody658_56 : StackLang.HolProg 64 :=
.seq RemovedBody658_42 RemovedBody658_55

def RemovedBody658_57 : StackLang.HolProg 64 :=
.seq RemovedBody658_41 RemovedBody658_56

def RemovedBody658_58 : StackLang.HolProg 64 :=
.seq RemovedBody658_40 RemovedBody658_57

def RemovedBody658_59 : StackLang.HolProg 64 :=
.seq RemovedBody658_11 RemovedBody658_58

def RemovedBody658_60 : StackLang.HolProg 64 :=
.seq RemovedBody658_8 RemovedBody658_59

def RemovedBody658_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody658_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody658_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 3486998266802970665#64)

def RemovedBody658_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 13281191951274694749#64)

def RemovedBody658_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 10917124144477883021#64)

def RemovedBody658_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 4332616871279656263#64)

def RemovedBody658_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody658_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody658_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody658_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody658_71 : StackLang.HolProg 64 :=
.seq RemovedBody658_69 RemovedBody658_70

def RemovedBody658_72 : StackLang.HolProg 64 :=
.seq RemovedBody658_68 RemovedBody658_71

def RemovedBody658_73 : StackLang.HolProg 64 :=
.seq RemovedBody658_67 RemovedBody658_72

def RemovedBody658_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody658_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2746#64)

def RemovedBody658_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody658_77 : StackLang.HolProg 64 :=
.seq RemovedBody658_75 RemovedBody658_76

def RemovedBody658_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody658_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody658_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody658_81 : StackLang.HolProg 64 :=
.seq RemovedBody658_79 RemovedBody658_80

def RemovedBody658_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody658_83 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody658_81 RemovedBody658_82

def RemovedBody658_84 : StackLang.HolProg 64 :=
.seq RemovedBody658_78 RemovedBody658_83

def RemovedBody658_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody658_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody658_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 658 5

def RemovedBody658_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody658_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody658_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody658_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody658_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody658_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody658_94 : StackLang.HolProg 64 :=
.seq RemovedBody658_92 RemovedBody658_93

def RemovedBody658_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody658_96 : StackLang.HolProg 64 :=
.seq RemovedBody658_94 RemovedBody658_95

def RemovedBody658_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody658_98 : StackLang.HolProg 64 :=
.seq RemovedBody658_96 RemovedBody658_97

def RemovedBody658_99 : StackLang.HolProg 64 :=
.seq RemovedBody658_91 RemovedBody658_98

def RemovedBody658_100 : StackLang.HolProg 64 :=
.seq RemovedBody658_90 RemovedBody658_99

def RemovedBody658_101 : StackLang.HolProg 64 :=
.seq RemovedBody658_89 RemovedBody658_100

def RemovedBody658_102 : StackLang.HolProg 64 :=
.seq RemovedBody658_88 RemovedBody658_101

def RemovedBody658_103 : StackLang.HolProg 64 :=
.seq RemovedBody658_87 RemovedBody658_102

def RemovedBody658_104 : StackLang.HolProg 64 :=
.seq RemovedBody658_86 RemovedBody658_103

def RemovedBody658_105 : StackLang.HolProg 64 :=
.seq RemovedBody658_85 RemovedBody658_104

def RemovedBody658_106 : StackLang.HolProg 64 :=
.seq RemovedBody658_84 RemovedBody658_105

def RemovedBody658_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody658_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody658_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody658_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody658_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody658_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody658_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody658_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody658_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody658_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody658_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody658_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody658_119 : StackLang.HolProg 64 :=
.seq RemovedBody658_117 RemovedBody658_118

def RemovedBody658_120 : StackLang.HolProg 64 :=
.seq RemovedBody658_116 RemovedBody658_119

def RemovedBody658_121 : StackLang.HolProg 64 :=
.seq RemovedBody658_115 RemovedBody658_120

def RemovedBody658_122 : StackLang.HolProg 64 :=
.seq RemovedBody658_114 RemovedBody658_121

def RemovedBody658_123 : StackLang.HolProg 64 :=
.seq RemovedBody658_113 RemovedBody658_122

def RemovedBody658_124 : StackLang.HolProg 64 :=
.seq RemovedBody658_112 RemovedBody658_123

def RemovedBody658_125 : StackLang.HolProg 64 :=
.seq RemovedBody658_111 RemovedBody658_124

def RemovedBody658_126 : StackLang.HolProg 64 :=
.seq RemovedBody658_110 RemovedBody658_125

def RemovedBody658_127 : StackLang.HolProg 64 :=
.seq RemovedBody658_109 RemovedBody658_126

def RemovedBody658_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody658_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody658_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody658_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody658_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody658_133 : StackLang.HolProg 64 :=
.seq RemovedBody658_131 RemovedBody658_132

def RemovedBody658_134 : StackLang.HolProg 64 :=
.seq RemovedBody658_130 RemovedBody658_133

def RemovedBody658_135 : StackLang.HolProg 64 :=
.seq RemovedBody658_129 RemovedBody658_134

def RemovedBody658_136 : StackLang.HolProg 64 :=
.seq RemovedBody658_128 RemovedBody658_135

def RemovedBody658_137 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody658_138 : StackLang.HolProg 64 :=
.seq RemovedBody658_136 RemovedBody658_137

def RemovedBody658_139 : StackLang.HolProg 64 :=
.call (some (RemovedBody658_127, 0, 658, 4)) (Sum.inl 106) (some (RemovedBody658_138, 658, 5))

def RemovedBody658_140 : StackLang.HolProg 64 :=
.seq RemovedBody658_108 RemovedBody658_139

def RemovedBody658_141 : StackLang.HolProg 64 :=
.seq RemovedBody658_107 RemovedBody658_140

def RemovedBody658_142 : StackLang.HolProg 64 :=
.seq RemovedBody658_106 RemovedBody658_141

def RemovedBody658_143 : StackLang.HolProg 64 :=
.seq RemovedBody658_77 RemovedBody658_142

def RemovedBody658_144 : StackLang.HolProg 64 :=
.seq RemovedBody658_74 RemovedBody658_143

def RemovedBody658_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody658_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody658_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody658_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody658_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody658_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 3486998266802970665#64)

def RemovedBody658_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 13281191951274694749#64)

def RemovedBody658_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 10917124144477883021#64)

def RemovedBody658_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 4332616871279656263#64)

def RemovedBody658_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody658_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody658_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody658_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 117

def RemovedBody658_158 : StackLang.HolProg 64 :=
.seq RemovedBody658_156 RemovedBody658_157

def RemovedBody658_159 : StackLang.HolProg 64 :=
.seq RemovedBody658_155 RemovedBody658_158

def RemovedBody658_160 : StackLang.HolProg 64 :=
.seq RemovedBody658_154 RemovedBody658_159

def RemovedBody658_161 : StackLang.HolProg 64 :=
.seq RemovedBody658_153 RemovedBody658_160

def RemovedBody658_162 : StackLang.HolProg 64 :=
.seq RemovedBody658_152 RemovedBody658_161

def RemovedBody658_163 : StackLang.HolProg 64 :=
.seq RemovedBody658_151 RemovedBody658_162

def RemovedBody658_164 : StackLang.HolProg 64 :=
.seq RemovedBody658_150 RemovedBody658_163

def RemovedBody658_165 : StackLang.HolProg 64 :=
.seq RemovedBody658_149 RemovedBody658_164

def RemovedBody658_166 : StackLang.HolProg 64 :=
.seq RemovedBody658_148 RemovedBody658_165

def RemovedBody658_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody658_168 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody658_166 RemovedBody658_167

def RemovedBody658_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody658_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody658_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody658_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody658_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody658_174 : StackLang.HolProg 64 :=
.seq RemovedBody658_172 RemovedBody658_173

def RemovedBody658_175 : StackLang.HolProg 64 :=
.seq RemovedBody658_171 RemovedBody658_174

def RemovedBody658_176 : StackLang.HolProg 64 :=
.seq RemovedBody658_170 RemovedBody658_175

def RemovedBody658_177 : StackLang.HolProg 64 :=
.seq RemovedBody658_169 RemovedBody658_176

def RemovedBody658_178 : StackLang.HolProg 64 :=
.seq RemovedBody658_168 RemovedBody658_177

def RemovedBody658_179 : StackLang.HolProg 64 :=
.seq RemovedBody658_147 RemovedBody658_178

def RemovedBody658_180 : StackLang.HolProg 64 :=
.seq RemovedBody658_146 RemovedBody658_179

def RemovedBody658_181 : StackLang.HolProg 64 :=
.seq RemovedBody658_145 RemovedBody658_180

def RemovedBody658_182 : StackLang.HolProg 64 :=
.seq RemovedBody658_144 RemovedBody658_181

def RemovedBody658_183 : StackLang.HolProg 64 :=
.seq RemovedBody658_73 RemovedBody658_182

def RemovedBody658_184 : StackLang.HolProg 64 :=
.seq RemovedBody658_66 RemovedBody658_183

def RemovedBody658_185 : StackLang.HolProg 64 :=
.seq RemovedBody658_65 RemovedBody658_184

def RemovedBody658_186 : StackLang.HolProg 64 :=
.seq RemovedBody658_64 RemovedBody658_185

def RemovedBody658_187 : StackLang.HolProg 64 :=
.seq RemovedBody658_63 RemovedBody658_186

def RemovedBody658_188 : StackLang.HolProg 64 :=
.seq RemovedBody658_62 RemovedBody658_187

def RemovedBody658_189 : StackLang.HolProg 64 :=
.seq RemovedBody658_61 RemovedBody658_188

def RemovedBody658_190 : StackLang.HolProg 64 :=
.seq RemovedBody658_60 RemovedBody658_189

def RemovedBody658_191 : StackLang.HolProg 64 :=
.seq RemovedBody658_7 RemovedBody658_190

def RemovedBody658_192 : StackLang.HolProg 64 :=
.seq RemovedBody658_6 RemovedBody658_191

def Removed658 : Nat × StackLang.HolProg 64 := (658, RemovedBody658_192)
theorem Removed658_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc658 = Removed658 := by
  kernel_rfl
#print axioms Removed658_eq
end InitECandidate.Proofs.BackendStages
