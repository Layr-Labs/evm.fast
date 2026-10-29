import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed345
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody345_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody345_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody345_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody345_3 : StackLang.HolProg 64 :=
.seq NamedBody345_1 NamedBody345_2

def NamedBody345_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody345_3 NamedBody345_4

def NamedBody345_6 : StackLang.HolProg 64 :=
.seq NamedBody345_0 NamedBody345_5

def NamedBody345_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody345_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody345_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody345_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody345_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody345_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 6#64)

def NamedBody345_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_15 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody345_16 : StackLang.HolProg 64 :=
.seq NamedBody345_14 NamedBody345_15

def NamedBody345_17 : StackLang.HolProg 64 :=
.seq NamedBody345_13 NamedBody345_16

def NamedBody345_18 : StackLang.HolProg 64 :=
.seq NamedBody345_12 NamedBody345_17

def NamedBody345_19 : StackLang.HolProg 64 :=
.seq NamedBody345_11 NamedBody345_18

def NamedBody345_20 : StackLang.HolProg 64 :=
.seq NamedBody345_10 NamedBody345_19

def NamedBody345_21 : StackLang.HolProg 64 :=
.seq NamedBody345_9 NamedBody345_20

def NamedBody345_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody345_21 NamedBody345_22

def NamedBody345_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody345_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody345_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 0#64))

def NamedBody345_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody345_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 400#64)

def NamedBody345_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody345_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody345_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_33 : StackLang.HolProg 64 :=
.seq NamedBody345_31 NamedBody345_32

def NamedBody345_34 : StackLang.HolProg 64 :=
.seq NamedBody345_30 NamedBody345_33

def NamedBody345_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1000#64)

def NamedBody345_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody345_38 : StackLang.HolProg 64 :=
.seq NamedBody345_36 NamedBody345_37

def NamedBody345_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody345_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody345_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody345_42 : StackLang.HolProg 64 :=
.seq NamedBody345_40 NamedBody345_41

def NamedBody345_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_44 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody345_42 NamedBody345_43

def NamedBody345_45 : StackLang.HolProg 64 :=
.seq NamedBody345_39 NamedBody345_44

def NamedBody345_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody345_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody345_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 345 3

def NamedBody345_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody345_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody345_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody345_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody345_55 : StackLang.HolProg 64 :=
.seq NamedBody345_53 NamedBody345_54

def NamedBody345_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody345_57 : StackLang.HolProg 64 :=
.seq NamedBody345_55 NamedBody345_56

def NamedBody345_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody345_59 : StackLang.HolProg 64 :=
.seq NamedBody345_57 NamedBody345_58

def NamedBody345_60 : StackLang.HolProg 64 :=
.seq NamedBody345_52 NamedBody345_59

def NamedBody345_61 : StackLang.HolProg 64 :=
.seq NamedBody345_51 NamedBody345_60

def NamedBody345_62 : StackLang.HolProg 64 :=
.seq NamedBody345_50 NamedBody345_61

def NamedBody345_63 : StackLang.HolProg 64 :=
.seq NamedBody345_49 NamedBody345_62

def NamedBody345_64 : StackLang.HolProg 64 :=
.seq NamedBody345_48 NamedBody345_63

def NamedBody345_65 : StackLang.HolProg 64 :=
.seq NamedBody345_47 NamedBody345_64

def NamedBody345_66 : StackLang.HolProg 64 :=
.seq NamedBody345_46 NamedBody345_65

def NamedBody345_67 : StackLang.HolProg 64 :=
.seq NamedBody345_45 NamedBody345_66

def NamedBody345_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody345_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody345_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody345_75 : StackLang.HolProg 64 :=
.seq NamedBody345_73 NamedBody345_74

def NamedBody345_76 : StackLang.HolProg 64 :=
.seq NamedBody345_72 NamedBody345_75

def NamedBody345_77 : StackLang.HolProg 64 :=
.seq NamedBody345_71 NamedBody345_76

def NamedBody345_78 : StackLang.HolProg 64 :=
.seq NamedBody345_70 NamedBody345_77

def NamedBody345_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_80 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody345_81 : StackLang.HolProg 64 :=
.seq NamedBody345_79 NamedBody345_80

def NamedBody345_82 : StackLang.HolProg 64 :=
.call (some (NamedBody345_78, 1, 345, 2)) (Sum.inl 68) (some (NamedBody345_81, 345, 3))

def NamedBody345_83 : StackLang.HolProg 64 :=
.seq NamedBody345_69 NamedBody345_82

def NamedBody345_84 : StackLang.HolProg 64 :=
.seq NamedBody345_68 NamedBody345_83

def NamedBody345_85 : StackLang.HolProg 64 :=
.seq NamedBody345_67 NamedBody345_84

def NamedBody345_86 : StackLang.HolProg 64 :=
.seq NamedBody345_38 NamedBody345_85

def NamedBody345_87 : StackLang.HolProg 64 :=
.seq NamedBody345_35 NamedBody345_86

def NamedBody345_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody345_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody345_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 400#64)

def NamedBody345_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody345_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1001#64)

def NamedBody345_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody345_95 : StackLang.HolProg 64 :=
.seq NamedBody345_93 NamedBody345_94

def NamedBody345_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody345_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody345_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody345_99 : StackLang.HolProg 64 :=
.seq NamedBody345_97 NamedBody345_98

def NamedBody345_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_101 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody345_99 NamedBody345_100

def NamedBody345_102 : StackLang.HolProg 64 :=
.seq NamedBody345_96 NamedBody345_101

def NamedBody345_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody345_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody345_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 345 5

def NamedBody345_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody345_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody345_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody345_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody345_112 : StackLang.HolProg 64 :=
.seq NamedBody345_110 NamedBody345_111

def NamedBody345_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody345_114 : StackLang.HolProg 64 :=
.seq NamedBody345_112 NamedBody345_113

def NamedBody345_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody345_116 : StackLang.HolProg 64 :=
.seq NamedBody345_114 NamedBody345_115

def NamedBody345_117 : StackLang.HolProg 64 :=
.seq NamedBody345_109 NamedBody345_116

def NamedBody345_118 : StackLang.HolProg 64 :=
.seq NamedBody345_108 NamedBody345_117

def NamedBody345_119 : StackLang.HolProg 64 :=
.seq NamedBody345_107 NamedBody345_118

def NamedBody345_120 : StackLang.HolProg 64 :=
.seq NamedBody345_106 NamedBody345_119

def NamedBody345_121 : StackLang.HolProg 64 :=
.seq NamedBody345_105 NamedBody345_120

def NamedBody345_122 : StackLang.HolProg 64 :=
.seq NamedBody345_104 NamedBody345_121

def NamedBody345_123 : StackLang.HolProg 64 :=
.seq NamedBody345_103 NamedBody345_122

def NamedBody345_124 : StackLang.HolProg 64 :=
.seq NamedBody345_102 NamedBody345_123

def NamedBody345_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody345_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody345_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody345_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody345_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody345_135 : StackLang.HolProg 64 :=
.seq NamedBody345_133 NamedBody345_134

def NamedBody345_136 : StackLang.HolProg 64 :=
.seq NamedBody345_132 NamedBody345_135

def NamedBody345_137 : StackLang.HolProg 64 :=
.seq NamedBody345_131 NamedBody345_136

def NamedBody345_138 : StackLang.HolProg 64 :=
.seq NamedBody345_130 NamedBody345_137

def NamedBody345_139 : StackLang.HolProg 64 :=
.seq NamedBody345_129 NamedBody345_138

def NamedBody345_140 : StackLang.HolProg 64 :=
.seq NamedBody345_128 NamedBody345_139

def NamedBody345_141 : StackLang.HolProg 64 :=
.seq NamedBody345_127 NamedBody345_140

def NamedBody345_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody345_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody345_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody345_146 : StackLang.HolProg 64 :=
.seq NamedBody345_144 NamedBody345_145

def NamedBody345_147 : StackLang.HolProg 64 :=
.seq NamedBody345_143 NamedBody345_146

def NamedBody345_148 : StackLang.HolProg 64 :=
.seq NamedBody345_142 NamedBody345_147

def NamedBody345_149 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody345_150 : StackLang.HolProg 64 :=
.seq NamedBody345_148 NamedBody345_149

def NamedBody345_151 : StackLang.HolProg 64 :=
.call (some (NamedBody345_141, 1, 345, 4)) (Sum.inl 78) (some (NamedBody345_150, 345, 5))

def NamedBody345_152 : StackLang.HolProg 64 :=
.seq NamedBody345_126 NamedBody345_151

def NamedBody345_153 : StackLang.HolProg 64 :=
.seq NamedBody345_125 NamedBody345_152

def NamedBody345_154 : StackLang.HolProg 64 :=
.seq NamedBody345_124 NamedBody345_153

def NamedBody345_155 : StackLang.HolProg 64 :=
.seq NamedBody345_95 NamedBody345_154

def NamedBody345_156 : StackLang.HolProg 64 :=
.seq NamedBody345_92 NamedBody345_155

def NamedBody345_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody345_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 384#64)))

def NamedBody345_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody345_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 392#64)))

def NamedBody345_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody345_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def NamedBody345_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 9#64)

def NamedBody345_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody345_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody345_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 1#64)

def NamedBody345_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_173 : StackLang.HolProg 64 :=
.seq NamedBody345_171 NamedBody345_172

def NamedBody345_174 : StackLang.HolProg 64 :=
.seq NamedBody345_170 NamedBody345_173

def NamedBody345_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody345_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody345_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_178 : StackLang.HolProg 64 :=
.seq NamedBody345_176 NamedBody345_177

def NamedBody345_179 : StackLang.HolProg 64 :=
.seq NamedBody345_175 NamedBody345_178

def NamedBody345_180 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 12 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody345_174 NamedBody345_179

def NamedBody345_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody345_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 4#64)

def NamedBody345_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody345_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody345_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_187 : StackLang.HolProg 64 :=
.seq NamedBody345_185 NamedBody345_186

def NamedBody345_188 : StackLang.HolProg 64 :=
.seq NamedBody345_184 NamedBody345_187

def NamedBody345_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody345_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody345_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_192 : StackLang.HolProg 64 :=
.seq NamedBody345_190 NamedBody345_191

def NamedBody345_193 : StackLang.HolProg 64 :=
.seq NamedBody345_189 NamedBody345_192

def NamedBody345_194 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12) NamedBody345_188 NamedBody345_193

def NamedBody345_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody345_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody345_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody345_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def NamedBody345_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody345_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody345_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_205 : StackLang.HolProg 64 :=
.seq NamedBody345_203 NamedBody345_204

def NamedBody345_206 : StackLang.HolProg 64 :=
.seq NamedBody345_202 NamedBody345_205

def NamedBody345_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1002#64)

def NamedBody345_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody345_210 : StackLang.HolProg 64 :=
.seq NamedBody345_208 NamedBody345_209

def NamedBody345_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody345_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody345_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody345_214 : StackLang.HolProg 64 :=
.seq NamedBody345_212 NamedBody345_213

def NamedBody345_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_216 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody345_214 NamedBody345_215

def NamedBody345_217 : StackLang.HolProg 64 :=
.seq NamedBody345_211 NamedBody345_216

def NamedBody345_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody345_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody345_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 345 7

def NamedBody345_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody345_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody345_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody345_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody345_227 : StackLang.HolProg 64 :=
.seq NamedBody345_225 NamedBody345_226

def NamedBody345_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody345_229 : StackLang.HolProg 64 :=
.seq NamedBody345_227 NamedBody345_228

def NamedBody345_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody345_231 : StackLang.HolProg 64 :=
.seq NamedBody345_229 NamedBody345_230

def NamedBody345_232 : StackLang.HolProg 64 :=
.seq NamedBody345_224 NamedBody345_231

def NamedBody345_233 : StackLang.HolProg 64 :=
.seq NamedBody345_223 NamedBody345_232

def NamedBody345_234 : StackLang.HolProg 64 :=
.seq NamedBody345_222 NamedBody345_233

def NamedBody345_235 : StackLang.HolProg 64 :=
.seq NamedBody345_221 NamedBody345_234

def NamedBody345_236 : StackLang.HolProg 64 :=
.seq NamedBody345_220 NamedBody345_235

def NamedBody345_237 : StackLang.HolProg 64 :=
.seq NamedBody345_219 NamedBody345_236

def NamedBody345_238 : StackLang.HolProg 64 :=
.seq NamedBody345_218 NamedBody345_237

def NamedBody345_239 : StackLang.HolProg 64 :=
.seq NamedBody345_217 NamedBody345_238

def NamedBody345_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody345_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody345_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody345_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody345_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody345_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody345_250 : StackLang.HolProg 64 :=
.seq NamedBody345_248 NamedBody345_249

def NamedBody345_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_252 : StackLang.HolProg 64 :=
.seq NamedBody345_250 NamedBody345_251

def NamedBody345_253 : StackLang.HolProg 64 :=
.seq NamedBody345_247 NamedBody345_252

def NamedBody345_254 : StackLang.HolProg 64 :=
.seq NamedBody345_246 NamedBody345_253

def NamedBody345_255 : StackLang.HolProg 64 :=
.seq NamedBody345_245 NamedBody345_254

def NamedBody345_256 : StackLang.HolProg 64 :=
.seq NamedBody345_244 NamedBody345_255

def NamedBody345_257 : StackLang.HolProg 64 :=
.seq NamedBody345_243 NamedBody345_256

def NamedBody345_258 : StackLang.HolProg 64 :=
.seq NamedBody345_242 NamedBody345_257

def NamedBody345_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody345_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody345_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody345_262 : StackLang.HolProg 64 :=
.seq NamedBody345_260 NamedBody345_261

def NamedBody345_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_264 : StackLang.HolProg 64 :=
.seq NamedBody345_262 NamedBody345_263

def NamedBody345_265 : StackLang.HolProg 64 :=
.seq NamedBody345_259 NamedBody345_264

def NamedBody345_266 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody345_267 : StackLang.HolProg 64 :=
.seq NamedBody345_265 NamedBody345_266

def NamedBody345_268 : StackLang.HolProg 64 :=
.call (some (NamedBody345_258, 1, 345, 6)) (Sum.inl 162) (some (NamedBody345_267, 345, 7))

def NamedBody345_269 : StackLang.HolProg 64 :=
.seq NamedBody345_241 NamedBody345_268

def NamedBody345_270 : StackLang.HolProg 64 :=
.seq NamedBody345_240 NamedBody345_269

def NamedBody345_271 : StackLang.HolProg 64 :=
.seq NamedBody345_239 NamedBody345_270

def NamedBody345_272 : StackLang.HolProg 64 :=
.seq NamedBody345_210 NamedBody345_271

def NamedBody345_273 : StackLang.HolProg 64 :=
.seq NamedBody345_207 NamedBody345_272

def NamedBody345_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody345_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody345_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody345_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 11#64)

def NamedBody345_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody345_280 : StackLang.HolProg 64 :=
.seq NamedBody345_278 NamedBody345_279

def NamedBody345_281 : StackLang.HolProg 64 :=
.seq NamedBody345_277 NamedBody345_280

def NamedBody345_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody345_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_284 : StackLang.HolProg 64 :=
.seq NamedBody345_282 NamedBody345_283

def NamedBody345_285 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody345_281 NamedBody345_284

def NamedBody345_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody345_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody345_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody345_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 12#64)

def NamedBody345_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody345_292 : StackLang.HolProg 64 :=
.seq NamedBody345_290 NamedBody345_291

def NamedBody345_293 : StackLang.HolProg 64 :=
.seq NamedBody345_289 NamedBody345_292

def NamedBody345_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody345_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_296 : StackLang.HolProg 64 :=
.seq NamedBody345_294 NamedBody345_295

def NamedBody345_297 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody345_293 NamedBody345_296

def NamedBody345_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody345_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 3#64)

def NamedBody345_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody345_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 14#64)

def NamedBody345_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody345_304 : StackLang.HolProg 64 :=
.seq NamedBody345_302 NamedBody345_303

def NamedBody345_305 : StackLang.HolProg 64 :=
.seq NamedBody345_301 NamedBody345_304

def NamedBody345_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody345_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_308 : StackLang.HolProg 64 :=
.seq NamedBody345_306 NamedBody345_307

def NamedBody345_309 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody345_305 NamedBody345_308

def NamedBody345_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody345_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 4#64)

def NamedBody345_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody345_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 13#64)

def NamedBody345_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody345_316 : StackLang.HolProg 64 :=
.seq NamedBody345_314 NamedBody345_315

def NamedBody345_317 : StackLang.HolProg 64 :=
.seq NamedBody345_313 NamedBody345_316

def NamedBody345_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody345_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_320 : StackLang.HolProg 64 :=
.seq NamedBody345_318 NamedBody345_319

def NamedBody345_321 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody345_317 NamedBody345_320

def NamedBody345_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody345_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_324 : StackLang.HolProg 64 :=
.seq NamedBody345_322 NamedBody345_323

def NamedBody345_325 : StackLang.HolProg 64 :=
.seq NamedBody345_321 NamedBody345_324

def NamedBody345_326 : StackLang.HolProg 64 :=
.seq NamedBody345_312 NamedBody345_325

def NamedBody345_327 : StackLang.HolProg 64 :=
.seq NamedBody345_311 NamedBody345_326

def NamedBody345_328 : StackLang.HolProg 64 :=
.seq NamedBody345_310 NamedBody345_327

def NamedBody345_329 : StackLang.HolProg 64 :=
.seq NamedBody345_309 NamedBody345_328

def NamedBody345_330 : StackLang.HolProg 64 :=
.seq NamedBody345_300 NamedBody345_329

def NamedBody345_331 : StackLang.HolProg 64 :=
.seq NamedBody345_299 NamedBody345_330

def NamedBody345_332 : StackLang.HolProg 64 :=
.seq NamedBody345_298 NamedBody345_331

def NamedBody345_333 : StackLang.HolProg 64 :=
.seq NamedBody345_297 NamedBody345_332

def NamedBody345_334 : StackLang.HolProg 64 :=
.seq NamedBody345_288 NamedBody345_333

def NamedBody345_335 : StackLang.HolProg 64 :=
.seq NamedBody345_287 NamedBody345_334

def NamedBody345_336 : StackLang.HolProg 64 :=
.seq NamedBody345_286 NamedBody345_335

def NamedBody345_337 : StackLang.HolProg 64 :=
.seq NamedBody345_285 NamedBody345_336

def NamedBody345_338 : StackLang.HolProg 64 :=
.seq NamedBody345_276 NamedBody345_337

def NamedBody345_339 : StackLang.HolProg 64 :=
.seq NamedBody345_275 NamedBody345_338

def NamedBody345_340 : StackLang.HolProg 64 :=
.seq NamedBody345_274 NamedBody345_339

def NamedBody345_341 : StackLang.HolProg 64 :=
.seq NamedBody345_273 NamedBody345_340

def NamedBody345_342 : StackLang.HolProg 64 :=
.seq NamedBody345_206 NamedBody345_341

def NamedBody345_343 : StackLang.HolProg 64 :=
.seq NamedBody345_201 NamedBody345_342

def NamedBody345_344 : StackLang.HolProg 64 :=
.seq NamedBody345_200 NamedBody345_343

def NamedBody345_345 : StackLang.HolProg 64 :=
.seq NamedBody345_199 NamedBody345_344

def NamedBody345_346 : StackLang.HolProg 64 :=
.seq NamedBody345_198 NamedBody345_345

def NamedBody345_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 192#64)

def NamedBody345_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody345_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 1#64)

def NamedBody345_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_352 : StackLang.HolProg 64 :=
.seq NamedBody345_350 NamedBody345_351

def NamedBody345_353 : StackLang.HolProg 64 :=
.seq NamedBody345_349 NamedBody345_352

def NamedBody345_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody345_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody345_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_357 : StackLang.HolProg 64 :=
.seq NamedBody345_355 NamedBody345_356

def NamedBody345_358 : StackLang.HolProg 64 :=
.seq NamedBody345_354 NamedBody345_357

def NamedBody345_359 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 12 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody345_353 NamedBody345_358

def NamedBody345_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody345_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 254#64)

def NamedBody345_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody345_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody345_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_366 : StackLang.HolProg 64 :=
.seq NamedBody345_364 NamedBody345_365

def NamedBody345_367 : StackLang.HolProg 64 :=
.seq NamedBody345_363 NamedBody345_366

def NamedBody345_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody345_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody345_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_371 : StackLang.HolProg 64 :=
.seq NamedBody345_369 NamedBody345_370

def NamedBody345_372 : StackLang.HolProg 64 :=
.seq NamedBody345_368 NamedBody345_371

def NamedBody345_373 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12) NamedBody345_367 NamedBody345_372

def NamedBody345_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody345_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody345_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody345_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody345_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 6#64)

def NamedBody345_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_383 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody345_384 : StackLang.HolProg 64 :=
.seq NamedBody345_382 NamedBody345_383

def NamedBody345_385 : StackLang.HolProg 64 :=
.seq NamedBody345_381 NamedBody345_384

def NamedBody345_386 : StackLang.HolProg 64 :=
.seq NamedBody345_380 NamedBody345_385

def NamedBody345_387 : StackLang.HolProg 64 :=
.seq NamedBody345_379 NamedBody345_386

def NamedBody345_388 : StackLang.HolProg 64 :=
.seq NamedBody345_378 NamedBody345_387

def NamedBody345_389 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 0#64) NamedBody345_377 NamedBody345_388

def NamedBody345_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody345_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody345_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody345_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_394 : StackLang.HolProg 64 :=
.seq NamedBody345_392 NamedBody345_393

def NamedBody345_395 : StackLang.HolProg 64 :=
.seq NamedBody345_391 NamedBody345_394

def NamedBody345_396 : StackLang.HolProg 64 :=
.seq NamedBody345_390 NamedBody345_395

def NamedBody345_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1003#64)

def NamedBody345_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody345_400 : StackLang.HolProg 64 :=
.seq NamedBody345_398 NamedBody345_399

