import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed658
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody658_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody658_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody658_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody658_3 : StackLang.HolProg 64 :=
.seq NamedBody658_1 NamedBody658_2

def NamedBody658_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody658_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody658_3 NamedBody658_4

def NamedBody658_6 : StackLang.HolProg 64 :=
.seq NamedBody658_0 NamedBody658_5

def NamedBody658_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody658_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody658_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2745#64)

def NamedBody658_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody658_11 : StackLang.HolProg 64 :=
.seq NamedBody658_9 NamedBody658_10

def NamedBody658_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody658_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody658_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody658_15 : StackLang.HolProg 64 :=
.seq NamedBody658_13 NamedBody658_14

def NamedBody658_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody658_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody658_15 NamedBody658_16

def NamedBody658_18 : StackLang.HolProg 64 :=
.seq NamedBody658_12 NamedBody658_17

def NamedBody658_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody658_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody658_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 658 3

def NamedBody658_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody658_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody658_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody658_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody658_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody658_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody658_28 : StackLang.HolProg 64 :=
.seq NamedBody658_26 NamedBody658_27

def NamedBody658_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody658_30 : StackLang.HolProg 64 :=
.seq NamedBody658_28 NamedBody658_29

def NamedBody658_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody658_32 : StackLang.HolProg 64 :=
.seq NamedBody658_30 NamedBody658_31

def NamedBody658_33 : StackLang.HolProg 64 :=
.seq NamedBody658_25 NamedBody658_32

def NamedBody658_34 : StackLang.HolProg 64 :=
.seq NamedBody658_24 NamedBody658_33

def NamedBody658_35 : StackLang.HolProg 64 :=
.seq NamedBody658_23 NamedBody658_34

def NamedBody658_36 : StackLang.HolProg 64 :=
.seq NamedBody658_22 NamedBody658_35

def NamedBody658_37 : StackLang.HolProg 64 :=
.seq NamedBody658_21 NamedBody658_36

def NamedBody658_38 : StackLang.HolProg 64 :=
.seq NamedBody658_20 NamedBody658_37

def NamedBody658_39 : StackLang.HolProg 64 :=
.seq NamedBody658_19 NamedBody658_38

def NamedBody658_40 : StackLang.HolProg 64 :=
.seq NamedBody658_18 NamedBody658_39

def NamedBody658_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody658_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody658_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody658_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody658_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody658_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody658_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody658_48 : StackLang.HolProg 64 :=
.seq NamedBody658_46 NamedBody658_47

def NamedBody658_49 : StackLang.HolProg 64 :=
.seq NamedBody658_45 NamedBody658_48

def NamedBody658_50 : StackLang.HolProg 64 :=
.seq NamedBody658_44 NamedBody658_49

def NamedBody658_51 : StackLang.HolProg 64 :=
.seq NamedBody658_43 NamedBody658_50

def NamedBody658_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody658_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody658_54 : StackLang.HolProg 64 :=
.seq NamedBody658_52 NamedBody658_53

def NamedBody658_55 : StackLang.HolProg 64 :=
.call (some (NamedBody658_51, 1, 658, 2)) (Sum.inl 116) (some (NamedBody658_54, 658, 3))

def NamedBody658_56 : StackLang.HolProg 64 :=
.seq NamedBody658_42 NamedBody658_55

def NamedBody658_57 : StackLang.HolProg 64 :=
.seq NamedBody658_41 NamedBody658_56

def NamedBody658_58 : StackLang.HolProg 64 :=
.seq NamedBody658_40 NamedBody658_57

def NamedBody658_59 : StackLang.HolProg 64 :=
.seq NamedBody658_11 NamedBody658_58

def NamedBody658_60 : StackLang.HolProg 64 :=
.seq NamedBody658_8 NamedBody658_59

def NamedBody658_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody658_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody658_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 3486998266802970665#64)

def NamedBody658_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 13281191951274694749#64)

def NamedBody658_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 10917124144477883021#64)

def NamedBody658_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 4332616871279656263#64)

def NamedBody658_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody658_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody658_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody658_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody658_71 : StackLang.HolProg 64 :=
.seq NamedBody658_69 NamedBody658_70

def NamedBody658_72 : StackLang.HolProg 64 :=
.seq NamedBody658_68 NamedBody658_71

