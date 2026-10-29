import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed412
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody412_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody412_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody412_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody412_3 : StackLang.HolProg 64 :=
.seq NamedBody412_1 NamedBody412_2

def NamedBody412_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody412_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody412_3 NamedBody412_4

def NamedBody412_6 : StackLang.HolProg 64 :=
.seq NamedBody412_0 NamedBody412_5

def NamedBody412_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody412_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody412_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1231#64)

def NamedBody412_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody412_11 : StackLang.HolProg 64 :=
.seq NamedBody412_9 NamedBody412_10

def NamedBody412_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody412_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody412_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody412_15 : StackLang.HolProg 64 :=
.seq NamedBody412_13 NamedBody412_14

def NamedBody412_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody412_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody412_15 NamedBody412_16

def NamedBody412_18 : StackLang.HolProg 64 :=
.seq NamedBody412_12 NamedBody412_17

def NamedBody412_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody412_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody412_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 412 3

def NamedBody412_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody412_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody412_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody412_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody412_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody412_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody412_28 : StackLang.HolProg 64 :=
.seq NamedBody412_26 NamedBody412_27

def NamedBody412_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody412_30 : StackLang.HolProg 64 :=
.seq NamedBody412_28 NamedBody412_29

def NamedBody412_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody412_32 : StackLang.HolProg 64 :=
.seq NamedBody412_30 NamedBody412_31

def NamedBody412_33 : StackLang.HolProg 64 :=
.seq NamedBody412_25 NamedBody412_32

def NamedBody412_34 : StackLang.HolProg 64 :=
.seq NamedBody412_24 NamedBody412_33

def NamedBody412_35 : StackLang.HolProg 64 :=
.seq NamedBody412_23 NamedBody412_34

def NamedBody412_36 : StackLang.HolProg 64 :=
.seq NamedBody412_22 NamedBody412_35

def NamedBody412_37 : StackLang.HolProg 64 :=
.seq NamedBody412_21 NamedBody412_36

def NamedBody412_38 : StackLang.HolProg 64 :=
.seq NamedBody412_20 NamedBody412_37

def NamedBody412_39 : StackLang.HolProg 64 :=
.seq NamedBody412_19 NamedBody412_38

def NamedBody412_40 : StackLang.HolProg 64 :=
.seq NamedBody412_18 NamedBody412_39

def NamedBody412_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody412_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody412_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody412_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody412_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody412_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody412_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody412_48 : StackLang.HolProg 64 :=
.seq NamedBody412_46 NamedBody412_47

def NamedBody412_49 : StackLang.HolProg 64 :=
.seq NamedBody412_45 NamedBody412_48

def NamedBody412_50 : StackLang.HolProg 64 :=
.seq NamedBody412_44 NamedBody412_49

def NamedBody412_51 : StackLang.HolProg 64 :=
.seq NamedBody412_43 NamedBody412_50

def NamedBody412_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody412_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody412_54 : StackLang.HolProg 64 :=
.seq NamedBody412_52 NamedBody412_53

def NamedBody412_55 : StackLang.HolProg 64 :=
.call (some (NamedBody412_51, 1, 412, 2)) (Sum.inl 392) (some (NamedBody412_54, 412, 3))

def NamedBody412_56 : StackLang.HolProg 64 :=
.seq NamedBody412_42 NamedBody412_55

def NamedBody412_57 : StackLang.HolProg 64 :=
.seq NamedBody412_41 NamedBody412_56

def NamedBody412_58 : StackLang.HolProg 64 :=
.seq NamedBody412_40 NamedBody412_57

def NamedBody412_59 : StackLang.HolProg 64 :=
.seq NamedBody412_11 NamedBody412_58

def NamedBody412_60 : StackLang.HolProg 64 :=
.seq NamedBody412_8 NamedBody412_59

def NamedBody412_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody412_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody412_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody412_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody412_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551432#64))

def NamedBody412_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 64#64))

def NamedBody412_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody412_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody412_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1232#64)

def NamedBody412_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody412_71 : StackLang.HolProg 64 :=
.seq NamedBody412_69 NamedBody412_70

