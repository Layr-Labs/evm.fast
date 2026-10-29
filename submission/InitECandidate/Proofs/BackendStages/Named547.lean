import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed547
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody547_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody547_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody547_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody547_3 : StackLang.HolProg 64 :=
.seq NamedBody547_1 NamedBody547_2

def NamedBody547_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody547_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody547_3 NamedBody547_4

def NamedBody547_6 : StackLang.HolProg 64 :=
.seq NamedBody547_0 NamedBody547_5

def NamedBody547_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody547_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody547_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1827#64)

def NamedBody547_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody547_11 : StackLang.HolProg 64 :=
.seq NamedBody547_9 NamedBody547_10

def NamedBody547_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody547_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody547_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody547_15 : StackLang.HolProg 64 :=
.seq NamedBody547_13 NamedBody547_14

def NamedBody547_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody547_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody547_15 NamedBody547_16

def NamedBody547_18 : StackLang.HolProg 64 :=
.seq NamedBody547_12 NamedBody547_17

def NamedBody547_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody547_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody547_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 547 3

def NamedBody547_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody547_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody547_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody547_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody547_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody547_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody547_28 : StackLang.HolProg 64 :=
.seq NamedBody547_26 NamedBody547_27

def NamedBody547_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody547_30 : StackLang.HolProg 64 :=
.seq NamedBody547_28 NamedBody547_29

def NamedBody547_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody547_32 : StackLang.HolProg 64 :=
.seq NamedBody547_30 NamedBody547_31

def NamedBody547_33 : StackLang.HolProg 64 :=
.seq NamedBody547_25 NamedBody547_32

def NamedBody547_34 : StackLang.HolProg 64 :=
.seq NamedBody547_24 NamedBody547_33

def NamedBody547_35 : StackLang.HolProg 64 :=
.seq NamedBody547_23 NamedBody547_34

def NamedBody547_36 : StackLang.HolProg 64 :=
.seq NamedBody547_22 NamedBody547_35

def NamedBody547_37 : StackLang.HolProg 64 :=
.seq NamedBody547_21 NamedBody547_36

def NamedBody547_38 : StackLang.HolProg 64 :=
.seq NamedBody547_20 NamedBody547_37

def NamedBody547_39 : StackLang.HolProg 64 :=
.seq NamedBody547_19 NamedBody547_38

def NamedBody547_40 : StackLang.HolProg 64 :=
.seq NamedBody547_18 NamedBody547_39

def NamedBody547_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody547_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody547_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody547_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody547_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody547_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody547_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody547_48 : StackLang.HolProg 64 :=
.seq NamedBody547_46 NamedBody547_47

def NamedBody547_49 : StackLang.HolProg 64 :=
.seq NamedBody547_45 NamedBody547_48

def NamedBody547_50 : StackLang.HolProg 64 :=
.seq NamedBody547_44 NamedBody547_49

def NamedBody547_51 : StackLang.HolProg 64 :=
.seq NamedBody547_43 NamedBody547_50

def NamedBody547_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody547_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody547_54 : StackLang.HolProg 64 :=
.seq NamedBody547_52 NamedBody547_53

def NamedBody547_55 : StackLang.HolProg 64 :=
.call (some (NamedBody547_51, 1, 547, 2)) (Sum.inl 392) (some (NamedBody547_54, 547, 3))

def NamedBody547_56 : StackLang.HolProg 64 :=
.seq NamedBody547_42 NamedBody547_55

def NamedBody547_57 : StackLang.HolProg 64 :=
.seq NamedBody547_41 NamedBody547_56

def NamedBody547_58 : StackLang.HolProg 64 :=
.seq NamedBody547_40 NamedBody547_57

def NamedBody547_59 : StackLang.HolProg 64 :=
.seq NamedBody547_11 NamedBody547_58

def NamedBody547_60 : StackLang.HolProg 64 :=
.seq NamedBody547_8 NamedBody547_59

def NamedBody547_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody547_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody547_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody547_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody547_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def NamedBody547_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 176#64))

def NamedBody547_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody547_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody547_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1828#64)

def NamedBody547_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody547_71 : StackLang.HolProg 64 :=
.seq NamedBody547_69 NamedBody547_70

def NamedBody547_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody547_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody547_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody547_75 : StackLang.HolProg 64 :=
.seq NamedBody547_73 NamedBody547_74

def NamedBody547_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody547_77 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody547_75 NamedBody547_76

def NamedBody547_78 : StackLang.HolProg 64 :=
.seq NamedBody547_72 NamedBody547_77

def NamedBody547_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody547_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody547_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 547 5

def NamedBody547_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody547_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody547_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody547_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody547_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody547_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody547_88 : StackLang.HolProg 64 :=
.seq NamedBody547_86 NamedBody547_87

