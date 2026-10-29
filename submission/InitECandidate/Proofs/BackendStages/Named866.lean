import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed866
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody866_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody866_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody866_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody866_3 : StackLang.HolProg 64 :=
.seq NamedBody866_1 NamedBody866_2

def NamedBody866_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody866_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody866_3 NamedBody866_4

def NamedBody866_6 : StackLang.HolProg 64 :=
.seq NamedBody866_0 NamedBody866_5

def NamedBody866_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody866_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody866_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody866_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody866_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody866_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody866_13 : StackLang.HolProg 64 :=
.seq NamedBody866_11 NamedBody866_12

def NamedBody866_14 : StackLang.HolProg 64 :=
.seq NamedBody866_10 NamedBody866_13

def NamedBody866_15 : StackLang.HolProg 64 :=
.seq NamedBody866_9 NamedBody866_14

def NamedBody866_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody866_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4525#64)

def NamedBody866_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody866_19 : StackLang.HolProg 64 :=
.seq NamedBody866_17 NamedBody866_18

def NamedBody866_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody866_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody866_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody866_23 : StackLang.HolProg 64 :=
.seq NamedBody866_21 NamedBody866_22

def NamedBody866_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody866_25 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody866_23 NamedBody866_24

def NamedBody866_26 : StackLang.HolProg 64 :=
.seq NamedBody866_20 NamedBody866_25

def NamedBody866_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody866_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody866_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 866 3

def NamedBody866_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody866_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody866_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody866_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody866_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody866_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody866_36 : StackLang.HolProg 64 :=
.seq NamedBody866_34 NamedBody866_35

def NamedBody866_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody866_38 : StackLang.HolProg 64 :=
.seq NamedBody866_36 NamedBody866_37

def NamedBody866_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody866_40 : StackLang.HolProg 64 :=
.seq NamedBody866_38 NamedBody866_39

def NamedBody866_41 : StackLang.HolProg 64 :=
.seq NamedBody866_33 NamedBody866_40

def NamedBody866_42 : StackLang.HolProg 64 :=
.seq NamedBody866_32 NamedBody866_41

def NamedBody866_43 : StackLang.HolProg 64 :=
.seq NamedBody866_31 NamedBody866_42

def NamedBody866_44 : StackLang.HolProg 64 :=
.seq NamedBody866_30 NamedBody866_43

def NamedBody866_45 : StackLang.HolProg 64 :=
.seq NamedBody866_29 NamedBody866_44

def NamedBody866_46 : StackLang.HolProg 64 :=
.seq NamedBody866_28 NamedBody866_45

def NamedBody866_47 : StackLang.HolProg 64 :=
.seq NamedBody866_27 NamedBody866_46

def NamedBody866_48 : StackLang.HolProg 64 :=
.seq NamedBody866_26 NamedBody866_47

def NamedBody866_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody866_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody866_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody866_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody866_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody866_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody866_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody866_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody866_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody866_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody866_59 : StackLang.HolProg 64 :=
.seq NamedBody866_57 NamedBody866_58

def NamedBody866_60 : StackLang.HolProg 64 :=
.seq NamedBody866_56 NamedBody866_59

def NamedBody866_61 : StackLang.HolProg 64 :=
.seq NamedBody866_55 NamedBody866_60

def NamedBody866_62 : StackLang.HolProg 64 :=
.seq NamedBody866_54 NamedBody866_61

def NamedBody866_63 : StackLang.HolProg 64 :=
.seq NamedBody866_53 NamedBody866_62

def NamedBody866_64 : StackLang.HolProg 64 :=
.seq NamedBody866_52 NamedBody866_63

def NamedBody866_65 : StackLang.HolProg 64 :=
.seq NamedBody866_51 NamedBody866_64

def NamedBody866_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody866_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody866_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody866_69 : StackLang.HolProg 64 :=
.seq NamedBody866_67 NamedBody866_68

def NamedBody866_70 : StackLang.HolProg 64 :=
.seq NamedBody866_66 NamedBody866_69

def NamedBody866_71 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody866_72 : StackLang.HolProg 64 :=
.seq NamedBody866_70 NamedBody866_71

def NamedBody866_73 : StackLang.HolProg 64 :=
.call (some (NamedBody866_65, 1, 866, 2)) (Sum.inl 68) (some (NamedBody866_72, 866, 3))

def NamedBody866_74 : StackLang.HolProg 64 :=
.seq NamedBody866_50 NamedBody866_73

def NamedBody866_75 : StackLang.HolProg 64 :=
.seq NamedBody866_49 NamedBody866_74

def NamedBody866_76 : StackLang.HolProg 64 :=
.seq NamedBody866_48 NamedBody866_75

def NamedBody866_77 : StackLang.HolProg 64 :=
.seq NamedBody866_19 NamedBody866_76

def NamedBody866_78 : StackLang.HolProg 64 :=
.seq NamedBody866_16 NamedBody866_77