def NamedBody345_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody345_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody345_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody345_404 : StackLang.HolProg 64 :=
.seq NamedBody345_402 NamedBody345_403

def NamedBody345_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_406 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody345_404 NamedBody345_405

def NamedBody345_407 : StackLang.HolProg 64 :=
.seq NamedBody345_401 NamedBody345_406

def NamedBody345_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody345_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody345_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 345 9

def NamedBody345_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody345_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody345_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody345_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody345_417 : StackLang.HolProg 64 :=
.seq NamedBody345_415 NamedBody345_416

def NamedBody345_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody345_419 : StackLang.HolProg 64 :=
.seq NamedBody345_417 NamedBody345_418

def NamedBody345_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody345_421 : StackLang.HolProg 64 :=
.seq NamedBody345_419 NamedBody345_420

def NamedBody345_422 : StackLang.HolProg 64 :=
.seq NamedBody345_414 NamedBody345_421

def NamedBody345_423 : StackLang.HolProg 64 :=
.seq NamedBody345_413 NamedBody345_422

def NamedBody345_424 : StackLang.HolProg 64 :=
.seq NamedBody345_412 NamedBody345_423

def NamedBody345_425 : StackLang.HolProg 64 :=
.seq NamedBody345_411 NamedBody345_424

def NamedBody345_426 : StackLang.HolProg 64 :=
.seq NamedBody345_410 NamedBody345_425

def NamedBody345_427 : StackLang.HolProg 64 :=
.seq NamedBody345_409 NamedBody345_426

def NamedBody345_428 : StackLang.HolProg 64 :=
.seq NamedBody345_408 NamedBody345_427

def NamedBody345_429 : StackLang.HolProg 64 :=
.seq NamedBody345_407 NamedBody345_428

def NamedBody345_430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody345_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody345_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody345_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody345_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_439 : StackLang.HolProg 64 :=
.seq NamedBody345_437 NamedBody345_438

def NamedBody345_440 : StackLang.HolProg 64 :=
.seq NamedBody345_436 NamedBody345_439

def NamedBody345_441 : StackLang.HolProg 64 :=
.seq NamedBody345_435 NamedBody345_440

def NamedBody345_442 : StackLang.HolProg 64 :=
.seq NamedBody345_434 NamedBody345_441

def NamedBody345_443 : StackLang.HolProg 64 :=
.seq NamedBody345_433 NamedBody345_442

def NamedBody345_444 : StackLang.HolProg 64 :=
.seq NamedBody345_432 NamedBody345_443

def NamedBody345_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody345_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_447 : StackLang.HolProg 64 :=
.seq NamedBody345_445 NamedBody345_446

def NamedBody345_448 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody345_449 : StackLang.HolProg 64 :=
.seq NamedBody345_447 NamedBody345_448

def NamedBody345_450 : StackLang.HolProg 64 :=
.call (some (NamedBody345_444, 1, 345, 8)) (Sum.inl 162) (some (NamedBody345_449, 345, 9))

def NamedBody345_451 : StackLang.HolProg 64 :=
.seq NamedBody345_431 NamedBody345_450

def NamedBody345_452 : StackLang.HolProg 64 :=
.seq NamedBody345_430 NamedBody345_451

def NamedBody345_453 : StackLang.HolProg 64 :=
.seq NamedBody345_429 NamedBody345_452

def NamedBody345_454 : StackLang.HolProg 64 :=
.seq NamedBody345_400 NamedBody345_453

def NamedBody345_455 : StackLang.HolProg 64 :=
.seq NamedBody345_397 NamedBody345_454

def NamedBody345_456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody345_457 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody345_458 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_459 : StackLang.HolProg 64 :=
.seq NamedBody345_457 NamedBody345_458

def NamedBody345_460 : StackLang.HolProg 64 :=
.seq NamedBody345_456 NamedBody345_459

def NamedBody345_461 : StackLang.HolProg 64 :=
.seq NamedBody345_455 NamedBody345_460

def NamedBody345_462 : StackLang.HolProg 64 :=
.seq NamedBody345_396 NamedBody345_461

def NamedBody345_463 : StackLang.HolProg 64 :=
.seq NamedBody345_389 NamedBody345_462

def NamedBody345_464 : StackLang.HolProg 64 :=
.seq NamedBody345_376 NamedBody345_463

def NamedBody345_465 : StackLang.HolProg 64 :=
.seq NamedBody345_375 NamedBody345_464

def NamedBody345_466 : StackLang.HolProg 64 :=
.seq NamedBody345_374 NamedBody345_465

def NamedBody345_467 : StackLang.HolProg 64 :=
.seq NamedBody345_373 NamedBody345_466

def NamedBody345_468 : StackLang.HolProg 64 :=
.seq NamedBody345_362 NamedBody345_467

def NamedBody345_469 : StackLang.HolProg 64 :=
.seq NamedBody345_361 NamedBody345_468

def NamedBody345_470 : StackLang.HolProg 64 :=
.seq NamedBody345_360 NamedBody345_469

def NamedBody345_471 : StackLang.HolProg 64 :=
.seq NamedBody345_359 NamedBody345_470

def NamedBody345_472 : StackLang.HolProg 64 :=
.seq NamedBody345_348 NamedBody345_471

def NamedBody345_473 : StackLang.HolProg 64 :=
.seq NamedBody345_347 NamedBody345_472

def NamedBody345_474 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 0#64) NamedBody345_346 NamedBody345_473

def NamedBody345_475 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody345_476 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 0#64))

def NamedBody345_478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_479 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody345_480 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody345_481 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 3#64)

def NamedBody345_482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody345_484 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 6#64)

def NamedBody345_485 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_486 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody345_487 : StackLang.HolProg 64 :=
.seq NamedBody345_485 NamedBody345_486

def NamedBody345_488 : StackLang.HolProg 64 :=
.seq NamedBody345_484 NamedBody345_487

def NamedBody345_489 : StackLang.HolProg 64 :=
.seq NamedBody345_483 NamedBody345_488

def NamedBody345_490 : StackLang.HolProg 64 :=
.seq NamedBody345_482 NamedBody345_489

def NamedBody345_491 : StackLang.HolProg 64 :=
.seq NamedBody345_481 NamedBody345_490

def NamedBody345_492 : StackLang.HolProg 64 :=
.seq NamedBody345_480 NamedBody345_491

def NamedBody345_493 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_494 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody345_492 NamedBody345_493

def NamedBody345_495 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody345_496 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody345_497 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody345_498 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody345_499 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody345_500 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_501 : StackLang.HolProg 64 :=
.seq NamedBody345_499 NamedBody345_500

def NamedBody345_502 : StackLang.HolProg 64 :=
.seq NamedBody345_498 NamedBody345_501

def NamedBody345_503 : StackLang.HolProg 64 :=
.seq NamedBody345_497 NamedBody345_502

def NamedBody345_504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_505 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1004#64)

def NamedBody345_506 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody345_507 : StackLang.HolProg 64 :=
.seq NamedBody345_505 NamedBody345_506

def NamedBody345_508 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody345_509 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody345_510 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody345_511 : StackLang.HolProg 64 :=
.seq NamedBody345_509 NamedBody345_510

def NamedBody345_512 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_513 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody345_511 NamedBody345_512

def NamedBody345_514 : StackLang.HolProg 64 :=
.seq NamedBody345_508 NamedBody345_513

def NamedBody345_515 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody345_516 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody345_517 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 345 11

def NamedBody345_518 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody345_519 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody345_520 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_521 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_522 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody345_523 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody345_524 : StackLang.HolProg 64 :=
.seq NamedBody345_522 NamedBody345_523

def NamedBody345_525 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody345_526 : StackLang.HolProg 64 :=
.seq NamedBody345_524 NamedBody345_525

def NamedBody345_527 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody345_528 : StackLang.HolProg 64 :=
.seq NamedBody345_526 NamedBody345_527

def NamedBody345_529 : StackLang.HolProg 64 :=
.seq NamedBody345_521 NamedBody345_528

def NamedBody345_530 : StackLang.HolProg 64 :=
.seq NamedBody345_520 NamedBody345_529

def NamedBody345_531 : StackLang.HolProg 64 :=
.seq NamedBody345_519 NamedBody345_530

def NamedBody345_532 : StackLang.HolProg 64 :=
.seq NamedBody345_518 NamedBody345_531

def NamedBody345_533 : StackLang.HolProg 64 :=
.seq NamedBody345_517 NamedBody345_532

def NamedBody345_534 : StackLang.HolProg 64 :=
.seq NamedBody345_516 NamedBody345_533

def NamedBody345_535 : StackLang.HolProg 64 :=
.seq NamedBody345_515 NamedBody345_534

def NamedBody345_536 : StackLang.HolProg 64 :=
.seq NamedBody345_514 NamedBody345_535

def NamedBody345_537 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_538 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_539 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_540 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_541 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody345_542 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody345_543 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody345_544 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody345_545 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_546 : StackLang.HolProg 64 :=
.seq NamedBody345_544 NamedBody345_545

def NamedBody345_547 : StackLang.HolProg 64 :=
.seq NamedBody345_543 NamedBody345_546

def NamedBody345_548 : StackLang.HolProg 64 :=
.seq NamedBody345_542 NamedBody345_547

def NamedBody345_549 : StackLang.HolProg 64 :=
.seq NamedBody345_541 NamedBody345_548

def NamedBody345_550 : StackLang.HolProg 64 :=
.seq NamedBody345_540 NamedBody345_549

def NamedBody345_551 : StackLang.HolProg 64 :=
.seq NamedBody345_539 NamedBody345_550

def NamedBody345_552 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody345_553 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_554 : StackLang.HolProg 64 :=
.seq NamedBody345_552 NamedBody345_553

def NamedBody345_555 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody345_556 : StackLang.HolProg 64 :=
.seq NamedBody345_554 NamedBody345_555

def NamedBody345_557 : StackLang.HolProg 64 :=
.call (some (NamedBody345_551, 1, 345, 10)) (Sum.inl 169) (some (NamedBody345_556, 345, 11))

def NamedBody345_558 : StackLang.HolProg 64 :=
.seq NamedBody345_538 NamedBody345_557

def NamedBody345_559 : StackLang.HolProg 64 :=
.seq NamedBody345_537 NamedBody345_558

def NamedBody345_560 : StackLang.HolProg 64 :=
.seq NamedBody345_536 NamedBody345_559

def NamedBody345_561 : StackLang.HolProg 64 :=
.seq NamedBody345_507 NamedBody345_560

def NamedBody345_562 : StackLang.HolProg 64 :=
.seq NamedBody345_504 NamedBody345_561

def NamedBody345_563 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody345_564 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_565 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody345_566 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 4#64)

def NamedBody345_567 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_568 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody345_569 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 6#64)

def NamedBody345_570 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_571 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody345_572 : StackLang.HolProg 64 :=
.seq NamedBody345_570 NamedBody345_571

def NamedBody345_573 : StackLang.HolProg 64 :=
.seq NamedBody345_569 NamedBody345_572

def NamedBody345_574 : StackLang.HolProg 64 :=
.seq NamedBody345_568 NamedBody345_573

def NamedBody345_575 : StackLang.HolProg 64 :=
.seq NamedBody345_567 NamedBody345_574

def NamedBody345_576 : StackLang.HolProg 64 :=
.seq NamedBody345_566 NamedBody345_575

def NamedBody345_577 : StackLang.HolProg 64 :=
.seq NamedBody345_565 NamedBody345_576

def NamedBody345_578 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_579 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13) NamedBody345_577 NamedBody345_578

def NamedBody345_580 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody345_581 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody345_582 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody345_583 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_584 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody345_585 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody345_586 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody345_587 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 12#64)

def NamedBody345_588 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 8#64)

def NamedBody345_589 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody345_590 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody345_591 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody345_592 : StackLang.HolProg 64 :=
.seq NamedBody345_590 NamedBody345_591

def NamedBody345_593 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody345_594 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_595 : StackLang.HolProg 64 :=
.seq NamedBody345_593 NamedBody345_594

def NamedBody345_596 : StackLang.HolProg 64 :=
.seq NamedBody345_592 NamedBody345_595

def NamedBody345_597 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_598 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1005#64)

def NamedBody345_599 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody345_600 : StackLang.HolProg 64 :=
.seq NamedBody345_598 NamedBody345_599

def NamedBody345_601 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody345_602 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody345_603 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody345_604 : StackLang.HolProg 64 :=
.seq NamedBody345_602 NamedBody345_603

def NamedBody345_605 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_606 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody345_604 NamedBody345_605

def NamedBody345_607 : StackLang.HolProg 64 :=
.seq NamedBody345_601 NamedBody345_606

def NamedBody345_608 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody345_609 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody345_610 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 345 13

def NamedBody345_611 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody345_612 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody345_613 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_614 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_615 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody345_616 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody345_617 : StackLang.HolProg 64 :=
.seq NamedBody345_615 NamedBody345_616

def NamedBody345_618 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody345_619 : StackLang.HolProg 64 :=
.seq NamedBody345_617 NamedBody345_618

def NamedBody345_620 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody345_621 : StackLang.HolProg 64 :=
.seq NamedBody345_619 NamedBody345_620

def NamedBody345_622 : StackLang.HolProg 64 :=
.seq NamedBody345_614 NamedBody345_621

def NamedBody345_623 : StackLang.HolProg 64 :=
.seq NamedBody345_613 NamedBody345_622

def NamedBody345_624 : StackLang.HolProg 64 :=
.seq NamedBody345_612 NamedBody345_623

def NamedBody345_625 : StackLang.HolProg 64 :=
.seq NamedBody345_611 NamedBody345_624

def NamedBody345_626 : StackLang.HolProg 64 :=
.seq NamedBody345_610 NamedBody345_625

def NamedBody345_627 : StackLang.HolProg 64 :=
.seq NamedBody345_609 NamedBody345_626

def NamedBody345_628 : StackLang.HolProg 64 :=
.seq NamedBody345_608 NamedBody345_627

def NamedBody345_629 : StackLang.HolProg 64 :=
.seq NamedBody345_607 NamedBody345_628

def NamedBody345_630 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_631 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_632 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_633 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_634 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody345_635 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody345_636 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody345_637 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody345_638 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody345_639 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_640 : StackLang.HolProg 64 :=
.seq NamedBody345_638 NamedBody345_639

def NamedBody345_641 : StackLang.HolProg 64 :=
.seq NamedBody345_637 NamedBody345_640

def NamedBody345_642 : StackLang.HolProg 64 :=
.seq NamedBody345_636 NamedBody345_641

def NamedBody345_643 : StackLang.HolProg 64 :=
.seq NamedBody345_635 NamedBody345_642

def NamedBody345_644 : StackLang.HolProg 64 :=
.seq NamedBody345_634 NamedBody345_643

def NamedBody345_645 : StackLang.HolProg 64 :=
.seq NamedBody345_633 NamedBody345_644

def NamedBody345_646 : StackLang.HolProg 64 :=
.seq NamedBody345_632 NamedBody345_645

def NamedBody345_647 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody345_648 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody345_649 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_650 : StackLang.HolProg 64 :=
.seq NamedBody345_648 NamedBody345_649

def NamedBody345_651 : StackLang.HolProg 64 :=
.seq NamedBody345_647 NamedBody345_650

def NamedBody345_652 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody345_653 : StackLang.HolProg 64 :=
.seq NamedBody345_651 NamedBody345_652

def NamedBody345_654 : StackLang.HolProg 64 :=
.call (some (NamedBody345_646, 1, 345, 12)) (Sum.inl 337) (some (NamedBody345_653, 345, 13))

def NamedBody345_655 : StackLang.HolProg 64 :=
.seq NamedBody345_631 NamedBody345_654

def NamedBody345_656 : StackLang.HolProg 64 :=
.seq NamedBody345_630 NamedBody345_655

def NamedBody345_657 : StackLang.HolProg 64 :=
.seq NamedBody345_629 NamedBody345_656

def NamedBody345_658 : StackLang.HolProg 64 :=
.seq NamedBody345_600 NamedBody345_657

def NamedBody345_659 : StackLang.HolProg 64 :=
.seq NamedBody345_597 NamedBody345_658

def NamedBody345_660 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody345_661 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_662 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody345_663 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_664 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody345_665 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 1#64)

def NamedBody345_666 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody345_667 : StackLang.HolProg 64 :=
.seq NamedBody345_665 NamedBody345_666

def NamedBody345_668 : StackLang.HolProg 64 :=
.seq NamedBody345_664 NamedBody345_667

def NamedBody345_669 : StackLang.HolProg 64 :=
.seq NamedBody345_663 NamedBody345_668

def NamedBody345_670 : StackLang.HolProg 64 :=
.seq NamedBody345_662 NamedBody345_669

def NamedBody345_671 : StackLang.HolProg 64 :=
.seq NamedBody345_661 NamedBody345_670

def NamedBody345_672 : StackLang.HolProg 64 :=
.seq NamedBody345_660 NamedBody345_671

def NamedBody345_673 : StackLang.HolProg 64 :=
.seq NamedBody345_659 NamedBody345_672

def NamedBody345_674 : StackLang.HolProg 64 :=
.seq NamedBody345_596 NamedBody345_673

def NamedBody345_675 : StackLang.HolProg 64 :=
.seq NamedBody345_589 NamedBody345_674

def NamedBody345_676 : StackLang.HolProg 64 :=
.seq NamedBody345_588 NamedBody345_675

def NamedBody345_677 : StackLang.HolProg 64 :=
.seq NamedBody345_587 NamedBody345_676

def NamedBody345_678 : StackLang.HolProg 64 :=
.seq NamedBody345_586 NamedBody345_677

def NamedBody345_679 : StackLang.HolProg 64 :=
.seq NamedBody345_585 NamedBody345_678

def NamedBody345_680 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody345_681 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_682 : StackLang.HolProg 64 :=
.seq NamedBody345_680 NamedBody345_681

def NamedBody345_683 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody345_679 NamedBody345_682

def NamedBody345_684 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody345_685 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_686 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 4#64)

def NamedBody345_687 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody345_688 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody345_689 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 12#64)

def NamedBody345_690 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 8#64)

def NamedBody345_691 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody345_692 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_693 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody345_694 : StackLang.HolProg 64 :=
.seq NamedBody345_692 NamedBody345_693

def NamedBody345_695 : StackLang.HolProg 64 :=
.seq NamedBody345_691 NamedBody345_694

def NamedBody345_696 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_697 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1006#64)

def NamedBody345_698 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody345_699 : StackLang.HolProg 64 :=
.seq NamedBody345_697 NamedBody345_698

def NamedBody345_700 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody345_701 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody345_702 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody345_703 : StackLang.HolProg 64 :=
.seq NamedBody345_701 NamedBody345_702

def NamedBody345_704 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_705 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody345_703 NamedBody345_704

def NamedBody345_706 : StackLang.HolProg 64 :=
.seq NamedBody345_700 NamedBody345_705

def NamedBody345_707 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody345_708 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody345_709 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 345 15

def NamedBody345_710 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody345_711 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody345_712 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_713 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_714 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody345_715 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody345_716 : StackLang.HolProg 64 :=
.seq NamedBody345_714 NamedBody345_715

def NamedBody345_717 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody345_718 : StackLang.HolProg 64 :=
.seq NamedBody345_716 NamedBody345_717

def NamedBody345_719 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody345_720 : StackLang.HolProg 64 :=
.seq NamedBody345_718 NamedBody345_719

def NamedBody345_721 : StackLang.HolProg 64 :=
.seq NamedBody345_713 NamedBody345_720

def NamedBody345_722 : StackLang.HolProg 64 :=
.seq NamedBody345_712 NamedBody345_721

def NamedBody345_723 : StackLang.HolProg 64 :=
.seq NamedBody345_711 NamedBody345_722

def NamedBody345_724 : StackLang.HolProg 64 :=
.seq NamedBody345_710 NamedBody345_723

def NamedBody345_725 : StackLang.HolProg 64 :=
.seq NamedBody345_709 NamedBody345_724

def NamedBody345_726 : StackLang.HolProg 64 :=
.seq NamedBody345_708 NamedBody345_725

def NamedBody345_727 : StackLang.HolProg 64 :=
.seq NamedBody345_707 NamedBody345_726

def NamedBody345_728 : StackLang.HolProg 64 :=
.seq NamedBody345_706 NamedBody345_727

def NamedBody345_729 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_730 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_731 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_732 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_733 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody345_734 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody345_735 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody345_736 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody345_737 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody345_738 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_739 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody345_740 : StackLang.HolProg 64 :=
.seq NamedBody345_738 NamedBody345_739

def NamedBody345_741 : StackLang.HolProg 64 :=
.seq NamedBody345_737 NamedBody345_740

def NamedBody345_742 : StackLang.HolProg 64 :=
.seq NamedBody345_736 NamedBody345_741

def NamedBody345_743 : StackLang.HolProg 64 :=
.seq NamedBody345_735 NamedBody345_742

def NamedBody345_744 : StackLang.HolProg 64 :=
.seq NamedBody345_734 NamedBody345_743

def NamedBody345_745 : StackLang.HolProg 64 :=
.seq NamedBody345_733 NamedBody345_744

def NamedBody345_746 : StackLang.HolProg 64 :=
.seq NamedBody345_732 NamedBody345_745

def NamedBody345_747 : StackLang.HolProg 64 :=
.seq NamedBody345_731 NamedBody345_746

def NamedBody345_748 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody345_749 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody345_750 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_751 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody345_752 : StackLang.HolProg 64 :=
.seq NamedBody345_750 NamedBody345_751

def NamedBody345_753 : StackLang.HolProg 64 :=
.seq NamedBody345_749 NamedBody345_752

def NamedBody345_754 : StackLang.HolProg 64 :=
.seq NamedBody345_748 NamedBody345_753

def NamedBody345_755 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody345_756 : StackLang.HolProg 64 :=
.seq NamedBody345_754 NamedBody345_755

def NamedBody345_757 : StackLang.HolProg 64 :=
.call (some (NamedBody345_747, 1, 345, 14)) (Sum.inl 337) (some (NamedBody345_756, 345, 15))

