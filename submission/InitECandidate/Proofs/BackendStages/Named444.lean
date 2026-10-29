import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed444
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody444_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody444_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody444_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody444_3 : StackLang.HolProg 64 :=
.seq NamedBody444_1 NamedBody444_2

def NamedBody444_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody444_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody444_3 NamedBody444_4

def NamedBody444_6 : StackLang.HolProg 64 :=
.seq NamedBody444_0 NamedBody444_5

def NamedBody444_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody444_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody444_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody444_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody444_11 : StackLang.HolProg 64 :=
.seq NamedBody444_9 NamedBody444_10

def NamedBody444_12 : StackLang.HolProg 64 :=
.seq NamedBody444_8 NamedBody444_11

def NamedBody444_13 : StackLang.HolProg 64 :=
.seq NamedBody444_7 NamedBody444_12

def NamedBody444_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody444_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1341#64)

def NamedBody444_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody444_17 : StackLang.HolProg 64 :=
.seq NamedBody444_15 NamedBody444_16

def NamedBody444_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody444_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody444_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody444_21 : StackLang.HolProg 64 :=
.seq NamedBody444_19 NamedBody444_20

def NamedBody444_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody444_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody444_21 NamedBody444_22

def NamedBody444_24 : StackLang.HolProg 64 :=
.seq NamedBody444_18 NamedBody444_23

def NamedBody444_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody444_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody444_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 444 3

def NamedBody444_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody444_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody444_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody444_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody444_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody444_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody444_34 : StackLang.HolProg 64 :=
.seq NamedBody444_32 NamedBody444_33

def NamedBody444_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody444_36 : StackLang.HolProg 64 :=
.seq NamedBody444_34 NamedBody444_35

def NamedBody444_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody444_38 : StackLang.HolProg 64 :=
.seq NamedBody444_36 NamedBody444_37

def NamedBody444_39 : StackLang.HolProg 64 :=
.seq NamedBody444_31 NamedBody444_38

def NamedBody444_40 : StackLang.HolProg 64 :=
.seq NamedBody444_30 NamedBody444_39

def NamedBody444_41 : StackLang.HolProg 64 :=
.seq NamedBody444_29 NamedBody444_40

def NamedBody444_42 : StackLang.HolProg 64 :=
.seq NamedBody444_28 NamedBody444_41

def NamedBody444_43 : StackLang.HolProg 64 :=
.seq NamedBody444_27 NamedBody444_42

def NamedBody444_44 : StackLang.HolProg 64 :=
.seq NamedBody444_26 NamedBody444_43

def NamedBody444_45 : StackLang.HolProg 64 :=
.seq NamedBody444_25 NamedBody444_44

def NamedBody444_46 : StackLang.HolProg 64 :=
.seq NamedBody444_24 NamedBody444_45

def NamedBody444_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody444_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody444_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody444_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody444_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody444_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody444_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody444_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody444_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody444_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody444_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody444_58 : StackLang.HolProg 64 :=
.seq NamedBody444_56 NamedBody444_57

def NamedBody444_59 : StackLang.HolProg 64 :=
.seq NamedBody444_55 NamedBody444_58

def NamedBody444_60 : StackLang.HolProg 64 :=
.seq NamedBody444_54 NamedBody444_59

def NamedBody444_61 : StackLang.HolProg 64 :=
.seq NamedBody444_53 NamedBody444_60

def NamedBody444_62 : StackLang.HolProg 64 :=
.seq NamedBody444_52 NamedBody444_61

def NamedBody444_63 : StackLang.HolProg 64 :=
.seq NamedBody444_51 NamedBody444_62

def NamedBody444_64 : StackLang.HolProg 64 :=
.seq NamedBody444_50 NamedBody444_63

def NamedBody444_65 : StackLang.HolProg 64 :=
.seq NamedBody444_49 NamedBody444_64

def NamedBody444_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody444_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody444_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody444_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody444_70 : StackLang.HolProg 64 :=
.seq NamedBody444_68 NamedBody444_69

def NamedBody444_71 : StackLang.HolProg 64 :=
.seq NamedBody444_67 NamedBody444_70

def NamedBody444_72 : StackLang.HolProg 64 :=
.seq NamedBody444_66 NamedBody444_71

def NamedBody444_73 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody444_74 : StackLang.HolProg 64 :=
.seq NamedBody444_72 NamedBody444_73

def NamedBody444_75 : StackLang.HolProg 64 :=
.call (some (NamedBody444_65, 1, 444, 2)) (Sum.inl 439) (some (NamedBody444_74, 444, 3))

def NamedBody444_76 : StackLang.HolProg 64 :=
.seq NamedBody444_48 NamedBody444_75

