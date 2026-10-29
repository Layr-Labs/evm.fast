import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed149
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody149_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody149_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody149_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody149_3 : StackLang.HolProg 64 :=
.seq NamedBody149_1 NamedBody149_2

def NamedBody149_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody149_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody149_3 NamedBody149_4

def NamedBody149_6 : StackLang.HolProg 64 :=
.seq NamedBody149_0 NamedBody149_5

def NamedBody149_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody149_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 64#64)

def NamedBody149_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody149_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody149_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 126#64)

def NamedBody149_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody149_13 : StackLang.HolProg 64 :=
.seq NamedBody149_11 NamedBody149_12

def NamedBody149_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody149_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody149_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody149_17 : StackLang.HolProg 64 :=
.seq NamedBody149_15 NamedBody149_16

def NamedBody149_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody149_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody149_17 NamedBody149_18

def NamedBody149_20 : StackLang.HolProg 64 :=
.seq NamedBody149_14 NamedBody149_19

def NamedBody149_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody149_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody149_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 149 3

def NamedBody149_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody149_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody149_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody149_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody149_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody149_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody149_30 : StackLang.HolProg 64 :=
.seq NamedBody149_28 NamedBody149_29

def NamedBody149_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody149_32 : StackLang.HolProg 64 :=
.seq NamedBody149_30 NamedBody149_31

def NamedBody149_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody149_34 : StackLang.HolProg 64 :=
.seq NamedBody149_32 NamedBody149_33

def NamedBody149_35 : StackLang.HolProg 64 :=
.seq NamedBody149_27 NamedBody149_34

def NamedBody149_36 : StackLang.HolProg 64 :=
.seq NamedBody149_26 NamedBody149_35

def NamedBody149_37 : StackLang.HolProg 64 :=
.seq NamedBody149_25 NamedBody149_36

def NamedBody149_38 : StackLang.HolProg 64 :=
.seq NamedBody149_24 NamedBody149_37

def NamedBody149_39 : StackLang.HolProg 64 :=
.seq NamedBody149_23 NamedBody149_38

def NamedBody149_40 : StackLang.HolProg 64 :=
.seq NamedBody149_22 NamedBody149_39

def NamedBody149_41 : StackLang.HolProg 64 :=
.seq NamedBody149_21 NamedBody149_40

def NamedBody149_42 : StackLang.HolProg 64 :=
.seq NamedBody149_20 NamedBody149_41

def NamedBody149_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody149_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody149_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody149_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody149_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody149_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody149_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody149_50 : StackLang.HolProg 64 :=
.seq NamedBody149_48 NamedBody149_49

def NamedBody149_51 : StackLang.HolProg 64 :=
.seq NamedBody149_47 NamedBody149_50

def NamedBody149_52 : StackLang.HolProg 64 :=
.seq NamedBody149_46 NamedBody149_51

def NamedBody149_53 : StackLang.HolProg 64 :=
.seq NamedBody149_45 NamedBody149_52

def NamedBody149_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody149_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody149_56 : StackLang.HolProg 64 :=
.seq NamedBody149_54 NamedBody149_55

def NamedBody149_57 : StackLang.HolProg 64 :=
.call (some (NamedBody149_53, 1, 149, 2)) (Sum.inl 68) (some (NamedBody149_56, 149, 3))

def NamedBody149_58 : StackLang.HolProg 64 :=
.seq NamedBody149_44 NamedBody149_57

def NamedBody149_59 : StackLang.HolProg 64 :=
.seq NamedBody149_43 NamedBody149_58

def NamedBody149_60 : StackLang.HolProg 64 :=
.seq NamedBody149_42 NamedBody149_59

def NamedBody149_61 : StackLang.HolProg 64 :=
.seq NamedBody149_13 NamedBody149_60

def NamedBody149_62 : StackLang.HolProg 64 :=
.seq NamedBody149_10 NamedBody149_61

def NamedBody149_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody149_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody149_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody149_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody149_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551568#64)))

def NamedBody149_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody149_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody149_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 128#64)

def NamedBody149_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody149_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody149_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 127#64)

def NamedBody149_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody149_75 : StackLang.HolProg 64 :=
.seq NamedBody149_73 NamedBody149_74

def NamedBody149_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody149_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody149_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody149_79 : StackLang.HolProg 64 :=
.seq NamedBody149_77 NamedBody149_78

def NamedBody149_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody149_81 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody149_79 NamedBody149_80

def NamedBody149_82 : StackLang.HolProg 64 :=
.seq NamedBody149_76 NamedBody149_81

def NamedBody149_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody149_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody149_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 149 5

def NamedBody149_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody149_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody149_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody149_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody149_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody149_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody149_92 : StackLang.HolProg 64 :=
.seq NamedBody149_90 NamedBody149_91

def NamedBody149_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody149_94 : StackLang.HolProg 64 :=
.seq NamedBody149_92 NamedBody149_93

def NamedBody149_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody149_96 : StackLang.HolProg 64 :=
.seq NamedBody149_94 NamedBody149_95

def NamedBody149_97 : StackLang.HolProg 64 :=
.seq NamedBody149_89 NamedBody149_96

def NamedBody149_98 : StackLang.HolProg 64 :=
.seq NamedBody149_88 NamedBody149_97

def NamedBody149_99 : StackLang.HolProg 64 :=
.seq NamedBody149_87 NamedBody149_98

