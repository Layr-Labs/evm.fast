import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed614
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody614_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def NamedBody614_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody614_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody614_3 : StackLang.HolProg 64 :=
.seq NamedBody614_1 NamedBody614_2

def NamedBody614_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody614_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody614_3 NamedBody614_4

def NamedBody614_6 : StackLang.HolProg 64 :=
.seq NamedBody614_0 NamedBody614_5

def NamedBody614_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody614_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody614_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody614_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody614_11 : StackLang.HolProg 64 :=
.seq NamedBody614_9 NamedBody614_10

def NamedBody614_12 : StackLang.HolProg 64 :=
.seq NamedBody614_8 NamedBody614_11

def NamedBody614_13 : StackLang.HolProg 64 :=
.seq NamedBody614_7 NamedBody614_12

def NamedBody614_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody614_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2353#64)

def NamedBody614_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody614_17 : StackLang.HolProg 64 :=
.seq NamedBody614_15 NamedBody614_16

def NamedBody614_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody614_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody614_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody614_21 : StackLang.HolProg 64 :=
.seq NamedBody614_19 NamedBody614_20

def NamedBody614_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody614_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody614_21 NamedBody614_22

def NamedBody614_24 : StackLang.HolProg 64 :=
.seq NamedBody614_18 NamedBody614_23

def NamedBody614_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody614_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody614_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 614 3

def NamedBody614_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody614_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody614_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody614_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody614_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody614_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody614_34 : StackLang.HolProg 64 :=
.seq NamedBody614_32 NamedBody614_33

def NamedBody614_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody614_36 : StackLang.HolProg 64 :=
.seq NamedBody614_34 NamedBody614_35

def NamedBody614_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody614_38 : StackLang.HolProg 64 :=
.seq NamedBody614_36 NamedBody614_37

def NamedBody614_39 : StackLang.HolProg 64 :=
.seq NamedBody614_31 NamedBody614_38

def NamedBody614_40 : StackLang.HolProg 64 :=
.seq NamedBody614_30 NamedBody614_39

def NamedBody614_41 : StackLang.HolProg 64 :=
.seq NamedBody614_29 NamedBody614_40

def NamedBody614_42 : StackLang.HolProg 64 :=
.seq NamedBody614_28 NamedBody614_41

def NamedBody614_43 : StackLang.HolProg 64 :=
.seq NamedBody614_27 NamedBody614_42

def NamedBody614_44 : StackLang.HolProg 64 :=
.seq NamedBody614_26 NamedBody614_43

def NamedBody614_45 : StackLang.HolProg 64 :=
.seq NamedBody614_25 NamedBody614_44

def NamedBody614_46 : StackLang.HolProg 64 :=
.seq NamedBody614_24 NamedBody614_45

def NamedBody614_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody614_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody614_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody614_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody614_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody614_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody614_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody614_54 : StackLang.HolProg 64 :=
.seq NamedBody614_52 NamedBody614_53

def NamedBody614_55 : StackLang.HolProg 64 :=
.seq NamedBody614_51 NamedBody614_54

def NamedBody614_56 : StackLang.HolProg 64 :=
.seq NamedBody614_50 NamedBody614_55

def NamedBody614_57 : StackLang.HolProg 64 :=
.seq NamedBody614_49 NamedBody614_56

def NamedBody614_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody614_59 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody614_60 : StackLang.HolProg 64 :=
.seq NamedBody614_58 NamedBody614_59

def NamedBody614_61 : StackLang.HolProg 64 :=
.call (some (NamedBody614_57, 1, 614, 2)) (Sum.inl 69) (some (NamedBody614_60, 614, 3))

def NamedBody614_62 : StackLang.HolProg 64 :=
.seq NamedBody614_48 NamedBody614_61

def NamedBody614_63 : StackLang.HolProg 64 :=
.seq NamedBody614_47 NamedBody614_62

def NamedBody614_64 : StackLang.HolProg 64 :=
.seq NamedBody614_46 NamedBody614_63

def NamedBody614_65 : StackLang.HolProg 64 :=
.seq NamedBody614_17 NamedBody614_64

def NamedBody614_66 : StackLang.HolProg 64 :=
.seq NamedBody614_14 NamedBody614_65

def NamedBody614_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody614_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 64#64)

def NamedBody614_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody614_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody614_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2354#64)

def NamedBody614_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody614_73 : StackLang.HolProg 64 :=
.seq NamedBody614_71 NamedBody614_72

def NamedBody614_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody614_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody614_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody614_77 : StackLang.HolProg 64 :=
.seq NamedBody614_75 NamedBody614_76

def NamedBody614_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody614_79 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody614_77 NamedBody614_78

def NamedBody614_80 : StackLang.HolProg 64 :=
.seq NamedBody614_74 NamedBody614_79

def NamedBody614_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody614_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody614_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 614 5

def NamedBody614_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody614_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody614_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody614_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody614_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody614_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody614_90 : StackLang.HolProg 64 :=
.seq NamedBody614_88 NamedBody614_89

def NamedBody614_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody614_92 : StackLang.HolProg 64 :=
.seq NamedBody614_90 NamedBody614_91

def NamedBody614_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody614_94 : StackLang.HolProg 64 :=
.seq NamedBody614_92 NamedBody614_93

def NamedBody614_95 : StackLang.HolProg 64 :=
.seq NamedBody614_87 NamedBody614_94

def NamedBody614_96 : StackLang.HolProg 64 :=
.seq NamedBody614_86 NamedBody614_95

def NamedBody614_97 : StackLang.HolProg 64 :=
.seq NamedBody614_85 NamedBody614_96

def NamedBody614_98 : StackLang.HolProg 64 :=
.seq NamedBody614_84 NamedBody614_97

def NamedBody614_99 : StackLang.HolProg 64 :=
.seq NamedBody614_83 NamedBody614_98

def NamedBody614_100 : StackLang.HolProg 64 :=
.seq NamedBody614_82 NamedBody614_99

