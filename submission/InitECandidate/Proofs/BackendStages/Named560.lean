import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed560
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody560_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 144#64)))

def NamedBody560_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody560_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody560_3 : StackLang.HolProg 64 :=
.seq NamedBody560_1 NamedBody560_2

def NamedBody560_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody560_3 NamedBody560_4

def NamedBody560_6 : StackLang.HolProg 64 :=
.seq NamedBody560_0 NamedBody560_5

def NamedBody560_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody560_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody560_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody560_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody560_11 : StackLang.HolProg 64 :=
.seq NamedBody560_9 NamedBody560_10

def NamedBody560_12 : StackLang.HolProg 64 :=
.seq NamedBody560_8 NamedBody560_11

def NamedBody560_13 : StackLang.HolProg 64 :=
.seq NamedBody560_7 NamedBody560_12

def NamedBody560_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1911#64)

def NamedBody560_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody560_17 : StackLang.HolProg 64 :=
.seq NamedBody560_15 NamedBody560_16

def NamedBody560_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody560_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody560_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody560_21 : StackLang.HolProg 64 :=
.seq NamedBody560_19 NamedBody560_20

def NamedBody560_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody560_21 NamedBody560_22

def NamedBody560_24 : StackLang.HolProg 64 :=
.seq NamedBody560_18 NamedBody560_23

def NamedBody560_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody560_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody560_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 560 3

def NamedBody560_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody560_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody560_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody560_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody560_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody560_34 : StackLang.HolProg 64 :=
.seq NamedBody560_32 NamedBody560_33

def NamedBody560_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody560_36 : StackLang.HolProg 64 :=
.seq NamedBody560_34 NamedBody560_35

def NamedBody560_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody560_38 : StackLang.HolProg 64 :=
.seq NamedBody560_36 NamedBody560_37

def NamedBody560_39 : StackLang.HolProg 64 :=
.seq NamedBody560_31 NamedBody560_38

def NamedBody560_40 : StackLang.HolProg 64 :=
.seq NamedBody560_30 NamedBody560_39

def NamedBody560_41 : StackLang.HolProg 64 :=
.seq NamedBody560_29 NamedBody560_40

def NamedBody560_42 : StackLang.HolProg 64 :=
.seq NamedBody560_28 NamedBody560_41

def NamedBody560_43 : StackLang.HolProg 64 :=
.seq NamedBody560_27 NamedBody560_42

def NamedBody560_44 : StackLang.HolProg 64 :=
.seq NamedBody560_26 NamedBody560_43

def NamedBody560_45 : StackLang.HolProg 64 :=
.seq NamedBody560_25 NamedBody560_44

def NamedBody560_46 : StackLang.HolProg 64 :=
.seq NamedBody560_24 NamedBody560_45

def NamedBody560_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody560_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody560_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody560_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody560_54 : StackLang.HolProg 64 :=
.seq NamedBody560_52 NamedBody560_53

def NamedBody560_55 : StackLang.HolProg 64 :=
.seq NamedBody560_51 NamedBody560_54

def NamedBody560_56 : StackLang.HolProg 64 :=
.seq NamedBody560_50 NamedBody560_55

def NamedBody560_57 : StackLang.HolProg 64 :=
.seq NamedBody560_49 NamedBody560_56

def NamedBody560_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_59 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody560_60 : StackLang.HolProg 64 :=
.seq NamedBody560_58 NamedBody560_59

def NamedBody560_61 : StackLang.HolProg 64 :=
.call (some (NamedBody560_57, 1, 560, 2)) (Sum.inl 475) (some (NamedBody560_60, 560, 3))

def NamedBody560_62 : StackLang.HolProg 64 :=
.seq NamedBody560_48 NamedBody560_61

def NamedBody560_63 : StackLang.HolProg 64 :=
.seq NamedBody560_47 NamedBody560_62

def NamedBody560_64 : StackLang.HolProg 64 :=
.seq NamedBody560_46 NamedBody560_63

def NamedBody560_65 : StackLang.HolProg 64 :=
.seq NamedBody560_17 NamedBody560_64

def NamedBody560_66 : StackLang.HolProg 64 :=
.seq NamedBody560_14 NamedBody560_65

def NamedBody560_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody560_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody560_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody560_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody560_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody560_72 : StackLang.HolProg 64 :=
.seq NamedBody560_70 NamedBody560_71

def NamedBody560_73 : StackLang.HolProg 64 :=
.seq NamedBody560_69 NamedBody560_72

def NamedBody560_74 : StackLang.HolProg 64 :=
.seq NamedBody560_68 NamedBody560_73

def NamedBody560_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1912#64)

def NamedBody560_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody560_78 : StackLang.HolProg 64 :=
.seq NamedBody560_76 NamedBody560_77

def NamedBody560_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody560_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody560_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody560_82 : StackLang.HolProg 64 :=
.seq NamedBody560_80 NamedBody560_81

def NamedBody560_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_84 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody560_82 NamedBody560_83

def NamedBody560_85 : StackLang.HolProg 64 :=
.seq NamedBody560_79 NamedBody560_84

def NamedBody560_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody560_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody560_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 560 5

def NamedBody560_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody560_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody560_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody560_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody560_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody560_95 : StackLang.HolProg 64 :=
.seq NamedBody560_93 NamedBody560_94

def NamedBody560_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody560_97 : StackLang.HolProg 64 :=
.seq NamedBody560_95 NamedBody560_96

def NamedBody560_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody560_99 : StackLang.HolProg 64 :=
.seq NamedBody560_97 NamedBody560_98

def NamedBody560_100 : StackLang.HolProg 64 :=
.seq NamedBody560_92 NamedBody560_99

def NamedBody560_101 : StackLang.HolProg 64 :=
.seq NamedBody560_91 NamedBody560_100

def NamedBody560_102 : StackLang.HolProg 64 :=
.seq NamedBody560_90 NamedBody560_101

def NamedBody560_103 : StackLang.HolProg 64 :=
.seq NamedBody560_89 NamedBody560_102

def NamedBody560_104 : StackLang.HolProg 64 :=
.seq NamedBody560_88 NamedBody560_103

def NamedBody560_105 : StackLang.HolProg 64 :=
.seq NamedBody560_87 NamedBody560_104

def NamedBody560_106 : StackLang.HolProg 64 :=
.seq NamedBody560_86 NamedBody560_105

def NamedBody560_107 : StackLang.HolProg 64 :=
.seq NamedBody560_85 NamedBody560_106

def NamedBody560_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody560_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody560_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody560_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody560_115 : StackLang.HolProg 64 :=
.seq NamedBody560_113 NamedBody560_114

def NamedBody560_116 : StackLang.HolProg 64 :=
.seq NamedBody560_112 NamedBody560_115

def NamedBody560_117 : StackLang.HolProg 64 :=
.seq NamedBody560_111 NamedBody560_116

def NamedBody560_118 : StackLang.HolProg 64 :=
.seq NamedBody560_110 NamedBody560_117

def NamedBody560_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_120 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody560_121 : StackLang.HolProg 64 :=
.seq NamedBody560_119 NamedBody560_120

def NamedBody560_122 : StackLang.HolProg 64 :=
.call (some (NamedBody560_118, 1, 560, 4)) (Sum.inl 475) (some (NamedBody560_121, 560, 5))

def NamedBody560_123 : StackLang.HolProg 64 :=
.seq NamedBody560_109 NamedBody560_122

def NamedBody560_124 : StackLang.HolProg 64 :=
.seq NamedBody560_108 NamedBody560_123

def NamedBody560_125 : StackLang.HolProg 64 :=
.seq NamedBody560_107 NamedBody560_124

def NamedBody560_126 : StackLang.HolProg 64 :=
.seq NamedBody560_78 NamedBody560_125

def NamedBody560_127 : StackLang.HolProg 64 :=
.seq NamedBody560_75 NamedBody560_126

def NamedBody560_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody560_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody560_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody560_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody560_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody560_133 : StackLang.HolProg 64 :=
.seq NamedBody560_131 NamedBody560_132

def NamedBody560_134 : StackLang.HolProg 64 :=
.seq NamedBody560_130 NamedBody560_133

def NamedBody560_135 : StackLang.HolProg 64 :=
.seq NamedBody560_129 NamedBody560_134

def NamedBody560_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1913#64)

def NamedBody560_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody560_139 : StackLang.HolProg 64 :=
.seq NamedBody560_137 NamedBody560_138

def NamedBody560_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody560_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody560_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody560_143 : StackLang.HolProg 64 :=
.seq NamedBody560_141 NamedBody560_142

def NamedBody560_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_145 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody560_143 NamedBody560_144

def NamedBody560_146 : StackLang.HolProg 64 :=
.seq NamedBody560_140 NamedBody560_145

def NamedBody560_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody560_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody560_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 560 7

def NamedBody560_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody560_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody560_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody560_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody560_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody560_156 : StackLang.HolProg 64 :=
.seq NamedBody560_154 NamedBody560_155