def NamedBody345_758 : StackLang.HolProg 64 :=
.seq NamedBody345_730 NamedBody345_757

def NamedBody345_759 : StackLang.HolProg 64 :=
.seq NamedBody345_729 NamedBody345_758

def NamedBody345_760 : StackLang.HolProg 64 :=
.seq NamedBody345_728 NamedBody345_759

def NamedBody345_761 : StackLang.HolProg 64 :=
.seq NamedBody345_699 NamedBody345_760

def NamedBody345_762 : StackLang.HolProg 64 :=
.seq NamedBody345_696 NamedBody345_761

def NamedBody345_763 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody345_764 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_765 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody345_766 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody345_767 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody345_768 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_769 : StackLang.HolProg 64 :=
.seq NamedBody345_767 NamedBody345_768

def NamedBody345_770 : StackLang.HolProg 64 :=
.seq NamedBody345_766 NamedBody345_769

def NamedBody345_771 : StackLang.HolProg 64 :=
.seq NamedBody345_765 NamedBody345_770

def NamedBody345_772 : StackLang.HolProg 64 :=
.seq NamedBody345_764 NamedBody345_771

def NamedBody345_773 : StackLang.HolProg 64 :=
.seq NamedBody345_763 NamedBody345_772

def NamedBody345_774 : StackLang.HolProg 64 :=
.seq NamedBody345_762 NamedBody345_773

def NamedBody345_775 : StackLang.HolProg 64 :=
.seq NamedBody345_695 NamedBody345_774

def NamedBody345_776 : StackLang.HolProg 64 :=
.seq NamedBody345_690 NamedBody345_775

def NamedBody345_777 : StackLang.HolProg 64 :=
.seq NamedBody345_689 NamedBody345_776

def NamedBody345_778 : StackLang.HolProg 64 :=
.seq NamedBody345_688 NamedBody345_777

def NamedBody345_779 : StackLang.HolProg 64 :=
.seq NamedBody345_687 NamedBody345_778

def NamedBody345_780 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody345_781 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody345_782 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 32#64)

def NamedBody345_783 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody345_784 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_785 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody345_786 : StackLang.HolProg 64 :=
.seq NamedBody345_784 NamedBody345_785

def NamedBody345_787 : StackLang.HolProg 64 :=
.seq NamedBody345_783 NamedBody345_786

def NamedBody345_788 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_789 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1007#64)

def NamedBody345_790 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody345_791 : StackLang.HolProg 64 :=
.seq NamedBody345_789 NamedBody345_790

def NamedBody345_792 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody345_793 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody345_794 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody345_795 : StackLang.HolProg 64 :=
.seq NamedBody345_793 NamedBody345_794

def NamedBody345_796 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_797 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody345_795 NamedBody345_796

def NamedBody345_798 : StackLang.HolProg 64 :=
.seq NamedBody345_792 NamedBody345_797

def NamedBody345_799 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody345_800 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody345_801 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 345 17

def NamedBody345_802 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody345_803 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody345_804 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_805 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_806 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody345_807 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody345_808 : StackLang.HolProg 64 :=
.seq NamedBody345_806 NamedBody345_807

def NamedBody345_809 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody345_810 : StackLang.HolProg 64 :=
.seq NamedBody345_808 NamedBody345_809

def NamedBody345_811 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody345_812 : StackLang.HolProg 64 :=
.seq NamedBody345_810 NamedBody345_811

def NamedBody345_813 : StackLang.HolProg 64 :=
.seq NamedBody345_805 NamedBody345_812

def NamedBody345_814 : StackLang.HolProg 64 :=
.seq NamedBody345_804 NamedBody345_813

def NamedBody345_815 : StackLang.HolProg 64 :=
.seq NamedBody345_803 NamedBody345_814

def NamedBody345_816 : StackLang.HolProg 64 :=
.seq NamedBody345_802 NamedBody345_815

def NamedBody345_817 : StackLang.HolProg 64 :=
.seq NamedBody345_801 NamedBody345_816

def NamedBody345_818 : StackLang.HolProg 64 :=
.seq NamedBody345_800 NamedBody345_817

def NamedBody345_819 : StackLang.HolProg 64 :=
.seq NamedBody345_799 NamedBody345_818

def NamedBody345_820 : StackLang.HolProg 64 :=
.seq NamedBody345_798 NamedBody345_819

def NamedBody345_821 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_822 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_823 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_824 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_825 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody345_826 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody345_827 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody345_828 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody345_829 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody345_830 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_831 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody345_832 : StackLang.HolProg 64 :=
.seq NamedBody345_830 NamedBody345_831

def NamedBody345_833 : StackLang.HolProg 64 :=
.seq NamedBody345_829 NamedBody345_832

def NamedBody345_834 : StackLang.HolProg 64 :=
.seq NamedBody345_828 NamedBody345_833

def NamedBody345_835 : StackLang.HolProg 64 :=
.seq NamedBody345_827 NamedBody345_834

def NamedBody345_836 : StackLang.HolProg 64 :=
.seq NamedBody345_826 NamedBody345_835

def NamedBody345_837 : StackLang.HolProg 64 :=
.seq NamedBody345_825 NamedBody345_836

def NamedBody345_838 : StackLang.HolProg 64 :=
.seq NamedBody345_824 NamedBody345_837

def NamedBody345_839 : StackLang.HolProg 64 :=
.seq NamedBody345_823 NamedBody345_838

def NamedBody345_840 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody345_841 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody345_842 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_843 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody345_844 : StackLang.HolProg 64 :=
.seq NamedBody345_842 NamedBody345_843

def NamedBody345_845 : StackLang.HolProg 64 :=
.seq NamedBody345_841 NamedBody345_844

def NamedBody345_846 : StackLang.HolProg 64 :=
.seq NamedBody345_840 NamedBody345_845

def NamedBody345_847 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody345_848 : StackLang.HolProg 64 :=
.seq NamedBody345_846 NamedBody345_847

def NamedBody345_849 : StackLang.HolProg 64 :=
.call (some (NamedBody345_839, 1, 345, 16)) (Sum.inl 336) (some (NamedBody345_848, 345, 17))

def NamedBody345_850 : StackLang.HolProg 64 :=
.seq NamedBody345_822 NamedBody345_849

def NamedBody345_851 : StackLang.HolProg 64 :=
.seq NamedBody345_821 NamedBody345_850

def NamedBody345_852 : StackLang.HolProg 64 :=
.seq NamedBody345_820 NamedBody345_851

def NamedBody345_853 : StackLang.HolProg 64 :=
.seq NamedBody345_791 NamedBody345_852

def NamedBody345_854 : StackLang.HolProg 64 :=
.seq NamedBody345_788 NamedBody345_853

def NamedBody345_855 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody345_856 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_857 : StackLang.HolProg 64 :=
.seq NamedBody345_855 NamedBody345_856

def NamedBody345_858 : StackLang.HolProg 64 :=
.seq NamedBody345_854 NamedBody345_857

def NamedBody345_859 : StackLang.HolProg 64 :=
.seq NamedBody345_787 NamedBody345_858

def NamedBody345_860 : StackLang.HolProg 64 :=
.seq NamedBody345_782 NamedBody345_859

def NamedBody345_861 : StackLang.HolProg 64 :=
.seq NamedBody345_781 NamedBody345_860

def NamedBody345_862 : StackLang.HolProg 64 :=
.seq NamedBody345_780 NamedBody345_861

def NamedBody345_863 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody345_779 NamedBody345_862

def NamedBody345_864 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody345_865 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_866 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody345_867 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_868 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody345_869 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_870 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 8#64))

def NamedBody345_871 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_872 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 16#64))

def NamedBody345_873 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_874 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 24#64))

def NamedBody345_875 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_876 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody345_877 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_878 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def NamedBody345_879 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_880 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody345_881 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def NamedBody345_882 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody345_883 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody345_884 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody345_885 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_886 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody345_887 : StackLang.HolProg 64 :=
.seq NamedBody345_885 NamedBody345_886

def NamedBody345_888 : StackLang.HolProg 64 :=
.seq NamedBody345_884 NamedBody345_887

def NamedBody345_889 : StackLang.HolProg 64 :=
.seq NamedBody345_883 NamedBody345_888

def NamedBody345_890 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_891 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1008#64)

def NamedBody345_892 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody345_893 : StackLang.HolProg 64 :=
.seq NamedBody345_891 NamedBody345_892

def NamedBody345_894 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody345_895 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody345_896 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody345_897 : StackLang.HolProg 64 :=
.seq NamedBody345_895 NamedBody345_896

def NamedBody345_898 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_899 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody345_897 NamedBody345_898

def NamedBody345_900 : StackLang.HolProg 64 :=
.seq NamedBody345_894 NamedBody345_899

def NamedBody345_901 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody345_902 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody345_903 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 345 19

def NamedBody345_904 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody345_905 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody345_906 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_907 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_908 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody345_909 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody345_910 : StackLang.HolProg 64 :=
.seq NamedBody345_908 NamedBody345_909

def NamedBody345_911 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody345_912 : StackLang.HolProg 64 :=
.seq NamedBody345_910 NamedBody345_911

def NamedBody345_913 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody345_914 : StackLang.HolProg 64 :=
.seq NamedBody345_912 NamedBody345_913

def NamedBody345_915 : StackLang.HolProg 64 :=
.seq NamedBody345_907 NamedBody345_914

def NamedBody345_916 : StackLang.HolProg 64 :=
.seq NamedBody345_906 NamedBody345_915

def NamedBody345_917 : StackLang.HolProg 64 :=
.seq NamedBody345_905 NamedBody345_916

def NamedBody345_918 : StackLang.HolProg 64 :=
.seq NamedBody345_904 NamedBody345_917

def NamedBody345_919 : StackLang.HolProg 64 :=
.seq NamedBody345_903 NamedBody345_918

def NamedBody345_920 : StackLang.HolProg 64 :=
.seq NamedBody345_902 NamedBody345_919

def NamedBody345_921 : StackLang.HolProg 64 :=
.seq NamedBody345_901 NamedBody345_920

def NamedBody345_922 : StackLang.HolProg 64 :=
.seq NamedBody345_900 NamedBody345_921

def NamedBody345_923 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_924 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_925 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_926 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_927 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody345_928 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody345_929 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody345_930 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody345_931 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody345_932 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody345_933 : StackLang.HolProg 64 :=
.seq NamedBody345_931 NamedBody345_932

def NamedBody345_934 : StackLang.HolProg 64 :=
.seq NamedBody345_930 NamedBody345_933

def NamedBody345_935 : StackLang.HolProg 64 :=
.seq NamedBody345_929 NamedBody345_934

def NamedBody345_936 : StackLang.HolProg 64 :=
.seq NamedBody345_928 NamedBody345_935

def NamedBody345_937 : StackLang.HolProg 64 :=
.seq NamedBody345_927 NamedBody345_936

def NamedBody345_938 : StackLang.HolProg 64 :=
.seq NamedBody345_926 NamedBody345_937

def NamedBody345_939 : StackLang.HolProg 64 :=
.seq NamedBody345_925 NamedBody345_938

def NamedBody345_940 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody345_941 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody345_942 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody345_943 : StackLang.HolProg 64 :=
.seq NamedBody345_941 NamedBody345_942

def NamedBody345_944 : StackLang.HolProg 64 :=
.seq NamedBody345_940 NamedBody345_943

def NamedBody345_945 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody345_946 : StackLang.HolProg 64 :=
.seq NamedBody345_944 NamedBody345_945

def NamedBody345_947 : StackLang.HolProg 64 :=
.call (some (NamedBody345_939, 1, 345, 18)) (Sum.inl 336) (some (NamedBody345_946, 345, 19))

def NamedBody345_948 : StackLang.HolProg 64 :=
.seq NamedBody345_924 NamedBody345_947

def NamedBody345_949 : StackLang.HolProg 64 :=
.seq NamedBody345_923 NamedBody345_948

def NamedBody345_950 : StackLang.HolProg 64 :=
.seq NamedBody345_922 NamedBody345_949

def NamedBody345_951 : StackLang.HolProg 64 :=
.seq NamedBody345_893 NamedBody345_950

def NamedBody345_952 : StackLang.HolProg 64 :=
.seq NamedBody345_890 NamedBody345_951

def NamedBody345_953 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody345_954 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_955 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody345_956 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_957 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody345_958 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_959 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 8#64))

def NamedBody345_960 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_961 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 16#64))

def NamedBody345_962 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_963 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 24#64))

def NamedBody345_964 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_965 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody345_966 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody345_967 : StackLang.HolProg 64 :=
.seq NamedBody345_965 NamedBody345_966

def NamedBody345_968 : StackLang.HolProg 64 :=
.seq NamedBody345_964 NamedBody345_967

def NamedBody345_969 : StackLang.HolProg 64 :=
.seq NamedBody345_963 NamedBody345_968

def NamedBody345_970 : StackLang.HolProg 64 :=
.seq NamedBody345_962 NamedBody345_969

def NamedBody345_971 : StackLang.HolProg 64 :=
.seq NamedBody345_961 NamedBody345_970

def NamedBody345_972 : StackLang.HolProg 64 :=
.seq NamedBody345_960 NamedBody345_971

def NamedBody345_973 : StackLang.HolProg 64 :=
.seq NamedBody345_959 NamedBody345_972

def NamedBody345_974 : StackLang.HolProg 64 :=
.seq NamedBody345_958 NamedBody345_973

def NamedBody345_975 : StackLang.HolProg 64 :=
.seq NamedBody345_957 NamedBody345_974

def NamedBody345_976 : StackLang.HolProg 64 :=
.seq NamedBody345_956 NamedBody345_975

def NamedBody345_977 : StackLang.HolProg 64 :=
.seq NamedBody345_955 NamedBody345_976

def NamedBody345_978 : StackLang.HolProg 64 :=
.seq NamedBody345_954 NamedBody345_977

def NamedBody345_979 : StackLang.HolProg 64 :=
.seq NamedBody345_953 NamedBody345_978

def NamedBody345_980 : StackLang.HolProg 64 :=
.seq NamedBody345_952 NamedBody345_979

def NamedBody345_981 : StackLang.HolProg 64 :=
.seq NamedBody345_889 NamedBody345_980

def NamedBody345_982 : StackLang.HolProg 64 :=
.seq NamedBody345_882 NamedBody345_981

def NamedBody345_983 : StackLang.HolProg 64 :=
.seq NamedBody345_881 NamedBody345_982

def NamedBody345_984 : StackLang.HolProg 64 :=
.seq NamedBody345_880 NamedBody345_983

def NamedBody345_985 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody345_986 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def NamedBody345_987 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody345_988 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody345_989 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody345_990 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_991 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody345_992 : StackLang.HolProg 64 :=
.seq NamedBody345_990 NamedBody345_991

def NamedBody345_993 : StackLang.HolProg 64 :=
.seq NamedBody345_989 NamedBody345_992

def NamedBody345_994 : StackLang.HolProg 64 :=
.seq NamedBody345_988 NamedBody345_993

def NamedBody345_995 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_996 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1009#64)

def NamedBody345_997 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody345_998 : StackLang.HolProg 64 :=
.seq NamedBody345_996 NamedBody345_997

def NamedBody345_999 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody345_1000 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody345_1001 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody345_1002 : StackLang.HolProg 64 :=
.seq NamedBody345_1000 NamedBody345_1001

def NamedBody345_1003 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1004 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody345_1002 NamedBody345_1003

def NamedBody345_1005 : StackLang.HolProg 64 :=
.seq NamedBody345_999 NamedBody345_1004

def NamedBody345_1006 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody345_1007 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody345_1008 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 345 21

def NamedBody345_1009 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody345_1010 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody345_1011 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_1012 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1013 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody345_1014 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody345_1015 : StackLang.HolProg 64 :=
.seq NamedBody345_1013 NamedBody345_1014

def NamedBody345_1016 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody345_1017 : StackLang.HolProg 64 :=
.seq NamedBody345_1015 NamedBody345_1016

def NamedBody345_1018 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody345_1019 : StackLang.HolProg 64 :=
.seq NamedBody345_1017 NamedBody345_1018

def NamedBody345_1020 : StackLang.HolProg 64 :=
.seq NamedBody345_1012 NamedBody345_1019

def NamedBody345_1021 : StackLang.HolProg 64 :=
.seq NamedBody345_1011 NamedBody345_1020

def NamedBody345_1022 : StackLang.HolProg 64 :=
.seq NamedBody345_1010 NamedBody345_1021

def NamedBody345_1023 : StackLang.HolProg 64 :=
.seq NamedBody345_1009 NamedBody345_1022

def NamedBody345_1024 : StackLang.HolProg 64 :=
.seq NamedBody345_1008 NamedBody345_1023

def NamedBody345_1025 : StackLang.HolProg 64 :=
.seq NamedBody345_1007 NamedBody345_1024

def NamedBody345_1026 : StackLang.HolProg 64 :=
.seq NamedBody345_1006 NamedBody345_1025

def NamedBody345_1027 : StackLang.HolProg 64 :=
.seq NamedBody345_1005 NamedBody345_1026

def NamedBody345_1028 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1029 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1030 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1031 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_1032 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody345_1033 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody345_1034 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody345_1035 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody345_1036 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody345_1037 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody345_1038 : StackLang.HolProg 64 :=
.seq NamedBody345_1036 NamedBody345_1037

def NamedBody345_1039 : StackLang.HolProg 64 :=
.seq NamedBody345_1035 NamedBody345_1038

def NamedBody345_1040 : StackLang.HolProg 64 :=
.seq NamedBody345_1034 NamedBody345_1039

def NamedBody345_1041 : StackLang.HolProg 64 :=
.seq NamedBody345_1033 NamedBody345_1040

def NamedBody345_1042 : StackLang.HolProg 64 :=
.seq NamedBody345_1032 NamedBody345_1041

def NamedBody345_1043 : StackLang.HolProg 64 :=
.seq NamedBody345_1031 NamedBody345_1042

def NamedBody345_1044 : StackLang.HolProg 64 :=
.seq NamedBody345_1030 NamedBody345_1043

def NamedBody345_1045 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody345_1046 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody345_1047 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody345_1048 : StackLang.HolProg 64 :=
.seq NamedBody345_1046 NamedBody345_1047

def NamedBody345_1049 : StackLang.HolProg 64 :=
.seq NamedBody345_1045 NamedBody345_1048

def NamedBody345_1050 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody345_1051 : StackLang.HolProg 64 :=
.seq NamedBody345_1049 NamedBody345_1050

def NamedBody345_1052 : StackLang.HolProg 64 :=
.call (some (NamedBody345_1044, 1, 345, 20)) (Sum.inl 336) (some (NamedBody345_1051, 345, 21))

def NamedBody345_1053 : StackLang.HolProg 64 :=
.seq NamedBody345_1029 NamedBody345_1052

def NamedBody345_1054 : StackLang.HolProg 64 :=
.seq NamedBody345_1028 NamedBody345_1053

def NamedBody345_1055 : StackLang.HolProg 64 :=
.seq NamedBody345_1027 NamedBody345_1054

def NamedBody345_1056 : StackLang.HolProg 64 :=
.seq NamedBody345_998 NamedBody345_1055

def NamedBody345_1057 : StackLang.HolProg 64 :=
.seq NamedBody345_995 NamedBody345_1056

def NamedBody345_1058 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody345_1059 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1060 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def NamedBody345_1061 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1062 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody345_1063 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1064 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 8#64))

def NamedBody345_1065 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1066 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 16#64))

def NamedBody345_1067 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1068 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 24#64))

def NamedBody345_1069 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody345_1070 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody345_1071 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody345_1072 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody345_1073 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody345_1074 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody345_1075 : StackLang.HolProg 64 :=
.seq NamedBody345_1073 NamedBody345_1074

def NamedBody345_1076 : StackLang.HolProg 64 :=
.seq NamedBody345_1072 NamedBody345_1075

def NamedBody345_1077 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1078 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1010#64)

def NamedBody345_1079 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody345_1080 : StackLang.HolProg 64 :=
.seq NamedBody345_1078 NamedBody345_1079

def NamedBody345_1081 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody345_1082 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody345_1083 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody345_1084 : StackLang.HolProg 64 :=
.seq NamedBody345_1082 NamedBody345_1083

def NamedBody345_1085 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1086 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody345_1084 NamedBody345_1085

def NamedBody345_1087 : StackLang.HolProg 64 :=
.seq NamedBody345_1081 NamedBody345_1086

def NamedBody345_1088 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody345_1089 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody345_1090 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 345 23

def NamedBody345_1091 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody345_1092 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody345_1093 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_1094 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1095 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody345_1096 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody345_1097 : StackLang.HolProg 64 :=
.seq NamedBody345_1095 NamedBody345_1096

def NamedBody345_1098 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody345_1099 : StackLang.HolProg 64 :=
.seq NamedBody345_1097 NamedBody345_1098

def NamedBody345_1100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody345_1101 : StackLang.HolProg 64 :=
.seq NamedBody345_1099 NamedBody345_1100

def NamedBody345_1102 : StackLang.HolProg 64 :=
.seq NamedBody345_1094 NamedBody345_1101

def NamedBody345_1103 : StackLang.HolProg 64 :=
.seq NamedBody345_1093 NamedBody345_1102

def NamedBody345_1104 : StackLang.HolProg 64 :=
.seq NamedBody345_1092 NamedBody345_1103

def NamedBody345_1105 : StackLang.HolProg 64 :=
.seq NamedBody345_1091 NamedBody345_1104

def NamedBody345_1106 : StackLang.HolProg 64 :=
.seq NamedBody345_1090 NamedBody345_1105

def NamedBody345_1107 : StackLang.HolProg 64 :=
.seq NamedBody345_1089 NamedBody345_1106

def NamedBody345_1108 : StackLang.HolProg 64 :=
.seq NamedBody345_1088 NamedBody345_1107

def NamedBody345_1109 : StackLang.HolProg 64 :=
.seq NamedBody345_1087 NamedBody345_1108

def NamedBody345_1110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_1114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody345_1115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody345_1116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody345_1117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody345_1118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody345_1119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody345_1120 : StackLang.HolProg 64 :=
.seq NamedBody345_1118 NamedBody345_1119