def NamedBody412_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody412_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody412_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody412_75 : StackLang.HolProg 64 :=
.seq NamedBody412_73 NamedBody412_74

def NamedBody412_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody412_77 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody412_75 NamedBody412_76

def NamedBody412_78 : StackLang.HolProg 64 :=
.seq NamedBody412_72 NamedBody412_77

def NamedBody412_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody412_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody412_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 412 5

def NamedBody412_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody412_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody412_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody412_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody412_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody412_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody412_88 : StackLang.HolProg 64 :=
.seq NamedBody412_86 NamedBody412_87

def NamedBody412_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody412_90 : StackLang.HolProg 64 :=
.seq NamedBody412_88 NamedBody412_89

def NamedBody412_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody412_92 : StackLang.HolProg 64 :=
.seq NamedBody412_90 NamedBody412_91

def NamedBody412_93 : StackLang.HolProg 64 :=
.seq NamedBody412_85 NamedBody412_92

def NamedBody412_94 : StackLang.HolProg 64 :=
.seq NamedBody412_84 NamedBody412_93

def NamedBody412_95 : StackLang.HolProg 64 :=
.seq NamedBody412_83 NamedBody412_94

def NamedBody412_96 : StackLang.HolProg 64 :=
.seq NamedBody412_82 NamedBody412_95

def NamedBody412_97 : StackLang.HolProg 64 :=
.seq NamedBody412_81 NamedBody412_96

def NamedBody412_98 : StackLang.HolProg 64 :=
.seq NamedBody412_80 NamedBody412_97

def NamedBody412_99 : StackLang.HolProg 64 :=
.seq NamedBody412_79 NamedBody412_98

def NamedBody412_100 : StackLang.HolProg 64 :=
.seq NamedBody412_78 NamedBody412_99

def NamedBody412_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody412_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody412_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody412_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody412_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody412_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody412_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody412_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody412_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody412_110 : StackLang.HolProg 64 :=
.seq NamedBody412_108 NamedBody412_109

def NamedBody412_111 : StackLang.HolProg 64 :=
.seq NamedBody412_107 NamedBody412_110

def NamedBody412_112 : StackLang.HolProg 64 :=
.seq NamedBody412_106 NamedBody412_111

def NamedBody412_113 : StackLang.HolProg 64 :=
.seq NamedBody412_105 NamedBody412_112

def NamedBody412_114 : StackLang.HolProg 64 :=
.seq NamedBody412_104 NamedBody412_113

def NamedBody412_115 : StackLang.HolProg 64 :=
.seq NamedBody412_103 NamedBody412_114

def NamedBody412_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody412_117 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody412_118 : StackLang.HolProg 64 :=
.seq NamedBody412_116 NamedBody412_117

def NamedBody412_119 : StackLang.HolProg 64 :=
.call (some (NamedBody412_115, 1, 412, 4)) (Sum.inl 186) (some (NamedBody412_118, 412, 5))

def NamedBody412_120 : StackLang.HolProg 64 :=
.seq NamedBody412_102 NamedBody412_119

def NamedBody412_121 : StackLang.HolProg 64 :=
.seq NamedBody412_101 NamedBody412_120

def NamedBody412_122 : StackLang.HolProg 64 :=
.seq NamedBody412_100 NamedBody412_121

def NamedBody412_123 : StackLang.HolProg 64 :=
.seq NamedBody412_71 NamedBody412_122

def NamedBody412_124 : StackLang.HolProg 64 :=
.seq NamedBody412_68 NamedBody412_123

def NamedBody412_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody412_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody412_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody412_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody412_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody412_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody412_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody412_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody412_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody412_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody412_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def NamedBody412_136 : StackLang.HolProg 64 :=
.seq NamedBody412_134 NamedBody412_135

def NamedBody412_137 : StackLang.HolProg 64 :=
.seq NamedBody412_133 NamedBody412_136

def NamedBody412_138 : StackLang.HolProg 64 :=
.seq NamedBody412_132 NamedBody412_137