def NamedBody560_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody560_158 : StackLang.HolProg 64 :=
.seq NamedBody560_156 NamedBody560_157

def NamedBody560_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody560_160 : StackLang.HolProg 64 :=
.seq NamedBody560_158 NamedBody560_159

def NamedBody560_161 : StackLang.HolProg 64 :=
.seq NamedBody560_153 NamedBody560_160

def NamedBody560_162 : StackLang.HolProg 64 :=
.seq NamedBody560_152 NamedBody560_161

def NamedBody560_163 : StackLang.HolProg 64 :=
.seq NamedBody560_151 NamedBody560_162

def NamedBody560_164 : StackLang.HolProg 64 :=
.seq NamedBody560_150 NamedBody560_163

def NamedBody560_165 : StackLang.HolProg 64 :=
.seq NamedBody560_149 NamedBody560_164

def NamedBody560_166 : StackLang.HolProg 64 :=
.seq NamedBody560_148 NamedBody560_165

def NamedBody560_167 : StackLang.HolProg 64 :=
.seq NamedBody560_147 NamedBody560_166

def NamedBody560_168 : StackLang.HolProg 64 :=
.seq NamedBody560_146 NamedBody560_167

def NamedBody560_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody560_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody560_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody560_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody560_176 : StackLang.HolProg 64 :=
.seq NamedBody560_174 NamedBody560_175

def NamedBody560_177 : StackLang.HolProg 64 :=
.seq NamedBody560_173 NamedBody560_176

def NamedBody560_178 : StackLang.HolProg 64 :=
.seq NamedBody560_172 NamedBody560_177

def NamedBody560_179 : StackLang.HolProg 64 :=
.seq NamedBody560_171 NamedBody560_178

def NamedBody560_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_181 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody560_182 : StackLang.HolProg 64 :=
.seq NamedBody560_180 NamedBody560_181

def NamedBody560_183 : StackLang.HolProg 64 :=
.call (some (NamedBody560_179, 1, 560, 6)) (Sum.inl 475) (some (NamedBody560_182, 560, 7))

def NamedBody560_184 : StackLang.HolProg 64 :=
.seq NamedBody560_170 NamedBody560_183

def NamedBody560_185 : StackLang.HolProg 64 :=
.seq NamedBody560_169 NamedBody560_184

def NamedBody560_186 : StackLang.HolProg 64 :=
.seq NamedBody560_168 NamedBody560_185

def NamedBody560_187 : StackLang.HolProg 64 :=
.seq NamedBody560_139 NamedBody560_186

def NamedBody560_188 : StackLang.HolProg 64 :=
.seq NamedBody560_136 NamedBody560_187

def NamedBody560_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody560_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody560_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody560_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody560_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody560_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody560_195 : StackLang.HolProg 64 :=
.seq NamedBody560_193 NamedBody560_194

def NamedBody560_196 : StackLang.HolProg 64 :=
.seq NamedBody560_192 NamedBody560_195

def NamedBody560_197 : StackLang.HolProg 64 :=
.seq NamedBody560_191 NamedBody560_196

def NamedBody560_198 : StackLang.HolProg 64 :=
.seq NamedBody560_190 NamedBody560_197

def NamedBody560_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1914#64)

def NamedBody560_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody560_202 : StackLang.HolProg 64 :=
.seq NamedBody560_200 NamedBody560_201

def NamedBody560_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody560_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody560_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody560_206 : StackLang.HolProg 64 :=
.seq NamedBody560_204 NamedBody560_205

def NamedBody560_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_208 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody560_206 NamedBody560_207

def NamedBody560_209 : StackLang.HolProg 64 :=
.seq NamedBody560_203 NamedBody560_208

def NamedBody560_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody560_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody560_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 560 9

def NamedBody560_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody560_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody560_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody560_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody560_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody560_219 : StackLang.HolProg 64 :=
.seq NamedBody560_217 NamedBody560_218

def NamedBody560_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody560_221 : StackLang.HolProg 64 :=
.seq NamedBody560_219 NamedBody560_220

def NamedBody560_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody560_223 : StackLang.HolProg 64 :=
.seq NamedBody560_221 NamedBody560_222

def NamedBody560_224 : StackLang.HolProg 64 :=
.seq NamedBody560_216 NamedBody560_223

def NamedBody560_225 : StackLang.HolProg 64 :=
.seq NamedBody560_215 NamedBody560_224

def NamedBody560_226 : StackLang.HolProg 64 :=
.seq NamedBody560_214 NamedBody560_225

def NamedBody560_227 : StackLang.HolProg 64 :=
.seq NamedBody560_213 NamedBody560_226

def NamedBody560_228 : StackLang.HolProg 64 :=
.seq NamedBody560_212 NamedBody560_227

def NamedBody560_229 : StackLang.HolProg 64 :=
.seq NamedBody560_211 NamedBody560_228

def NamedBody560_230 : StackLang.HolProg 64 :=
.seq NamedBody560_210 NamedBody560_229

def NamedBody560_231 : StackLang.HolProg 64 :=
.seq NamedBody560_209 NamedBody560_230

def NamedBody560_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody560_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody560_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody560_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody560_239 : StackLang.HolProg 64 :=
.seq NamedBody560_237 NamedBody560_238

def NamedBody560_240 : StackLang.HolProg 64 :=
.seq NamedBody560_236 NamedBody560_239

def NamedBody560_241 : StackLang.HolProg 64 :=
.seq NamedBody560_235 NamedBody560_240

def NamedBody560_242 : StackLang.HolProg 64 :=
.seq NamedBody560_234 NamedBody560_241

def NamedBody560_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_244 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody560_245 : StackLang.HolProg 64 :=
.seq NamedBody560_243 NamedBody560_244

def NamedBody560_246 : StackLang.HolProg 64 :=
.call (some (NamedBody560_242, 1, 560, 8)) (Sum.inl 462) (some (NamedBody560_245, 560, 9))

def NamedBody560_247 : StackLang.HolProg 64 :=
.seq NamedBody560_233 NamedBody560_246

def NamedBody560_248 : StackLang.HolProg 64 :=
.seq NamedBody560_232 NamedBody560_247

def NamedBody560_249 : StackLang.HolProg 64 :=
.seq NamedBody560_231 NamedBody560_248

def NamedBody560_250 : StackLang.HolProg 64 :=
.seq NamedBody560_202 NamedBody560_249

def NamedBody560_251 : StackLang.HolProg 64 :=
.seq NamedBody560_199 NamedBody560_250

def NamedBody560_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody560_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody560_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody560_255 : StackLang.HolProg 64 :=
.seq NamedBody560_253 NamedBody560_254

def NamedBody560_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1915#64)

def NamedBody560_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody560_259 : StackLang.HolProg 64 :=
.seq NamedBody560_257 NamedBody560_258

def NamedBody560_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody560_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody560_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody560_263 : StackLang.HolProg 64 :=
.seq NamedBody560_261 NamedBody560_262

def NamedBody560_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_265 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody560_263 NamedBody560_264

def NamedBody560_266 : StackLang.HolProg 64 :=
.seq NamedBody560_260 NamedBody560_265

def NamedBody560_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody560_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody560_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 560 11

def NamedBody560_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody560_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody560_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody560_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody560_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody560_276 : StackLang.HolProg 64 :=
.seq NamedBody560_274 NamedBody560_275

def NamedBody560_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody560_278 : StackLang.HolProg 64 :=
.seq NamedBody560_276 NamedBody560_277

def NamedBody560_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody560_280 : StackLang.HolProg 64 :=
.seq NamedBody560_278 NamedBody560_279

def NamedBody560_281 : StackLang.HolProg 64 :=
.seq NamedBody560_273 NamedBody560_280

def NamedBody560_282 : StackLang.HolProg 64 :=
.seq NamedBody560_272 NamedBody560_281

def NamedBody560_283 : StackLang.HolProg 64 :=
.seq NamedBody560_271 NamedBody560_282

def NamedBody560_284 : StackLang.HolProg 64 :=
.seq NamedBody560_270 NamedBody560_283

def NamedBody560_285 : StackLang.HolProg 64 :=
.seq NamedBody560_269 NamedBody560_284

def NamedBody560_286 : StackLang.HolProg 64 :=
.seq NamedBody560_268 NamedBody560_285

def NamedBody560_287 : StackLang.HolProg 64 :=
.seq NamedBody560_267 NamedBody560_286

def NamedBody560_288 : StackLang.HolProg 64 :=
.seq NamedBody560_266 NamedBody560_287

def NamedBody560_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody560_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody560_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody560_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody560_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody560_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody560_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody560_299 : StackLang.HolProg 64 :=
.seq NamedBody560_297 NamedBody560_298

def NamedBody560_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody560_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody560_302 : StackLang.HolProg 64 :=
.seq NamedBody560_300 NamedBody560_301