def NamedBody345_1121 : StackLang.HolProg 64 :=
.seq NamedBody345_1117 NamedBody345_1120

def NamedBody345_1122 : StackLang.HolProg 64 :=
.seq NamedBody345_1116 NamedBody345_1121

def NamedBody345_1123 : StackLang.HolProg 64 :=
.seq NamedBody345_1115 NamedBody345_1122

def NamedBody345_1124 : StackLang.HolProg 64 :=
.seq NamedBody345_1114 NamedBody345_1123

def NamedBody345_1125 : StackLang.HolProg 64 :=
.seq NamedBody345_1113 NamedBody345_1124

def NamedBody345_1126 : StackLang.HolProg 64 :=
.seq NamedBody345_1112 NamedBody345_1125

def NamedBody345_1127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody345_1128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody345_1129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody345_1130 : StackLang.HolProg 64 :=
.seq NamedBody345_1128 NamedBody345_1129

def NamedBody345_1131 : StackLang.HolProg 64 :=
.seq NamedBody345_1127 NamedBody345_1130

def NamedBody345_1132 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody345_1133 : StackLang.HolProg 64 :=
.seq NamedBody345_1131 NamedBody345_1132

def NamedBody345_1134 : StackLang.HolProg 64 :=
.call (some (NamedBody345_1126, 1, 345, 22)) (Sum.inl 336) (some (NamedBody345_1133, 345, 23))

def NamedBody345_1135 : StackLang.HolProg 64 :=
.seq NamedBody345_1111 NamedBody345_1134

def NamedBody345_1136 : StackLang.HolProg 64 :=
.seq NamedBody345_1110 NamedBody345_1135

def NamedBody345_1137 : StackLang.HolProg 64 :=
.seq NamedBody345_1109 NamedBody345_1136

def NamedBody345_1138 : StackLang.HolProg 64 :=
.seq NamedBody345_1080 NamedBody345_1137

def NamedBody345_1139 : StackLang.HolProg 64 :=
.seq NamedBody345_1077 NamedBody345_1138

def NamedBody345_1140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody345_1141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 112#64)))

def NamedBody345_1143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody345_1145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 8#64))

def NamedBody345_1147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 16#64))

def NamedBody345_1149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 24#64))

def NamedBody345_1151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def NamedBody345_1153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody345_1154 : StackLang.HolProg 64 :=
.seq NamedBody345_1152 NamedBody345_1153

def NamedBody345_1155 : StackLang.HolProg 64 :=
.seq NamedBody345_1151 NamedBody345_1154

def NamedBody345_1156 : StackLang.HolProg 64 :=
.seq NamedBody345_1150 NamedBody345_1155

def NamedBody345_1157 : StackLang.HolProg 64 :=
.seq NamedBody345_1149 NamedBody345_1156

def NamedBody345_1158 : StackLang.HolProg 64 :=
.seq NamedBody345_1148 NamedBody345_1157

def NamedBody345_1159 : StackLang.HolProg 64 :=
.seq NamedBody345_1147 NamedBody345_1158

def NamedBody345_1160 : StackLang.HolProg 64 :=
.seq NamedBody345_1146 NamedBody345_1159

def NamedBody345_1161 : StackLang.HolProg 64 :=
.seq NamedBody345_1145 NamedBody345_1160

def NamedBody345_1162 : StackLang.HolProg 64 :=
.seq NamedBody345_1144 NamedBody345_1161

def NamedBody345_1163 : StackLang.HolProg 64 :=
.seq NamedBody345_1143 NamedBody345_1162

def NamedBody345_1164 : StackLang.HolProg 64 :=
.seq NamedBody345_1142 NamedBody345_1163

def NamedBody345_1165 : StackLang.HolProg 64 :=
.seq NamedBody345_1141 NamedBody345_1164

def NamedBody345_1166 : StackLang.HolProg 64 :=
.seq NamedBody345_1140 NamedBody345_1165

def NamedBody345_1167 : StackLang.HolProg 64 :=
.seq NamedBody345_1139 NamedBody345_1166

def NamedBody345_1168 : StackLang.HolProg 64 :=
.seq NamedBody345_1076 NamedBody345_1167

def NamedBody345_1169 : StackLang.HolProg 64 :=
.seq NamedBody345_1071 NamedBody345_1168

def NamedBody345_1170 : StackLang.HolProg 64 :=
.seq NamedBody345_1070 NamedBody345_1169

def NamedBody345_1171 : StackLang.HolProg 64 :=
.seq NamedBody345_1069 NamedBody345_1170

def NamedBody345_1172 : StackLang.HolProg 64 :=
.seq NamedBody345_1068 NamedBody345_1171

def NamedBody345_1173 : StackLang.HolProg 64 :=
.seq NamedBody345_1067 NamedBody345_1172

def NamedBody345_1174 : StackLang.HolProg 64 :=
.seq NamedBody345_1066 NamedBody345_1173

def NamedBody345_1175 : StackLang.HolProg 64 :=
.seq NamedBody345_1065 NamedBody345_1174

def NamedBody345_1176 : StackLang.HolProg 64 :=
.seq NamedBody345_1064 NamedBody345_1175

def NamedBody345_1177 : StackLang.HolProg 64 :=
.seq NamedBody345_1063 NamedBody345_1176

def NamedBody345_1178 : StackLang.HolProg 64 :=
.seq NamedBody345_1062 NamedBody345_1177

def NamedBody345_1179 : StackLang.HolProg 64 :=
.seq NamedBody345_1061 NamedBody345_1178

def NamedBody345_1180 : StackLang.HolProg 64 :=
.seq NamedBody345_1060 NamedBody345_1179

def NamedBody345_1181 : StackLang.HolProg 64 :=
.seq NamedBody345_1059 NamedBody345_1180

def NamedBody345_1182 : StackLang.HolProg 64 :=
.seq NamedBody345_1058 NamedBody345_1181

def NamedBody345_1183 : StackLang.HolProg 64 :=
.seq NamedBody345_1057 NamedBody345_1182

def NamedBody345_1184 : StackLang.HolProg 64 :=
.seq NamedBody345_994 NamedBody345_1183

def NamedBody345_1185 : StackLang.HolProg 64 :=
.seq NamedBody345_987 NamedBody345_1184

def NamedBody345_1186 : StackLang.HolProg 64 :=
.seq NamedBody345_986 NamedBody345_1185

def NamedBody345_1187 : StackLang.HolProg 64 :=
.seq NamedBody345_985 NamedBody345_1186

def NamedBody345_1188 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) NamedBody345_984 NamedBody345_1187

def NamedBody345_1189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody345_1190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def NamedBody345_1191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 14#64)

def NamedBody345_1192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody345_1193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody345_1194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody345_1195 : StackLang.HolProg 64 :=
.seq NamedBody345_1193 NamedBody345_1194

def NamedBody345_1196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1011#64)

def NamedBody345_1198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody345_1199 : StackLang.HolProg 64 :=
.seq NamedBody345_1197 NamedBody345_1198

def NamedBody345_1200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody345_1201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody345_1202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody345_1203 : StackLang.HolProg 64 :=
.seq NamedBody345_1201 NamedBody345_1202

def NamedBody345_1204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1205 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody345_1203 NamedBody345_1204

def NamedBody345_1206 : StackLang.HolProg 64 :=
.seq NamedBody345_1200 NamedBody345_1205

def NamedBody345_1207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody345_1208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody345_1209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 345 25

def NamedBody345_1210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody345_1211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody345_1212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_1213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody345_1215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody345_1216 : StackLang.HolProg 64 :=
.seq NamedBody345_1214 NamedBody345_1215

def NamedBody345_1217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody345_1218 : StackLang.HolProg 64 :=
.seq NamedBody345_1216 NamedBody345_1217

def NamedBody345_1219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody345_1220 : StackLang.HolProg 64 :=
.seq NamedBody345_1218 NamedBody345_1219

def NamedBody345_1221 : StackLang.HolProg 64 :=
.seq NamedBody345_1213 NamedBody345_1220

def NamedBody345_1222 : StackLang.HolProg 64 :=
.seq NamedBody345_1212 NamedBody345_1221

def NamedBody345_1223 : StackLang.HolProg 64 :=
.seq NamedBody345_1211 NamedBody345_1222

def NamedBody345_1224 : StackLang.HolProg 64 :=
.seq NamedBody345_1210 NamedBody345_1223

def NamedBody345_1225 : StackLang.HolProg 64 :=
.seq NamedBody345_1209 NamedBody345_1224

def NamedBody345_1226 : StackLang.HolProg 64 :=
.seq NamedBody345_1208 NamedBody345_1225

def NamedBody345_1227 : StackLang.HolProg 64 :=
.seq NamedBody345_1207 NamedBody345_1226

def NamedBody345_1228 : StackLang.HolProg 64 :=
.seq NamedBody345_1206 NamedBody345_1227

def NamedBody345_1229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_1233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody345_1234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody345_1235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody345_1236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody345_1237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody345_1238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_1239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody345_1240 : StackLang.HolProg 64 :=
.seq NamedBody345_1238 NamedBody345_1239

def NamedBody345_1241 : StackLang.HolProg 64 :=
.seq NamedBody345_1237 NamedBody345_1240

def NamedBody345_1242 : StackLang.HolProg 64 :=
.seq NamedBody345_1236 NamedBody345_1241

def NamedBody345_1243 : StackLang.HolProg 64 :=
.seq NamedBody345_1235 NamedBody345_1242

def NamedBody345_1244 : StackLang.HolProg 64 :=
.seq NamedBody345_1234 NamedBody345_1243

def NamedBody345_1245 : StackLang.HolProg 64 :=
.seq NamedBody345_1233 NamedBody345_1244

def NamedBody345_1246 : StackLang.HolProg 64 :=
.seq NamedBody345_1232 NamedBody345_1245

def NamedBody345_1247 : StackLang.HolProg 64 :=
.seq NamedBody345_1231 NamedBody345_1246

def NamedBody345_1248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody345_1249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody345_1250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_1251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody345_1252 : StackLang.HolProg 64 :=
.seq NamedBody345_1250 NamedBody345_1251

def NamedBody345_1253 : StackLang.HolProg 64 :=
.seq NamedBody345_1249 NamedBody345_1252

def NamedBody345_1254 : StackLang.HolProg 64 :=
.seq NamedBody345_1248 NamedBody345_1253

def NamedBody345_1255 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody345_1256 : StackLang.HolProg 64 :=
.seq NamedBody345_1254 NamedBody345_1255

def NamedBody345_1257 : StackLang.HolProg 64 :=
.call (some (NamedBody345_1247, 1, 345, 24)) (Sum.inl 337) (some (NamedBody345_1256, 345, 25))

def NamedBody345_1258 : StackLang.HolProg 64 :=
.seq NamedBody345_1230 NamedBody345_1257

def NamedBody345_1259 : StackLang.HolProg 64 :=
.seq NamedBody345_1229 NamedBody345_1258

def NamedBody345_1260 : StackLang.HolProg 64 :=
.seq NamedBody345_1228 NamedBody345_1259

def NamedBody345_1261 : StackLang.HolProg 64 :=
.seq NamedBody345_1199 NamedBody345_1260

def NamedBody345_1262 : StackLang.HolProg 64 :=
.seq NamedBody345_1196 NamedBody345_1261

def NamedBody345_1263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody345_1264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 144#64)))

def NamedBody345_1266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody345_1268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody345_1270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 3#64)

def NamedBody345_1272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody345_1273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody345_1274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 20#64)

def NamedBody345_1275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody345_1276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody345_1277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_1278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody345_1279 : StackLang.HolProg 64 :=
.seq NamedBody345_1277 NamedBody345_1278

def NamedBody345_1280 : StackLang.HolProg 64 :=
.seq NamedBody345_1276 NamedBody345_1279

def NamedBody345_1281 : StackLang.HolProg 64 :=
.seq NamedBody345_1275 NamedBody345_1280

def NamedBody345_1282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1012#64)

def NamedBody345_1284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody345_1285 : StackLang.HolProg 64 :=
.seq NamedBody345_1283 NamedBody345_1284

def NamedBody345_1286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody345_1287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody345_1288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody345_1289 : StackLang.HolProg 64 :=
.seq NamedBody345_1287 NamedBody345_1288

def NamedBody345_1290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1291 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody345_1289 NamedBody345_1290

def NamedBody345_1292 : StackLang.HolProg 64 :=
.seq NamedBody345_1286 NamedBody345_1291

def NamedBody345_1293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody345_1294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody345_1295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 345 27

def NamedBody345_1296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody345_1297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody345_1298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_1299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody345_1301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody345_1302 : StackLang.HolProg 64 :=
.seq NamedBody345_1300 NamedBody345_1301

def NamedBody345_1303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody345_1304 : StackLang.HolProg 64 :=
.seq NamedBody345_1302 NamedBody345_1303

def NamedBody345_1305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody345_1306 : StackLang.HolProg 64 :=
.seq NamedBody345_1304 NamedBody345_1305

def NamedBody345_1307 : StackLang.HolProg 64 :=
.seq NamedBody345_1299 NamedBody345_1306

def NamedBody345_1308 : StackLang.HolProg 64 :=
.seq NamedBody345_1298 NamedBody345_1307

def NamedBody345_1309 : StackLang.HolProg 64 :=
.seq NamedBody345_1297 NamedBody345_1308

def NamedBody345_1310 : StackLang.HolProg 64 :=
.seq NamedBody345_1296 NamedBody345_1309

def NamedBody345_1311 : StackLang.HolProg 64 :=
.seq NamedBody345_1295 NamedBody345_1310

def NamedBody345_1312 : StackLang.HolProg 64 :=
.seq NamedBody345_1294 NamedBody345_1311

def NamedBody345_1313 : StackLang.HolProg 64 :=
.seq NamedBody345_1293 NamedBody345_1312

def NamedBody345_1314 : StackLang.HolProg 64 :=
.seq NamedBody345_1292 NamedBody345_1313

def NamedBody345_1315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_1319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody345_1320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody345_1321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody345_1322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody345_1323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody345_1324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody345_1325 : StackLang.HolProg 64 :=
.seq NamedBody345_1323 NamedBody345_1324

def NamedBody345_1326 : StackLang.HolProg 64 :=
.seq NamedBody345_1322 NamedBody345_1325

def NamedBody345_1327 : StackLang.HolProg 64 :=
.seq NamedBody345_1321 NamedBody345_1326

def NamedBody345_1328 : StackLang.HolProg 64 :=
.seq NamedBody345_1320 NamedBody345_1327

def NamedBody345_1329 : StackLang.HolProg 64 :=
.seq NamedBody345_1319 NamedBody345_1328

def NamedBody345_1330 : StackLang.HolProg 64 :=
.seq NamedBody345_1318 NamedBody345_1329

def NamedBody345_1331 : StackLang.HolProg 64 :=
.seq NamedBody345_1317 NamedBody345_1330

def NamedBody345_1332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody345_1333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody345_1334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody345_1335 : StackLang.HolProg 64 :=
.seq NamedBody345_1333 NamedBody345_1334

def NamedBody345_1336 : StackLang.HolProg 64 :=
.seq NamedBody345_1332 NamedBody345_1335

def NamedBody345_1337 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody345_1338 : StackLang.HolProg 64 :=
.seq NamedBody345_1336 NamedBody345_1337

def NamedBody345_1339 : StackLang.HolProg 64 :=
.call (some (NamedBody345_1331, 1, 345, 26)) (Sum.inl 339) (some (NamedBody345_1338, 345, 27))

def NamedBody345_1340 : StackLang.HolProg 64 :=
.seq NamedBody345_1316 NamedBody345_1339

def NamedBody345_1341 : StackLang.HolProg 64 :=
.seq NamedBody345_1315 NamedBody345_1340

def NamedBody345_1342 : StackLang.HolProg 64 :=
.seq NamedBody345_1314 NamedBody345_1341

def NamedBody345_1343 : StackLang.HolProg 64 :=
.seq NamedBody345_1285 NamedBody345_1342

def NamedBody345_1344 : StackLang.HolProg 64 :=
.seq NamedBody345_1282 NamedBody345_1343

def NamedBody345_1345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody345_1346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1347 : StackLang.HolProg 64 :=
.seq NamedBody345_1345 NamedBody345_1346

def NamedBody345_1348 : StackLang.HolProg 64 :=
.seq NamedBody345_1344 NamedBody345_1347

def NamedBody345_1349 : StackLang.HolProg 64 :=
.seq NamedBody345_1281 NamedBody345_1348

def NamedBody345_1350 : StackLang.HolProg 64 :=
.seq NamedBody345_1274 NamedBody345_1349

def NamedBody345_1351 : StackLang.HolProg 64 :=
.seq NamedBody345_1273 NamedBody345_1350

def NamedBody345_1352 : StackLang.HolProg 64 :=
.seq NamedBody345_1272 NamedBody345_1351

def NamedBody345_1353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody345_1354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody345_1355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody345_1356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody345_1357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_1358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody345_1359 : StackLang.HolProg 64 :=
.seq NamedBody345_1357 NamedBody345_1358

def NamedBody345_1360 : StackLang.HolProg 64 :=
.seq NamedBody345_1356 NamedBody345_1359

def NamedBody345_1361 : StackLang.HolProg 64 :=
.seq NamedBody345_1355 NamedBody345_1360

def NamedBody345_1362 : StackLang.HolProg 64 :=
.seq NamedBody345_1354 NamedBody345_1361

def NamedBody345_1363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1013#64)

def NamedBody345_1365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody345_1366 : StackLang.HolProg 64 :=
.seq NamedBody345_1364 NamedBody345_1365

def NamedBody345_1367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody345_1368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody345_1369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody345_1370 : StackLang.HolProg 64 :=
.seq NamedBody345_1368 NamedBody345_1369

def NamedBody345_1371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1372 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody345_1370 NamedBody345_1371

def NamedBody345_1373 : StackLang.HolProg 64 :=
.seq NamedBody345_1367 NamedBody345_1372

def NamedBody345_1374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody345_1375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody345_1376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 345 29

def NamedBody345_1377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody345_1378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody345_1379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_1380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody345_1382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody345_1383 : StackLang.HolProg 64 :=
.seq NamedBody345_1381 NamedBody345_1382

def NamedBody345_1384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody345_1385 : StackLang.HolProg 64 :=
.seq NamedBody345_1383 NamedBody345_1384

def NamedBody345_1386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody345_1387 : StackLang.HolProg 64 :=
.seq NamedBody345_1385 NamedBody345_1386

def NamedBody345_1388 : StackLang.HolProg 64 :=
.seq NamedBody345_1380 NamedBody345_1387

def NamedBody345_1389 : StackLang.HolProg 64 :=
.seq NamedBody345_1379 NamedBody345_1388

def NamedBody345_1390 : StackLang.HolProg 64 :=
.seq NamedBody345_1378 NamedBody345_1389

def NamedBody345_1391 : StackLang.HolProg 64 :=
.seq NamedBody345_1377 NamedBody345_1390

def NamedBody345_1392 : StackLang.HolProg 64 :=
.seq NamedBody345_1376 NamedBody345_1391

def NamedBody345_1393 : StackLang.HolProg 64 :=
.seq NamedBody345_1375 NamedBody345_1392

def NamedBody345_1394 : StackLang.HolProg 64 :=
.seq NamedBody345_1374 NamedBody345_1393

def NamedBody345_1395 : StackLang.HolProg 64 :=
.seq NamedBody345_1373 NamedBody345_1394

def NamedBody345_1396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_1400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody345_1401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody345_1402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody345_1403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody345_1404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody345_1405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody345_1406 : StackLang.HolProg 64 :=
.seq NamedBody345_1404 NamedBody345_1405

def NamedBody345_1407 : StackLang.HolProg 64 :=
.seq NamedBody345_1403 NamedBody345_1406

def NamedBody345_1408 : StackLang.HolProg 64 :=
.seq NamedBody345_1402 NamedBody345_1407

def NamedBody345_1409 : StackLang.HolProg 64 :=
.seq NamedBody345_1401 NamedBody345_1408

def NamedBody345_1410 : StackLang.HolProg 64 :=
.seq NamedBody345_1400 NamedBody345_1409

def NamedBody345_1411 : StackLang.HolProg 64 :=
.seq NamedBody345_1399 NamedBody345_1410

def NamedBody345_1412 : StackLang.HolProg 64 :=
.seq NamedBody345_1398 NamedBody345_1411

def NamedBody345_1413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody345_1414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody345_1415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody345_1416 : StackLang.HolProg 64 :=
.seq NamedBody345_1414 NamedBody345_1415

def NamedBody345_1417 : StackLang.HolProg 64 :=
.seq NamedBody345_1413 NamedBody345_1416

def NamedBody345_1418 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody345_1419 : StackLang.HolProg 64 :=
.seq NamedBody345_1417 NamedBody345_1418

def NamedBody345_1420 : StackLang.HolProg 64 :=
.call (some (NamedBody345_1412, 1, 345, 28)) (Sum.inl 340) (some (NamedBody345_1419, 345, 29))

def NamedBody345_1421 : StackLang.HolProg 64 :=
.seq NamedBody345_1397 NamedBody345_1420

def NamedBody345_1422 : StackLang.HolProg 64 :=
.seq NamedBody345_1396 NamedBody345_1421

def NamedBody345_1423 : StackLang.HolProg 64 :=
.seq NamedBody345_1395 NamedBody345_1422

def NamedBody345_1424 : StackLang.HolProg 64 :=
.seq NamedBody345_1366 NamedBody345_1423

def NamedBody345_1425 : StackLang.HolProg 64 :=
.seq NamedBody345_1363 NamedBody345_1424

def NamedBody345_1426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody345_1427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1428 : StackLang.HolProg 64 :=
.seq NamedBody345_1426 NamedBody345_1427

def NamedBody345_1429 : StackLang.HolProg 64 :=
.seq NamedBody345_1425 NamedBody345_1428

def NamedBody345_1430 : StackLang.HolProg 64 :=
.seq NamedBody345_1362 NamedBody345_1429

def NamedBody345_1431 : StackLang.HolProg 64 :=
.seq NamedBody345_1353 NamedBody345_1430