def NamedBody614_101 : StackLang.HolProg 64 :=
.seq NamedBody614_81 NamedBody614_100

def NamedBody614_102 : StackLang.HolProg 64 :=
.seq NamedBody614_80 NamedBody614_101

def NamedBody614_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody614_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody614_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody614_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody614_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody614_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody614_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody614_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody614_111 : StackLang.HolProg 64 :=
.seq NamedBody614_109 NamedBody614_110

def NamedBody614_112 : StackLang.HolProg 64 :=
.seq NamedBody614_108 NamedBody614_111

def NamedBody614_113 : StackLang.HolProg 64 :=
.seq NamedBody614_107 NamedBody614_112

def NamedBody614_114 : StackLang.HolProg 64 :=
.seq NamedBody614_106 NamedBody614_113

def NamedBody614_115 : StackLang.HolProg 64 :=
.seq NamedBody614_105 NamedBody614_114

def NamedBody614_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody614_117 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody614_118 : StackLang.HolProg 64 :=
.seq NamedBody614_116 NamedBody614_117

def NamedBody614_119 : StackLang.HolProg 64 :=
.call (some (NamedBody614_115, 1, 614, 4)) (Sum.inl 68) (some (NamedBody614_118, 614, 5))

def NamedBody614_120 : StackLang.HolProg 64 :=
.seq NamedBody614_104 NamedBody614_119

def NamedBody614_121 : StackLang.HolProg 64 :=
.seq NamedBody614_103 NamedBody614_120

def NamedBody614_122 : StackLang.HolProg 64 :=
.seq NamedBody614_102 NamedBody614_121

def NamedBody614_123 : StackLang.HolProg 64 :=
.seq NamedBody614_73 NamedBody614_122

def NamedBody614_124 : StackLang.HolProg 64 :=
.seq NamedBody614_70 NamedBody614_123

def NamedBody614_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody614_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody614_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 9#64)))

def NamedBody614_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody614_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 20#64)

def NamedBody614_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody614_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody614_132 : StackLang.HolProg 64 :=
.seq NamedBody614_130 NamedBody614_131

def NamedBody614_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody614_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2355#64)

def NamedBody614_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody614_136 : StackLang.HolProg 64 :=
.seq NamedBody614_134 NamedBody614_135

def NamedBody614_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody614_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody614_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody614_140 : StackLang.HolProg 64 :=
.seq NamedBody614_138 NamedBody614_139

def NamedBody614_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody614_142 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody614_140 NamedBody614_141

def NamedBody614_143 : StackLang.HolProg 64 :=
.seq NamedBody614_137 NamedBody614_142

def NamedBody614_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody614_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody614_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 614 7

def NamedBody614_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody614_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody614_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody614_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody614_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody614_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody614_153 : StackLang.HolProg 64 :=
.seq NamedBody614_151 NamedBody614_152

def NamedBody614_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody614_155 : StackLang.HolProg 64 :=
.seq NamedBody614_153 NamedBody614_154

def NamedBody614_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody614_157 : StackLang.HolProg 64 :=
.seq NamedBody614_155 NamedBody614_156

def NamedBody614_158 : StackLang.HolProg 64 :=
.seq NamedBody614_150 NamedBody614_157

def NamedBody614_159 : StackLang.HolProg 64 :=
.seq NamedBody614_149 NamedBody614_158

def NamedBody614_160 : StackLang.HolProg 64 :=
.seq NamedBody614_148 NamedBody614_159

def NamedBody614_161 : StackLang.HolProg 64 :=
.seq NamedBody614_147 NamedBody614_160

def NamedBody614_162 : StackLang.HolProg 64 :=
.seq NamedBody614_146 NamedBody614_161

def NamedBody614_163 : StackLang.HolProg 64 :=
.seq NamedBody614_145 NamedBody614_162

def NamedBody614_164 : StackLang.HolProg 64 :=
.seq NamedBody614_144 NamedBody614_163

def NamedBody614_165 : StackLang.HolProg 64 :=
.seq NamedBody614_143 NamedBody614_164

def NamedBody614_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody614_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody614_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody614_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody614_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody614_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody614_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody614_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody614_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody614_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody614_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody614_177 : StackLang.HolProg 64 :=
.seq NamedBody614_175 NamedBody614_176

def NamedBody614_178 : StackLang.HolProg 64 :=
.seq NamedBody614_174 NamedBody614_177

def NamedBody614_179 : StackLang.HolProg 64 :=
.seq NamedBody614_173 NamedBody614_178

def NamedBody614_180 : StackLang.HolProg 64 :=
.seq NamedBody614_172 NamedBody614_179

def NamedBody614_181 : StackLang.HolProg 64 :=
.seq NamedBody614_171 NamedBody614_180

def NamedBody614_182 : StackLang.HolProg 64 :=
.seq NamedBody614_170 NamedBody614_181

def NamedBody614_183 : StackLang.HolProg 64 :=
.seq NamedBody614_169 NamedBody614_182

def NamedBody614_184 : StackLang.HolProg 64 :=
.seq NamedBody614_168 NamedBody614_183

def NamedBody614_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody614_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody614_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody614_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody614_189 : StackLang.HolProg 64 :=
.seq NamedBody614_187 NamedBody614_188

def NamedBody614_190 : StackLang.HolProg 64 :=
.seq NamedBody614_186 NamedBody614_189

def NamedBody614_191 : StackLang.HolProg 64 :=
.seq NamedBody614_185 NamedBody614_190

def NamedBody614_192 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody614_193 : StackLang.HolProg 64 :=
.seq NamedBody614_191 NamedBody614_192

def NamedBody614_194 : StackLang.HolProg 64 :=
.call (some (NamedBody614_184, 1, 614, 6)) (Sum.inl 176) (some (NamedBody614_193, 614, 7))

def NamedBody614_195 : StackLang.HolProg 64 :=
.seq NamedBody614_167 NamedBody614_194