def NamedBody866_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody866_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody866_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def NamedBody866_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody866_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody866_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody866_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody866_86 : StackLang.HolProg 64 :=
.seq NamedBody866_84 NamedBody866_85

def NamedBody866_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody866_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4526#64)

def NamedBody866_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody866_90 : StackLang.HolProg 64 :=
.seq NamedBody866_88 NamedBody866_89

def NamedBody866_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody866_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody866_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody866_94 : StackLang.HolProg 64 :=
.seq NamedBody866_92 NamedBody866_93

def NamedBody866_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody866_96 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody866_94 NamedBody866_95

def NamedBody866_97 : StackLang.HolProg 64 :=
.seq NamedBody866_91 NamedBody866_96

def NamedBody866_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody866_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody866_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 866 5

def NamedBody866_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody866_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody866_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody866_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody866_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody866_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody866_107 : StackLang.HolProg 64 :=
.seq NamedBody866_105 NamedBody866_106

def NamedBody866_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody866_109 : StackLang.HolProg 64 :=
.seq NamedBody866_107 NamedBody866_108

def NamedBody866_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody866_111 : StackLang.HolProg 64 :=
.seq NamedBody866_109 NamedBody866_110

def NamedBody866_112 : StackLang.HolProg 64 :=
.seq NamedBody866_104 NamedBody866_111

def NamedBody866_113 : StackLang.HolProg 64 :=
.seq NamedBody866_103 NamedBody866_112

def NamedBody866_114 : StackLang.HolProg 64 :=
.seq NamedBody866_102 NamedBody866_113

def NamedBody866_115 : StackLang.HolProg 64 :=
.seq NamedBody866_101 NamedBody866_114

def NamedBody866_116 : StackLang.HolProg 64 :=
.seq NamedBody866_100 NamedBody866_115

def NamedBody866_117 : StackLang.HolProg 64 :=
.seq NamedBody866_99 NamedBody866_116

def NamedBody866_118 : StackLang.HolProg 64 :=
.seq NamedBody866_98 NamedBody866_117

def NamedBody866_119 : StackLang.HolProg 64 :=
.seq NamedBody866_97 NamedBody866_118

def NamedBody866_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody866_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody866_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody866_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody866_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody866_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody866_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody866_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody866_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody866_129 : StackLang.HolProg 64 :=
.seq NamedBody866_127 NamedBody866_128

def NamedBody866_130 : StackLang.HolProg 64 :=
.seq NamedBody866_126 NamedBody866_129

def NamedBody866_131 : StackLang.HolProg 64 :=
.seq NamedBody866_125 NamedBody866_130

def NamedBody866_132 : StackLang.HolProg 64 :=
.seq NamedBody866_124 NamedBody866_131

def NamedBody866_133 : StackLang.HolProg 64 :=
.seq NamedBody866_123 NamedBody866_132

def NamedBody866_134 : StackLang.HolProg 64 :=
.seq NamedBody866_122 NamedBody866_133

def NamedBody866_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody866_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody866_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody866_138 : StackLang.HolProg 64 :=
.seq NamedBody866_136 NamedBody866_137

def NamedBody866_139 : StackLang.HolProg 64 :=
.seq NamedBody866_135 NamedBody866_138

def NamedBody866_140 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody866_141 : StackLang.HolProg 64 :=
.seq NamedBody866_139 NamedBody866_140

def NamedBody866_142 : StackLang.HolProg 64 :=
.call (some (NamedBody866_134, 1, 866, 4)) (Sum.inl 77) (some (NamedBody866_141, 866, 5))

def NamedBody866_143 : StackLang.HolProg 64 :=
.seq NamedBody866_121 NamedBody866_142

def NamedBody866_144 : StackLang.HolProg 64 :=
.seq NamedBody866_120 NamedBody866_143

def NamedBody866_145 : StackLang.HolProg 64 :=
.seq NamedBody866_119 NamedBody866_144

def NamedBody866_146 : StackLang.HolProg 64 :=
.seq NamedBody866_90 NamedBody866_145

def NamedBody866_147 : StackLang.HolProg 64 :=
.seq NamedBody866_87 NamedBody866_146

def NamedBody866_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody866_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody866_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody866_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody866_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551200#64))

def NamedBody866_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 64#64))

def NamedBody866_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody866_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def NamedBody866_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody866_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 56#64))

def NamedBody866_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody866_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody866_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 0#64))

def NamedBody866_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody866_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551200#64))

def NamedBody866_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 56#64))

def NamedBody866_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody866_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody866_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody866_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody866_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody866_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def NamedBody866_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody866_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551200#64))

def NamedBody866_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def NamedBody866_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody866_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody866_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody866_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody866_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody866_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody866_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody866_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 6

def NamedBody866_181 : StackLang.HolProg 64 :=
.seq NamedBody866_179 NamedBody866_180

def NamedBody866_182 : StackLang.HolProg 64 :=
.seq NamedBody866_178 NamedBody866_181

def NamedBody866_183 : StackLang.HolProg 64 :=
.seq NamedBody866_177 NamedBody866_182