def NamedBody345_1432 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 13 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody345_1352 NamedBody345_1431

def NamedBody345_1433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody345_1434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 152#64)))

def NamedBody345_1436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody345_1438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody345_1440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody345_1441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 32#64)

def NamedBody345_1442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody345_1443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody345_1444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody345_1445 : StackLang.HolProg 64 :=
.seq NamedBody345_1443 NamedBody345_1444

def NamedBody345_1446 : StackLang.HolProg 64 :=
.seq NamedBody345_1442 NamedBody345_1445

def NamedBody345_1447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1014#64)

def NamedBody345_1449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody345_1450 : StackLang.HolProg 64 :=
.seq NamedBody345_1448 NamedBody345_1449

def NamedBody345_1451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody345_1452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody345_1453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody345_1454 : StackLang.HolProg 64 :=
.seq NamedBody345_1452 NamedBody345_1453

def NamedBody345_1455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1456 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody345_1454 NamedBody345_1455

def NamedBody345_1457 : StackLang.HolProg 64 :=
.seq NamedBody345_1451 NamedBody345_1456

def NamedBody345_1458 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody345_1459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody345_1460 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 345 31

def NamedBody345_1461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody345_1462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody345_1463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_1464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody345_1466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody345_1467 : StackLang.HolProg 64 :=
.seq NamedBody345_1465 NamedBody345_1466

def NamedBody345_1468 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody345_1469 : StackLang.HolProg 64 :=
.seq NamedBody345_1467 NamedBody345_1468

def NamedBody345_1470 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody345_1471 : StackLang.HolProg 64 :=
.seq NamedBody345_1469 NamedBody345_1470

def NamedBody345_1472 : StackLang.HolProg 64 :=
.seq NamedBody345_1464 NamedBody345_1471

def NamedBody345_1473 : StackLang.HolProg 64 :=
.seq NamedBody345_1463 NamedBody345_1472

def NamedBody345_1474 : StackLang.HolProg 64 :=
.seq NamedBody345_1462 NamedBody345_1473

def NamedBody345_1475 : StackLang.HolProg 64 :=
.seq NamedBody345_1461 NamedBody345_1474

def NamedBody345_1476 : StackLang.HolProg 64 :=
.seq NamedBody345_1460 NamedBody345_1475

def NamedBody345_1477 : StackLang.HolProg 64 :=
.seq NamedBody345_1459 NamedBody345_1476

def NamedBody345_1478 : StackLang.HolProg 64 :=
.seq NamedBody345_1458 NamedBody345_1477

def NamedBody345_1479 : StackLang.HolProg 64 :=
.seq NamedBody345_1457 NamedBody345_1478

def NamedBody345_1480 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1481 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_1484 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody345_1485 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody345_1486 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody345_1487 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody345_1488 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody345_1489 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody345_1490 : StackLang.HolProg 64 :=
.seq NamedBody345_1488 NamedBody345_1489

def NamedBody345_1491 : StackLang.HolProg 64 :=
.seq NamedBody345_1487 NamedBody345_1490

def NamedBody345_1492 : StackLang.HolProg 64 :=
.seq NamedBody345_1486 NamedBody345_1491

def NamedBody345_1493 : StackLang.HolProg 64 :=
.seq NamedBody345_1485 NamedBody345_1492

def NamedBody345_1494 : StackLang.HolProg 64 :=
.seq NamedBody345_1484 NamedBody345_1493

def NamedBody345_1495 : StackLang.HolProg 64 :=
.seq NamedBody345_1483 NamedBody345_1494

def NamedBody345_1496 : StackLang.HolProg 64 :=
.seq NamedBody345_1482 NamedBody345_1495

def NamedBody345_1497 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody345_1498 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody345_1499 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody345_1500 : StackLang.HolProg 64 :=
.seq NamedBody345_1498 NamedBody345_1499

def NamedBody345_1501 : StackLang.HolProg 64 :=
.seq NamedBody345_1497 NamedBody345_1500

def NamedBody345_1502 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody345_1503 : StackLang.HolProg 64 :=
.seq NamedBody345_1501 NamedBody345_1502

def NamedBody345_1504 : StackLang.HolProg 64 :=
.call (some (NamedBody345_1496, 1, 345, 30)) (Sum.inl 336) (some (NamedBody345_1503, 345, 31))

def NamedBody345_1505 : StackLang.HolProg 64 :=
.seq NamedBody345_1481 NamedBody345_1504

def NamedBody345_1506 : StackLang.HolProg 64 :=
.seq NamedBody345_1480 NamedBody345_1505

def NamedBody345_1507 : StackLang.HolProg 64 :=
.seq NamedBody345_1479 NamedBody345_1506

def NamedBody345_1508 : StackLang.HolProg 64 :=
.seq NamedBody345_1450 NamedBody345_1507

def NamedBody345_1509 : StackLang.HolProg 64 :=
.seq NamedBody345_1447 NamedBody345_1508

def NamedBody345_1510 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody345_1511 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1512 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 160#64)))

def NamedBody345_1513 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1514 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody345_1515 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1516 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 8#64))

def NamedBody345_1517 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1518 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 16#64))

def NamedBody345_1519 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1520 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 24#64))

def NamedBody345_1521 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1522 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody345_1523 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def NamedBody345_1524 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody345_1525 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody345_1526 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody345_1527 : StackLang.HolProg 64 :=
.seq NamedBody345_1525 NamedBody345_1526

def NamedBody345_1528 : StackLang.HolProg 64 :=
.seq NamedBody345_1524 NamedBody345_1527

def NamedBody345_1529 : StackLang.HolProg 64 :=
.seq NamedBody345_1523 NamedBody345_1528

def NamedBody345_1530 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1531 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1015#64)

def NamedBody345_1532 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody345_1533 : StackLang.HolProg 64 :=
.seq NamedBody345_1531 NamedBody345_1532

def NamedBody345_1534 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody345_1535 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody345_1536 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody345_1537 : StackLang.HolProg 64 :=
.seq NamedBody345_1535 NamedBody345_1536

def NamedBody345_1538 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1539 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody345_1537 NamedBody345_1538

def NamedBody345_1540 : StackLang.HolProg 64 :=
.seq NamedBody345_1534 NamedBody345_1539

def NamedBody345_1541 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody345_1542 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody345_1543 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 345 33

def NamedBody345_1544 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody345_1545 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody345_1546 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_1547 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1548 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody345_1549 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody345_1550 : StackLang.HolProg 64 :=
.seq NamedBody345_1548 NamedBody345_1549

def NamedBody345_1551 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody345_1552 : StackLang.HolProg 64 :=
.seq NamedBody345_1550 NamedBody345_1551

def NamedBody345_1553 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody345_1554 : StackLang.HolProg 64 :=
.seq NamedBody345_1552 NamedBody345_1553

def NamedBody345_1555 : StackLang.HolProg 64 :=
.seq NamedBody345_1547 NamedBody345_1554

def NamedBody345_1556 : StackLang.HolProg 64 :=
.seq NamedBody345_1546 NamedBody345_1555

def NamedBody345_1557 : StackLang.HolProg 64 :=
.seq NamedBody345_1545 NamedBody345_1556

def NamedBody345_1558 : StackLang.HolProg 64 :=
.seq NamedBody345_1544 NamedBody345_1557

def NamedBody345_1559 : StackLang.HolProg 64 :=
.seq NamedBody345_1543 NamedBody345_1558

def NamedBody345_1560 : StackLang.HolProg 64 :=
.seq NamedBody345_1542 NamedBody345_1559

def NamedBody345_1561 : StackLang.HolProg 64 :=
.seq NamedBody345_1541 NamedBody345_1560

def NamedBody345_1562 : StackLang.HolProg 64 :=
.seq NamedBody345_1540 NamedBody345_1561

def NamedBody345_1563 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1564 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1565 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1566 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_1567 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody345_1568 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody345_1569 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody345_1570 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody345_1571 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody345_1572 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_1573 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody345_1574 : StackLang.HolProg 64 :=
.seq NamedBody345_1572 NamedBody345_1573

def NamedBody345_1575 : StackLang.HolProg 64 :=
.seq NamedBody345_1571 NamedBody345_1574

def NamedBody345_1576 : StackLang.HolProg 64 :=
.seq NamedBody345_1570 NamedBody345_1575

def NamedBody345_1577 : StackLang.HolProg 64 :=
.seq NamedBody345_1569 NamedBody345_1576

def NamedBody345_1578 : StackLang.HolProg 64 :=
.seq NamedBody345_1568 NamedBody345_1577

def NamedBody345_1579 : StackLang.HolProg 64 :=
.seq NamedBody345_1567 NamedBody345_1578

def NamedBody345_1580 : StackLang.HolProg 64 :=
.seq NamedBody345_1566 NamedBody345_1579

def NamedBody345_1581 : StackLang.HolProg 64 :=
.seq NamedBody345_1565 NamedBody345_1580

def NamedBody345_1582 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody345_1583 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody345_1584 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_1585 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody345_1586 : StackLang.HolProg 64 :=
.seq NamedBody345_1584 NamedBody345_1585

def NamedBody345_1587 : StackLang.HolProg 64 :=
.seq NamedBody345_1583 NamedBody345_1586

def NamedBody345_1588 : StackLang.HolProg 64 :=
.seq NamedBody345_1582 NamedBody345_1587

def NamedBody345_1589 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody345_1590 : StackLang.HolProg 64 :=
.seq NamedBody345_1588 NamedBody345_1589

def NamedBody345_1591 : StackLang.HolProg 64 :=
.call (some (NamedBody345_1581, 1, 345, 32)) (Sum.inl 338) (some (NamedBody345_1590, 345, 33))

def NamedBody345_1592 : StackLang.HolProg 64 :=
.seq NamedBody345_1564 NamedBody345_1591

def NamedBody345_1593 : StackLang.HolProg 64 :=
.seq NamedBody345_1563 NamedBody345_1592

def NamedBody345_1594 : StackLang.HolProg 64 :=
.seq NamedBody345_1562 NamedBody345_1593

def NamedBody345_1595 : StackLang.HolProg 64 :=
.seq NamedBody345_1533 NamedBody345_1594

def NamedBody345_1596 : StackLang.HolProg 64 :=
.seq NamedBody345_1530 NamedBody345_1595

def NamedBody345_1597 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody345_1598 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1599 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def NamedBody345_1600 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1601 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody345_1602 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1603 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 200#64)))

def NamedBody345_1604 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1605 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody345_1606 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1607 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody345_1608 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1609 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody345_1610 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody345_1611 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody345_1612 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody345_1613 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody345_1614 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_1615 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody345_1616 : StackLang.HolProg 64 :=
.seq NamedBody345_1614 NamedBody345_1615

def NamedBody345_1617 : StackLang.HolProg 64 :=
.seq NamedBody345_1613 NamedBody345_1616

def NamedBody345_1618 : StackLang.HolProg 64 :=
.seq NamedBody345_1612 NamedBody345_1617

def NamedBody345_1619 : StackLang.HolProg 64 :=
.seq NamedBody345_1611 NamedBody345_1618

def NamedBody345_1620 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1621 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1016#64)

def NamedBody345_1622 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody345_1623 : StackLang.HolProg 64 :=
.seq NamedBody345_1621 NamedBody345_1622

def NamedBody345_1624 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody345_1625 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody345_1626 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody345_1627 : StackLang.HolProg 64 :=
.seq NamedBody345_1625 NamedBody345_1626

def NamedBody345_1628 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1629 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody345_1627 NamedBody345_1628

def NamedBody345_1630 : StackLang.HolProg 64 :=
.seq NamedBody345_1624 NamedBody345_1629

def NamedBody345_1631 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody345_1632 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody345_1633 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 345 35

def NamedBody345_1634 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody345_1635 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody345_1636 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_1637 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1638 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody345_1639 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody345_1640 : StackLang.HolProg 64 :=
.seq NamedBody345_1638 NamedBody345_1639

def NamedBody345_1641 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody345_1642 : StackLang.HolProg 64 :=
.seq NamedBody345_1640 NamedBody345_1641

def NamedBody345_1643 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody345_1644 : StackLang.HolProg 64 :=
.seq NamedBody345_1642 NamedBody345_1643

def NamedBody345_1645 : StackLang.HolProg 64 :=
.seq NamedBody345_1637 NamedBody345_1644

def NamedBody345_1646 : StackLang.HolProg 64 :=
.seq NamedBody345_1636 NamedBody345_1645

def NamedBody345_1647 : StackLang.HolProg 64 :=
.seq NamedBody345_1635 NamedBody345_1646

def NamedBody345_1648 : StackLang.HolProg 64 :=
.seq NamedBody345_1634 NamedBody345_1647

def NamedBody345_1649 : StackLang.HolProg 64 :=
.seq NamedBody345_1633 NamedBody345_1648

def NamedBody345_1650 : StackLang.HolProg 64 :=
.seq NamedBody345_1632 NamedBody345_1649

def NamedBody345_1651 : StackLang.HolProg 64 :=
.seq NamedBody345_1631 NamedBody345_1650

def NamedBody345_1652 : StackLang.HolProg 64 :=
.seq NamedBody345_1630 NamedBody345_1651

def NamedBody345_1653 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1654 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1655 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1656 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_1657 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody345_1658 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody345_1659 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody345_1660 : StackLang.HolProg 64 :=
.seq NamedBody345_1658 NamedBody345_1659

def NamedBody345_1661 : StackLang.HolProg 64 :=
.seq NamedBody345_1657 NamedBody345_1660

def NamedBody345_1662 : StackLang.HolProg 64 :=
.seq NamedBody345_1656 NamedBody345_1661

def NamedBody345_1663 : StackLang.HolProg 64 :=
.seq NamedBody345_1655 NamedBody345_1662

def NamedBody345_1664 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1665 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody345_1666 : StackLang.HolProg 64 :=
.seq NamedBody345_1664 NamedBody345_1665

def NamedBody345_1667 : StackLang.HolProg 64 :=
.call (some (NamedBody345_1663, 1, 345, 34)) (Sum.inl 341) (some (NamedBody345_1666, 345, 35))

def NamedBody345_1668 : StackLang.HolProg 64 :=
.seq NamedBody345_1654 NamedBody345_1667

def NamedBody345_1669 : StackLang.HolProg 64 :=
.seq NamedBody345_1653 NamedBody345_1668

def NamedBody345_1670 : StackLang.HolProg 64 :=
.seq NamedBody345_1652 NamedBody345_1669

def NamedBody345_1671 : StackLang.HolProg 64 :=
.seq NamedBody345_1623 NamedBody345_1670

def NamedBody345_1672 : StackLang.HolProg 64 :=
.seq NamedBody345_1620 NamedBody345_1671

def NamedBody345_1673 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody345_1674 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody345_1675 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1676 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1017#64)

def NamedBody345_1677 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody345_1678 : StackLang.HolProg 64 :=
.seq NamedBody345_1676 NamedBody345_1677

def NamedBody345_1679 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody345_1680 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody345_1681 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody345_1682 : StackLang.HolProg 64 :=
.seq NamedBody345_1680 NamedBody345_1681

def NamedBody345_1683 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1684 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody345_1682 NamedBody345_1683

def NamedBody345_1685 : StackLang.HolProg 64 :=
.seq NamedBody345_1679 NamedBody345_1684

def NamedBody345_1686 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody345_1687 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody345_1688 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 345 37

def NamedBody345_1689 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody345_1690 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody345_1691 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_1692 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1693 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody345_1694 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody345_1695 : StackLang.HolProg 64 :=
.seq NamedBody345_1693 NamedBody345_1694

def NamedBody345_1696 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody345_1697 : StackLang.HolProg 64 :=
.seq NamedBody345_1695 NamedBody345_1696

def NamedBody345_1698 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody345_1699 : StackLang.HolProg 64 :=
.seq NamedBody345_1697 NamedBody345_1698

def NamedBody345_1700 : StackLang.HolProg 64 :=
.seq NamedBody345_1692 NamedBody345_1699

def NamedBody345_1701 : StackLang.HolProg 64 :=
.seq NamedBody345_1691 NamedBody345_1700

def NamedBody345_1702 : StackLang.HolProg 64 :=
.seq NamedBody345_1690 NamedBody345_1701

def NamedBody345_1703 : StackLang.HolProg 64 :=
.seq NamedBody345_1689 NamedBody345_1702

def NamedBody345_1704 : StackLang.HolProg 64 :=
.seq NamedBody345_1688 NamedBody345_1703

def NamedBody345_1705 : StackLang.HolProg 64 :=
.seq NamedBody345_1687 NamedBody345_1704

def NamedBody345_1706 : StackLang.HolProg 64 :=
.seq NamedBody345_1686 NamedBody345_1705

def NamedBody345_1707 : StackLang.HolProg 64 :=
.seq NamedBody345_1685 NamedBody345_1706

def NamedBody345_1708 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1709 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1710 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1711 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_1712 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody345_1713 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody345_1714 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody345_1715 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody345_1716 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody345_1717 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_1718 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody345_1719 : StackLang.HolProg 64 :=
.seq NamedBody345_1717 NamedBody345_1718

def NamedBody345_1720 : StackLang.HolProg 64 :=
.seq NamedBody345_1716 NamedBody345_1719

def NamedBody345_1721 : StackLang.HolProg 64 :=
.seq NamedBody345_1715 NamedBody345_1720

def NamedBody345_1722 : StackLang.HolProg 64 :=
.seq NamedBody345_1714 NamedBody345_1721

def NamedBody345_1723 : StackLang.HolProg 64 :=
.seq NamedBody345_1713 NamedBody345_1722

def NamedBody345_1724 : StackLang.HolProg 64 :=
.seq NamedBody345_1712 NamedBody345_1723

def NamedBody345_1725 : StackLang.HolProg 64 :=
.seq NamedBody345_1711 NamedBody345_1724

def NamedBody345_1726 : StackLang.HolProg 64 :=
.seq NamedBody345_1710 NamedBody345_1725

def NamedBody345_1727 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody345_1728 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody345_1729 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_1730 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody345_1731 : StackLang.HolProg 64 :=
.seq NamedBody345_1729 NamedBody345_1730

def NamedBody345_1732 : StackLang.HolProg 64 :=
.seq NamedBody345_1728 NamedBody345_1731

def NamedBody345_1733 : StackLang.HolProg 64 :=
.seq NamedBody345_1727 NamedBody345_1732

def NamedBody345_1734 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody345_1735 : StackLang.HolProg 64 :=
.seq NamedBody345_1733 NamedBody345_1734

def NamedBody345_1736 : StackLang.HolProg 64 :=
.call (some (NamedBody345_1726, 1, 345, 36)) (Sum.inl 342) (some (NamedBody345_1735, 345, 37))

def NamedBody345_1737 : StackLang.HolProg 64 :=
.seq NamedBody345_1709 NamedBody345_1736

def NamedBody345_1738 : StackLang.HolProg 64 :=
.seq NamedBody345_1708 NamedBody345_1737

def NamedBody345_1739 : StackLang.HolProg 64 :=
.seq NamedBody345_1707 NamedBody345_1738

def NamedBody345_1740 : StackLang.HolProg 64 :=
.seq NamedBody345_1678 NamedBody345_1739

def NamedBody345_1741 : StackLang.HolProg 64 :=
.seq NamedBody345_1675 NamedBody345_1740

def NamedBody345_1742 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody345_1743 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1744 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 208#64)))

def NamedBody345_1745 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1746 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody345_1747 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1748 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 216#64)))

def NamedBody345_1749 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1750 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody345_1751 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1752 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody345_1753 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody345_1754 : StackLang.HolProg 64 :=
.seq NamedBody345_1752 NamedBody345_1753

def NamedBody345_1755 : StackLang.HolProg 64 :=
.seq NamedBody345_1751 NamedBody345_1754

def NamedBody345_1756 : StackLang.HolProg 64 :=
.seq NamedBody345_1750 NamedBody345_1755

def NamedBody345_1757 : StackLang.HolProg 64 :=
.seq NamedBody345_1749 NamedBody345_1756

def NamedBody345_1758 : StackLang.HolProg 64 :=
.seq NamedBody345_1748 NamedBody345_1757

def NamedBody345_1759 : StackLang.HolProg 64 :=
.seq NamedBody345_1747 NamedBody345_1758

def NamedBody345_1760 : StackLang.HolProg 64 :=
.seq NamedBody345_1746 NamedBody345_1759

def NamedBody345_1761 : StackLang.HolProg 64 :=
.seq NamedBody345_1745 NamedBody345_1760

def NamedBody345_1762 : StackLang.HolProg 64 :=
.seq NamedBody345_1744 NamedBody345_1761

def NamedBody345_1763 : StackLang.HolProg 64 :=
.seq NamedBody345_1743 NamedBody345_1762

def NamedBody345_1764 : StackLang.HolProg 64 :=
.seq NamedBody345_1742 NamedBody345_1763

def NamedBody345_1765 : StackLang.HolProg 64 :=
.seq NamedBody345_1741 NamedBody345_1764

def NamedBody345_1766 : StackLang.HolProg 64 :=
.seq NamedBody345_1674 NamedBody345_1765

def NamedBody345_1767 : StackLang.HolProg 64 :=
.seq NamedBody345_1673 NamedBody345_1766

def NamedBody345_1768 : StackLang.HolProg 64 :=
.seq NamedBody345_1672 NamedBody345_1767

def NamedBody345_1769 : StackLang.HolProg 64 :=
.seq NamedBody345_1619 NamedBody345_1768

def NamedBody345_1770 : StackLang.HolProg 64 :=
.seq NamedBody345_1610 NamedBody345_1769

def NamedBody345_1771 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody345_1772 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody345_1773 : StackLang.HolProg 64 :=
.seq NamedBody345_1771 NamedBody345_1772

def NamedBody345_1774 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody345_1770 NamedBody345_1773

def NamedBody345_1775 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody345_1776 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1777 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 3#64)

def NamedBody345_1778 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody345_1779 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody345_1780 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 32#64)

def NamedBody345_1781 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody345_1782 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_1783 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody345_1784 : StackLang.HolProg 64 :=
.seq NamedBody345_1782 NamedBody345_1783