def NamedBody614_196 : StackLang.HolProg 64 :=
.seq NamedBody614_166 NamedBody614_195

def NamedBody614_197 : StackLang.HolProg 64 :=
.seq NamedBody614_165 NamedBody614_196

def NamedBody614_198 : StackLang.HolProg 64 :=
.seq NamedBody614_136 NamedBody614_197

def NamedBody614_199 : StackLang.HolProg 64 :=
.seq NamedBody614_133 NamedBody614_198

def NamedBody614_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody614_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody614_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody614_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody614_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody614_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2356#64)

def NamedBody614_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody614_207 : StackLang.HolProg 64 :=
.seq NamedBody614_205 NamedBody614_206

def NamedBody614_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody614_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody614_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody614_211 : StackLang.HolProg 64 :=
.seq NamedBody614_209 NamedBody614_210

def NamedBody614_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody614_213 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody614_211 NamedBody614_212

def NamedBody614_214 : StackLang.HolProg 64 :=
.seq NamedBody614_208 NamedBody614_213

def NamedBody614_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody614_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody614_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 614 9

def NamedBody614_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody614_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody614_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody614_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody614_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody614_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody614_224 : StackLang.HolProg 64 :=
.seq NamedBody614_222 NamedBody614_223

def NamedBody614_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody614_226 : StackLang.HolProg 64 :=
.seq NamedBody614_224 NamedBody614_225

def NamedBody614_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody614_228 : StackLang.HolProg 64 :=
.seq NamedBody614_226 NamedBody614_227

def NamedBody614_229 : StackLang.HolProg 64 :=
.seq NamedBody614_221 NamedBody614_228

def NamedBody614_230 : StackLang.HolProg 64 :=
.seq NamedBody614_220 NamedBody614_229

def NamedBody614_231 : StackLang.HolProg 64 :=
.seq NamedBody614_219 NamedBody614_230

def NamedBody614_232 : StackLang.HolProg 64 :=
.seq NamedBody614_218 NamedBody614_231

def NamedBody614_233 : StackLang.HolProg 64 :=
.seq NamedBody614_217 NamedBody614_232

def NamedBody614_234 : StackLang.HolProg 64 :=
.seq NamedBody614_216 NamedBody614_233

def NamedBody614_235 : StackLang.HolProg 64 :=
.seq NamedBody614_215 NamedBody614_234

def NamedBody614_236 : StackLang.HolProg 64 :=
.seq NamedBody614_214 NamedBody614_235

def NamedBody614_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody614_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody614_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody614_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody614_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody614_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody614_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody614_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody614_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody614_246 : StackLang.HolProg 64 :=
.seq NamedBody614_244 NamedBody614_245

def NamedBody614_247 : StackLang.HolProg 64 :=
.seq NamedBody614_243 NamedBody614_246

def NamedBody614_248 : StackLang.HolProg 64 :=
.seq NamedBody614_242 NamedBody614_247

def NamedBody614_249 : StackLang.HolProg 64 :=
.seq NamedBody614_241 NamedBody614_248

def NamedBody614_250 : StackLang.HolProg 64 :=
.seq NamedBody614_240 NamedBody614_249

def NamedBody614_251 : StackLang.HolProg 64 :=
.seq NamedBody614_239 NamedBody614_250

def NamedBody614_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody614_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody614_254 : StackLang.HolProg 64 :=
.seq NamedBody614_252 NamedBody614_253

def NamedBody614_255 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody614_256 : StackLang.HolProg 64 :=
.seq NamedBody614_254 NamedBody614_255

def NamedBody614_257 : StackLang.HolProg 64 :=
.call (some (NamedBody614_251, 1, 614, 8)) (Sum.inl 177) (some (NamedBody614_256, 614, 9))

def NamedBody614_258 : StackLang.HolProg 64 :=
.seq NamedBody614_238 NamedBody614_257

def NamedBody614_259 : StackLang.HolProg 64 :=
.seq NamedBody614_237 NamedBody614_258

def NamedBody614_260 : StackLang.HolProg 64 :=
.seq NamedBody614_236 NamedBody614_259

def NamedBody614_261 : StackLang.HolProg 64 :=
.seq NamedBody614_207 NamedBody614_260

def NamedBody614_262 : StackLang.HolProg 64 :=
.seq NamedBody614_204 NamedBody614_261

def NamedBody614_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody614_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody614_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody614_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody614_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 9#64)))

def NamedBody614_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody614_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody614_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody614_271 : StackLang.HolProg 64 :=
.seq NamedBody614_269 NamedBody614_270

def NamedBody614_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody614_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2357#64)

def NamedBody614_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody614_275 : StackLang.HolProg 64 :=
.seq NamedBody614_273 NamedBody614_274

def NamedBody614_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody614_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody614_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody614_279 : StackLang.HolProg 64 :=
.seq NamedBody614_277 NamedBody614_278

def NamedBody614_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody614_281 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody614_279 NamedBody614_280

def NamedBody614_282 : StackLang.HolProg 64 :=
.seq NamedBody614_276 NamedBody614_281

def NamedBody614_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody614_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody614_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 614 11

def NamedBody614_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody614_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody614_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody614_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody614_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody614_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody614_292 : StackLang.HolProg 64 :=
.seq NamedBody614_290 NamedBody614_291

def NamedBody614_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody614_294 : StackLang.HolProg 64 :=
.seq NamedBody614_292 NamedBody614_293

def NamedBody614_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody614_296 : StackLang.HolProg 64 :=
.seq NamedBody614_294 NamedBody614_295

def NamedBody614_297 : StackLang.HolProg 64 :=
.seq NamedBody614_289 NamedBody614_296

def NamedBody614_298 : StackLang.HolProg 64 :=
.seq NamedBody614_288 NamedBody614_297

def NamedBody614_299 : StackLang.HolProg 64 :=
.seq NamedBody614_287 NamedBody614_298