def NamedBody444_77 : StackLang.HolProg 64 :=
.seq NamedBody444_47 NamedBody444_76

def NamedBody444_78 : StackLang.HolProg 64 :=
.seq NamedBody444_46 NamedBody444_77

def NamedBody444_79 : StackLang.HolProg 64 :=
.seq NamedBody444_17 NamedBody444_78

def NamedBody444_80 : StackLang.HolProg 64 :=
.seq NamedBody444_14 NamedBody444_79

def NamedBody444_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody444_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody444_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 24#64))

def NamedBody444_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody444_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 8#64))

def NamedBody444_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody444_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 0#64))

def NamedBody444_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def NamedBody444_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody444_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody444_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody444_92 : StackLang.HolProg 64 :=
.seq NamedBody444_90 NamedBody444_91

def NamedBody444_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody444_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody444_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody444_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 12 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def NamedBody444_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody444_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody444_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 28
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 0#64))

def NamedBody444_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody444_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody444_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody444_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 8#64))

def NamedBody444_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody444_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody444_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody444_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody444_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody444_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 0#64))

def NamedBody444_110 : StackLang.HolProg 64 :=
.seq NamedBody444_108 NamedBody444_109

def NamedBody444_111 : StackLang.HolProg 64 :=
.seq NamedBody444_107 NamedBody444_110

def NamedBody444_112 : StackLang.HolProg 64 :=
.seq NamedBody444_106 NamedBody444_111

def NamedBody444_113 : StackLang.HolProg 64 :=
.seq NamedBody444_105 NamedBody444_112

def NamedBody444_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody444_115 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody444_113 NamedBody444_114

def NamedBody444_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody444_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody444_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody444_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody444_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody444_121 : StackLang.HolProg 64 :=
.seq NamedBody444_119 NamedBody444_120

def NamedBody444_122 : StackLang.HolProg 64 :=
.seq NamedBody444_118 NamedBody444_121

def NamedBody444_123 : StackLang.HolProg 64 :=
.seq NamedBody444_117 NamedBody444_122

def NamedBody444_124 : StackLang.HolProg 64 :=
.seq NamedBody444_116 NamedBody444_123

def NamedBody444_125 : StackLang.HolProg 64 :=
.seq NamedBody444_115 NamedBody444_124

def NamedBody444_126 : StackLang.HolProg 64 :=
.seq NamedBody444_104 NamedBody444_125

def NamedBody444_127 : StackLang.HolProg 64 :=
.seq NamedBody444_103 NamedBody444_126

def NamedBody444_128 : StackLang.HolProg 64 :=
.seq NamedBody444_102 NamedBody444_127

def NamedBody444_129 : StackLang.HolProg 64 :=
.seq NamedBody444_101 NamedBody444_128

def NamedBody444_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody444_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody444_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody444_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody444_134 : StackLang.HolProg 64 :=
.seq NamedBody444_132 NamedBody444_133

def NamedBody444_135 : StackLang.HolProg 64 :=
.seq NamedBody444_131 NamedBody444_134

def NamedBody444_136 : StackLang.HolProg 64 :=
.seq NamedBody444_130 NamedBody444_135

def NamedBody444_137 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 28 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 27) NamedBody444_129 NamedBody444_136

def NamedBody444_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody444_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody444_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody444_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody444_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def NamedBody444_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody444_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody444_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody444_146 : StackLang.HolProg 64 :=
.seq NamedBody444_144 NamedBody444_145

def NamedBody444_147 : StackLang.HolProg 64 :=
.seq NamedBody444_143 NamedBody444_146

def NamedBody444_148 : StackLang.HolProg 64 :=
.seq NamedBody444_142 NamedBody444_147

def NamedBody444_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def NamedBody444_150 : StackLang.HolProg 64 :=
.seq NamedBody444_148 NamedBody444_149

def NamedBody444_151 : StackLang.HolProg 64 :=
.seq NamedBody444_141 NamedBody444_150

def NamedBody444_152 : StackLang.HolProg 64 :=
.seq NamedBody444_140 NamedBody444_151

def NamedBody444_153 : StackLang.HolProg 64 :=
.seq NamedBody444_139 NamedBody444_152

def NamedBody444_154 : StackLang.HolProg 64 :=
.seq NamedBody444_138 NamedBody444_153

def NamedBody444_155 : StackLang.HolProg 64 :=
.seq NamedBody444_137 NamedBody444_154

def NamedBody444_156 : StackLang.HolProg 64 :=
.seq NamedBody444_100 NamedBody444_155

def NamedBody444_157 : StackLang.HolProg 64 :=
.seq NamedBody444_99 NamedBody444_156