def NamedBody560_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody560_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody560_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody560_306 : StackLang.HolProg 64 :=
.seq NamedBody560_304 NamedBody560_305

def NamedBody560_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody560_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody560_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody560_310 : StackLang.HolProg 64 :=
.seq NamedBody560_308 NamedBody560_309

def NamedBody560_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody560_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody560_313 : StackLang.HolProg 64 :=
.seq NamedBody560_311 NamedBody560_312

def NamedBody560_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody560_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody560_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody560_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody560_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody560_319 : StackLang.HolProg 64 :=
.seq NamedBody560_317 NamedBody560_318

def NamedBody560_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody560_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody560_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody560_323 : StackLang.HolProg 64 :=
.seq NamedBody560_321 NamedBody560_322

def NamedBody560_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody560_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody560_326 : StackLang.HolProg 64 :=
.seq NamedBody560_324 NamedBody560_325

def NamedBody560_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody560_328 : StackLang.HolProg 64 :=
.seq NamedBody560_326 NamedBody560_327

def NamedBody560_329 : StackLang.HolProg 64 :=
.seq NamedBody560_323 NamedBody560_328

def NamedBody560_330 : StackLang.HolProg 64 :=
.seq NamedBody560_320 NamedBody560_329

def NamedBody560_331 : StackLang.HolProg 64 :=
.seq NamedBody560_319 NamedBody560_330

def NamedBody560_332 : StackLang.HolProg 64 :=
.seq NamedBody560_316 NamedBody560_331

def NamedBody560_333 : StackLang.HolProg 64 :=
.seq NamedBody560_315 NamedBody560_332

def NamedBody560_334 : StackLang.HolProg 64 :=
.seq NamedBody560_314 NamedBody560_333

def NamedBody560_335 : StackLang.HolProg 64 :=
.seq NamedBody560_313 NamedBody560_334

def NamedBody560_336 : StackLang.HolProg 64 :=
.seq NamedBody560_310 NamedBody560_335

def NamedBody560_337 : StackLang.HolProg 64 :=
.seq NamedBody560_307 NamedBody560_336

def NamedBody560_338 : StackLang.HolProg 64 :=
.seq NamedBody560_306 NamedBody560_337

def NamedBody560_339 : StackLang.HolProg 64 :=
.seq NamedBody560_303 NamedBody560_338

def NamedBody560_340 : StackLang.HolProg 64 :=
.seq NamedBody560_302 NamedBody560_339

def NamedBody560_341 : StackLang.HolProg 64 :=
.seq NamedBody560_299 NamedBody560_340

def NamedBody560_342 : StackLang.HolProg 64 :=
.seq NamedBody560_296 NamedBody560_341

def NamedBody560_343 : StackLang.HolProg 64 :=
.seq NamedBody560_295 NamedBody560_342

def NamedBody560_344 : StackLang.HolProg 64 :=
.seq NamedBody560_294 NamedBody560_343

def NamedBody560_345 : StackLang.HolProg 64 :=
.seq NamedBody560_293 NamedBody560_344

def NamedBody560_346 : StackLang.HolProg 64 :=
.seq NamedBody560_292 NamedBody560_345

def NamedBody560_347 : StackLang.HolProg 64 :=
.seq NamedBody560_291 NamedBody560_346

def NamedBody560_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody560_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody560_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody560_351 : StackLang.HolProg 64 :=
.seq NamedBody560_349 NamedBody560_350

def NamedBody560_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody560_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody560_354 : StackLang.HolProg 64 :=
.seq NamedBody560_352 NamedBody560_353

def NamedBody560_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody560_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody560_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody560_358 : StackLang.HolProg 64 :=
.seq NamedBody560_356 NamedBody560_357

def NamedBody560_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody560_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody560_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody560_362 : StackLang.HolProg 64 :=
.seq NamedBody560_360 NamedBody560_361

def NamedBody560_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody560_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody560_365 : StackLang.HolProg 64 :=
.seq NamedBody560_363 NamedBody560_364

def NamedBody560_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody560_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody560_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody560_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody560_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody560_371 : StackLang.HolProg 64 :=
.seq NamedBody560_369 NamedBody560_370

def NamedBody560_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody560_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody560_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody560_375 : StackLang.HolProg 64 :=
.seq NamedBody560_373 NamedBody560_374

def NamedBody560_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody560_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody560_378 : StackLang.HolProg 64 :=
.seq NamedBody560_376 NamedBody560_377

def NamedBody560_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody560_380 : StackLang.HolProg 64 :=
.seq NamedBody560_378 NamedBody560_379

def NamedBody560_381 : StackLang.HolProg 64 :=
.seq NamedBody560_375 NamedBody560_380

def NamedBody560_382 : StackLang.HolProg 64 :=
.seq NamedBody560_372 NamedBody560_381

def NamedBody560_383 : StackLang.HolProg 64 :=
.seq NamedBody560_371 NamedBody560_382

def NamedBody560_384 : StackLang.HolProg 64 :=
.seq NamedBody560_368 NamedBody560_383

def NamedBody560_385 : StackLang.HolProg 64 :=
.seq NamedBody560_367 NamedBody560_384

def NamedBody560_386 : StackLang.HolProg 64 :=
.seq NamedBody560_366 NamedBody560_385

def NamedBody560_387 : StackLang.HolProg 64 :=
.seq NamedBody560_365 NamedBody560_386

def NamedBody560_388 : StackLang.HolProg 64 :=
.seq NamedBody560_362 NamedBody560_387

def NamedBody560_389 : StackLang.HolProg 64 :=
.seq NamedBody560_359 NamedBody560_388

def NamedBody560_390 : StackLang.HolProg 64 :=
.seq NamedBody560_358 NamedBody560_389

def NamedBody560_391 : StackLang.HolProg 64 :=
.seq NamedBody560_355 NamedBody560_390

def NamedBody560_392 : StackLang.HolProg 64 :=
.seq NamedBody560_354 NamedBody560_391

def NamedBody560_393 : StackLang.HolProg 64 :=
.seq NamedBody560_351 NamedBody560_392

def NamedBody560_394 : StackLang.HolProg 64 :=
.seq NamedBody560_348 NamedBody560_393

def NamedBody560_395 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody560_396 : StackLang.HolProg 64 :=
.seq NamedBody560_394 NamedBody560_395

def NamedBody560_397 : StackLang.HolProg 64 :=
.call (some (NamedBody560_347, 1, 560, 10)) (Sum.inl 465) (some (NamedBody560_396, 560, 11))

def NamedBody560_398 : StackLang.HolProg 64 :=
.seq NamedBody560_290 NamedBody560_397

def NamedBody560_399 : StackLang.HolProg 64 :=
.seq NamedBody560_289 NamedBody560_398

def NamedBody560_400 : StackLang.HolProg 64 :=
.seq NamedBody560_288 NamedBody560_399

def NamedBody560_401 : StackLang.HolProg 64 :=
.seq NamedBody560_259 NamedBody560_400

def NamedBody560_402 : StackLang.HolProg 64 :=
.seq NamedBody560_256 NamedBody560_401

def NamedBody560_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody560_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody560_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody560_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody560_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody560_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody560_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody560_410 : StackLang.HolProg 64 :=
.seq NamedBody560_408 NamedBody560_409

def NamedBody560_411 : StackLang.HolProg 64 :=
.seq NamedBody560_407 NamedBody560_410

def NamedBody560_412 : StackLang.HolProg 64 :=
.seq NamedBody560_406 NamedBody560_411

def NamedBody560_413 : StackLang.HolProg 64 :=
.seq NamedBody560_405 NamedBody560_412

def NamedBody560_414 : StackLang.HolProg 64 :=
.seq NamedBody560_404 NamedBody560_413

def NamedBody560_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1916#64)

def NamedBody560_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody560_418 : StackLang.HolProg 64 :=
.seq NamedBody560_416 NamedBody560_417

def NamedBody560_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody560_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody560_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody560_422 : StackLang.HolProg 64 :=
.seq NamedBody560_420 NamedBody560_421

def NamedBody560_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_424 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody560_422 NamedBody560_423

def NamedBody560_425 : StackLang.HolProg 64 :=
.seq NamedBody560_419 NamedBody560_424

def NamedBody560_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody560_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody560_428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 560 13

def NamedBody560_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody560_430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody560_431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody560_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody560_434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody560_435 : StackLang.HolProg 64 :=
.seq NamedBody560_433 NamedBody560_434

def NamedBody560_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody560_437 : StackLang.HolProg 64 :=
.seq NamedBody560_435 NamedBody560_436

def NamedBody560_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody560_439 : StackLang.HolProg 64 :=
.seq NamedBody560_437 NamedBody560_438

def NamedBody560_440 : StackLang.HolProg 64 :=
.seq NamedBody560_432 NamedBody560_439

def NamedBody560_441 : StackLang.HolProg 64 :=
.seq NamedBody560_431 NamedBody560_440

def NamedBody560_442 : StackLang.HolProg 64 :=
.seq NamedBody560_430 NamedBody560_441