def NamedBody412_139 : StackLang.HolProg 64 :=
.seq NamedBody412_131 NamedBody412_138

def NamedBody412_140 : StackLang.HolProg 64 :=
.seq NamedBody412_130 NamedBody412_139

def NamedBody412_141 : StackLang.HolProg 64 :=
.seq NamedBody412_129 NamedBody412_140

def NamedBody412_142 : StackLang.HolProg 64 :=
.seq NamedBody412_128 NamedBody412_141

def NamedBody412_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody412_144 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody412_142 NamedBody412_143

def NamedBody412_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody412_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody412_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody412_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def NamedBody412_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody412_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def NamedBody412_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody412_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def NamedBody412_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody412_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def NamedBody412_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody412_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody412_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def NamedBody412_158 : StackLang.HolProg 64 :=
.seq NamedBody412_156 NamedBody412_157

def NamedBody412_159 : StackLang.HolProg 64 :=
.seq NamedBody412_155 NamedBody412_158

def NamedBody412_160 : StackLang.HolProg 64 :=
.seq NamedBody412_154 NamedBody412_159

def NamedBody412_161 : StackLang.HolProg 64 :=
.seq NamedBody412_153 NamedBody412_160

def NamedBody412_162 : StackLang.HolProg 64 :=
.seq NamedBody412_152 NamedBody412_161

def NamedBody412_163 : StackLang.HolProg 64 :=
.seq NamedBody412_151 NamedBody412_162

def NamedBody412_164 : StackLang.HolProg 64 :=
.seq NamedBody412_150 NamedBody412_163

def NamedBody412_165 : StackLang.HolProg 64 :=
.seq NamedBody412_149 NamedBody412_164

def NamedBody412_166 : StackLang.HolProg 64 :=
.seq NamedBody412_148 NamedBody412_165

def NamedBody412_167 : StackLang.HolProg 64 :=
.seq NamedBody412_147 NamedBody412_166

def NamedBody412_168 : StackLang.HolProg 64 :=
.seq NamedBody412_146 NamedBody412_167

def NamedBody412_169 : StackLang.HolProg 64 :=
.seq NamedBody412_145 NamedBody412_168

def NamedBody412_170 : StackLang.HolProg 64 :=
.seq NamedBody412_144 NamedBody412_169

def NamedBody412_171 : StackLang.HolProg 64 :=
.seq NamedBody412_127 NamedBody412_170

def NamedBody412_172 : StackLang.HolProg 64 :=
.seq NamedBody412_126 NamedBody412_171

def NamedBody412_173 : StackLang.HolProg 64 :=
.seq NamedBody412_125 NamedBody412_172

def NamedBody412_174 : StackLang.HolProg 64 :=
.seq NamedBody412_124 NamedBody412_173

def NamedBody412_175 : StackLang.HolProg 64 :=
.seq NamedBody412_67 NamedBody412_174

def NamedBody412_176 : StackLang.HolProg 64 :=
.seq NamedBody412_66 NamedBody412_175

def NamedBody412_177 : StackLang.HolProg 64 :=
.seq NamedBody412_65 NamedBody412_176

def NamedBody412_178 : StackLang.HolProg 64 :=
.seq NamedBody412_64 NamedBody412_177

def NamedBody412_179 : StackLang.HolProg 64 :=
.seq NamedBody412_63 NamedBody412_178

def NamedBody412_180 : StackLang.HolProg 64 :=
.seq NamedBody412_62 NamedBody412_179

def NamedBody412_181 : StackLang.HolProg 64 :=
.seq NamedBody412_61 NamedBody412_180

def NamedBody412_182 : StackLang.HolProg 64 :=
.seq NamedBody412_60 NamedBody412_181

def NamedBody412_183 : StackLang.HolProg 64 :=
.seq NamedBody412_7 NamedBody412_182

def NamedBody412_184 : StackLang.HolProg 64 :=
.seq NamedBody412_6 NamedBody412_183

def Named412 : Nat × StackLang.HolProg 64 := (412, NamedBody412_184)
theorem Named412_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed412 = Named412 := by
  kernel_rfl
#print axioms Named412_eq
end InitECandidate.Proofs.BackendStages