def NamedBody345_1785 : StackLang.HolProg 64 :=
.seq NamedBody345_1781 NamedBody345_1784

def NamedBody345_1786 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1787 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1018#64)

def NamedBody345_1788 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody345_1789 : StackLang.HolProg 64 :=
.seq NamedBody345_1787 NamedBody345_1788

def NamedBody345_1790 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody345_1791 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody345_1792 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody345_1793 : StackLang.HolProg 64 :=
.seq NamedBody345_1791 NamedBody345_1792

def NamedBody345_1794 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1795 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody345_1793 NamedBody345_1794

def NamedBody345_1796 : StackLang.HolProg 64 :=
.seq NamedBody345_1790 NamedBody345_1795

def NamedBody345_1797 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody345_1798 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody345_1799 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 345 39

def NamedBody345_1800 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody345_1801 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody345_1802 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_1803 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1804 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody345_1805 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody345_1806 : StackLang.HolProg 64 :=
.seq NamedBody345_1804 NamedBody345_1805

def NamedBody345_1807 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody345_1808 : StackLang.HolProg 64 :=
.seq NamedBody345_1806 NamedBody345_1807

def NamedBody345_1809 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody345_1810 : StackLang.HolProg 64 :=
.seq NamedBody345_1808 NamedBody345_1809

def NamedBody345_1811 : StackLang.HolProg 64 :=
.seq NamedBody345_1803 NamedBody345_1810

def NamedBody345_1812 : StackLang.HolProg 64 :=
.seq NamedBody345_1802 NamedBody345_1811

def NamedBody345_1813 : StackLang.HolProg 64 :=
.seq NamedBody345_1801 NamedBody345_1812

def NamedBody345_1814 : StackLang.HolProg 64 :=
.seq NamedBody345_1800 NamedBody345_1813

def NamedBody345_1815 : StackLang.HolProg 64 :=
.seq NamedBody345_1799 NamedBody345_1814

def NamedBody345_1816 : StackLang.HolProg 64 :=
.seq NamedBody345_1798 NamedBody345_1815

def NamedBody345_1817 : StackLang.HolProg 64 :=
.seq NamedBody345_1797 NamedBody345_1816

def NamedBody345_1818 : StackLang.HolProg 64 :=
.seq NamedBody345_1796 NamedBody345_1817

def NamedBody345_1819 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1820 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1821 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1822 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_1823 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody345_1824 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody345_1825 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody345_1826 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody345_1827 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody345_1828 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody345_1829 : StackLang.HolProg 64 :=
.seq NamedBody345_1827 NamedBody345_1828

def NamedBody345_1830 : StackLang.HolProg 64 :=
.seq NamedBody345_1826 NamedBody345_1829

def NamedBody345_1831 : StackLang.HolProg 64 :=
.seq NamedBody345_1825 NamedBody345_1830

def NamedBody345_1832 : StackLang.HolProg 64 :=
.seq NamedBody345_1824 NamedBody345_1831

def NamedBody345_1833 : StackLang.HolProg 64 :=
.seq NamedBody345_1823 NamedBody345_1832

def NamedBody345_1834 : StackLang.HolProg 64 :=
.seq NamedBody345_1822 NamedBody345_1833

def NamedBody345_1835 : StackLang.HolProg 64 :=
.seq NamedBody345_1821 NamedBody345_1834

def NamedBody345_1836 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody345_1837 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody345_1838 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody345_1839 : StackLang.HolProg 64 :=
.seq NamedBody345_1837 NamedBody345_1838

def NamedBody345_1840 : StackLang.HolProg 64 :=
.seq NamedBody345_1836 NamedBody345_1839

def NamedBody345_1841 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody345_1842 : StackLang.HolProg 64 :=
.seq NamedBody345_1840 NamedBody345_1841

def NamedBody345_1843 : StackLang.HolProg 64 :=
.call (some (NamedBody345_1835, 1, 345, 38)) (Sum.inl 336) (some (NamedBody345_1842, 345, 39))

def NamedBody345_1844 : StackLang.HolProg 64 :=
.seq NamedBody345_1820 NamedBody345_1843

def NamedBody345_1845 : StackLang.HolProg 64 :=
.seq NamedBody345_1819 NamedBody345_1844

def NamedBody345_1846 : StackLang.HolProg 64 :=
.seq NamedBody345_1818 NamedBody345_1845

def NamedBody345_1847 : StackLang.HolProg 64 :=
.seq NamedBody345_1789 NamedBody345_1846

def NamedBody345_1848 : StackLang.HolProg 64 :=
.seq NamedBody345_1786 NamedBody345_1847

def NamedBody345_1849 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody345_1850 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1851 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 224#64)))

def NamedBody345_1852 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1853 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody345_1854 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1855 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 8#64))

def NamedBody345_1856 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1857 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 16#64))

def NamedBody345_1858 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1859 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 24#64))

def NamedBody345_1860 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody345_1861 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody345_1862 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody345_1863 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody345_1864 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody345_1865 : StackLang.HolProg 64 :=
.seq NamedBody345_1863 NamedBody345_1864

def NamedBody345_1866 : StackLang.HolProg 64 :=
.seq NamedBody345_1862 NamedBody345_1865

def NamedBody345_1867 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1868 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1019#64)

def NamedBody345_1869 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody345_1870 : StackLang.HolProg 64 :=
.seq NamedBody345_1868 NamedBody345_1869

def NamedBody345_1871 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody345_1872 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody345_1873 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody345_1874 : StackLang.HolProg 64 :=
.seq NamedBody345_1872 NamedBody345_1873

def NamedBody345_1875 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1876 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody345_1874 NamedBody345_1875

def NamedBody345_1877 : StackLang.HolProg 64 :=
.seq NamedBody345_1871 NamedBody345_1876

def NamedBody345_1878 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody345_1879 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody345_1880 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 345 41

def NamedBody345_1881 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody345_1882 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody345_1883 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_1884 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1885 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody345_1886 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody345_1887 : StackLang.HolProg 64 :=
.seq NamedBody345_1885 NamedBody345_1886

def NamedBody345_1888 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody345_1889 : StackLang.HolProg 64 :=
.seq NamedBody345_1887 NamedBody345_1888

def NamedBody345_1890 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody345_1891 : StackLang.HolProg 64 :=
.seq NamedBody345_1889 NamedBody345_1890

def NamedBody345_1892 : StackLang.HolProg 64 :=
.seq NamedBody345_1884 NamedBody345_1891

def NamedBody345_1893 : StackLang.HolProg 64 :=
.seq NamedBody345_1883 NamedBody345_1892

def NamedBody345_1894 : StackLang.HolProg 64 :=
.seq NamedBody345_1882 NamedBody345_1893

def NamedBody345_1895 : StackLang.HolProg 64 :=
.seq NamedBody345_1881 NamedBody345_1894

def NamedBody345_1896 : StackLang.HolProg 64 :=
.seq NamedBody345_1880 NamedBody345_1895

def NamedBody345_1897 : StackLang.HolProg 64 :=
.seq NamedBody345_1879 NamedBody345_1896

def NamedBody345_1898 : StackLang.HolProg 64 :=
.seq NamedBody345_1878 NamedBody345_1897

def NamedBody345_1899 : StackLang.HolProg 64 :=
.seq NamedBody345_1877 NamedBody345_1898

def NamedBody345_1900 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1901 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1902 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1903 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_1904 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody345_1905 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody345_1906 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody345_1907 : StackLang.HolProg 64 :=
.seq NamedBody345_1905 NamedBody345_1906

def NamedBody345_1908 : StackLang.HolProg 64 :=
.seq NamedBody345_1904 NamedBody345_1907

def NamedBody345_1909 : StackLang.HolProg 64 :=
.seq NamedBody345_1903 NamedBody345_1908

def NamedBody345_1910 : StackLang.HolProg 64 :=
.seq NamedBody345_1902 NamedBody345_1909

def NamedBody345_1911 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1912 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody345_1913 : StackLang.HolProg 64 :=
.seq NamedBody345_1911 NamedBody345_1912

def NamedBody345_1914 : StackLang.HolProg 64 :=
.call (some (NamedBody345_1910, 1, 345, 40)) (Sum.inl 341) (some (NamedBody345_1913, 345, 41))

def NamedBody345_1915 : StackLang.HolProg 64 :=
.seq NamedBody345_1901 NamedBody345_1914

def NamedBody345_1916 : StackLang.HolProg 64 :=
.seq NamedBody345_1900 NamedBody345_1915

def NamedBody345_1917 : StackLang.HolProg 64 :=
.seq NamedBody345_1899 NamedBody345_1916

def NamedBody345_1918 : StackLang.HolProg 64 :=
.seq NamedBody345_1870 NamedBody345_1917

def NamedBody345_1919 : StackLang.HolProg 64 :=
.seq NamedBody345_1867 NamedBody345_1918

def NamedBody345_1920 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody345_1921 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody345_1922 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1923 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1020#64)

def NamedBody345_1924 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody345_1925 : StackLang.HolProg 64 :=
.seq NamedBody345_1923 NamedBody345_1924

def NamedBody345_1926 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody345_1927 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody345_1928 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody345_1929 : StackLang.HolProg 64 :=
.seq NamedBody345_1927 NamedBody345_1928

def NamedBody345_1930 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1931 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody345_1929 NamedBody345_1930

def NamedBody345_1932 : StackLang.HolProg 64 :=
.seq NamedBody345_1926 NamedBody345_1931

def NamedBody345_1933 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody345_1934 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody345_1935 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 345 43

def NamedBody345_1936 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody345_1937 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody345_1938 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_1939 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1940 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody345_1941 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody345_1942 : StackLang.HolProg 64 :=
.seq NamedBody345_1940 NamedBody345_1941

def NamedBody345_1943 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody345_1944 : StackLang.HolProg 64 :=
.seq NamedBody345_1942 NamedBody345_1943

def NamedBody345_1945 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody345_1946 : StackLang.HolProg 64 :=
.seq NamedBody345_1944 NamedBody345_1945

def NamedBody345_1947 : StackLang.HolProg 64 :=
.seq NamedBody345_1939 NamedBody345_1946

def NamedBody345_1948 : StackLang.HolProg 64 :=
.seq NamedBody345_1938 NamedBody345_1947

def NamedBody345_1949 : StackLang.HolProg 64 :=
.seq NamedBody345_1937 NamedBody345_1948

def NamedBody345_1950 : StackLang.HolProg 64 :=
.seq NamedBody345_1936 NamedBody345_1949

def NamedBody345_1951 : StackLang.HolProg 64 :=
.seq NamedBody345_1935 NamedBody345_1950

def NamedBody345_1952 : StackLang.HolProg 64 :=
.seq NamedBody345_1934 NamedBody345_1951

def NamedBody345_1953 : StackLang.HolProg 64 :=
.seq NamedBody345_1933 NamedBody345_1952

def NamedBody345_1954 : StackLang.HolProg 64 :=
.seq NamedBody345_1932 NamedBody345_1953

def NamedBody345_1955 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1956 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1957 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1958 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_1959 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody345_1960 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody345_1961 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody345_1962 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody345_1963 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody345_1964 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_1965 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody345_1966 : StackLang.HolProg 64 :=
.seq NamedBody345_1964 NamedBody345_1965

def NamedBody345_1967 : StackLang.HolProg 64 :=
.seq NamedBody345_1963 NamedBody345_1966

def NamedBody345_1968 : StackLang.HolProg 64 :=
.seq NamedBody345_1962 NamedBody345_1967

def NamedBody345_1969 : StackLang.HolProg 64 :=
.seq NamedBody345_1961 NamedBody345_1968

def NamedBody345_1970 : StackLang.HolProg 64 :=
.seq NamedBody345_1960 NamedBody345_1969

def NamedBody345_1971 : StackLang.HolProg 64 :=
.seq NamedBody345_1959 NamedBody345_1970

def NamedBody345_1972 : StackLang.HolProg 64 :=
.seq NamedBody345_1958 NamedBody345_1971

def NamedBody345_1973 : StackLang.HolProg 64 :=
.seq NamedBody345_1957 NamedBody345_1972

def NamedBody345_1974 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody345_1975 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody345_1976 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_1977 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody345_1978 : StackLang.HolProg 64 :=
.seq NamedBody345_1976 NamedBody345_1977

def NamedBody345_1979 : StackLang.HolProg 64 :=
.seq NamedBody345_1975 NamedBody345_1978

def NamedBody345_1980 : StackLang.HolProg 64 :=
.seq NamedBody345_1974 NamedBody345_1979

def NamedBody345_1981 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody345_1982 : StackLang.HolProg 64 :=
.seq NamedBody345_1980 NamedBody345_1981

def NamedBody345_1983 : StackLang.HolProg 64 :=
.call (some (NamedBody345_1973, 1, 345, 42)) (Sum.inl 343) (some (NamedBody345_1982, 345, 43))

def NamedBody345_1984 : StackLang.HolProg 64 :=
.seq NamedBody345_1956 NamedBody345_1983

def NamedBody345_1985 : StackLang.HolProg 64 :=
.seq NamedBody345_1955 NamedBody345_1984

def NamedBody345_1986 : StackLang.HolProg 64 :=
.seq NamedBody345_1954 NamedBody345_1985

def NamedBody345_1987 : StackLang.HolProg 64 :=
.seq NamedBody345_1925 NamedBody345_1986

def NamedBody345_1988 : StackLang.HolProg 64 :=
.seq NamedBody345_1922 NamedBody345_1987

def NamedBody345_1989 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody345_1990 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1991 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 256#64)))

def NamedBody345_1992 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1993 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody345_1994 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1995 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 264#64)))

def NamedBody345_1996 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1997 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody345_1998 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_1999 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def NamedBody345_2000 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody345_2001 : StackLang.HolProg 64 :=
.seq NamedBody345_1999 NamedBody345_2000

def NamedBody345_2002 : StackLang.HolProg 64 :=
.seq NamedBody345_1998 NamedBody345_2001

def NamedBody345_2003 : StackLang.HolProg 64 :=
.seq NamedBody345_1997 NamedBody345_2002

def NamedBody345_2004 : StackLang.HolProg 64 :=
.seq NamedBody345_1996 NamedBody345_2003

def NamedBody345_2005 : StackLang.HolProg 64 :=
.seq NamedBody345_1995 NamedBody345_2004

def NamedBody345_2006 : StackLang.HolProg 64 :=
.seq NamedBody345_1994 NamedBody345_2005

def NamedBody345_2007 : StackLang.HolProg 64 :=
.seq NamedBody345_1993 NamedBody345_2006

def NamedBody345_2008 : StackLang.HolProg 64 :=
.seq NamedBody345_1992 NamedBody345_2007

def NamedBody345_2009 : StackLang.HolProg 64 :=
.seq NamedBody345_1991 NamedBody345_2008

def NamedBody345_2010 : StackLang.HolProg 64 :=
.seq NamedBody345_1990 NamedBody345_2009

def NamedBody345_2011 : StackLang.HolProg 64 :=
.seq NamedBody345_1989 NamedBody345_2010

def NamedBody345_2012 : StackLang.HolProg 64 :=
.seq NamedBody345_1988 NamedBody345_2011

def NamedBody345_2013 : StackLang.HolProg 64 :=
.seq NamedBody345_1921 NamedBody345_2012

def NamedBody345_2014 : StackLang.HolProg 64 :=
.seq NamedBody345_1920 NamedBody345_2013

def NamedBody345_2015 : StackLang.HolProg 64 :=
.seq NamedBody345_1919 NamedBody345_2014

def NamedBody345_2016 : StackLang.HolProg 64 :=
.seq NamedBody345_1866 NamedBody345_2015

def NamedBody345_2017 : StackLang.HolProg 64 :=
.seq NamedBody345_1861 NamedBody345_2016

def NamedBody345_2018 : StackLang.HolProg 64 :=
.seq NamedBody345_1860 NamedBody345_2017

def NamedBody345_2019 : StackLang.HolProg 64 :=
.seq NamedBody345_1859 NamedBody345_2018

def NamedBody345_2020 : StackLang.HolProg 64 :=
.seq NamedBody345_1858 NamedBody345_2019

def NamedBody345_2021 : StackLang.HolProg 64 :=
.seq NamedBody345_1857 NamedBody345_2020

def NamedBody345_2022 : StackLang.HolProg 64 :=
.seq NamedBody345_1856 NamedBody345_2021

def NamedBody345_2023 : StackLang.HolProg 64 :=
.seq NamedBody345_1855 NamedBody345_2022

def NamedBody345_2024 : StackLang.HolProg 64 :=
.seq NamedBody345_1854 NamedBody345_2023

def NamedBody345_2025 : StackLang.HolProg 64 :=
.seq NamedBody345_1853 NamedBody345_2024

def NamedBody345_2026 : StackLang.HolProg 64 :=
.seq NamedBody345_1852 NamedBody345_2025

def NamedBody345_2027 : StackLang.HolProg 64 :=
.seq NamedBody345_1851 NamedBody345_2026

def NamedBody345_2028 : StackLang.HolProg 64 :=
.seq NamedBody345_1850 NamedBody345_2027

def NamedBody345_2029 : StackLang.HolProg 64 :=
.seq NamedBody345_1849 NamedBody345_2028

def NamedBody345_2030 : StackLang.HolProg 64 :=
.seq NamedBody345_1848 NamedBody345_2029

def NamedBody345_2031 : StackLang.HolProg 64 :=
.seq NamedBody345_1785 NamedBody345_2030

def NamedBody345_2032 : StackLang.HolProg 64 :=
.seq NamedBody345_1780 NamedBody345_2031

def NamedBody345_2033 : StackLang.HolProg 64 :=
.seq NamedBody345_1779 NamedBody345_2032

def NamedBody345_2034 : StackLang.HolProg 64 :=
.seq NamedBody345_1778 NamedBody345_2033

def NamedBody345_2035 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody345_2036 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_2037 : StackLang.HolProg 64 :=
.seq NamedBody345_2035 NamedBody345_2036

def NamedBody345_2038 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody345_2034 NamedBody345_2037

def NamedBody345_2039 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody345_2040 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_2041 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 4#64)

def NamedBody345_2042 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody345_2043 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody345_2044 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody345_2045 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_2046 : StackLang.HolProg 64 :=
.seq NamedBody345_2044 NamedBody345_2045

def NamedBody345_2047 : StackLang.HolProg 64 :=
.seq NamedBody345_2043 NamedBody345_2046

def NamedBody345_2048 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_2049 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1021#64)

def NamedBody345_2050 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody345_2051 : StackLang.HolProg 64 :=
.seq NamedBody345_2049 NamedBody345_2050

def NamedBody345_2052 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody345_2053 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody345_2054 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody345_2055 : StackLang.HolProg 64 :=
.seq NamedBody345_2053 NamedBody345_2054

def NamedBody345_2056 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_2057 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody345_2055 NamedBody345_2056

def NamedBody345_2058 : StackLang.HolProg 64 :=
.seq NamedBody345_2052 NamedBody345_2057

def NamedBody345_2059 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody345_2060 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody345_2061 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 345 45

def NamedBody345_2062 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody345_2063 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody345_2064 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_2065 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_2066 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody345_2067 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody345_2068 : StackLang.HolProg 64 :=
.seq NamedBody345_2066 NamedBody345_2067

def NamedBody345_2069 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody345_2070 : StackLang.HolProg 64 :=
.seq NamedBody345_2068 NamedBody345_2069

def NamedBody345_2071 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody345_2072 : StackLang.HolProg 64 :=
.seq NamedBody345_2070 NamedBody345_2071

def NamedBody345_2073 : StackLang.HolProg 64 :=
.seq NamedBody345_2065 NamedBody345_2072

def NamedBody345_2074 : StackLang.HolProg 64 :=
.seq NamedBody345_2064 NamedBody345_2073

def NamedBody345_2075 : StackLang.HolProg 64 :=
.seq NamedBody345_2063 NamedBody345_2074

def NamedBody345_2076 : StackLang.HolProg 64 :=
.seq NamedBody345_2062 NamedBody345_2075

def NamedBody345_2077 : StackLang.HolProg 64 :=
.seq NamedBody345_2061 NamedBody345_2076

def NamedBody345_2078 : StackLang.HolProg 64 :=
.seq NamedBody345_2060 NamedBody345_2077

def NamedBody345_2079 : StackLang.HolProg 64 :=
.seq NamedBody345_2059 NamedBody345_2078

def NamedBody345_2080 : StackLang.HolProg 64 :=
.seq NamedBody345_2058 NamedBody345_2079

def NamedBody345_2081 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_2082 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_2083 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_2084 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_2085 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody345_2086 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody345_2087 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody345_2088 : StackLang.HolProg 64 :=
.seq NamedBody345_2086 NamedBody345_2087

def NamedBody345_2089 : StackLang.HolProg 64 :=
.seq NamedBody345_2085 NamedBody345_2088

def NamedBody345_2090 : StackLang.HolProg 64 :=
.seq NamedBody345_2084 NamedBody345_2089

def NamedBody345_2091 : StackLang.HolProg 64 :=
.seq NamedBody345_2083 NamedBody345_2090

def NamedBody345_2092 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_2093 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody345_2094 : StackLang.HolProg 64 :=
.seq NamedBody345_2092 NamedBody345_2093

def NamedBody345_2095 : StackLang.HolProg 64 :=
.call (some (NamedBody345_2091, 1, 345, 44)) (Sum.inl 341) (some (NamedBody345_2094, 345, 45))

def NamedBody345_2096 : StackLang.HolProg 64 :=
.seq NamedBody345_2082 NamedBody345_2095

def NamedBody345_2097 : StackLang.HolProg 64 :=
.seq NamedBody345_2081 NamedBody345_2096

def NamedBody345_2098 : StackLang.HolProg 64 :=
.seq NamedBody345_2080 NamedBody345_2097

def NamedBody345_2099 : StackLang.HolProg 64 :=
.seq NamedBody345_2051 NamedBody345_2098

def NamedBody345_2100 : StackLang.HolProg 64 :=
.seq NamedBody345_2048 NamedBody345_2099