def NamedBody444_158 : StackLang.HolProg 64 :=
.seq NamedBody444_98 NamedBody444_157

def NamedBody444_159 : StackLang.HolProg 64 :=
.seq NamedBody444_97 NamedBody444_158

def NamedBody444_160 : StackLang.HolProg 64 :=
.seq NamedBody444_96 NamedBody444_159

def NamedBody444_161 : StackLang.HolProg 64 :=
.seq NamedBody444_95 NamedBody444_160

def NamedBody444_162 : StackLang.HolProg 64 :=
.seq NamedBody444_94 NamedBody444_161

def NamedBody444_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody444_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody444_165 : StackLang.HolProg 64 :=
.seq NamedBody444_163 NamedBody444_164

def NamedBody444_166 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedBody444_162 NamedBody444_165

def NamedBody444_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody444_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody444_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody444_170 : StackLang.HolProg 64 :=
.seq NamedBody444_168 NamedBody444_169

def NamedBody444_171 : StackLang.HolProg 64 :=
.seq NamedBody444_167 NamedBody444_170

def NamedBody444_172 : StackLang.HolProg 64 :=
.seq NamedBody444_166 NamedBody444_171

def NamedBody444_173 : StackLang.HolProg 64 :=
.seq NamedBody444_93 NamedBody444_172

def NamedBody444_174 : StackLang.HolProg 64 :=
.loop NamedBody444_173

def NamedBody444_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody444_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody444_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 16#64)

def NamedBody444_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody444_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody444_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1342#64)

def NamedBody444_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody444_182 : StackLang.HolProg 64 :=
.seq NamedBody444_180 NamedBody444_181

def NamedBody444_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody444_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody444_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody444_186 : StackLang.HolProg 64 :=
.seq NamedBody444_184 NamedBody444_185

def NamedBody444_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody444_188 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody444_186 NamedBody444_187

def NamedBody444_189 : StackLang.HolProg 64 :=
.seq NamedBody444_183 NamedBody444_188

def NamedBody444_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody444_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody444_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 444 5

def NamedBody444_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody444_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody444_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody444_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody444_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody444_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody444_199 : StackLang.HolProg 64 :=
.seq NamedBody444_197 NamedBody444_198

def NamedBody444_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody444_201 : StackLang.HolProg 64 :=
.seq NamedBody444_199 NamedBody444_200

def NamedBody444_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody444_203 : StackLang.HolProg 64 :=
.seq NamedBody444_201 NamedBody444_202

def NamedBody444_204 : StackLang.HolProg 64 :=
.seq NamedBody444_196 NamedBody444_203

def NamedBody444_205 : StackLang.HolProg 64 :=
.seq NamedBody444_195 NamedBody444_204

def NamedBody444_206 : StackLang.HolProg 64 :=
.seq NamedBody444_194 NamedBody444_205

def NamedBody444_207 : StackLang.HolProg 64 :=
.seq NamedBody444_193 NamedBody444_206

def NamedBody444_208 : StackLang.HolProg 64 :=
.seq NamedBody444_192 NamedBody444_207

def NamedBody444_209 : StackLang.HolProg 64 :=
.seq NamedBody444_191 NamedBody444_208

def NamedBody444_210 : StackLang.HolProg 64 :=
.seq NamedBody444_190 NamedBody444_209

def NamedBody444_211 : StackLang.HolProg 64 :=
.seq NamedBody444_189 NamedBody444_210

def NamedBody444_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody444_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody444_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody444_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody444_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody444_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody444_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody444_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody444_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody444_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody444_222 : StackLang.HolProg 64 :=
.seq NamedBody444_220 NamedBody444_221

def NamedBody444_223 : StackLang.HolProg 64 :=
.seq NamedBody444_219 NamedBody444_222

def NamedBody444_224 : StackLang.HolProg 64 :=
.seq NamedBody444_218 NamedBody444_223

def NamedBody444_225 : StackLang.HolProg 64 :=
.seq NamedBody444_217 NamedBody444_224

def NamedBody444_226 : StackLang.HolProg 64 :=
.seq NamedBody444_216 NamedBody444_225

def NamedBody444_227 : StackLang.HolProg 64 :=
.seq NamedBody444_215 NamedBody444_226

def NamedBody444_228 : StackLang.HolProg 64 :=
.seq NamedBody444_214 NamedBody444_227

def NamedBody444_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody444_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody444_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody444_232 : StackLang.HolProg 64 :=
.seq NamedBody444_230 NamedBody444_231

def NamedBody444_233 : StackLang.HolProg 64 :=
.seq NamedBody444_229 NamedBody444_232