def NamedBody614_300 : StackLang.HolProg 64 :=
.seq NamedBody614_286 NamedBody614_299

def NamedBody614_301 : StackLang.HolProg 64 :=
.seq NamedBody614_285 NamedBody614_300

def NamedBody614_302 : StackLang.HolProg 64 :=
.seq NamedBody614_284 NamedBody614_301

def NamedBody614_303 : StackLang.HolProg 64 :=
.seq NamedBody614_283 NamedBody614_302

def NamedBody614_304 : StackLang.HolProg 64 :=
.seq NamedBody614_282 NamedBody614_303

def NamedBody614_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody614_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody614_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody614_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody614_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody614_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody614_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody614_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody614_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody614_314 : StackLang.HolProg 64 :=
.seq NamedBody614_312 NamedBody614_313

def NamedBody614_315 : StackLang.HolProg 64 :=
.seq NamedBody614_311 NamedBody614_314

def NamedBody614_316 : StackLang.HolProg 64 :=
.seq NamedBody614_310 NamedBody614_315

def NamedBody614_317 : StackLang.HolProg 64 :=
.seq NamedBody614_309 NamedBody614_316

def NamedBody614_318 : StackLang.HolProg 64 :=
.seq NamedBody614_308 NamedBody614_317

def NamedBody614_319 : StackLang.HolProg 64 :=
.seq NamedBody614_307 NamedBody614_318

def NamedBody614_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody614_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody614_322 : StackLang.HolProg 64 :=
.seq NamedBody614_320 NamedBody614_321

def NamedBody614_323 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody614_324 : StackLang.HolProg 64 :=
.seq NamedBody614_322 NamedBody614_323

def NamedBody614_325 : StackLang.HolProg 64 :=
.call (some (NamedBody614_319, 1, 614, 10)) (Sum.inl 180) (some (NamedBody614_324, 614, 11))

def NamedBody614_326 : StackLang.HolProg 64 :=
.seq NamedBody614_306 NamedBody614_325

def NamedBody614_327 : StackLang.HolProg 64 :=
.seq NamedBody614_305 NamedBody614_326

def NamedBody614_328 : StackLang.HolProg 64 :=
.seq NamedBody614_304 NamedBody614_327

def NamedBody614_329 : StackLang.HolProg 64 :=
.seq NamedBody614_275 NamedBody614_328

def NamedBody614_330 : StackLang.HolProg 64 :=
.seq NamedBody614_272 NamedBody614_329

def NamedBody614_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody614_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody614_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 9#64)))

def NamedBody614_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody614_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody614_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody614_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody614_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody614_339 : StackLang.HolProg 64 :=
.seq NamedBody614_337 NamedBody614_338

def NamedBody614_340 : StackLang.HolProg 64 :=
.seq NamedBody614_336 NamedBody614_339

def NamedBody614_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody614_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2358#64)

def NamedBody614_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody614_344 : StackLang.HolProg 64 :=
.seq NamedBody614_342 NamedBody614_343

def NamedBody614_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody614_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody614_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody614_348 : StackLang.HolProg 64 :=
.seq NamedBody614_346 NamedBody614_347

def NamedBody614_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody614_350 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody614_348 NamedBody614_349

def NamedBody614_351 : StackLang.HolProg 64 :=
.seq NamedBody614_345 NamedBody614_350

def NamedBody614_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody614_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody614_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 614 13

def NamedBody614_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody614_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody614_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody614_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody614_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody614_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody614_361 : StackLang.HolProg 64 :=
.seq NamedBody614_359 NamedBody614_360

def NamedBody614_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody614_363 : StackLang.HolProg 64 :=
.seq NamedBody614_361 NamedBody614_362

def NamedBody614_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody614_365 : StackLang.HolProg 64 :=
.seq NamedBody614_363 NamedBody614_364

def NamedBody614_366 : StackLang.HolProg 64 :=
.seq NamedBody614_358 NamedBody614_365

def NamedBody614_367 : StackLang.HolProg 64 :=
.seq NamedBody614_357 NamedBody614_366

def NamedBody614_368 : StackLang.HolProg 64 :=
.seq NamedBody614_356 NamedBody614_367

def NamedBody614_369 : StackLang.HolProg 64 :=
.seq NamedBody614_355 NamedBody614_368

def NamedBody614_370 : StackLang.HolProg 64 :=
.seq NamedBody614_354 NamedBody614_369

def NamedBody614_371 : StackLang.HolProg 64 :=
.seq NamedBody614_353 NamedBody614_370

def NamedBody614_372 : StackLang.HolProg 64 :=
.seq NamedBody614_352 NamedBody614_371

def NamedBody614_373 : StackLang.HolProg 64 :=
.seq NamedBody614_351 NamedBody614_372

def NamedBody614_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody614_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody614_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody614_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody614_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody614_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody614_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody614_381 : StackLang.HolProg 64 :=
.seq NamedBody614_379 NamedBody614_380

def NamedBody614_382 : StackLang.HolProg 64 :=
.seq NamedBody614_378 NamedBody614_381

def NamedBody614_383 : StackLang.HolProg 64 :=
.seq NamedBody614_377 NamedBody614_382

def NamedBody614_384 : StackLang.HolProg 64 :=
.seq NamedBody614_376 NamedBody614_383

def NamedBody614_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody614_386 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody614_387 : StackLang.HolProg 64 :=
.seq NamedBody614_385 NamedBody614_386

def NamedBody614_388 : StackLang.HolProg 64 :=
.call (some (NamedBody614_384, 1, 614, 12)) (Sum.inl 178) (some (NamedBody614_387, 614, 13))

def NamedBody614_389 : StackLang.HolProg 64 :=
.seq NamedBody614_375 NamedBody614_388

def NamedBody614_390 : StackLang.HolProg 64 :=
.seq NamedBody614_374 NamedBody614_389

def NamedBody614_391 : StackLang.HolProg 64 :=
.seq NamedBody614_373 NamedBody614_390