def NamedBody560_443 : StackLang.HolProg 64 :=
.seq NamedBody560_429 NamedBody560_442

def NamedBody560_444 : StackLang.HolProg 64 :=
.seq NamedBody560_428 NamedBody560_443

def NamedBody560_445 : StackLang.HolProg 64 :=
.seq NamedBody560_427 NamedBody560_444

def NamedBody560_446 : StackLang.HolProg 64 :=
.seq NamedBody560_426 NamedBody560_445

def NamedBody560_447 : StackLang.HolProg 64 :=
.seq NamedBody560_425 NamedBody560_446

def NamedBody560_448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_450 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody560_452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody560_453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody560_454 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody560_455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody560_456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody560_457 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody560_458 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody560_459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody560_460 : StackLang.HolProg 64 :=
.seq NamedBody560_458 NamedBody560_459

def NamedBody560_461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody560_462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody560_463 : StackLang.HolProg 64 :=
.seq NamedBody560_461 NamedBody560_462

def NamedBody560_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody560_465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody560_466 : StackLang.HolProg 64 :=
.seq NamedBody560_464 NamedBody560_465

def NamedBody560_467 : StackLang.HolProg 64 :=
.seq NamedBody560_463 NamedBody560_466

def NamedBody560_468 : StackLang.HolProg 64 :=
.seq NamedBody560_460 NamedBody560_467

def NamedBody560_469 : StackLang.HolProg 64 :=
.seq NamedBody560_457 NamedBody560_468

def NamedBody560_470 : StackLang.HolProg 64 :=
.seq NamedBody560_456 NamedBody560_469

def NamedBody560_471 : StackLang.HolProg 64 :=
.seq NamedBody560_455 NamedBody560_470

def NamedBody560_472 : StackLang.HolProg 64 :=
.seq NamedBody560_454 NamedBody560_471

def NamedBody560_473 : StackLang.HolProg 64 :=
.seq NamedBody560_453 NamedBody560_472

def NamedBody560_474 : StackLang.HolProg 64 :=
.seq NamedBody560_452 NamedBody560_473

def NamedBody560_475 : StackLang.HolProg 64 :=
.seq NamedBody560_451 NamedBody560_474

def NamedBody560_476 : StackLang.HolProg 64 :=
.seq NamedBody560_450 NamedBody560_475

def NamedBody560_477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody560_478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody560_479 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody560_480 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody560_481 : StackLang.HolProg 64 :=
.seq NamedBody560_479 NamedBody560_480

def NamedBody560_482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody560_483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody560_484 : StackLang.HolProg 64 :=
.seq NamedBody560_482 NamedBody560_483

def NamedBody560_485 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody560_486 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody560_487 : StackLang.HolProg 64 :=
.seq NamedBody560_485 NamedBody560_486

def NamedBody560_488 : StackLang.HolProg 64 :=
.seq NamedBody560_484 NamedBody560_487

def NamedBody560_489 : StackLang.HolProg 64 :=
.seq NamedBody560_481 NamedBody560_488

def NamedBody560_490 : StackLang.HolProg 64 :=
.seq NamedBody560_478 NamedBody560_489

def NamedBody560_491 : StackLang.HolProg 64 :=
.seq NamedBody560_477 NamedBody560_490

def NamedBody560_492 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody560_493 : StackLang.HolProg 64 :=
.seq NamedBody560_491 NamedBody560_492

def NamedBody560_494 : StackLang.HolProg 64 :=
.call (some (NamedBody560_476, 1, 560, 12)) (Sum.inl 480) (some (NamedBody560_493, 560, 13))

def NamedBody560_495 : StackLang.HolProg 64 :=
.seq NamedBody560_449 NamedBody560_494

def NamedBody560_496 : StackLang.HolProg 64 :=
.seq NamedBody560_448 NamedBody560_495

def NamedBody560_497 : StackLang.HolProg 64 :=
.seq NamedBody560_447 NamedBody560_496

def NamedBody560_498 : StackLang.HolProg 64 :=
.seq NamedBody560_418 NamedBody560_497

def NamedBody560_499 : StackLang.HolProg 64 :=
.seq NamedBody560_415 NamedBody560_498

def NamedBody560_500 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody560_501 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_502 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 3#64)

def NamedBody560_503 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 12 1 1 11))

def NamedBody560_505 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_506 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody560_507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody560_508 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody560_509 : StackLang.HolProg 64 :=
.seq NamedBody560_507 NamedBody560_508

def NamedBody560_510 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_511 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1917#64)

def NamedBody560_512 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody560_513 : StackLang.HolProg 64 :=
.seq NamedBody560_511 NamedBody560_512

def NamedBody560_514 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody560_515 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody560_516 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody560_517 : StackLang.HolProg 64 :=
.seq NamedBody560_515 NamedBody560_516

def NamedBody560_518 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_519 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody560_517 NamedBody560_518

def NamedBody560_520 : StackLang.HolProg 64 :=
.seq NamedBody560_514 NamedBody560_519

def NamedBody560_521 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody560_522 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody560_523 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 560 15

def NamedBody560_524 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody560_525 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody560_526 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody560_527 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_528 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody560_529 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody560_530 : StackLang.HolProg 64 :=
.seq NamedBody560_528 NamedBody560_529

def NamedBody560_531 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody560_532 : StackLang.HolProg 64 :=
.seq NamedBody560_530 NamedBody560_531

def NamedBody560_533 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody560_534 : StackLang.HolProg 64 :=
.seq NamedBody560_532 NamedBody560_533

def NamedBody560_535 : StackLang.HolProg 64 :=
.seq NamedBody560_527 NamedBody560_534

def NamedBody560_536 : StackLang.HolProg 64 :=
.seq NamedBody560_526 NamedBody560_535

def NamedBody560_537 : StackLang.HolProg 64 :=
.seq NamedBody560_525 NamedBody560_536

def NamedBody560_538 : StackLang.HolProg 64 :=
.seq NamedBody560_524 NamedBody560_537

def NamedBody560_539 : StackLang.HolProg 64 :=
.seq NamedBody560_523 NamedBody560_538

def NamedBody560_540 : StackLang.HolProg 64 :=
.seq NamedBody560_522 NamedBody560_539

def NamedBody560_541 : StackLang.HolProg 64 :=
.seq NamedBody560_521 NamedBody560_540

def NamedBody560_542 : StackLang.HolProg 64 :=
.seq NamedBody560_520 NamedBody560_541

def NamedBody560_543 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_544 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_545 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_546 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody560_547 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody560_548 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody560_549 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody560_550 : StackLang.HolProg 64 :=
.seq NamedBody560_548 NamedBody560_549

def NamedBody560_551 : StackLang.HolProg 64 :=
.seq NamedBody560_547 NamedBody560_550

def NamedBody560_552 : StackLang.HolProg 64 :=
.seq NamedBody560_546 NamedBody560_551

def NamedBody560_553 : StackLang.HolProg 64 :=
.seq NamedBody560_545 NamedBody560_552

def NamedBody560_554 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_555 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody560_556 : StackLang.HolProg 64 :=
.seq NamedBody560_554 NamedBody560_555

def NamedBody560_557 : StackLang.HolProg 64 :=
.call (some (NamedBody560_553, 1, 560, 14)) (Sum.inl 463) (some (NamedBody560_556, 560, 15))

def NamedBody560_558 : StackLang.HolProg 64 :=
.seq NamedBody560_544 NamedBody560_557

def NamedBody560_559 : StackLang.HolProg 64 :=
.seq NamedBody560_543 NamedBody560_558

def NamedBody560_560 : StackLang.HolProg 64 :=
.seq NamedBody560_542 NamedBody560_559

def NamedBody560_561 : StackLang.HolProg 64 :=
.seq NamedBody560_513 NamedBody560_560

def NamedBody560_562 : StackLang.HolProg 64 :=
.seq NamedBody560_510 NamedBody560_561

def NamedBody560_563 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody560_564 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody560_565 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_566 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1918#64)

def NamedBody560_567 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody560_568 : StackLang.HolProg 64 :=
.seq NamedBody560_566 NamedBody560_567

def NamedBody560_569 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody560_570 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody560_571 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody560_572 : StackLang.HolProg 64 :=
.seq NamedBody560_570 NamedBody560_571

def NamedBody560_573 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_574 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody560_572 NamedBody560_573

def NamedBody560_575 : StackLang.HolProg 64 :=
.seq NamedBody560_569 NamedBody560_574

def NamedBody560_576 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody560_577 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody560_578 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 560 17

def NamedBody560_579 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody560_580 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody560_581 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody560_582 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_583 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody560_584 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody560_585 : StackLang.HolProg 64 :=
.seq NamedBody560_583 NamedBody560_584

def NamedBody560_586 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody560_587 : StackLang.HolProg 64 :=
.seq NamedBody560_585 NamedBody560_586