def NamedBody866_184 : StackLang.HolProg 64 :=
.seq NamedBody866_176 NamedBody866_183

def NamedBody866_185 : StackLang.HolProg 64 :=
.seq NamedBody866_175 NamedBody866_184

def NamedBody866_186 : StackLang.HolProg 64 :=
.seq NamedBody866_174 NamedBody866_185

def NamedBody866_187 : StackLang.HolProg 64 :=
.seq NamedBody866_173 NamedBody866_186

def NamedBody866_188 : StackLang.HolProg 64 :=
.seq NamedBody866_172 NamedBody866_187

def NamedBody866_189 : StackLang.HolProg 64 :=
.seq NamedBody866_171 NamedBody866_188

def NamedBody866_190 : StackLang.HolProg 64 :=
.seq NamedBody866_170 NamedBody866_189

def NamedBody866_191 : StackLang.HolProg 64 :=
.seq NamedBody866_169 NamedBody866_190

def NamedBody866_192 : StackLang.HolProg 64 :=
.seq NamedBody866_168 NamedBody866_191

def NamedBody866_193 : StackLang.HolProg 64 :=
.seq NamedBody866_167 NamedBody866_192

def NamedBody866_194 : StackLang.HolProg 64 :=
.seq NamedBody866_166 NamedBody866_193

def NamedBody866_195 : StackLang.HolProg 64 :=
.seq NamedBody866_165 NamedBody866_194

def NamedBody866_196 : StackLang.HolProg 64 :=
.seq NamedBody866_164 NamedBody866_195

def NamedBody866_197 : StackLang.HolProg 64 :=
.seq NamedBody866_163 NamedBody866_196

def NamedBody866_198 : StackLang.HolProg 64 :=
.seq NamedBody866_162 NamedBody866_197

def NamedBody866_199 : StackLang.HolProg 64 :=
.seq NamedBody866_161 NamedBody866_198

def NamedBody866_200 : StackLang.HolProg 64 :=
.seq NamedBody866_160 NamedBody866_199

def NamedBody866_201 : StackLang.HolProg 64 :=
.seq NamedBody866_159 NamedBody866_200

def NamedBody866_202 : StackLang.HolProg 64 :=
.seq NamedBody866_158 NamedBody866_201

def NamedBody866_203 : StackLang.HolProg 64 :=
.seq NamedBody866_157 NamedBody866_202

def NamedBody866_204 : StackLang.HolProg 64 :=
.seq NamedBody866_156 NamedBody866_203

def NamedBody866_205 : StackLang.HolProg 64 :=
.seq NamedBody866_155 NamedBody866_204

def NamedBody866_206 : StackLang.HolProg 64 :=
.seq NamedBody866_154 NamedBody866_205

def NamedBody866_207 : StackLang.HolProg 64 :=
.seq NamedBody866_153 NamedBody866_206

def NamedBody866_208 : StackLang.HolProg 64 :=
.seq NamedBody866_152 NamedBody866_207

def NamedBody866_209 : StackLang.HolProg 64 :=
.seq NamedBody866_151 NamedBody866_208

def NamedBody866_210 : StackLang.HolProg 64 :=
.seq NamedBody866_150 NamedBody866_209

def NamedBody866_211 : StackLang.HolProg 64 :=
.seq NamedBody866_149 NamedBody866_210

def NamedBody866_212 : StackLang.HolProg 64 :=
.seq NamedBody866_148 NamedBody866_211

def NamedBody866_213 : StackLang.HolProg 64 :=
.seq NamedBody866_147 NamedBody866_212

def NamedBody866_214 : StackLang.HolProg 64 :=
.seq NamedBody866_86 NamedBody866_213

def NamedBody866_215 : StackLang.HolProg 64 :=
.seq NamedBody866_83 NamedBody866_214

def NamedBody866_216 : StackLang.HolProg 64 :=
.seq NamedBody866_82 NamedBody866_215

def NamedBody866_217 : StackLang.HolProg 64 :=
.seq NamedBody866_81 NamedBody866_216

def NamedBody866_218 : StackLang.HolProg 64 :=
.seq NamedBody866_80 NamedBody866_217

def NamedBody866_219 : StackLang.HolProg 64 :=
.seq NamedBody866_79 NamedBody866_218

def NamedBody866_220 : StackLang.HolProg 64 :=
.seq NamedBody866_78 NamedBody866_219

def NamedBody866_221 : StackLang.HolProg 64 :=
.seq NamedBody866_15 NamedBody866_220

def NamedBody866_222 : StackLang.HolProg 64 :=
.seq NamedBody866_8 NamedBody866_221

def NamedBody866_223 : StackLang.HolProg 64 :=
.seq NamedBody866_7 NamedBody866_222

def NamedBody866_224 : StackLang.HolProg 64 :=
.seq NamedBody866_6 NamedBody866_223

def Named866 : Nat × StackLang.HolProg 64 := (866, NamedBody866_224)
theorem Named866_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed866 = Named866 := by
  kernel_rfl
#print axioms Named866_eq
end InitECandidate.Proofs.BackendStages