def NamedBody345_2101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody345_2102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody345_2103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_2104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1022#64)

def NamedBody345_2105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody345_2106 : StackLang.HolProg 64 :=
.seq NamedBody345_2104 NamedBody345_2105

def NamedBody345_2107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody345_2108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody345_2109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody345_2110 : StackLang.HolProg 64 :=
.seq NamedBody345_2108 NamedBody345_2109

def NamedBody345_2111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_2112 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody345_2110 NamedBody345_2111

def NamedBody345_2113 : StackLang.HolProg 64 :=
.seq NamedBody345_2107 NamedBody345_2112

def NamedBody345_2114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody345_2115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody345_2116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 345 47

def NamedBody345_2117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody345_2118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody345_2119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_2120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_2121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody345_2122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody345_2123 : StackLang.HolProg 64 :=
.seq NamedBody345_2121 NamedBody345_2122

def NamedBody345_2124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody345_2125 : StackLang.HolProg 64 :=
.seq NamedBody345_2123 NamedBody345_2124

def NamedBody345_2126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody345_2127 : StackLang.HolProg 64 :=
.seq NamedBody345_2125 NamedBody345_2126

def NamedBody345_2128 : StackLang.HolProg 64 :=
.seq NamedBody345_2120 NamedBody345_2127

def NamedBody345_2129 : StackLang.HolProg 64 :=
.seq NamedBody345_2119 NamedBody345_2128

def NamedBody345_2130 : StackLang.HolProg 64 :=
.seq NamedBody345_2118 NamedBody345_2129

def NamedBody345_2131 : StackLang.HolProg 64 :=
.seq NamedBody345_2117 NamedBody345_2130

def NamedBody345_2132 : StackLang.HolProg 64 :=
.seq NamedBody345_2116 NamedBody345_2131

def NamedBody345_2133 : StackLang.HolProg 64 :=
.seq NamedBody345_2115 NamedBody345_2132

def NamedBody345_2134 : StackLang.HolProg 64 :=
.seq NamedBody345_2114 NamedBody345_2133

def NamedBody345_2135 : StackLang.HolProg 64 :=
.seq NamedBody345_2113 NamedBody345_2134

def NamedBody345_2136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_2137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_2138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_2139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_2140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody345_2141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody345_2142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody345_2143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody345_2144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody345_2145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_2146 : StackLang.HolProg 64 :=
.seq NamedBody345_2144 NamedBody345_2145

def NamedBody345_2147 : StackLang.HolProg 64 :=
.seq NamedBody345_2143 NamedBody345_2146

def NamedBody345_2148 : StackLang.HolProg 64 :=
.seq NamedBody345_2142 NamedBody345_2147

def NamedBody345_2149 : StackLang.HolProg 64 :=
.seq NamedBody345_2141 NamedBody345_2148

def NamedBody345_2150 : StackLang.HolProg 64 :=
.seq NamedBody345_2140 NamedBody345_2149

def NamedBody345_2151 : StackLang.HolProg 64 :=
.seq NamedBody345_2139 NamedBody345_2150

def NamedBody345_2152 : StackLang.HolProg 64 :=
.seq NamedBody345_2138 NamedBody345_2151

def NamedBody345_2153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody345_2154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody345_2155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_2156 : StackLang.HolProg 64 :=
.seq NamedBody345_2154 NamedBody345_2155

def NamedBody345_2157 : StackLang.HolProg 64 :=
.seq NamedBody345_2153 NamedBody345_2156

def NamedBody345_2158 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody345_2159 : StackLang.HolProg 64 :=
.seq NamedBody345_2157 NamedBody345_2158

def NamedBody345_2160 : StackLang.HolProg 64 :=
.call (some (NamedBody345_2152, 1, 345, 46)) (Sum.inl 344) (some (NamedBody345_2159, 345, 47))

def NamedBody345_2161 : StackLang.HolProg 64 :=
.seq NamedBody345_2137 NamedBody345_2160

def NamedBody345_2162 : StackLang.HolProg 64 :=
.seq NamedBody345_2136 NamedBody345_2161

def NamedBody345_2163 : StackLang.HolProg 64 :=
.seq NamedBody345_2135 NamedBody345_2162

def NamedBody345_2164 : StackLang.HolProg 64 :=
.seq NamedBody345_2106 NamedBody345_2163

def NamedBody345_2165 : StackLang.HolProg 64 :=
.seq NamedBody345_2103 NamedBody345_2164

def NamedBody345_2166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody345_2167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_2168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 272#64)))

def NamedBody345_2169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_2170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody345_2171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_2172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 280#64)))

def NamedBody345_2173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_2174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody345_2175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_2176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody345_2177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody345_2178 : StackLang.HolProg 64 :=
.seq NamedBody345_2176 NamedBody345_2177

def NamedBody345_2179 : StackLang.HolProg 64 :=
.seq NamedBody345_2175 NamedBody345_2178

def NamedBody345_2180 : StackLang.HolProg 64 :=
.seq NamedBody345_2174 NamedBody345_2179

def NamedBody345_2181 : StackLang.HolProg 64 :=
.seq NamedBody345_2173 NamedBody345_2180

def NamedBody345_2182 : StackLang.HolProg 64 :=
.seq NamedBody345_2172 NamedBody345_2181

def NamedBody345_2183 : StackLang.HolProg 64 :=
.seq NamedBody345_2171 NamedBody345_2182

def NamedBody345_2184 : StackLang.HolProg 64 :=
.seq NamedBody345_2170 NamedBody345_2183

def NamedBody345_2185 : StackLang.HolProg 64 :=
.seq NamedBody345_2169 NamedBody345_2184

def NamedBody345_2186 : StackLang.HolProg 64 :=
.seq NamedBody345_2168 NamedBody345_2185

def NamedBody345_2187 : StackLang.HolProg 64 :=
.seq NamedBody345_2167 NamedBody345_2186

def NamedBody345_2188 : StackLang.HolProg 64 :=
.seq NamedBody345_2166 NamedBody345_2187

def NamedBody345_2189 : StackLang.HolProg 64 :=
.seq NamedBody345_2165 NamedBody345_2188

def NamedBody345_2190 : StackLang.HolProg 64 :=
.seq NamedBody345_2102 NamedBody345_2189

def NamedBody345_2191 : StackLang.HolProg 64 :=
.seq NamedBody345_2101 NamedBody345_2190

def NamedBody345_2192 : StackLang.HolProg 64 :=
.seq NamedBody345_2100 NamedBody345_2191

def NamedBody345_2193 : StackLang.HolProg 64 :=
.seq NamedBody345_2047 NamedBody345_2192

def NamedBody345_2194 : StackLang.HolProg 64 :=
.seq NamedBody345_2042 NamedBody345_2193

def NamedBody345_2195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody345_2196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_2197 : StackLang.HolProg 64 :=
.seq NamedBody345_2195 NamedBody345_2196

def NamedBody345_2198 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody345_2194 NamedBody345_2197

def NamedBody345_2199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody345_2200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody345_2201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 32#64)

def NamedBody345_2202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody345_2203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_2204 : StackLang.HolProg 64 :=
.seq NamedBody345_2202 NamedBody345_2203

def NamedBody345_2205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_2206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1023#64)

def NamedBody345_2207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody345_2208 : StackLang.HolProg 64 :=
.seq NamedBody345_2206 NamedBody345_2207

def NamedBody345_2209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody345_2210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody345_2211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody345_2212 : StackLang.HolProg 64 :=
.seq NamedBody345_2210 NamedBody345_2211

def NamedBody345_2213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_2214 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody345_2212 NamedBody345_2213

def NamedBody345_2215 : StackLang.HolProg 64 :=
.seq NamedBody345_2209 NamedBody345_2214

def NamedBody345_2216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody345_2217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody345_2218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 345 49

def NamedBody345_2219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody345_2220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody345_2221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_2222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_2223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody345_2224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody345_2225 : StackLang.HolProg 64 :=
.seq NamedBody345_2223 NamedBody345_2224

def NamedBody345_2226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody345_2227 : StackLang.HolProg 64 :=
.seq NamedBody345_2225 NamedBody345_2226

def NamedBody345_2228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody345_2229 : StackLang.HolProg 64 :=
.seq NamedBody345_2227 NamedBody345_2228

def NamedBody345_2230 : StackLang.HolProg 64 :=
.seq NamedBody345_2222 NamedBody345_2229

def NamedBody345_2231 : StackLang.HolProg 64 :=
.seq NamedBody345_2221 NamedBody345_2230

def NamedBody345_2232 : StackLang.HolProg 64 :=
.seq NamedBody345_2220 NamedBody345_2231

def NamedBody345_2233 : StackLang.HolProg 64 :=
.seq NamedBody345_2219 NamedBody345_2232

def NamedBody345_2234 : StackLang.HolProg 64 :=
.seq NamedBody345_2218 NamedBody345_2233

def NamedBody345_2235 : StackLang.HolProg 64 :=
.seq NamedBody345_2217 NamedBody345_2234

def NamedBody345_2236 : StackLang.HolProg 64 :=
.seq NamedBody345_2216 NamedBody345_2235

def NamedBody345_2237 : StackLang.HolProg 64 :=
.seq NamedBody345_2215 NamedBody345_2236

def NamedBody345_2238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_2239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_2240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_2241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_2242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody345_2243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody345_2244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody345_2245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody345_2246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody345_2247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_2248 : StackLang.HolProg 64 :=
.seq NamedBody345_2246 NamedBody345_2247

def NamedBody345_2249 : StackLang.HolProg 64 :=
.seq NamedBody345_2245 NamedBody345_2248

def NamedBody345_2250 : StackLang.HolProg 64 :=
.seq NamedBody345_2244 NamedBody345_2249

def NamedBody345_2251 : StackLang.HolProg 64 :=
.seq NamedBody345_2243 NamedBody345_2250

def NamedBody345_2252 : StackLang.HolProg 64 :=
.seq NamedBody345_2242 NamedBody345_2251

def NamedBody345_2253 : StackLang.HolProg 64 :=
.seq NamedBody345_2241 NamedBody345_2252

def NamedBody345_2254 : StackLang.HolProg 64 :=
.seq NamedBody345_2240 NamedBody345_2253

def NamedBody345_2255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody345_2256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody345_2257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_2258 : StackLang.HolProg 64 :=
.seq NamedBody345_2256 NamedBody345_2257

def NamedBody345_2259 : StackLang.HolProg 64 :=
.seq NamedBody345_2255 NamedBody345_2258

def NamedBody345_2260 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody345_2261 : StackLang.HolProg 64 :=
.seq NamedBody345_2259 NamedBody345_2260

def NamedBody345_2262 : StackLang.HolProg 64 :=
.call (some (NamedBody345_2254, 1, 345, 48)) (Sum.inl 336) (some (NamedBody345_2261, 345, 49))

def NamedBody345_2263 : StackLang.HolProg 64 :=
.seq NamedBody345_2239 NamedBody345_2262

def NamedBody345_2264 : StackLang.HolProg 64 :=
.seq NamedBody345_2238 NamedBody345_2263

def NamedBody345_2265 : StackLang.HolProg 64 :=
.seq NamedBody345_2237 NamedBody345_2264

def NamedBody345_2266 : StackLang.HolProg 64 :=
.seq NamedBody345_2208 NamedBody345_2265

def NamedBody345_2267 : StackLang.HolProg 64 :=
.seq NamedBody345_2205 NamedBody345_2266

def NamedBody345_2268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody345_2269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_2270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 288#64)))

def NamedBody345_2271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_2272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody345_2273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_2274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 8#64))

def NamedBody345_2275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_2276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 16#64))

def NamedBody345_2277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_2278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 24#64))

def NamedBody345_2279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody345_2280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody345_2281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 32#64)

def NamedBody345_2282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody345_2283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody345_2284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_2285 : StackLang.HolProg 64 :=
.seq NamedBody345_2283 NamedBody345_2284

def NamedBody345_2286 : StackLang.HolProg 64 :=
.seq NamedBody345_2282 NamedBody345_2285

def NamedBody345_2287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_2288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1024#64)

def NamedBody345_2289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody345_2290 : StackLang.HolProg 64 :=
.seq NamedBody345_2288 NamedBody345_2289

def NamedBody345_2291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody345_2292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody345_2293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody345_2294 : StackLang.HolProg 64 :=
.seq NamedBody345_2292 NamedBody345_2293

def NamedBody345_2295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_2296 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody345_2294 NamedBody345_2295

def NamedBody345_2297 : StackLang.HolProg 64 :=
.seq NamedBody345_2291 NamedBody345_2296

def NamedBody345_2298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody345_2299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody345_2300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 345 51

def NamedBody345_2301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody345_2302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody345_2303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_2304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_2305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody345_2306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody345_2307 : StackLang.HolProg 64 :=
.seq NamedBody345_2305 NamedBody345_2306

def NamedBody345_2308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody345_2309 : StackLang.HolProg 64 :=
.seq NamedBody345_2307 NamedBody345_2308

def NamedBody345_2310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody345_2311 : StackLang.HolProg 64 :=
.seq NamedBody345_2309 NamedBody345_2310

def NamedBody345_2312 : StackLang.HolProg 64 :=
.seq NamedBody345_2304 NamedBody345_2311

def NamedBody345_2313 : StackLang.HolProg 64 :=
.seq NamedBody345_2303 NamedBody345_2312

def NamedBody345_2314 : StackLang.HolProg 64 :=
.seq NamedBody345_2302 NamedBody345_2313

def NamedBody345_2315 : StackLang.HolProg 64 :=
.seq NamedBody345_2301 NamedBody345_2314

def NamedBody345_2316 : StackLang.HolProg 64 :=
.seq NamedBody345_2300 NamedBody345_2315

def NamedBody345_2317 : StackLang.HolProg 64 :=
.seq NamedBody345_2299 NamedBody345_2316

def NamedBody345_2318 : StackLang.HolProg 64 :=
.seq NamedBody345_2298 NamedBody345_2317

def NamedBody345_2319 : StackLang.HolProg 64 :=
.seq NamedBody345_2297 NamedBody345_2318

def NamedBody345_2320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_2321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_2322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_2323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_2324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody345_2325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody345_2326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody345_2327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody345_2328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody345_2329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_2330 : StackLang.HolProg 64 :=
.seq NamedBody345_2328 NamedBody345_2329

def NamedBody345_2331 : StackLang.HolProg 64 :=
.seq NamedBody345_2327 NamedBody345_2330

def NamedBody345_2332 : StackLang.HolProg 64 :=
.seq NamedBody345_2326 NamedBody345_2331

def NamedBody345_2333 : StackLang.HolProg 64 :=
.seq NamedBody345_2325 NamedBody345_2332

def NamedBody345_2334 : StackLang.HolProg 64 :=
.seq NamedBody345_2324 NamedBody345_2333

def NamedBody345_2335 : StackLang.HolProg 64 :=
.seq NamedBody345_2323 NamedBody345_2334

def NamedBody345_2336 : StackLang.HolProg 64 :=
.seq NamedBody345_2322 NamedBody345_2335

def NamedBody345_2337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody345_2338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody345_2339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_2340 : StackLang.HolProg 64 :=
.seq NamedBody345_2338 NamedBody345_2339

def NamedBody345_2341 : StackLang.HolProg 64 :=
.seq NamedBody345_2337 NamedBody345_2340

def NamedBody345_2342 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody345_2343 : StackLang.HolProg 64 :=
.seq NamedBody345_2341 NamedBody345_2342

def NamedBody345_2344 : StackLang.HolProg 64 :=
.call (some (NamedBody345_2336, 1, 345, 50)) (Sum.inl 336) (some (NamedBody345_2343, 345, 51))

def NamedBody345_2345 : StackLang.HolProg 64 :=
.seq NamedBody345_2321 NamedBody345_2344

def NamedBody345_2346 : StackLang.HolProg 64 :=
.seq NamedBody345_2320 NamedBody345_2345

def NamedBody345_2347 : StackLang.HolProg 64 :=
.seq NamedBody345_2319 NamedBody345_2346

def NamedBody345_2348 : StackLang.HolProg 64 :=
.seq NamedBody345_2290 NamedBody345_2347

def NamedBody345_2349 : StackLang.HolProg 64 :=
.seq NamedBody345_2287 NamedBody345_2348

def NamedBody345_2350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody345_2351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_2352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 320#64)))

def NamedBody345_2353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_2354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody345_2355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_2356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 8#64))

def NamedBody345_2357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_2358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 16#64))

def NamedBody345_2359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_2360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 24#64))

def NamedBody345_2361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody345_2362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def NamedBody345_2363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 32#64)

def NamedBody345_2364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody345_2365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_2366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1025#64)

def NamedBody345_2367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody345_2368 : StackLang.HolProg 64 :=
.seq NamedBody345_2366 NamedBody345_2367

def NamedBody345_2369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody345_2370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody345_2371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody345_2372 : StackLang.HolProg 64 :=
.seq NamedBody345_2370 NamedBody345_2371

def NamedBody345_2373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_2374 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody345_2372 NamedBody345_2373

def NamedBody345_2375 : StackLang.HolProg 64 :=
.seq NamedBody345_2369 NamedBody345_2374

def NamedBody345_2376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody345_2377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody345_2378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 345 53

def NamedBody345_2379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody345_2380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody345_2381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_2382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_2383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody345_2384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody345_2385 : StackLang.HolProg 64 :=
.seq NamedBody345_2383 NamedBody345_2384

def NamedBody345_2386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody345_2387 : StackLang.HolProg 64 :=
.seq NamedBody345_2385 NamedBody345_2386

def NamedBody345_2388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody345_2389 : StackLang.HolProg 64 :=
.seq NamedBody345_2387 NamedBody345_2388

def NamedBody345_2390 : StackLang.HolProg 64 :=
.seq NamedBody345_2382 NamedBody345_2389

def NamedBody345_2391 : StackLang.HolProg 64 :=
.seq NamedBody345_2381 NamedBody345_2390

def NamedBody345_2392 : StackLang.HolProg 64 :=
.seq NamedBody345_2380 NamedBody345_2391

def NamedBody345_2393 : StackLang.HolProg 64 :=
.seq NamedBody345_2379 NamedBody345_2392

def NamedBody345_2394 : StackLang.HolProg 64 :=
.seq NamedBody345_2378 NamedBody345_2393

def NamedBody345_2395 : StackLang.HolProg 64 :=
.seq NamedBody345_2377 NamedBody345_2394

def NamedBody345_2396 : StackLang.HolProg 64 :=
.seq NamedBody345_2376 NamedBody345_2395

def NamedBody345_2397 : StackLang.HolProg 64 :=
.seq NamedBody345_2375 NamedBody345_2396

def NamedBody345_2398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_2399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_2400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_2401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody345_2402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody345_2403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody345_2404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody345_2405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody345_2406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody345_2407 : StackLang.HolProg 64 :=
.seq NamedBody345_2405 NamedBody345_2406

def NamedBody345_2408 : StackLang.HolProg 64 :=
.seq NamedBody345_2404 NamedBody345_2407

def NamedBody345_2409 : StackLang.HolProg 64 :=
.seq NamedBody345_2403 NamedBody345_2408

def NamedBody345_2410 : StackLang.HolProg 64 :=
.seq NamedBody345_2402 NamedBody345_2409

def NamedBody345_2411 : StackLang.HolProg 64 :=
.seq NamedBody345_2401 NamedBody345_2410

def NamedBody345_2412 : StackLang.HolProg 64 :=
.seq NamedBody345_2400 NamedBody345_2411

def NamedBody345_2413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody345_2414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody345_2415 : StackLang.HolProg 64 :=
.seq NamedBody345_2413 NamedBody345_2414

def NamedBody345_2416 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody345_2417 : StackLang.HolProg 64 :=
.seq NamedBody345_2415 NamedBody345_2416

def NamedBody345_2418 : StackLang.HolProg 64 :=
.call (some (NamedBody345_2412, 1, 345, 52)) (Sum.inl 336) (some (NamedBody345_2417, 345, 53))

def NamedBody345_2419 : StackLang.HolProg 64 :=
.seq NamedBody345_2399 NamedBody345_2418

def NamedBody345_2420 : StackLang.HolProg 64 :=
.seq NamedBody345_2398 NamedBody345_2419

def NamedBody345_2421 : StackLang.HolProg 64 :=
.seq NamedBody345_2397 NamedBody345_2420

def NamedBody345_2422 : StackLang.HolProg 64 :=
.seq NamedBody345_2368 NamedBody345_2421

def NamedBody345_2423 : StackLang.HolProg 64 :=
.seq NamedBody345_2365 NamedBody345_2422

def NamedBody345_2424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody345_2425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_2426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 352#64)))

def NamedBody345_2427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_2428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody345_2429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_2430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 8#64))

def NamedBody345_2431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_2432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 16#64))

def NamedBody345_2433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody345_2434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 24#64))

def NamedBody345_2435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody345_2436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody345_2437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 6

def NamedBody345_2438 : StackLang.HolProg 64 :=
.seq NamedBody345_2436 NamedBody345_2437

def NamedBody345_2439 : StackLang.HolProg 64 :=
.seq NamedBody345_2435 NamedBody345_2438

def NamedBody345_2440 : StackLang.HolProg 64 :=
.seq NamedBody345_2434 NamedBody345_2439

def NamedBody345_2441 : StackLang.HolProg 64 :=
.seq NamedBody345_2433 NamedBody345_2440

def NamedBody345_2442 : StackLang.HolProg 64 :=
.seq NamedBody345_2432 NamedBody345_2441

def NamedBody345_2443 : StackLang.HolProg 64 :=
.seq NamedBody345_2431 NamedBody345_2442

def NamedBody345_2444 : StackLang.HolProg 64 :=
.seq NamedBody345_2430 NamedBody345_2443

def NamedBody345_2445 : StackLang.HolProg 64 :=
.seq NamedBody345_2429 NamedBody345_2444

def NamedBody345_2446 : StackLang.HolProg 64 :=
.seq NamedBody345_2428 NamedBody345_2445

def NamedBody345_2447 : StackLang.HolProg 64 :=
.seq NamedBody345_2427 NamedBody345_2446