def NamedBody547_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody547_90 : StackLang.HolProg 64 :=
.seq NamedBody547_88 NamedBody547_89

def NamedBody547_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody547_92 : StackLang.HolProg 64 :=
.seq NamedBody547_90 NamedBody547_91

def NamedBody547_93 : StackLang.HolProg 64 :=
.seq NamedBody547_85 NamedBody547_92

def NamedBody547_94 : StackLang.HolProg 64 :=
.seq NamedBody547_84 NamedBody547_93

def NamedBody547_95 : StackLang.HolProg 64 :=
.seq NamedBody547_83 NamedBody547_94

def NamedBody547_96 : StackLang.HolProg 64 :=
.seq NamedBody547_82 NamedBody547_95

def NamedBody547_97 : StackLang.HolProg 64 :=
.seq NamedBody547_81 NamedBody547_96

def NamedBody547_98 : StackLang.HolProg 64 :=
.seq NamedBody547_80 NamedBody547_97

def NamedBody547_99 : StackLang.HolProg 64 :=
.seq NamedBody547_79 NamedBody547_98

def NamedBody547_100 : StackLang.HolProg 64 :=
.seq NamedBody547_78 NamedBody547_99

def NamedBody547_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody547_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody547_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody547_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody547_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody547_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody547_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody547_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody547_109 : StackLang.HolProg 64 :=
.seq NamedBody547_107 NamedBody547_108

def NamedBody547_110 : StackLang.HolProg 64 :=
.seq NamedBody547_106 NamedBody547_109

def NamedBody547_111 : StackLang.HolProg 64 :=
.seq NamedBody547_105 NamedBody547_110

def NamedBody547_112 : StackLang.HolProg 64 :=
.seq NamedBody547_104 NamedBody547_111

def NamedBody547_113 : StackLang.HolProg 64 :=
.seq NamedBody547_103 NamedBody547_112

def NamedBody547_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody547_115 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody547_116 : StackLang.HolProg 64 :=
.seq NamedBody547_114 NamedBody547_115

def NamedBody547_117 : StackLang.HolProg 64 :=
.call (some (NamedBody547_113, 1, 547, 4)) (Sum.inl 187) (some (NamedBody547_116, 547, 5))

def NamedBody547_118 : StackLang.HolProg 64 :=
.seq NamedBody547_102 NamedBody547_117

def NamedBody547_119 : StackLang.HolProg 64 :=
.seq NamedBody547_101 NamedBody547_118

def NamedBody547_120 : StackLang.HolProg 64 :=
.seq NamedBody547_100 NamedBody547_119

def NamedBody547_121 : StackLang.HolProg 64 :=
.seq NamedBody547_71 NamedBody547_120

def NamedBody547_122 : StackLang.HolProg 64 :=
.seq NamedBody547_68 NamedBody547_121

def NamedBody547_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody547_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody547_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody547_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody547_127 : StackLang.HolProg 64 :=
.seq NamedBody547_125 NamedBody547_126

def NamedBody547_128 : StackLang.HolProg 64 :=
.seq NamedBody547_124 NamedBody547_127

def NamedBody547_129 : StackLang.HolProg 64 :=
.seq NamedBody547_123 NamedBody547_128

def NamedBody547_130 : StackLang.HolProg 64 :=
.seq NamedBody547_122 NamedBody547_129

def NamedBody547_131 : StackLang.HolProg 64 :=
.seq NamedBody547_67 NamedBody547_130

def NamedBody547_132 : StackLang.HolProg 64 :=
.seq NamedBody547_66 NamedBody547_131

def NamedBody547_133 : StackLang.HolProg 64 :=
.seq NamedBody547_65 NamedBody547_132

def NamedBody547_134 : StackLang.HolProg 64 :=
.seq NamedBody547_64 NamedBody547_133

def NamedBody547_135 : StackLang.HolProg 64 :=
.seq NamedBody547_63 NamedBody547_134

def NamedBody547_136 : StackLang.HolProg 64 :=
.seq NamedBody547_62 NamedBody547_135

def NamedBody547_137 : StackLang.HolProg 64 :=
.seq NamedBody547_61 NamedBody547_136

def NamedBody547_138 : StackLang.HolProg 64 :=
.seq NamedBody547_60 NamedBody547_137

def NamedBody547_139 : StackLang.HolProg 64 :=
.seq NamedBody547_7 NamedBody547_138

def NamedBody547_140 : StackLang.HolProg 64 :=
.seq NamedBody547_6 NamedBody547_139

def Named547 : Nat × StackLang.HolProg 64 := (547, NamedBody547_140)
theorem Named547_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed547 = Named547 := by
  kernel_rfl
#print axioms Named547_eq
end InitECandidate.Proofs.BackendStages