def NamedBody149_100 : StackLang.HolProg 64 :=
.seq NamedBody149_86 NamedBody149_99

def NamedBody149_101 : StackLang.HolProg 64 :=
.seq NamedBody149_85 NamedBody149_100

def NamedBody149_102 : StackLang.HolProg 64 :=
.seq NamedBody149_84 NamedBody149_101

def NamedBody149_103 : StackLang.HolProg 64 :=
.seq NamedBody149_83 NamedBody149_102

def NamedBody149_104 : StackLang.HolProg 64 :=
.seq NamedBody149_82 NamedBody149_103

def NamedBody149_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody149_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody149_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody149_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody149_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody149_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody149_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody149_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody149_113 : StackLang.HolProg 64 :=
.seq NamedBody149_111 NamedBody149_112

def NamedBody149_114 : StackLang.HolProg 64 :=
.seq NamedBody149_110 NamedBody149_113

def NamedBody149_115 : StackLang.HolProg 64 :=
.seq NamedBody149_109 NamedBody149_114

def NamedBody149_116 : StackLang.HolProg 64 :=
.seq NamedBody149_108 NamedBody149_115

def NamedBody149_117 : StackLang.HolProg 64 :=
.seq NamedBody149_107 NamedBody149_116

def NamedBody149_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody149_119 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody149_120 : StackLang.HolProg 64 :=
.seq NamedBody149_118 NamedBody149_119

def NamedBody149_121 : StackLang.HolProg 64 :=
.call (some (NamedBody149_117, 1, 149, 4)) (Sum.inl 68) (some (NamedBody149_120, 149, 5))

def NamedBody149_122 : StackLang.HolProg 64 :=
.seq NamedBody149_106 NamedBody149_121

def NamedBody149_123 : StackLang.HolProg 64 :=
.seq NamedBody149_105 NamedBody149_122

def NamedBody149_124 : StackLang.HolProg 64 :=
.seq NamedBody149_104 NamedBody149_123

def NamedBody149_125 : StackLang.HolProg 64 :=
.seq NamedBody149_75 NamedBody149_124

def NamedBody149_126 : StackLang.HolProg 64 :=
.seq NamedBody149_72 NamedBody149_125

def NamedBody149_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody149_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody149_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody149_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody149_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551560#64)))

def NamedBody149_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody149_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody149_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody149_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody149_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody149_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 11

def NamedBody149_138 : StackLang.HolProg 64 :=
.seq NamedBody149_136 NamedBody149_137

def NamedBody149_139 : StackLang.HolProg 64 :=
.seq NamedBody149_135 NamedBody149_138

def NamedBody149_140 : StackLang.HolProg 64 :=
.seq NamedBody149_134 NamedBody149_139

def NamedBody149_141 : StackLang.HolProg 64 :=
.seq NamedBody149_133 NamedBody149_140

def NamedBody149_142 : StackLang.HolProg 64 :=
.seq NamedBody149_132 NamedBody149_141

def NamedBody149_143 : StackLang.HolProg 64 :=
.seq NamedBody149_131 NamedBody149_142

def NamedBody149_144 : StackLang.HolProg 64 :=
.seq NamedBody149_130 NamedBody149_143

def NamedBody149_145 : StackLang.HolProg 64 :=
.seq NamedBody149_129 NamedBody149_144

def NamedBody149_146 : StackLang.HolProg 64 :=
.seq NamedBody149_128 NamedBody149_145

def NamedBody149_147 : StackLang.HolProg 64 :=
.seq NamedBody149_127 NamedBody149_146

def NamedBody149_148 : StackLang.HolProg 64 :=
.seq NamedBody149_126 NamedBody149_147

def NamedBody149_149 : StackLang.HolProg 64 :=
.seq NamedBody149_71 NamedBody149_148

def NamedBody149_150 : StackLang.HolProg 64 :=
.seq NamedBody149_70 NamedBody149_149

def NamedBody149_151 : StackLang.HolProg 64 :=
.seq NamedBody149_69 NamedBody149_150

def NamedBody149_152 : StackLang.HolProg 64 :=
.seq NamedBody149_68 NamedBody149_151

def NamedBody149_153 : StackLang.HolProg 64 :=
.seq NamedBody149_67 NamedBody149_152

def NamedBody149_154 : StackLang.HolProg 64 :=
.seq NamedBody149_66 NamedBody149_153

def NamedBody149_155 : StackLang.HolProg 64 :=
.seq NamedBody149_65 NamedBody149_154

def NamedBody149_156 : StackLang.HolProg 64 :=
.seq NamedBody149_64 NamedBody149_155

def NamedBody149_157 : StackLang.HolProg 64 :=
.seq NamedBody149_63 NamedBody149_156

def NamedBody149_158 : StackLang.HolProg 64 :=
.seq NamedBody149_62 NamedBody149_157

def NamedBody149_159 : StackLang.HolProg 64 :=
.seq NamedBody149_9 NamedBody149_158

def NamedBody149_160 : StackLang.HolProg 64 :=
.seq NamedBody149_8 NamedBody149_159

def NamedBody149_161 : StackLang.HolProg 64 :=
.seq NamedBody149_7 NamedBody149_160

def NamedBody149_162 : StackLang.HolProg 64 :=
.seq NamedBody149_6 NamedBody149_161

def Named149 : Nat × StackLang.HolProg 64 := (149, NamedBody149_162)
theorem Named149_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed149 = Named149 := by
  kernel_rfl
#print axioms Named149_eq
end InitECandidate.Proofs.BackendStages