def NamedBody560_588 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody560_589 : StackLang.HolProg 64 :=
.seq NamedBody560_587 NamedBody560_588

def NamedBody560_590 : StackLang.HolProg 64 :=
.seq NamedBody560_582 NamedBody560_589

def NamedBody560_591 : StackLang.HolProg 64 :=
.seq NamedBody560_581 NamedBody560_590

def NamedBody560_592 : StackLang.HolProg 64 :=
.seq NamedBody560_580 NamedBody560_591

def NamedBody560_593 : StackLang.HolProg 64 :=
.seq NamedBody560_579 NamedBody560_592

def NamedBody560_594 : StackLang.HolProg 64 :=
.seq NamedBody560_578 NamedBody560_593

def NamedBody560_595 : StackLang.HolProg 64 :=
.seq NamedBody560_577 NamedBody560_594

def NamedBody560_596 : StackLang.HolProg 64 :=
.seq NamedBody560_576 NamedBody560_595

def NamedBody560_597 : StackLang.HolProg 64 :=
.seq NamedBody560_575 NamedBody560_596

def NamedBody560_598 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_599 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_600 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_601 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody560_602 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody560_603 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody560_604 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody560_605 : StackLang.HolProg 64 :=
.seq NamedBody560_603 NamedBody560_604

def NamedBody560_606 : StackLang.HolProg 64 :=
.seq NamedBody560_602 NamedBody560_605

def NamedBody560_607 : StackLang.HolProg 64 :=
.seq NamedBody560_601 NamedBody560_606

def NamedBody560_608 : StackLang.HolProg 64 :=
.seq NamedBody560_600 NamedBody560_607

def NamedBody560_609 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody560_610 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody560_611 : StackLang.HolProg 64 :=
.seq NamedBody560_609 NamedBody560_610

def NamedBody560_612 : StackLang.HolProg 64 :=
.call (some (NamedBody560_608, 1, 560, 16)) (Sum.inl 470) (some (NamedBody560_611, 560, 17))

def NamedBody560_613 : StackLang.HolProg 64 :=
.seq NamedBody560_599 NamedBody560_612

def NamedBody560_614 : StackLang.HolProg 64 :=
.seq NamedBody560_598 NamedBody560_613

def NamedBody560_615 : StackLang.HolProg 64 :=
.seq NamedBody560_597 NamedBody560_614

def NamedBody560_616 : StackLang.HolProg 64 :=
.seq NamedBody560_568 NamedBody560_615

def NamedBody560_617 : StackLang.HolProg 64 :=
.seq NamedBody560_565 NamedBody560_616

def NamedBody560_618 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody560_619 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody560_620 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_621 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1919#64)

def NamedBody560_622 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody560_623 : StackLang.HolProg 64 :=
.seq NamedBody560_621 NamedBody560_622

def NamedBody560_624 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody560_625 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody560_626 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody560_627 : StackLang.HolProg 64 :=
.seq NamedBody560_625 NamedBody560_626

def NamedBody560_628 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_629 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody560_627 NamedBody560_628

def NamedBody560_630 : StackLang.HolProg 64 :=
.seq NamedBody560_624 NamedBody560_629

def NamedBody560_631 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody560_632 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody560_633 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 560 19

def NamedBody560_634 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody560_635 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody560_636 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody560_637 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_638 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody560_639 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody560_640 : StackLang.HolProg 64 :=
.seq NamedBody560_638 NamedBody560_639

def NamedBody560_641 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody560_642 : StackLang.HolProg 64 :=
.seq NamedBody560_640 NamedBody560_641

def NamedBody560_643 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody560_644 : StackLang.HolProg 64 :=
.seq NamedBody560_642 NamedBody560_643

def NamedBody560_645 : StackLang.HolProg 64 :=
.seq NamedBody560_637 NamedBody560_644

def NamedBody560_646 : StackLang.HolProg 64 :=
.seq NamedBody560_636 NamedBody560_645

def NamedBody560_647 : StackLang.HolProg 64 :=
.seq NamedBody560_635 NamedBody560_646

def NamedBody560_648 : StackLang.HolProg 64 :=
.seq NamedBody560_634 NamedBody560_647

def NamedBody560_649 : StackLang.HolProg 64 :=
.seq NamedBody560_633 NamedBody560_648

def NamedBody560_650 : StackLang.HolProg 64 :=
.seq NamedBody560_632 NamedBody560_649

def NamedBody560_651 : StackLang.HolProg 64 :=
.seq NamedBody560_631 NamedBody560_650

def NamedBody560_652 : StackLang.HolProg 64 :=
.seq NamedBody560_630 NamedBody560_651

def NamedBody560_653 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_654 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_655 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_656 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody560_657 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody560_658 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody560_659 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody560_660 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody560_661 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody560_662 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody560_663 : StackLang.HolProg 64 :=
.seq NamedBody560_661 NamedBody560_662

def NamedBody560_664 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody560_665 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody560_666 : StackLang.HolProg 64 :=
.seq NamedBody560_664 NamedBody560_665

def NamedBody560_667 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody560_668 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody560_669 : StackLang.HolProg 64 :=
.seq NamedBody560_667 NamedBody560_668

def NamedBody560_670 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody560_671 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody560_672 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody560_673 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody560_674 : StackLang.HolProg 64 :=
.seq NamedBody560_672 NamedBody560_673

def NamedBody560_675 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody560_676 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody560_677 : StackLang.HolProg 64 :=
.seq NamedBody560_675 NamedBody560_676

def NamedBody560_678 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody560_679 : StackLang.HolProg 64 :=
.seq NamedBody560_677 NamedBody560_678

def NamedBody560_680 : StackLang.HolProg 64 :=
.seq NamedBody560_674 NamedBody560_679

def NamedBody560_681 : StackLang.HolProg 64 :=
.seq NamedBody560_671 NamedBody560_680

def NamedBody560_682 : StackLang.HolProg 64 :=
.seq NamedBody560_670 NamedBody560_681

def NamedBody560_683 : StackLang.HolProg 64 :=
.seq NamedBody560_669 NamedBody560_682

def NamedBody560_684 : StackLang.HolProg 64 :=
.seq NamedBody560_666 NamedBody560_683

def NamedBody560_685 : StackLang.HolProg 64 :=
.seq NamedBody560_663 NamedBody560_684

def NamedBody560_686 : StackLang.HolProg 64 :=
.seq NamedBody560_660 NamedBody560_685

def NamedBody560_687 : StackLang.HolProg 64 :=
.seq NamedBody560_659 NamedBody560_686

def NamedBody560_688 : StackLang.HolProg 64 :=
.seq NamedBody560_658 NamedBody560_687

def NamedBody560_689 : StackLang.HolProg 64 :=
.seq NamedBody560_657 NamedBody560_688

def NamedBody560_690 : StackLang.HolProg 64 :=
.seq NamedBody560_656 NamedBody560_689

def NamedBody560_691 : StackLang.HolProg 64 :=
.seq NamedBody560_655 NamedBody560_690

def NamedBody560_692 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody560_693 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody560_694 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody560_695 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody560_696 : StackLang.HolProg 64 :=
.seq NamedBody560_694 NamedBody560_695

def NamedBody560_697 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody560_698 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody560_699 : StackLang.HolProg 64 :=
.seq NamedBody560_697 NamedBody560_698

def NamedBody560_700 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody560_701 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody560_702 : StackLang.HolProg 64 :=
.seq NamedBody560_700 NamedBody560_701

def NamedBody560_703 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody560_704 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody560_705 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody560_706 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody560_707 : StackLang.HolProg 64 :=
.seq NamedBody560_705 NamedBody560_706

def NamedBody560_708 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody560_709 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody560_710 : StackLang.HolProg 64 :=
.seq NamedBody560_708 NamedBody560_709

def NamedBody560_711 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody560_712 : StackLang.HolProg 64 :=
.seq NamedBody560_710 NamedBody560_711

def NamedBody560_713 : StackLang.HolProg 64 :=
.seq NamedBody560_707 NamedBody560_712

def NamedBody560_714 : StackLang.HolProg 64 :=
.seq NamedBody560_704 NamedBody560_713

def NamedBody560_715 : StackLang.HolProg 64 :=
.seq NamedBody560_703 NamedBody560_714

def NamedBody560_716 : StackLang.HolProg 64 :=
.seq NamedBody560_702 NamedBody560_715

def NamedBody560_717 : StackLang.HolProg 64 :=
.seq NamedBody560_699 NamedBody560_716

def NamedBody560_718 : StackLang.HolProg 64 :=
.seq NamedBody560_696 NamedBody560_717

def NamedBody560_719 : StackLang.HolProg 64 :=
.seq NamedBody560_693 NamedBody560_718

def NamedBody560_720 : StackLang.HolProg 64 :=
.seq NamedBody560_692 NamedBody560_719

def NamedBody560_721 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody560_722 : StackLang.HolProg 64 :=
.seq NamedBody560_720 NamedBody560_721