def NamedBody614_392 : StackLang.HolProg 64 :=
.seq NamedBody614_344 NamedBody614_391

def NamedBody614_393 : StackLang.HolProg 64 :=
.seq NamedBody614_341 NamedBody614_392

def NamedBody614_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody614_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 32#64)

def NamedBody614_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody614_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody614_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2359#64)

def NamedBody614_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody614_400 : StackLang.HolProg 64 :=
.seq NamedBody614_398 NamedBody614_399

def NamedBody614_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody614_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody614_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody614_404 : StackLang.HolProg 64 :=
.seq NamedBody614_402 NamedBody614_403

def NamedBody614_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody614_406 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody614_404 NamedBody614_405

def NamedBody614_407 : StackLang.HolProg 64 :=
.seq NamedBody614_401 NamedBody614_406

def NamedBody614_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody614_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody614_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 614 15

def NamedBody614_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody614_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody614_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody614_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody614_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody614_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody614_417 : StackLang.HolProg 64 :=
.seq NamedBody614_415 NamedBody614_416

def NamedBody614_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody614_419 : StackLang.HolProg 64 :=
.seq NamedBody614_417 NamedBody614_418

def NamedBody614_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody614_421 : StackLang.HolProg 64 :=
.seq NamedBody614_419 NamedBody614_420

def NamedBody614_422 : StackLang.HolProg 64 :=
.seq NamedBody614_414 NamedBody614_421

def NamedBody614_423 : StackLang.HolProg 64 :=
.seq NamedBody614_413 NamedBody614_422

def NamedBody614_424 : StackLang.HolProg 64 :=
.seq NamedBody614_412 NamedBody614_423

def NamedBody614_425 : StackLang.HolProg 64 :=
.seq NamedBody614_411 NamedBody614_424

def NamedBody614_426 : StackLang.HolProg 64 :=
.seq NamedBody614_410 NamedBody614_425

def NamedBody614_427 : StackLang.HolProg 64 :=
.seq NamedBody614_409 NamedBody614_426

def NamedBody614_428 : StackLang.HolProg 64 :=
.seq NamedBody614_408 NamedBody614_427

def NamedBody614_429 : StackLang.HolProg 64 :=
.seq NamedBody614_407 NamedBody614_428

def NamedBody614_430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody614_431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody614_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody614_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody614_434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody614_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody614_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody614_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody614_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody614_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody614_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody614_441 : StackLang.HolProg 64 :=
.seq NamedBody614_439 NamedBody614_440

def NamedBody614_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody614_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody614_444 : StackLang.HolProg 64 :=
.seq NamedBody614_442 NamedBody614_443

def NamedBody614_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody614_446 : StackLang.HolProg 64 :=
.seq NamedBody614_444 NamedBody614_445

def NamedBody614_447 : StackLang.HolProg 64 :=
.seq NamedBody614_441 NamedBody614_446

def NamedBody614_448 : StackLang.HolProg 64 :=
.seq NamedBody614_438 NamedBody614_447

def NamedBody614_449 : StackLang.HolProg 64 :=
.seq NamedBody614_437 NamedBody614_448

def NamedBody614_450 : StackLang.HolProg 64 :=
.seq NamedBody614_436 NamedBody614_449

def NamedBody614_451 : StackLang.HolProg 64 :=
.seq NamedBody614_435 NamedBody614_450

def NamedBody614_452 : StackLang.HolProg 64 :=
.seq NamedBody614_434 NamedBody614_451

def NamedBody614_453 : StackLang.HolProg 64 :=
.seq NamedBody614_433 NamedBody614_452

def NamedBody614_454 : StackLang.HolProg 64 :=
.seq NamedBody614_432 NamedBody614_453

def NamedBody614_455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody614_456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody614_457 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody614_458 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody614_459 : StackLang.HolProg 64 :=
.seq NamedBody614_457 NamedBody614_458

def NamedBody614_460 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody614_461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody614_462 : StackLang.HolProg 64 :=
.seq NamedBody614_460 NamedBody614_461

def NamedBody614_463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody614_464 : StackLang.HolProg 64 :=
.seq NamedBody614_462 NamedBody614_463

def NamedBody614_465 : StackLang.HolProg 64 :=
.seq NamedBody614_459 NamedBody614_464

def NamedBody614_466 : StackLang.HolProg 64 :=
.seq NamedBody614_456 NamedBody614_465

def NamedBody614_467 : StackLang.HolProg 64 :=
.seq NamedBody614_455 NamedBody614_466

def NamedBody614_468 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody614_469 : StackLang.HolProg 64 :=
.seq NamedBody614_467 NamedBody614_468

def NamedBody614_470 : StackLang.HolProg 64 :=
.call (some (NamedBody614_454, 1, 614, 14)) (Sum.inl 68) (some (NamedBody614_469, 614, 15))

def NamedBody614_471 : StackLang.HolProg 64 :=
.seq NamedBody614_431 NamedBody614_470

def NamedBody614_472 : StackLang.HolProg 64 :=
.seq NamedBody614_430 NamedBody614_471

def NamedBody614_473 : StackLang.HolProg 64 :=
.seq NamedBody614_429 NamedBody614_472

def NamedBody614_474 : StackLang.HolProg 64 :=
.seq NamedBody614_400 NamedBody614_473

def NamedBody614_475 : StackLang.HolProg 64 :=
.seq NamedBody614_397 NamedBody614_474

def NamedBody614_476 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody614_477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody614_478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 9#64)))

def NamedBody614_479 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody614_480 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody614_481 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody614_482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody614_483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody614_484 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody614_485 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2360#64)

def NamedBody614_486 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody614_487 : StackLang.HolProg 64 :=
.seq NamedBody614_485 NamedBody614_486

def NamedBody614_488 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody614_489 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody614_490 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody614_491 : StackLang.HolProg 64 :=
.seq NamedBody614_489 NamedBody614_490

def NamedBody614_492 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody614_493 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody614_491 NamedBody614_492