def NamedBody345_2448 : StackLang.HolProg 64 :=
.seq NamedBody345_2426 NamedBody345_2447

def NamedBody345_2449 : StackLang.HolProg 64 :=
.seq NamedBody345_2425 NamedBody345_2448

def NamedBody345_2450 : StackLang.HolProg 64 :=
.seq NamedBody345_2424 NamedBody345_2449

def NamedBody345_2451 : StackLang.HolProg 64 :=
.seq NamedBody345_2423 NamedBody345_2450

def NamedBody345_2452 : StackLang.HolProg 64 :=
.seq NamedBody345_2364 NamedBody345_2451

def NamedBody345_2453 : StackLang.HolProg 64 :=
.seq NamedBody345_2363 NamedBody345_2452

def NamedBody345_2454 : StackLang.HolProg 64 :=
.seq NamedBody345_2362 NamedBody345_2453

def NamedBody345_2455 : StackLang.HolProg 64 :=
.seq NamedBody345_2361 NamedBody345_2454

def NamedBody345_2456 : StackLang.HolProg 64 :=
.seq NamedBody345_2360 NamedBody345_2455

def NamedBody345_2457 : StackLang.HolProg 64 :=
.seq NamedBody345_2359 NamedBody345_2456

def NamedBody345_2458 : StackLang.HolProg 64 :=
.seq NamedBody345_2358 NamedBody345_2457

def NamedBody345_2459 : StackLang.HolProg 64 :=
.seq NamedBody345_2357 NamedBody345_2458

def NamedBody345_2460 : StackLang.HolProg 64 :=
.seq NamedBody345_2356 NamedBody345_2459

def NamedBody345_2461 : StackLang.HolProg 64 :=
.seq NamedBody345_2355 NamedBody345_2460

def NamedBody345_2462 : StackLang.HolProg 64 :=
.seq NamedBody345_2354 NamedBody345_2461

def NamedBody345_2463 : StackLang.HolProg 64 :=
.seq NamedBody345_2353 NamedBody345_2462

def NamedBody345_2464 : StackLang.HolProg 64 :=
.seq NamedBody345_2352 NamedBody345_2463

def NamedBody345_2465 : StackLang.HolProg 64 :=
.seq NamedBody345_2351 NamedBody345_2464

def NamedBody345_2466 : StackLang.HolProg 64 :=
.seq NamedBody345_2350 NamedBody345_2465

def NamedBody345_2467 : StackLang.HolProg 64 :=
.seq NamedBody345_2349 NamedBody345_2466

def NamedBody345_2468 : StackLang.HolProg 64 :=
.seq NamedBody345_2286 NamedBody345_2467

def NamedBody345_2469 : StackLang.HolProg 64 :=
.seq NamedBody345_2281 NamedBody345_2468

def NamedBody345_2470 : StackLang.HolProg 64 :=
.seq NamedBody345_2280 NamedBody345_2469

def NamedBody345_2471 : StackLang.HolProg 64 :=
.seq NamedBody345_2279 NamedBody345_2470

def NamedBody345_2472 : StackLang.HolProg 64 :=
.seq NamedBody345_2278 NamedBody345_2471

def NamedBody345_2473 : StackLang.HolProg 64 :=
.seq NamedBody345_2277 NamedBody345_2472

def NamedBody345_2474 : StackLang.HolProg 64 :=
.seq NamedBody345_2276 NamedBody345_2473

def NamedBody345_2475 : StackLang.HolProg 64 :=
.seq NamedBody345_2275 NamedBody345_2474

def NamedBody345_2476 : StackLang.HolProg 64 :=
.seq NamedBody345_2274 NamedBody345_2475

def NamedBody345_2477 : StackLang.HolProg 64 :=
.seq NamedBody345_2273 NamedBody345_2476

def NamedBody345_2478 : StackLang.HolProg 64 :=
.seq NamedBody345_2272 NamedBody345_2477

def NamedBody345_2479 : StackLang.HolProg 64 :=
.seq NamedBody345_2271 NamedBody345_2478

def NamedBody345_2480 : StackLang.HolProg 64 :=
.seq NamedBody345_2270 NamedBody345_2479

def NamedBody345_2481 : StackLang.HolProg 64 :=
.seq NamedBody345_2269 NamedBody345_2480

def NamedBody345_2482 : StackLang.HolProg 64 :=
.seq NamedBody345_2268 NamedBody345_2481

def NamedBody345_2483 : StackLang.HolProg 64 :=
.seq NamedBody345_2267 NamedBody345_2482

def NamedBody345_2484 : StackLang.HolProg 64 :=
.seq NamedBody345_2204 NamedBody345_2483

def NamedBody345_2485 : StackLang.HolProg 64 :=
.seq NamedBody345_2201 NamedBody345_2484

def NamedBody345_2486 : StackLang.HolProg 64 :=
.seq NamedBody345_2200 NamedBody345_2485

def NamedBody345_2487 : StackLang.HolProg 64 :=
.seq NamedBody345_2199 NamedBody345_2486

def NamedBody345_2488 : StackLang.HolProg 64 :=
.seq NamedBody345_2198 NamedBody345_2487

def NamedBody345_2489 : StackLang.HolProg 64 :=
.seq NamedBody345_2041 NamedBody345_2488

def NamedBody345_2490 : StackLang.HolProg 64 :=
.seq NamedBody345_2040 NamedBody345_2489

def NamedBody345_2491 : StackLang.HolProg 64 :=
.seq NamedBody345_2039 NamedBody345_2490

def NamedBody345_2492 : StackLang.HolProg 64 :=
.seq NamedBody345_2038 NamedBody345_2491

def NamedBody345_2493 : StackLang.HolProg 64 :=
.seq NamedBody345_1777 NamedBody345_2492

def NamedBody345_2494 : StackLang.HolProg 64 :=
.seq NamedBody345_1776 NamedBody345_2493

def NamedBody345_2495 : StackLang.HolProg 64 :=
.seq NamedBody345_1775 NamedBody345_2494

def NamedBody345_2496 : StackLang.HolProg 64 :=
.seq NamedBody345_1774 NamedBody345_2495

def NamedBody345_2497 : StackLang.HolProg 64 :=
.seq NamedBody345_1609 NamedBody345_2496

def NamedBody345_2498 : StackLang.HolProg 64 :=
.seq NamedBody345_1608 NamedBody345_2497

def NamedBody345_2499 : StackLang.HolProg 64 :=
.seq NamedBody345_1607 NamedBody345_2498

def NamedBody345_2500 : StackLang.HolProg 64 :=
.seq NamedBody345_1606 NamedBody345_2499

def NamedBody345_2501 : StackLang.HolProg 64 :=
.seq NamedBody345_1605 NamedBody345_2500

def NamedBody345_2502 : StackLang.HolProg 64 :=
.seq NamedBody345_1604 NamedBody345_2501

def NamedBody345_2503 : StackLang.HolProg 64 :=
.seq NamedBody345_1603 NamedBody345_2502

def NamedBody345_2504 : StackLang.HolProg 64 :=
.seq NamedBody345_1602 NamedBody345_2503

def NamedBody345_2505 : StackLang.HolProg 64 :=
.seq NamedBody345_1601 NamedBody345_2504

def NamedBody345_2506 : StackLang.HolProg 64 :=
.seq NamedBody345_1600 NamedBody345_2505

def NamedBody345_2507 : StackLang.HolProg 64 :=
.seq NamedBody345_1599 NamedBody345_2506

def NamedBody345_2508 : StackLang.HolProg 64 :=
.seq NamedBody345_1598 NamedBody345_2507

def NamedBody345_2509 : StackLang.HolProg 64 :=
.seq NamedBody345_1597 NamedBody345_2508

def NamedBody345_2510 : StackLang.HolProg 64 :=
.seq NamedBody345_1596 NamedBody345_2509

def NamedBody345_2511 : StackLang.HolProg 64 :=
.seq NamedBody345_1529 NamedBody345_2510

def NamedBody345_2512 : StackLang.HolProg 64 :=
.seq NamedBody345_1522 NamedBody345_2511

def NamedBody345_2513 : StackLang.HolProg 64 :=
.seq NamedBody345_1521 NamedBody345_2512

def NamedBody345_2514 : StackLang.HolProg 64 :=
.seq NamedBody345_1520 NamedBody345_2513

def NamedBody345_2515 : StackLang.HolProg 64 :=
.seq NamedBody345_1519 NamedBody345_2514

def NamedBody345_2516 : StackLang.HolProg 64 :=
.seq NamedBody345_1518 NamedBody345_2515

def NamedBody345_2517 : StackLang.HolProg 64 :=
.seq NamedBody345_1517 NamedBody345_2516

def NamedBody345_2518 : StackLang.HolProg 64 :=
.seq NamedBody345_1516 NamedBody345_2517

def NamedBody345_2519 : StackLang.HolProg 64 :=
.seq NamedBody345_1515 NamedBody345_2518

def NamedBody345_2520 : StackLang.HolProg 64 :=
.seq NamedBody345_1514 NamedBody345_2519

def NamedBody345_2521 : StackLang.HolProg 64 :=
.seq NamedBody345_1513 NamedBody345_2520

def NamedBody345_2522 : StackLang.HolProg 64 :=
.seq NamedBody345_1512 NamedBody345_2521

def NamedBody345_2523 : StackLang.HolProg 64 :=
.seq NamedBody345_1511 NamedBody345_2522

def NamedBody345_2524 : StackLang.HolProg 64 :=
.seq NamedBody345_1510 NamedBody345_2523

def NamedBody345_2525 : StackLang.HolProg 64 :=
.seq NamedBody345_1509 NamedBody345_2524

def NamedBody345_2526 : StackLang.HolProg 64 :=
.seq NamedBody345_1446 NamedBody345_2525

def NamedBody345_2527 : StackLang.HolProg 64 :=
.seq NamedBody345_1441 NamedBody345_2526

def NamedBody345_2528 : StackLang.HolProg 64 :=
.seq NamedBody345_1440 NamedBody345_2527

def NamedBody345_2529 : StackLang.HolProg 64 :=
.seq NamedBody345_1439 NamedBody345_2528

def NamedBody345_2530 : StackLang.HolProg 64 :=
.seq NamedBody345_1438 NamedBody345_2529

def NamedBody345_2531 : StackLang.HolProg 64 :=
.seq NamedBody345_1437 NamedBody345_2530

def NamedBody345_2532 : StackLang.HolProg 64 :=
.seq NamedBody345_1436 NamedBody345_2531

def NamedBody345_2533 : StackLang.HolProg 64 :=
.seq NamedBody345_1435 NamedBody345_2532

def NamedBody345_2534 : StackLang.HolProg 64 :=
.seq NamedBody345_1434 NamedBody345_2533

def NamedBody345_2535 : StackLang.HolProg 64 :=
.seq NamedBody345_1433 NamedBody345_2534

def NamedBody345_2536 : StackLang.HolProg 64 :=
.seq NamedBody345_1432 NamedBody345_2535

def NamedBody345_2537 : StackLang.HolProg 64 :=
.seq NamedBody345_1271 NamedBody345_2536

def NamedBody345_2538 : StackLang.HolProg 64 :=
.seq NamedBody345_1270 NamedBody345_2537

def NamedBody345_2539 : StackLang.HolProg 64 :=
.seq NamedBody345_1269 NamedBody345_2538

def NamedBody345_2540 : StackLang.HolProg 64 :=
.seq NamedBody345_1268 NamedBody345_2539

def NamedBody345_2541 : StackLang.HolProg 64 :=
.seq NamedBody345_1267 NamedBody345_2540

def NamedBody345_2542 : StackLang.HolProg 64 :=
.seq NamedBody345_1266 NamedBody345_2541

def NamedBody345_2543 : StackLang.HolProg 64 :=
.seq NamedBody345_1265 NamedBody345_2542

def NamedBody345_2544 : StackLang.HolProg 64 :=
.seq NamedBody345_1264 NamedBody345_2543

def NamedBody345_2545 : StackLang.HolProg 64 :=
.seq NamedBody345_1263 NamedBody345_2544

def NamedBody345_2546 : StackLang.HolProg 64 :=
.seq NamedBody345_1262 NamedBody345_2545

def NamedBody345_2547 : StackLang.HolProg 64 :=
.seq NamedBody345_1195 NamedBody345_2546

def NamedBody345_2548 : StackLang.HolProg 64 :=
.seq NamedBody345_1192 NamedBody345_2547

def NamedBody345_2549 : StackLang.HolProg 64 :=
.seq NamedBody345_1191 NamedBody345_2548

def NamedBody345_2550 : StackLang.HolProg 64 :=
.seq NamedBody345_1190 NamedBody345_2549

def NamedBody345_2551 : StackLang.HolProg 64 :=
.seq NamedBody345_1189 NamedBody345_2550

def NamedBody345_2552 : StackLang.HolProg 64 :=
.seq NamedBody345_1188 NamedBody345_2551

def NamedBody345_2553 : StackLang.HolProg 64 :=
.seq NamedBody345_879 NamedBody345_2552

def NamedBody345_2554 : StackLang.HolProg 64 :=
.seq NamedBody345_878 NamedBody345_2553

def NamedBody345_2555 : StackLang.HolProg 64 :=
.seq NamedBody345_877 NamedBody345_2554

def NamedBody345_2556 : StackLang.HolProg 64 :=
.seq NamedBody345_876 NamedBody345_2555

def NamedBody345_2557 : StackLang.HolProg 64 :=
.seq NamedBody345_875 NamedBody345_2556

def NamedBody345_2558 : StackLang.HolProg 64 :=
.seq NamedBody345_874 NamedBody345_2557

def NamedBody345_2559 : StackLang.HolProg 64 :=
.seq NamedBody345_873 NamedBody345_2558

def NamedBody345_2560 : StackLang.HolProg 64 :=
.seq NamedBody345_872 NamedBody345_2559

def NamedBody345_2561 : StackLang.HolProg 64 :=
.seq NamedBody345_871 NamedBody345_2560

def NamedBody345_2562 : StackLang.HolProg 64 :=
.seq NamedBody345_870 NamedBody345_2561

def NamedBody345_2563 : StackLang.HolProg 64 :=
.seq NamedBody345_869 NamedBody345_2562

def NamedBody345_2564 : StackLang.HolProg 64 :=
.seq NamedBody345_868 NamedBody345_2563

def NamedBody345_2565 : StackLang.HolProg 64 :=
.seq NamedBody345_867 NamedBody345_2564

def NamedBody345_2566 : StackLang.HolProg 64 :=
.seq NamedBody345_866 NamedBody345_2565

def NamedBody345_2567 : StackLang.HolProg 64 :=
.seq NamedBody345_865 NamedBody345_2566

def NamedBody345_2568 : StackLang.HolProg 64 :=
.seq NamedBody345_864 NamedBody345_2567

def NamedBody345_2569 : StackLang.HolProg 64 :=
.seq NamedBody345_863 NamedBody345_2568

def NamedBody345_2570 : StackLang.HolProg 64 :=
.seq NamedBody345_686 NamedBody345_2569

def NamedBody345_2571 : StackLang.HolProg 64 :=
.seq NamedBody345_685 NamedBody345_2570

def NamedBody345_2572 : StackLang.HolProg 64 :=
.seq NamedBody345_684 NamedBody345_2571

def NamedBody345_2573 : StackLang.HolProg 64 :=
.seq NamedBody345_683 NamedBody345_2572

def NamedBody345_2574 : StackLang.HolProg 64 :=
.seq NamedBody345_584 NamedBody345_2573

def NamedBody345_2575 : StackLang.HolProg 64 :=
.seq NamedBody345_583 NamedBody345_2574

def NamedBody345_2576 : StackLang.HolProg 64 :=
.seq NamedBody345_582 NamedBody345_2575

def NamedBody345_2577 : StackLang.HolProg 64 :=
.seq NamedBody345_581 NamedBody345_2576

def NamedBody345_2578 : StackLang.HolProg 64 :=
.seq NamedBody345_580 NamedBody345_2577

def NamedBody345_2579 : StackLang.HolProg 64 :=
.seq NamedBody345_579 NamedBody345_2578

def NamedBody345_2580 : StackLang.HolProg 64 :=
.seq NamedBody345_564 NamedBody345_2579

def NamedBody345_2581 : StackLang.HolProg 64 :=
.seq NamedBody345_563 NamedBody345_2580

def NamedBody345_2582 : StackLang.HolProg 64 :=
.seq NamedBody345_562 NamedBody345_2581

def NamedBody345_2583 : StackLang.HolProg 64 :=
.seq NamedBody345_503 NamedBody345_2582

def NamedBody345_2584 : StackLang.HolProg 64 :=
.seq NamedBody345_496 NamedBody345_2583

def NamedBody345_2585 : StackLang.HolProg 64 :=
.seq NamedBody345_495 NamedBody345_2584

def NamedBody345_2586 : StackLang.HolProg 64 :=
.seq NamedBody345_494 NamedBody345_2585

def NamedBody345_2587 : StackLang.HolProg 64 :=
.seq NamedBody345_479 NamedBody345_2586

def NamedBody345_2588 : StackLang.HolProg 64 :=
.seq NamedBody345_478 NamedBody345_2587

def NamedBody345_2589 : StackLang.HolProg 64 :=
.seq NamedBody345_477 NamedBody345_2588

def NamedBody345_2590 : StackLang.HolProg 64 :=
.seq NamedBody345_476 NamedBody345_2589

def NamedBody345_2591 : StackLang.HolProg 64 :=
.seq NamedBody345_475 NamedBody345_2590

def NamedBody345_2592 : StackLang.HolProg 64 :=
.seq NamedBody345_474 NamedBody345_2591

def NamedBody345_2593 : StackLang.HolProg 64 :=
.seq NamedBody345_197 NamedBody345_2592

def NamedBody345_2594 : StackLang.HolProg 64 :=
.seq NamedBody345_196 NamedBody345_2593

def NamedBody345_2595 : StackLang.HolProg 64 :=
.seq NamedBody345_195 NamedBody345_2594

def NamedBody345_2596 : StackLang.HolProg 64 :=
.seq NamedBody345_194 NamedBody345_2595

def NamedBody345_2597 : StackLang.HolProg 64 :=
.seq NamedBody345_183 NamedBody345_2596

def NamedBody345_2598 : StackLang.HolProg 64 :=
.seq NamedBody345_182 NamedBody345_2597

def NamedBody345_2599 : StackLang.HolProg 64 :=
.seq NamedBody345_181 NamedBody345_2598

def NamedBody345_2600 : StackLang.HolProg 64 :=
.seq NamedBody345_180 NamedBody345_2599

def NamedBody345_2601 : StackLang.HolProg 64 :=
.seq NamedBody345_169 NamedBody345_2600

def NamedBody345_2602 : StackLang.HolProg 64 :=
.seq NamedBody345_168 NamedBody345_2601

def NamedBody345_2603 : StackLang.HolProg 64 :=
.seq NamedBody345_167 NamedBody345_2602

def NamedBody345_2604 : StackLang.HolProg 64 :=
.seq NamedBody345_166 NamedBody345_2603

def NamedBody345_2605 : StackLang.HolProg 64 :=
.seq NamedBody345_165 NamedBody345_2604

def NamedBody345_2606 : StackLang.HolProg 64 :=
.seq NamedBody345_164 NamedBody345_2605

def NamedBody345_2607 : StackLang.HolProg 64 :=
.seq NamedBody345_163 NamedBody345_2606

def NamedBody345_2608 : StackLang.HolProg 64 :=
.seq NamedBody345_162 NamedBody345_2607

def NamedBody345_2609 : StackLang.HolProg 64 :=
.seq NamedBody345_161 NamedBody345_2608

def NamedBody345_2610 : StackLang.HolProg 64 :=
.seq NamedBody345_160 NamedBody345_2609

def NamedBody345_2611 : StackLang.HolProg 64 :=
.seq NamedBody345_159 NamedBody345_2610

def NamedBody345_2612 : StackLang.HolProg 64 :=
.seq NamedBody345_158 NamedBody345_2611

def NamedBody345_2613 : StackLang.HolProg 64 :=
.seq NamedBody345_157 NamedBody345_2612

def NamedBody345_2614 : StackLang.HolProg 64 :=
.seq NamedBody345_156 NamedBody345_2613

def NamedBody345_2615 : StackLang.HolProg 64 :=
.seq NamedBody345_91 NamedBody345_2614

def NamedBody345_2616 : StackLang.HolProg 64 :=
.seq NamedBody345_90 NamedBody345_2615

def NamedBody345_2617 : StackLang.HolProg 64 :=
.seq NamedBody345_89 NamedBody345_2616

def NamedBody345_2618 : StackLang.HolProg 64 :=
.seq NamedBody345_88 NamedBody345_2617

def NamedBody345_2619 : StackLang.HolProg 64 :=
.seq NamedBody345_87 NamedBody345_2618

def NamedBody345_2620 : StackLang.HolProg 64 :=
.seq NamedBody345_34 NamedBody345_2619

def NamedBody345_2621 : StackLang.HolProg 64 :=
.seq NamedBody345_29 NamedBody345_2620

def NamedBody345_2622 : StackLang.HolProg 64 :=
.seq NamedBody345_28 NamedBody345_2621

def NamedBody345_2623 : StackLang.HolProg 64 :=
.seq NamedBody345_27 NamedBody345_2622

def NamedBody345_2624 : StackLang.HolProg 64 :=
.seq NamedBody345_26 NamedBody345_2623

def NamedBody345_2625 : StackLang.HolProg 64 :=
.seq NamedBody345_25 NamedBody345_2624

def NamedBody345_2626 : StackLang.HolProg 64 :=
.seq NamedBody345_24 NamedBody345_2625

def NamedBody345_2627 : StackLang.HolProg 64 :=
.seq NamedBody345_23 NamedBody345_2626

def NamedBody345_2628 : StackLang.HolProg 64 :=
.seq NamedBody345_8 NamedBody345_2627

def NamedBody345_2629 : StackLang.HolProg 64 :=
.seq NamedBody345_7 NamedBody345_2628

def NamedBody345_2630 : StackLang.HolProg 64 :=
.seq NamedBody345_6 NamedBody345_2629

def Named345 : Nat × StackLang.HolProg 64 := (345, NamedBody345_2630)
theorem Named345_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed345 = Named345 := by
  kernel_rfl
#print axioms Named345_eq
end InitECandidate.Proofs.BackendStages