def NamedBody560_723 : StackLang.HolProg 64 :=
.call (some (NamedBody560_691, 1, 560, 18)) (Sum.inl 482) (some (NamedBody560_722, 560, 19))

def NamedBody560_724 : StackLang.HolProg 64 :=
.seq NamedBody560_654 NamedBody560_723

def NamedBody560_725 : StackLang.HolProg 64 :=
.seq NamedBody560_653 NamedBody560_724

def NamedBody560_726 : StackLang.HolProg 64 :=
.seq NamedBody560_652 NamedBody560_725

def NamedBody560_727 : StackLang.HolProg 64 :=
.seq NamedBody560_623 NamedBody560_726

def NamedBody560_728 : StackLang.HolProg 64 :=
.seq NamedBody560_620 NamedBody560_727

def NamedBody560_729 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody560_730 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_731 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody560_732 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody560_733 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody560_734 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody560_735 : StackLang.HolProg 64 :=
.seq NamedBody560_733 NamedBody560_734

def NamedBody560_736 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_737 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1920#64)

def NamedBody560_738 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody560_739 : StackLang.HolProg 64 :=
.seq NamedBody560_737 NamedBody560_738

def NamedBody560_740 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody560_741 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody560_742 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody560_743 : StackLang.HolProg 64 :=
.seq NamedBody560_741 NamedBody560_742

def NamedBody560_744 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_745 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody560_743 NamedBody560_744

def NamedBody560_746 : StackLang.HolProg 64 :=
.seq NamedBody560_740 NamedBody560_745

def NamedBody560_747 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody560_748 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody560_749 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 560 21

def NamedBody560_750 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody560_751 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody560_752 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody560_753 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_754 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody560_755 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody560_756 : StackLang.HolProg 64 :=
.seq NamedBody560_754 NamedBody560_755

def NamedBody560_757 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody560_758 : StackLang.HolProg 64 :=
.seq NamedBody560_756 NamedBody560_757

def NamedBody560_759 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody560_760 : StackLang.HolProg 64 :=
.seq NamedBody560_758 NamedBody560_759

def NamedBody560_761 : StackLang.HolProg 64 :=
.seq NamedBody560_753 NamedBody560_760

def NamedBody560_762 : StackLang.HolProg 64 :=
.seq NamedBody560_752 NamedBody560_761

def NamedBody560_763 : StackLang.HolProg 64 :=
.seq NamedBody560_751 NamedBody560_762

def NamedBody560_764 : StackLang.HolProg 64 :=
.seq NamedBody560_750 NamedBody560_763

def NamedBody560_765 : StackLang.HolProg 64 :=
.seq NamedBody560_749 NamedBody560_764

def NamedBody560_766 : StackLang.HolProg 64 :=
.seq NamedBody560_748 NamedBody560_765

def NamedBody560_767 : StackLang.HolProg 64 :=
.seq NamedBody560_747 NamedBody560_766

def NamedBody560_768 : StackLang.HolProg 64 :=
.seq NamedBody560_746 NamedBody560_767

def NamedBody560_769 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_770 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_771 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_772 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody560_773 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody560_774 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody560_775 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody560_776 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody560_777 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody560_778 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody560_779 : StackLang.HolProg 64 :=
.seq NamedBody560_777 NamedBody560_778

def NamedBody560_780 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody560_781 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody560_782 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody560_783 : StackLang.HolProg 64 :=
.seq NamedBody560_781 NamedBody560_782

def NamedBody560_784 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody560_785 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody560_786 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody560_787 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody560_788 : StackLang.HolProg 64 :=
.seq NamedBody560_786 NamedBody560_787

def NamedBody560_789 : StackLang.HolProg 64 :=
.seq NamedBody560_785 NamedBody560_788

def NamedBody560_790 : StackLang.HolProg 64 :=
.seq NamedBody560_784 NamedBody560_789

def NamedBody560_791 : StackLang.HolProg 64 :=
.seq NamedBody560_783 NamedBody560_790

def NamedBody560_792 : StackLang.HolProg 64 :=
.seq NamedBody560_780 NamedBody560_791

def NamedBody560_793 : StackLang.HolProg 64 :=
.seq NamedBody560_779 NamedBody560_792

def NamedBody560_794 : StackLang.HolProg 64 :=
.seq NamedBody560_776 NamedBody560_793

def NamedBody560_795 : StackLang.HolProg 64 :=
.seq NamedBody560_775 NamedBody560_794

def NamedBody560_796 : StackLang.HolProg 64 :=
.seq NamedBody560_774 NamedBody560_795

def NamedBody560_797 : StackLang.HolProg 64 :=
.seq NamedBody560_773 NamedBody560_796

def NamedBody560_798 : StackLang.HolProg 64 :=
.seq NamedBody560_772 NamedBody560_797

def NamedBody560_799 : StackLang.HolProg 64 :=
.seq NamedBody560_771 NamedBody560_798

def NamedBody560_800 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody560_801 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody560_802 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody560_803 : StackLang.HolProg 64 :=
.seq NamedBody560_801 NamedBody560_802

def NamedBody560_804 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody560_805 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody560_806 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody560_807 : StackLang.HolProg 64 :=
.seq NamedBody560_805 NamedBody560_806

def NamedBody560_808 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody560_809 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody560_810 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody560_811 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody560_812 : StackLang.HolProg 64 :=
.seq NamedBody560_810 NamedBody560_811

def NamedBody560_813 : StackLang.HolProg 64 :=
.seq NamedBody560_809 NamedBody560_812

def NamedBody560_814 : StackLang.HolProg 64 :=
.seq NamedBody560_808 NamedBody560_813

def NamedBody560_815 : StackLang.HolProg 64 :=
.seq NamedBody560_807 NamedBody560_814

def NamedBody560_816 : StackLang.HolProg 64 :=
.seq NamedBody560_804 NamedBody560_815

def NamedBody560_817 : StackLang.HolProg 64 :=
.seq NamedBody560_803 NamedBody560_816

def NamedBody560_818 : StackLang.HolProg 64 :=
.seq NamedBody560_800 NamedBody560_817

def NamedBody560_819 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody560_820 : StackLang.HolProg 64 :=
.seq NamedBody560_818 NamedBody560_819

def NamedBody560_821 : StackLang.HolProg 64 :=
.call (some (NamedBody560_799, 1, 560, 20)) (Sum.inl 462) (some (NamedBody560_820, 560, 21))

def NamedBody560_822 : StackLang.HolProg 64 :=
.seq NamedBody560_770 NamedBody560_821

def NamedBody560_823 : StackLang.HolProg 64 :=
.seq NamedBody560_769 NamedBody560_822

def NamedBody560_824 : StackLang.HolProg 64 :=
.seq NamedBody560_768 NamedBody560_823

def NamedBody560_825 : StackLang.HolProg 64 :=
.seq NamedBody560_739 NamedBody560_824

def NamedBody560_826 : StackLang.HolProg 64 :=
.seq NamedBody560_736 NamedBody560_825

def NamedBody560_827 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody560_828 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody560_829 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody560_830 : StackLang.HolProg 64 :=
.seq NamedBody560_828 NamedBody560_829

def NamedBody560_831 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_832 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1921#64)

def NamedBody560_833 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody560_834 : StackLang.HolProg 64 :=
.seq NamedBody560_832 NamedBody560_833

def NamedBody560_835 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody560_836 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody560_837 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody560_838 : StackLang.HolProg 64 :=
.seq NamedBody560_836 NamedBody560_837

def NamedBody560_839 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_840 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody560_838 NamedBody560_839

def NamedBody560_841 : StackLang.HolProg 64 :=
.seq NamedBody560_835 NamedBody560_840

def NamedBody560_842 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody560_843 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody560_844 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 560 23

def NamedBody560_845 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody560_846 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody560_847 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody560_848 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_849 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody560_850 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody560_851 : StackLang.HolProg 64 :=
.seq NamedBody560_849 NamedBody560_850

def NamedBody560_852 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody560_853 : StackLang.HolProg 64 :=
.seq NamedBody560_851 NamedBody560_852

def NamedBody560_854 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody560_855 : StackLang.HolProg 64 :=
.seq NamedBody560_853 NamedBody560_854

def NamedBody560_856 : StackLang.HolProg 64 :=
.seq NamedBody560_848 NamedBody560_855

def NamedBody560_857 : StackLang.HolProg 64 :=
.seq NamedBody560_847 NamedBody560_856

def NamedBody560_858 : StackLang.HolProg 64 :=
.seq NamedBody560_846 NamedBody560_857

def NamedBody560_859 : StackLang.HolProg 64 :=
.seq NamedBody560_845 NamedBody560_858

def NamedBody560_860 : StackLang.HolProg 64 :=
.seq NamedBody560_844 NamedBody560_859

def NamedBody560_861 : StackLang.HolProg 64 :=
.seq NamedBody560_843 NamedBody560_860

def NamedBody560_862 : StackLang.HolProg 64 :=
.seq NamedBody560_842 NamedBody560_861