def NamedBody614_494 : StackLang.HolProg 64 :=
.seq NamedBody614_488 NamedBody614_493

def NamedBody614_495 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody614_496 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody614_497 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 614 17

def NamedBody614_498 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody614_499 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody614_500 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody614_501 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody614_502 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody614_503 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody614_504 : StackLang.HolProg 64 :=
.seq NamedBody614_502 NamedBody614_503

def NamedBody614_505 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody614_506 : StackLang.HolProg 64 :=
.seq NamedBody614_504 NamedBody614_505

def NamedBody614_507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody614_508 : StackLang.HolProg 64 :=
.seq NamedBody614_506 NamedBody614_507

def NamedBody614_509 : StackLang.HolProg 64 :=
.seq NamedBody614_501 NamedBody614_508

def NamedBody614_510 : StackLang.HolProg 64 :=
.seq NamedBody614_500 NamedBody614_509

def NamedBody614_511 : StackLang.HolProg 64 :=
.seq NamedBody614_499 NamedBody614_510

def NamedBody614_512 : StackLang.HolProg 64 :=
.seq NamedBody614_498 NamedBody614_511

def NamedBody614_513 : StackLang.HolProg 64 :=
.seq NamedBody614_497 NamedBody614_512

def NamedBody614_514 : StackLang.HolProg 64 :=
.seq NamedBody614_496 NamedBody614_513

def NamedBody614_515 : StackLang.HolProg 64 :=
.seq NamedBody614_495 NamedBody614_514

def NamedBody614_516 : StackLang.HolProg 64 :=
.seq NamedBody614_494 NamedBody614_515

def NamedBody614_517 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody614_518 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody614_519 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody614_520 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody614_521 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody614_522 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody614_523 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody614_524 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody614_525 : StackLang.HolProg 64 :=
.seq NamedBody614_523 NamedBody614_524

def NamedBody614_526 : StackLang.HolProg 64 :=
.seq NamedBody614_522 NamedBody614_525

def NamedBody614_527 : StackLang.HolProg 64 :=
.seq NamedBody614_521 NamedBody614_526

def NamedBody614_528 : StackLang.HolProg 64 :=
.seq NamedBody614_520 NamedBody614_527

def NamedBody614_529 : StackLang.HolProg 64 :=
.seq NamedBody614_519 NamedBody614_528

def NamedBody614_530 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody614_531 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody614_532 : StackLang.HolProg 64 :=
.seq NamedBody614_530 NamedBody614_531

def NamedBody614_533 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody614_534 : StackLang.HolProg 64 :=
.seq NamedBody614_532 NamedBody614_533

def NamedBody614_535 : StackLang.HolProg 64 :=
.call (some (NamedBody614_529, 1, 614, 16)) (Sum.inl 158) (some (NamedBody614_534, 614, 17))

def NamedBody614_536 : StackLang.HolProg 64 :=
.seq NamedBody614_518 NamedBody614_535

def NamedBody614_537 : StackLang.HolProg 64 :=
.seq NamedBody614_517 NamedBody614_536

def NamedBody614_538 : StackLang.HolProg 64 :=
.seq NamedBody614_516 NamedBody614_537

def NamedBody614_539 : StackLang.HolProg 64 :=
.seq NamedBody614_487 NamedBody614_538

def NamedBody614_540 : StackLang.HolProg 64 :=
.seq NamedBody614_484 NamedBody614_539

def NamedBody614_541 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody614_542 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody614_543 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 12#64)))

def NamedBody614_544 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 20#64)

def NamedBody614_545 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody614_546 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody614_547 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2361#64)

def NamedBody614_548 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody614_549 : StackLang.HolProg 64 :=
.seq NamedBody614_547 NamedBody614_548

def NamedBody614_550 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody614_551 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody614_552 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody614_553 : StackLang.HolProg 64 :=
.seq NamedBody614_551 NamedBody614_552

def NamedBody614_554 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody614_555 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody614_553 NamedBody614_554

def NamedBody614_556 : StackLang.HolProg 64 :=
.seq NamedBody614_550 NamedBody614_555

def NamedBody614_557 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody614_558 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody614_559 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 614 19

def NamedBody614_560 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody614_561 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody614_562 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody614_563 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody614_564 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody614_565 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody614_566 : StackLang.HolProg 64 :=
.seq NamedBody614_564 NamedBody614_565

def NamedBody614_567 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody614_568 : StackLang.HolProg 64 :=
.seq NamedBody614_566 NamedBody614_567

def NamedBody614_569 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody614_570 : StackLang.HolProg 64 :=
.seq NamedBody614_568 NamedBody614_569

def NamedBody614_571 : StackLang.HolProg 64 :=
.seq NamedBody614_563 NamedBody614_570

def NamedBody614_572 : StackLang.HolProg 64 :=
.seq NamedBody614_562 NamedBody614_571

def NamedBody614_573 : StackLang.HolProg 64 :=
.seq NamedBody614_561 NamedBody614_572

def NamedBody614_574 : StackLang.HolProg 64 :=
.seq NamedBody614_560 NamedBody614_573

def NamedBody614_575 : StackLang.HolProg 64 :=
.seq NamedBody614_559 NamedBody614_574

def NamedBody614_576 : StackLang.HolProg 64 :=
.seq NamedBody614_558 NamedBody614_575

def NamedBody614_577 : StackLang.HolProg 64 :=
.seq NamedBody614_557 NamedBody614_576

def NamedBody614_578 : StackLang.HolProg 64 :=
.seq NamedBody614_556 NamedBody614_577

def NamedBody614_579 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody614_580 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody614_581 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody614_582 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody614_583 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody614_584 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody614_585 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody614_586 : StackLang.HolProg 64 :=
.seq NamedBody614_584 NamedBody614_585

def NamedBody614_587 : StackLang.HolProg 64 :=
.seq NamedBody614_583 NamedBody614_586

def NamedBody614_588 : StackLang.HolProg 64 :=
.seq NamedBody614_582 NamedBody614_587