def NamedBody658_73 : StackLang.HolProg 64 :=
.seq NamedBody658_67 NamedBody658_72

def NamedBody658_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody658_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2746#64)

def NamedBody658_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody658_77 : StackLang.HolProg 64 :=
.seq NamedBody658_75 NamedBody658_76

def NamedBody658_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody658_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody658_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody658_81 : StackLang.HolProg 64 :=
.seq NamedBody658_79 NamedBody658_80

def NamedBody658_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody658_83 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody658_81 NamedBody658_82

def NamedBody658_84 : StackLang.HolProg 64 :=
.seq NamedBody658_78 NamedBody658_83

def NamedBody658_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody658_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody658_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 658 5

def NamedBody658_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody658_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody658_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody658_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody658_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody658_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody658_94 : StackLang.HolProg 64 :=
.seq NamedBody658_92 NamedBody658_93

def NamedBody658_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody658_96 : StackLang.HolProg 64 :=
.seq NamedBody658_94 NamedBody658_95

def NamedBody658_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody658_98 : StackLang.HolProg 64 :=
.seq NamedBody658_96 NamedBody658_97

def NamedBody658_99 : StackLang.HolProg 64 :=
.seq NamedBody658_91 NamedBody658_98

def NamedBody658_100 : StackLang.HolProg 64 :=
.seq NamedBody658_90 NamedBody658_99

def NamedBody658_101 : StackLang.HolProg 64 :=
.seq NamedBody658_89 NamedBody658_100

def NamedBody658_102 : StackLang.HolProg 64 :=
.seq NamedBody658_88 NamedBody658_101

def NamedBody658_103 : StackLang.HolProg 64 :=
.seq NamedBody658_87 NamedBody658_102

def NamedBody658_104 : StackLang.HolProg 64 :=
.seq NamedBody658_86 NamedBody658_103

def NamedBody658_105 : StackLang.HolProg 64 :=
.seq NamedBody658_85 NamedBody658_104

def NamedBody658_106 : StackLang.HolProg 64 :=
.seq NamedBody658_84 NamedBody658_105

def NamedBody658_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody658_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody658_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody658_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody658_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody658_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody658_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody658_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody658_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody658_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody658_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody658_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody658_119 : StackLang.HolProg 64 :=
.seq NamedBody658_117 NamedBody658_118

def NamedBody658_120 : StackLang.HolProg 64 :=
.seq NamedBody658_116 NamedBody658_119

def NamedBody658_121 : StackLang.HolProg 64 :=
.seq NamedBody658_115 NamedBody658_120

def NamedBody658_122 : StackLang.HolProg 64 :=
.seq NamedBody658_114 NamedBody658_121

def NamedBody658_123 : StackLang.HolProg 64 :=
.seq NamedBody658_113 NamedBody658_122

def NamedBody658_124 : StackLang.HolProg 64 :=
.seq NamedBody658_112 NamedBody658_123

def NamedBody658_125 : StackLang.HolProg 64 :=
.seq NamedBody658_111 NamedBody658_124

def NamedBody658_126 : StackLang.HolProg 64 :=
.seq NamedBody658_110 NamedBody658_125

def NamedBody658_127 : StackLang.HolProg 64 :=
.seq NamedBody658_109 NamedBody658_126

def NamedBody658_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody658_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody658_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody658_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody658_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody658_133 : StackLang.HolProg 64 :=
.seq NamedBody658_131 NamedBody658_132

def NamedBody658_134 : StackLang.HolProg 64 :=
.seq NamedBody658_130 NamedBody658_133

def NamedBody658_135 : StackLang.HolProg 64 :=
.seq NamedBody658_129 NamedBody658_134

def NamedBody658_136 : StackLang.HolProg 64 :=
.seq NamedBody658_128 NamedBody658_135

def NamedBody658_137 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody658_138 : StackLang.HolProg 64 :=
.seq NamedBody658_136 NamedBody658_137

def NamedBody658_139 : StackLang.HolProg 64 :=
.call (some (NamedBody658_127, 1, 658, 4)) (Sum.inl 106) (some (NamedBody658_138, 658, 5))

def NamedBody658_140 : StackLang.HolProg 64 :=
.seq NamedBody658_108 NamedBody658_139

def NamedBody658_141 : StackLang.HolProg 64 :=
.seq NamedBody658_107 NamedBody658_140