def NamedBody560_863 : StackLang.HolProg 64 :=
.seq NamedBody560_841 NamedBody560_862

def NamedBody560_864 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_865 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_866 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_867 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody560_868 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody560_869 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody560_870 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody560_871 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody560_872 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody560_873 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody560_874 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody560_875 : StackLang.HolProg 64 :=
.seq NamedBody560_873 NamedBody560_874

def NamedBody560_876 : StackLang.HolProg 64 :=
.seq NamedBody560_872 NamedBody560_875

def NamedBody560_877 : StackLang.HolProg 64 :=
.seq NamedBody560_871 NamedBody560_876

def NamedBody560_878 : StackLang.HolProg 64 :=
.seq NamedBody560_870 NamedBody560_877

def NamedBody560_879 : StackLang.HolProg 64 :=
.seq NamedBody560_869 NamedBody560_878

def NamedBody560_880 : StackLang.HolProg 64 :=
.seq NamedBody560_868 NamedBody560_879

def NamedBody560_881 : StackLang.HolProg 64 :=
.seq NamedBody560_867 NamedBody560_880

def NamedBody560_882 : StackLang.HolProg 64 :=
.seq NamedBody560_866 NamedBody560_881

def NamedBody560_883 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody560_884 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody560_885 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody560_886 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody560_887 : StackLang.HolProg 64 :=
.seq NamedBody560_885 NamedBody560_886

def NamedBody560_888 : StackLang.HolProg 64 :=
.seq NamedBody560_884 NamedBody560_887

def NamedBody560_889 : StackLang.HolProg 64 :=
.seq NamedBody560_883 NamedBody560_888

def NamedBody560_890 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody560_891 : StackLang.HolProg 64 :=
.seq NamedBody560_889 NamedBody560_890

def NamedBody560_892 : StackLang.HolProg 64 :=
.call (some (NamedBody560_882, 1, 560, 22)) (Sum.inl 462) (some (NamedBody560_891, 560, 23))

def NamedBody560_893 : StackLang.HolProg 64 :=
.seq NamedBody560_865 NamedBody560_892

def NamedBody560_894 : StackLang.HolProg 64 :=
.seq NamedBody560_864 NamedBody560_893

def NamedBody560_895 : StackLang.HolProg 64 :=
.seq NamedBody560_863 NamedBody560_894

def NamedBody560_896 : StackLang.HolProg 64 :=
.seq NamedBody560_834 NamedBody560_895

def NamedBody560_897 : StackLang.HolProg 64 :=
.seq NamedBody560_831 NamedBody560_896

def NamedBody560_898 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody560_899 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody560_900 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody560_901 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody560_902 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody560_903 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 18446744073709551360#64))

def NamedBody560_904 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 24#64))

def NamedBody560_905 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody560_906 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_907 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_908 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1922#64)

def NamedBody560_909 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody560_910 : StackLang.HolProg 64 :=
.seq NamedBody560_908 NamedBody560_909

def NamedBody560_911 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody560_912 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody560_913 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody560_914 : StackLang.HolProg 64 :=
.seq NamedBody560_912 NamedBody560_913

def NamedBody560_915 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_916 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody560_914 NamedBody560_915

def NamedBody560_917 : StackLang.HolProg 64 :=
.seq NamedBody560_911 NamedBody560_916

def NamedBody560_918 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody560_919 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody560_920 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 560 25

def NamedBody560_921 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody560_922 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody560_923 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody560_924 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_925 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody560_926 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody560_927 : StackLang.HolProg 64 :=
.seq NamedBody560_925 NamedBody560_926

def NamedBody560_928 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody560_929 : StackLang.HolProg 64 :=
.seq NamedBody560_927 NamedBody560_928

def NamedBody560_930 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody560_931 : StackLang.HolProg 64 :=
.seq NamedBody560_929 NamedBody560_930

def NamedBody560_932 : StackLang.HolProg 64 :=
.seq NamedBody560_924 NamedBody560_931

def NamedBody560_933 : StackLang.HolProg 64 :=
.seq NamedBody560_923 NamedBody560_932

def NamedBody560_934 : StackLang.HolProg 64 :=
.seq NamedBody560_922 NamedBody560_933

def NamedBody560_935 : StackLang.HolProg 64 :=
.seq NamedBody560_921 NamedBody560_934

def NamedBody560_936 : StackLang.HolProg 64 :=
.seq NamedBody560_920 NamedBody560_935

def NamedBody560_937 : StackLang.HolProg 64 :=
.seq NamedBody560_919 NamedBody560_936

def NamedBody560_938 : StackLang.HolProg 64 :=
.seq NamedBody560_918 NamedBody560_937

def NamedBody560_939 : StackLang.HolProg 64 :=
.seq NamedBody560_917 NamedBody560_938

def NamedBody560_940 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_941 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_942 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_943 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody560_944 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody560_945 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody560_946 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_947 : StackLang.HolProg 64 :=
.seq NamedBody560_945 NamedBody560_946

def NamedBody560_948 : StackLang.HolProg 64 :=
.seq NamedBody560_944 NamedBody560_947

def NamedBody560_949 : StackLang.HolProg 64 :=
.seq NamedBody560_943 NamedBody560_948

def NamedBody560_950 : StackLang.HolProg 64 :=
.seq NamedBody560_942 NamedBody560_949

def NamedBody560_951 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_952 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody560_953 : StackLang.HolProg 64 :=
.seq NamedBody560_951 NamedBody560_952

def NamedBody560_954 : StackLang.HolProg 64 :=
.call (some (NamedBody560_950, 1, 560, 24)) (Sum.inl 484) (some (NamedBody560_953, 560, 25))

def NamedBody560_955 : StackLang.HolProg 64 :=
.seq NamedBody560_941 NamedBody560_954

def NamedBody560_956 : StackLang.HolProg 64 :=
.seq NamedBody560_940 NamedBody560_955

def NamedBody560_957 : StackLang.HolProg 64 :=
.seq NamedBody560_939 NamedBody560_956

def NamedBody560_958 : StackLang.HolProg 64 :=
.seq NamedBody560_910 NamedBody560_957

def NamedBody560_959 : StackLang.HolProg 64 :=
.seq NamedBody560_907 NamedBody560_958

def NamedBody560_960 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody560_961 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_962 : StackLang.HolProg 64 :=
.seq NamedBody560_960 NamedBody560_961

def NamedBody560_963 : StackLang.HolProg 64 :=
.seq NamedBody560_959 NamedBody560_962

def NamedBody560_964 : StackLang.HolProg 64 :=
.seq NamedBody560_906 NamedBody560_963

def NamedBody560_965 : StackLang.HolProg 64 :=
.seq NamedBody560_905 NamedBody560_964

def NamedBody560_966 : StackLang.HolProg 64 :=
.seq NamedBody560_904 NamedBody560_965

def NamedBody560_967 : StackLang.HolProg 64 :=
.seq NamedBody560_903 NamedBody560_966

def NamedBody560_968 : StackLang.HolProg 64 :=
.seq NamedBody560_902 NamedBody560_967

def NamedBody560_969 : StackLang.HolProg 64 :=
.seq NamedBody560_901 NamedBody560_968

def NamedBody560_970 : StackLang.HolProg 64 :=
.seq NamedBody560_900 NamedBody560_969

def NamedBody560_971 : StackLang.HolProg 64 :=
.seq NamedBody560_899 NamedBody560_970

def NamedBody560_972 : StackLang.HolProg 64 :=
.seq NamedBody560_898 NamedBody560_971

def NamedBody560_973 : StackLang.HolProg 64 :=
.seq NamedBody560_897 NamedBody560_972

def NamedBody560_974 : StackLang.HolProg 64 :=
.seq NamedBody560_830 NamedBody560_973

def NamedBody560_975 : StackLang.HolProg 64 :=
.seq NamedBody560_827 NamedBody560_974

def NamedBody560_976 : StackLang.HolProg 64 :=
.seq NamedBody560_826 NamedBody560_975

def NamedBody560_977 : StackLang.HolProg 64 :=
.seq NamedBody560_735 NamedBody560_976

def NamedBody560_978 : StackLang.HolProg 64 :=
.seq NamedBody560_732 NamedBody560_977

def NamedBody560_979 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody560_980 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_981 : StackLang.HolProg 64 :=
.seq NamedBody560_979 NamedBody560_980

def NamedBody560_982 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody560_978 NamedBody560_981

def NamedBody560_983 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody560_984 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody560_985 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_986 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_987 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1923#64)

def NamedBody560_988 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody560_989 : StackLang.HolProg 64 :=
.seq NamedBody560_987 NamedBody560_988

def NamedBody560_990 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody560_991 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody560_992 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody560_993 : StackLang.HolProg 64 :=
.seq NamedBody560_991 NamedBody560_992

def NamedBody560_994 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_995 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody560_993 NamedBody560_994

def NamedBody560_996 : StackLang.HolProg 64 :=
.seq NamedBody560_990 NamedBody560_995