def NamedBody614_589 : StackLang.HolProg 64 :=
.seq NamedBody614_581 NamedBody614_588

def NamedBody614_590 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody614_591 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody614_592 : StackLang.HolProg 64 :=
.seq NamedBody614_590 NamedBody614_591

def NamedBody614_593 : StackLang.HolProg 64 :=
.call (some (NamedBody614_589, 1, 614, 18)) (Sum.inl 77) (some (NamedBody614_592, 614, 19))

def NamedBody614_594 : StackLang.HolProg 64 :=
.seq NamedBody614_580 NamedBody614_593

def NamedBody614_595 : StackLang.HolProg 64 :=
.seq NamedBody614_579 NamedBody614_594

def NamedBody614_596 : StackLang.HolProg 64 :=
.seq NamedBody614_578 NamedBody614_595

def NamedBody614_597 : StackLang.HolProg 64 :=
.seq NamedBody614_549 NamedBody614_596

def NamedBody614_598 : StackLang.HolProg 64 :=
.seq NamedBody614_546 NamedBody614_597

def NamedBody614_599 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody614_600 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody614_601 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody614_602 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2362#64)

def NamedBody614_603 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody614_604 : StackLang.HolProg 64 :=
.seq NamedBody614_602 NamedBody614_603

def NamedBody614_605 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody614_606 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody614_607 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody614_608 : StackLang.HolProg 64 :=
.seq NamedBody614_606 NamedBody614_607

def NamedBody614_609 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody614_610 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody614_608 NamedBody614_609

def NamedBody614_611 : StackLang.HolProg 64 :=
.seq NamedBody614_605 NamedBody614_610

def NamedBody614_612 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody614_613 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody614_614 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 614 21

def NamedBody614_615 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody614_616 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody614_617 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody614_618 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody614_619 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody614_620 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody614_621 : StackLang.HolProg 64 :=
.seq NamedBody614_619 NamedBody614_620

def NamedBody614_622 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody614_623 : StackLang.HolProg 64 :=
.seq NamedBody614_621 NamedBody614_622

def NamedBody614_624 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody614_625 : StackLang.HolProg 64 :=
.seq NamedBody614_623 NamedBody614_624

def NamedBody614_626 : StackLang.HolProg 64 :=
.seq NamedBody614_618 NamedBody614_625

def NamedBody614_627 : StackLang.HolProg 64 :=
.seq NamedBody614_617 NamedBody614_626

def NamedBody614_628 : StackLang.HolProg 64 :=
.seq NamedBody614_616 NamedBody614_627

def NamedBody614_629 : StackLang.HolProg 64 :=
.seq NamedBody614_615 NamedBody614_628

def NamedBody614_630 : StackLang.HolProg 64 :=
.seq NamedBody614_614 NamedBody614_629

def NamedBody614_631 : StackLang.HolProg 64 :=
.seq NamedBody614_613 NamedBody614_630

def NamedBody614_632 : StackLang.HolProg 64 :=
.seq NamedBody614_612 NamedBody614_631

def NamedBody614_633 : StackLang.HolProg 64 :=
.seq NamedBody614_611 NamedBody614_632

def NamedBody614_634 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody614_635 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody614_636 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody614_637 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody614_638 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody614_639 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody614_640 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody614_641 : StackLang.HolProg 64 :=
.seq NamedBody614_639 NamedBody614_640

def NamedBody614_642 : StackLang.HolProg 64 :=
.seq NamedBody614_638 NamedBody614_641

def NamedBody614_643 : StackLang.HolProg 64 :=
.seq NamedBody614_637 NamedBody614_642

def NamedBody614_644 : StackLang.HolProg 64 :=
.seq NamedBody614_636 NamedBody614_643

def NamedBody614_645 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody614_646 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody614_647 : StackLang.HolProg 64 :=
.seq NamedBody614_645 NamedBody614_646

def NamedBody614_648 : StackLang.HolProg 64 :=
.call (some (NamedBody614_644, 1, 614, 20)) (Sum.inl 70) (some (NamedBody614_647, 614, 21))

def NamedBody614_649 : StackLang.HolProg 64 :=
.seq NamedBody614_635 NamedBody614_648

def NamedBody614_650 : StackLang.HolProg 64 :=
.seq NamedBody614_634 NamedBody614_649

def NamedBody614_651 : StackLang.HolProg 64 :=
.seq NamedBody614_633 NamedBody614_650

def NamedBody614_652 : StackLang.HolProg 64 :=
.seq NamedBody614_604 NamedBody614_651

def NamedBody614_653 : StackLang.HolProg 64 :=
.seq NamedBody614_601 NamedBody614_652

def NamedBody614_654 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody614_655 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody614_656 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody614_657 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def NamedBody614_658 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody614_659 : StackLang.HolProg 64 :=
.seq NamedBody614_657 NamedBody614_658

def NamedBody614_660 : StackLang.HolProg 64 :=
.seq NamedBody614_656 NamedBody614_659

def NamedBody614_661 : StackLang.HolProg 64 :=
.seq NamedBody614_655 NamedBody614_660

def NamedBody614_662 : StackLang.HolProg 64 :=
.seq NamedBody614_654 NamedBody614_661

def NamedBody614_663 : StackLang.HolProg 64 :=
.seq NamedBody614_653 NamedBody614_662

def NamedBody614_664 : StackLang.HolProg 64 :=
.seq NamedBody614_600 NamedBody614_663

def NamedBody614_665 : StackLang.HolProg 64 :=
.seq NamedBody614_599 NamedBody614_664

def NamedBody614_666 : StackLang.HolProg 64 :=
.seq NamedBody614_598 NamedBody614_665

def NamedBody614_667 : StackLang.HolProg 64 :=
.seq NamedBody614_545 NamedBody614_666

def NamedBody614_668 : StackLang.HolProg 64 :=
.seq NamedBody614_544 NamedBody614_667