def NamedBody658_142 : StackLang.HolProg 64 :=
.seq NamedBody658_106 NamedBody658_141

def NamedBody658_143 : StackLang.HolProg 64 :=
.seq NamedBody658_77 NamedBody658_142

def NamedBody658_144 : StackLang.HolProg 64 :=
.seq NamedBody658_74 NamedBody658_143

def NamedBody658_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody658_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody658_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody658_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody658_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody658_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 3486998266802970665#64)

def NamedBody658_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 13281191951274694749#64)

def NamedBody658_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 10917124144477883021#64)

def NamedBody658_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 4332616871279656263#64)

def NamedBody658_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody658_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody658_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody658_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 117

def NamedBody658_158 : StackLang.HolProg 64 :=
.seq NamedBody658_156 NamedBody658_157

def NamedBody658_159 : StackLang.HolProg 64 :=
.seq NamedBody658_155 NamedBody658_158

def NamedBody658_160 : StackLang.HolProg 64 :=
.seq NamedBody658_154 NamedBody658_159

def NamedBody658_161 : StackLang.HolProg 64 :=
.seq NamedBody658_153 NamedBody658_160

def NamedBody658_162 : StackLang.HolProg 64 :=
.seq NamedBody658_152 NamedBody658_161

def NamedBody658_163 : StackLang.HolProg 64 :=
.seq NamedBody658_151 NamedBody658_162

def NamedBody658_164 : StackLang.HolProg 64 :=
.seq NamedBody658_150 NamedBody658_163

def NamedBody658_165 : StackLang.HolProg 64 :=
.seq NamedBody658_149 NamedBody658_164

def NamedBody658_166 : StackLang.HolProg 64 :=
.seq NamedBody658_148 NamedBody658_165

def NamedBody658_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody658_168 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody658_166 NamedBody658_167

def NamedBody658_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody658_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody658_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody658_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody658_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody658_174 : StackLang.HolProg 64 :=
.seq NamedBody658_172 NamedBody658_173

def NamedBody658_175 : StackLang.HolProg 64 :=
.seq NamedBody658_171 NamedBody658_174

def NamedBody658_176 : StackLang.HolProg 64 :=
.seq NamedBody658_170 NamedBody658_175

def NamedBody658_177 : StackLang.HolProg 64 :=
.seq NamedBody658_169 NamedBody658_176

def NamedBody658_178 : StackLang.HolProg 64 :=
.seq NamedBody658_168 NamedBody658_177

def NamedBody658_179 : StackLang.HolProg 64 :=
.seq NamedBody658_147 NamedBody658_178

def NamedBody658_180 : StackLang.HolProg 64 :=
.seq NamedBody658_146 NamedBody658_179

def NamedBody658_181 : StackLang.HolProg 64 :=
.seq NamedBody658_145 NamedBody658_180

def NamedBody658_182 : StackLang.HolProg 64 :=
.seq NamedBody658_144 NamedBody658_181

def NamedBody658_183 : StackLang.HolProg 64 :=
.seq NamedBody658_73 NamedBody658_182

def NamedBody658_184 : StackLang.HolProg 64 :=
.seq NamedBody658_66 NamedBody658_183

def NamedBody658_185 : StackLang.HolProg 64 :=
.seq NamedBody658_65 NamedBody658_184

def NamedBody658_186 : StackLang.HolProg 64 :=
.seq NamedBody658_64 NamedBody658_185

def NamedBody658_187 : StackLang.HolProg 64 :=
.seq NamedBody658_63 NamedBody658_186

def NamedBody658_188 : StackLang.HolProg 64 :=
.seq NamedBody658_62 NamedBody658_187

def NamedBody658_189 : StackLang.HolProg 64 :=
.seq NamedBody658_61 NamedBody658_188

def NamedBody658_190 : StackLang.HolProg 64 :=
.seq NamedBody658_60 NamedBody658_189

def NamedBody658_191 : StackLang.HolProg 64 :=
.seq NamedBody658_7 NamedBody658_190

def NamedBody658_192 : StackLang.HolProg 64 :=
.seq NamedBody658_6 NamedBody658_191

def Named658 : Nat × StackLang.HolProg 64 := (658, NamedBody658_192)
theorem Named658_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed658 = Named658 := by
  kernel_rfl
#print axioms Named658_eq
end InitECandidate.Proofs.BackendStages