def NamedBody560_997 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody560_998 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody560_999 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 560 27

def NamedBody560_1000 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody560_1001 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody560_1002 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody560_1003 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_1004 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody560_1005 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody560_1006 : StackLang.HolProg 64 :=
.seq NamedBody560_1004 NamedBody560_1005

def NamedBody560_1007 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody560_1008 : StackLang.HolProg 64 :=
.seq NamedBody560_1006 NamedBody560_1007

def NamedBody560_1009 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody560_1010 : StackLang.HolProg 64 :=
.seq NamedBody560_1008 NamedBody560_1009

def NamedBody560_1011 : StackLang.HolProg 64 :=
.seq NamedBody560_1003 NamedBody560_1010

def NamedBody560_1012 : StackLang.HolProg 64 :=
.seq NamedBody560_1002 NamedBody560_1011

def NamedBody560_1013 : StackLang.HolProg 64 :=
.seq NamedBody560_1001 NamedBody560_1012

def NamedBody560_1014 : StackLang.HolProg 64 :=
.seq NamedBody560_1000 NamedBody560_1013

def NamedBody560_1015 : StackLang.HolProg 64 :=
.seq NamedBody560_999 NamedBody560_1014

def NamedBody560_1016 : StackLang.HolProg 64 :=
.seq NamedBody560_998 NamedBody560_1015

def NamedBody560_1017 : StackLang.HolProg 64 :=
.seq NamedBody560_997 NamedBody560_1016

def NamedBody560_1018 : StackLang.HolProg 64 :=
.seq NamedBody560_996 NamedBody560_1017

def NamedBody560_1019 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_1020 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_1021 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_1022 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody560_1023 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody560_1024 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody560_1025 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody560_1026 : StackLang.HolProg 64 :=
.seq NamedBody560_1024 NamedBody560_1025

def NamedBody560_1027 : StackLang.HolProg 64 :=
.seq NamedBody560_1023 NamedBody560_1026

def NamedBody560_1028 : StackLang.HolProg 64 :=
.seq NamedBody560_1022 NamedBody560_1027

def NamedBody560_1029 : StackLang.HolProg 64 :=
.seq NamedBody560_1021 NamedBody560_1028

def NamedBody560_1030 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody560_1031 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody560_1032 : StackLang.HolProg 64 :=
.seq NamedBody560_1030 NamedBody560_1031

def NamedBody560_1033 : StackLang.HolProg 64 :=
.call (some (NamedBody560_1029, 1, 560, 26)) (Sum.inl 490) (some (NamedBody560_1032, 560, 27))

def NamedBody560_1034 : StackLang.HolProg 64 :=
.seq NamedBody560_1020 NamedBody560_1033

def NamedBody560_1035 : StackLang.HolProg 64 :=
.seq NamedBody560_1019 NamedBody560_1034

def NamedBody560_1036 : StackLang.HolProg 64 :=
.seq NamedBody560_1018 NamedBody560_1035

def NamedBody560_1037 : StackLang.HolProg 64 :=
.seq NamedBody560_989 NamedBody560_1036

def NamedBody560_1038 : StackLang.HolProg 64 :=
.seq NamedBody560_986 NamedBody560_1037

def NamedBody560_1039 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody560_1040 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody560_1041 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody560_1042 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 144#64)))

def NamedBody560_1043 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody560_1044 : StackLang.HolProg 64 :=
.seq NamedBody560_1042 NamedBody560_1043

def NamedBody560_1045 : StackLang.HolProg 64 :=
.seq NamedBody560_1041 NamedBody560_1044

def NamedBody560_1046 : StackLang.HolProg 64 :=
.seq NamedBody560_1040 NamedBody560_1045

def NamedBody560_1047 : StackLang.HolProg 64 :=
.seq NamedBody560_1039 NamedBody560_1046

def NamedBody560_1048 : StackLang.HolProg 64 :=
.seq NamedBody560_1038 NamedBody560_1047

def NamedBody560_1049 : StackLang.HolProg 64 :=
.seq NamedBody560_985 NamedBody560_1048

def NamedBody560_1050 : StackLang.HolProg 64 :=
.seq NamedBody560_984 NamedBody560_1049

def NamedBody560_1051 : StackLang.HolProg 64 :=
.seq NamedBody560_983 NamedBody560_1050

def NamedBody560_1052 : StackLang.HolProg 64 :=
.seq NamedBody560_982 NamedBody560_1051

def NamedBody560_1053 : StackLang.HolProg 64 :=
.seq NamedBody560_731 NamedBody560_1052

def NamedBody560_1054 : StackLang.HolProg 64 :=
.seq NamedBody560_730 NamedBody560_1053

def NamedBody560_1055 : StackLang.HolProg 64 :=
.seq NamedBody560_729 NamedBody560_1054

def NamedBody560_1056 : StackLang.HolProg 64 :=
.seq NamedBody560_728 NamedBody560_1055

def NamedBody560_1057 : StackLang.HolProg 64 :=
.seq NamedBody560_619 NamedBody560_1056

def NamedBody560_1058 : StackLang.HolProg 64 :=
.seq NamedBody560_618 NamedBody560_1057

def NamedBody560_1059 : StackLang.HolProg 64 :=
.seq NamedBody560_617 NamedBody560_1058

def NamedBody560_1060 : StackLang.HolProg 64 :=
.seq NamedBody560_564 NamedBody560_1059

def NamedBody560_1061 : StackLang.HolProg 64 :=
.seq NamedBody560_563 NamedBody560_1060

def NamedBody560_1062 : StackLang.HolProg 64 :=
.seq NamedBody560_562 NamedBody560_1061

def NamedBody560_1063 : StackLang.HolProg 64 :=
.seq NamedBody560_509 NamedBody560_1062

def NamedBody560_1064 : StackLang.HolProg 64 :=
.seq NamedBody560_506 NamedBody560_1063

def NamedBody560_1065 : StackLang.HolProg 64 :=
.seq NamedBody560_505 NamedBody560_1064

def NamedBody560_1066 : StackLang.HolProg 64 :=
.seq NamedBody560_504 NamedBody560_1065

def NamedBody560_1067 : StackLang.HolProg 64 :=
.seq NamedBody560_503 NamedBody560_1066

def NamedBody560_1068 : StackLang.HolProg 64 :=
.seq NamedBody560_502 NamedBody560_1067

def NamedBody560_1069 : StackLang.HolProg 64 :=
.seq NamedBody560_501 NamedBody560_1068

def NamedBody560_1070 : StackLang.HolProg 64 :=
.seq NamedBody560_500 NamedBody560_1069

def NamedBody560_1071 : StackLang.HolProg 64 :=
.seq NamedBody560_499 NamedBody560_1070

def NamedBody560_1072 : StackLang.HolProg 64 :=
.seq NamedBody560_414 NamedBody560_1071

def NamedBody560_1073 : StackLang.HolProg 64 :=
.seq NamedBody560_403 NamedBody560_1072

def NamedBody560_1074 : StackLang.HolProg 64 :=
.seq NamedBody560_402 NamedBody560_1073

def NamedBody560_1075 : StackLang.HolProg 64 :=
.seq NamedBody560_255 NamedBody560_1074

def NamedBody560_1076 : StackLang.HolProg 64 :=
.seq NamedBody560_252 NamedBody560_1075

def NamedBody560_1077 : StackLang.HolProg 64 :=
.seq NamedBody560_251 NamedBody560_1076

def NamedBody560_1078 : StackLang.HolProg 64 :=
.seq NamedBody560_198 NamedBody560_1077

def NamedBody560_1079 : StackLang.HolProg 64 :=
.seq NamedBody560_189 NamedBody560_1078

def NamedBody560_1080 : StackLang.HolProg 64 :=
.seq NamedBody560_188 NamedBody560_1079

def NamedBody560_1081 : StackLang.HolProg 64 :=
.seq NamedBody560_135 NamedBody560_1080

def NamedBody560_1082 : StackLang.HolProg 64 :=
.seq NamedBody560_128 NamedBody560_1081

def NamedBody560_1083 : StackLang.HolProg 64 :=
.seq NamedBody560_127 NamedBody560_1082

def NamedBody560_1084 : StackLang.HolProg 64 :=
.seq NamedBody560_74 NamedBody560_1083

def NamedBody560_1085 : StackLang.HolProg 64 :=
.seq NamedBody560_67 NamedBody560_1084

def NamedBody560_1086 : StackLang.HolProg 64 :=
.seq NamedBody560_66 NamedBody560_1085

def NamedBody560_1087 : StackLang.HolProg 64 :=
.seq NamedBody560_13 NamedBody560_1086

def NamedBody560_1088 : StackLang.HolProg 64 :=
.seq NamedBody560_6 NamedBody560_1087

def Named560 : Nat × StackLang.HolProg 64 := (560, NamedBody560_1088)
theorem Named560_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed560 = Named560 := by
  kernel_rfl
#print axioms Named560_eq
end InitECandidate.Proofs.BackendStages