def NamedBody614_669 : StackLang.HolProg 64 :=
.seq NamedBody614_543 NamedBody614_668

def NamedBody614_670 : StackLang.HolProg 64 :=
.seq NamedBody614_542 NamedBody614_669

def NamedBody614_671 : StackLang.HolProg 64 :=
.seq NamedBody614_541 NamedBody614_670

def NamedBody614_672 : StackLang.HolProg 64 :=
.seq NamedBody614_540 NamedBody614_671

def NamedBody614_673 : StackLang.HolProg 64 :=
.seq NamedBody614_483 NamedBody614_672

def NamedBody614_674 : StackLang.HolProg 64 :=
.seq NamedBody614_482 NamedBody614_673

def NamedBody614_675 : StackLang.HolProg 64 :=
.seq NamedBody614_481 NamedBody614_674

def NamedBody614_676 : StackLang.HolProg 64 :=
.seq NamedBody614_480 NamedBody614_675

def NamedBody614_677 : StackLang.HolProg 64 :=
.seq NamedBody614_479 NamedBody614_676

def NamedBody614_678 : StackLang.HolProg 64 :=
.seq NamedBody614_478 NamedBody614_677

def NamedBody614_679 : StackLang.HolProg 64 :=
.seq NamedBody614_477 NamedBody614_678

def NamedBody614_680 : StackLang.HolProg 64 :=
.seq NamedBody614_476 NamedBody614_679

def NamedBody614_681 : StackLang.HolProg 64 :=
.seq NamedBody614_475 NamedBody614_680

def NamedBody614_682 : StackLang.HolProg 64 :=
.seq NamedBody614_396 NamedBody614_681

def NamedBody614_683 : StackLang.HolProg 64 :=
.seq NamedBody614_395 NamedBody614_682

def NamedBody614_684 : StackLang.HolProg 64 :=
.seq NamedBody614_394 NamedBody614_683

def NamedBody614_685 : StackLang.HolProg 64 :=
.seq NamedBody614_393 NamedBody614_684

def NamedBody614_686 : StackLang.HolProg 64 :=
.seq NamedBody614_340 NamedBody614_685

def NamedBody614_687 : StackLang.HolProg 64 :=
.seq NamedBody614_335 NamedBody614_686

def NamedBody614_688 : StackLang.HolProg 64 :=
.seq NamedBody614_334 NamedBody614_687

def NamedBody614_689 : StackLang.HolProg 64 :=
.seq NamedBody614_333 NamedBody614_688

def NamedBody614_690 : StackLang.HolProg 64 :=
.seq NamedBody614_332 NamedBody614_689

def NamedBody614_691 : StackLang.HolProg 64 :=
.seq NamedBody614_331 NamedBody614_690

def NamedBody614_692 : StackLang.HolProg 64 :=
.seq NamedBody614_330 NamedBody614_691

def NamedBody614_693 : StackLang.HolProg 64 :=
.seq NamedBody614_271 NamedBody614_692

def NamedBody614_694 : StackLang.HolProg 64 :=
.seq NamedBody614_268 NamedBody614_693

def NamedBody614_695 : StackLang.HolProg 64 :=
.seq NamedBody614_267 NamedBody614_694

def NamedBody614_696 : StackLang.HolProg 64 :=
.seq NamedBody614_266 NamedBody614_695

def NamedBody614_697 : StackLang.HolProg 64 :=
.seq NamedBody614_265 NamedBody614_696

def NamedBody614_698 : StackLang.HolProg 64 :=
.seq NamedBody614_264 NamedBody614_697

def NamedBody614_699 : StackLang.HolProg 64 :=
.seq NamedBody614_263 NamedBody614_698

def NamedBody614_700 : StackLang.HolProg 64 :=
.seq NamedBody614_262 NamedBody614_699

def NamedBody614_701 : StackLang.HolProg 64 :=
.seq NamedBody614_203 NamedBody614_700

def NamedBody614_702 : StackLang.HolProg 64 :=
.seq NamedBody614_202 NamedBody614_701

def NamedBody614_703 : StackLang.HolProg 64 :=
.seq NamedBody614_201 NamedBody614_702

def NamedBody614_704 : StackLang.HolProg 64 :=
.seq NamedBody614_200 NamedBody614_703

def NamedBody614_705 : StackLang.HolProg 64 :=
.seq NamedBody614_199 NamedBody614_704

def NamedBody614_706 : StackLang.HolProg 64 :=
.seq NamedBody614_132 NamedBody614_705

def NamedBody614_707 : StackLang.HolProg 64 :=
.seq NamedBody614_129 NamedBody614_706

def NamedBody614_708 : StackLang.HolProg 64 :=
.seq NamedBody614_128 NamedBody614_707

def NamedBody614_709 : StackLang.HolProg 64 :=
.seq NamedBody614_127 NamedBody614_708

def NamedBody614_710 : StackLang.HolProg 64 :=
.seq NamedBody614_126 NamedBody614_709

def NamedBody614_711 : StackLang.HolProg 64 :=
.seq NamedBody614_125 NamedBody614_710

def NamedBody614_712 : StackLang.HolProg 64 :=
.seq NamedBody614_124 NamedBody614_711

def NamedBody614_713 : StackLang.HolProg 64 :=
.seq NamedBody614_69 NamedBody614_712

def NamedBody614_714 : StackLang.HolProg 64 :=
.seq NamedBody614_68 NamedBody614_713

def NamedBody614_715 : StackLang.HolProg 64 :=
.seq NamedBody614_67 NamedBody614_714

def NamedBody614_716 : StackLang.HolProg 64 :=
.seq NamedBody614_66 NamedBody614_715

def NamedBody614_717 : StackLang.HolProg 64 :=
.seq NamedBody614_13 NamedBody614_716

def NamedBody614_718 : StackLang.HolProg 64 :=
.seq NamedBody614_6 NamedBody614_717

def Named614 : Nat × StackLang.HolProg 64 := (614, NamedBody614_718)
theorem Named614_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed614 = Named614 := by
  kernel_rfl
#print axioms Named614_eq
end InitECandidate.Proofs.BackendStages