def NamedBody444_234 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody444_235 : StackLang.HolProg 64 :=
.seq NamedBody444_233 NamedBody444_234

def NamedBody444_236 : StackLang.HolProg 64 :=
.call (some (NamedBody444_228, 1, 444, 4)) (Sum.inl 437) (some (NamedBody444_235, 444, 5))

def NamedBody444_237 : StackLang.HolProg 64 :=
.seq NamedBody444_213 NamedBody444_236

def NamedBody444_238 : StackLang.HolProg 64 :=
.seq NamedBody444_212 NamedBody444_237

def NamedBody444_239 : StackLang.HolProg 64 :=
.seq NamedBody444_211 NamedBody444_238

def NamedBody444_240 : StackLang.HolProg 64 :=
.seq NamedBody444_182 NamedBody444_239

def NamedBody444_241 : StackLang.HolProg 64 :=
.seq NamedBody444_179 NamedBody444_240

def NamedBody444_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody444_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody444_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def NamedBody444_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody444_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody444_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody444_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody444_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody444_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody444_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody444_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 13

def NamedBody444_253 : StackLang.HolProg 64 :=
.seq NamedBody444_251 NamedBody444_252

def NamedBody444_254 : StackLang.HolProg 64 :=
.seq NamedBody444_250 NamedBody444_253

def NamedBody444_255 : StackLang.HolProg 64 :=
.seq NamedBody444_249 NamedBody444_254

def NamedBody444_256 : StackLang.HolProg 64 :=
.seq NamedBody444_248 NamedBody444_255

def NamedBody444_257 : StackLang.HolProg 64 :=
.seq NamedBody444_247 NamedBody444_256

def NamedBody444_258 : StackLang.HolProg 64 :=
.seq NamedBody444_246 NamedBody444_257

def NamedBody444_259 : StackLang.HolProg 64 :=
.seq NamedBody444_245 NamedBody444_258

def NamedBody444_260 : StackLang.HolProg 64 :=
.seq NamedBody444_244 NamedBody444_259

def NamedBody444_261 : StackLang.HolProg 64 :=
.seq NamedBody444_243 NamedBody444_260

def NamedBody444_262 : StackLang.HolProg 64 :=
.seq NamedBody444_242 NamedBody444_261

def NamedBody444_263 : StackLang.HolProg 64 :=
.seq NamedBody444_241 NamedBody444_262

def NamedBody444_264 : StackLang.HolProg 64 :=
.seq NamedBody444_178 NamedBody444_263

def NamedBody444_265 : StackLang.HolProg 64 :=
.seq NamedBody444_177 NamedBody444_264

def NamedBody444_266 : StackLang.HolProg 64 :=
.seq NamedBody444_176 NamedBody444_265

def NamedBody444_267 : StackLang.HolProg 64 :=
.seq NamedBody444_175 NamedBody444_266

def NamedBody444_268 : StackLang.HolProg 64 :=
.seq NamedBody444_174 NamedBody444_267

def NamedBody444_269 : StackLang.HolProg 64 :=
.seq NamedBody444_92 NamedBody444_268

def NamedBody444_270 : StackLang.HolProg 64 :=
.seq NamedBody444_89 NamedBody444_269

def NamedBody444_271 : StackLang.HolProg 64 :=
.seq NamedBody444_88 NamedBody444_270

def NamedBody444_272 : StackLang.HolProg 64 :=
.seq NamedBody444_87 NamedBody444_271

def NamedBody444_273 : StackLang.HolProg 64 :=
.seq NamedBody444_86 NamedBody444_272

def NamedBody444_274 : StackLang.HolProg 64 :=
.seq NamedBody444_85 NamedBody444_273

def NamedBody444_275 : StackLang.HolProg 64 :=
.seq NamedBody444_84 NamedBody444_274

def NamedBody444_276 : StackLang.HolProg 64 :=
.seq NamedBody444_83 NamedBody444_275

def NamedBody444_277 : StackLang.HolProg 64 :=
.seq NamedBody444_82 NamedBody444_276

def NamedBody444_278 : StackLang.HolProg 64 :=
.seq NamedBody444_81 NamedBody444_277

def NamedBody444_279 : StackLang.HolProg 64 :=
.seq NamedBody444_80 NamedBody444_278

def NamedBody444_280 : StackLang.HolProg 64 :=
.seq NamedBody444_13 NamedBody444_279

def NamedBody444_281 : StackLang.HolProg 64 :=
.seq NamedBody444_6 NamedBody444_280

def Named444 : Nat × StackLang.HolProg 64 := (444, NamedBody444_281)
theorem Named444_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed444 = Named444 := by
  kernel_rfl
#print axioms Named444_eq
end InitECandidate.Proofs.BackendStages
