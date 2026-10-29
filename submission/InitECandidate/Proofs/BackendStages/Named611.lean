import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed611
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody611_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody611_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody611_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody611_3 : StackLang.HolProg 64 :=
.seq NamedBody611_1 NamedBody611_2

def NamedBody611_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody611_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody611_3 NamedBody611_4

def NamedBody611_6 : StackLang.HolProg 64 :=
.seq NamedBody611_0 NamedBody611_5

def NamedBody611_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody611_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 168#64))

def NamedBody611_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody611_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 264#64))

def NamedBody611_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody611_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody611_13 : StackLang.HolProg 64 :=
.seq NamedBody611_11 NamedBody611_12

def NamedBody611_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody611_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2348#64)

def NamedBody611_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody611_17 : StackLang.HolProg 64 :=
.seq NamedBody611_15 NamedBody611_16

def NamedBody611_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody611_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody611_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody611_21 : StackLang.HolProg 64 :=
.seq NamedBody611_19 NamedBody611_20

def NamedBody611_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody611_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody611_21 NamedBody611_22

def NamedBody611_24 : StackLang.HolProg 64 :=
.seq NamedBody611_18 NamedBody611_23

def NamedBody611_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody611_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody611_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 611 3

def NamedBody611_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody611_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody611_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody611_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody611_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody611_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody611_34 : StackLang.HolProg 64 :=
.seq NamedBody611_32 NamedBody611_33

def NamedBody611_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody611_36 : StackLang.HolProg 64 :=
.seq NamedBody611_34 NamedBody611_35

def NamedBody611_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody611_38 : StackLang.HolProg 64 :=
.seq NamedBody611_36 NamedBody611_37

def NamedBody611_39 : StackLang.HolProg 64 :=
.seq NamedBody611_31 NamedBody611_38

def NamedBody611_40 : StackLang.HolProg 64 :=
.seq NamedBody611_30 NamedBody611_39

def NamedBody611_41 : StackLang.HolProg 64 :=
.seq NamedBody611_29 NamedBody611_40

def NamedBody611_42 : StackLang.HolProg 64 :=
.seq NamedBody611_28 NamedBody611_41

def NamedBody611_43 : StackLang.HolProg 64 :=
.seq NamedBody611_27 NamedBody611_42

def NamedBody611_44 : StackLang.HolProg 64 :=
.seq NamedBody611_26 NamedBody611_43

def NamedBody611_45 : StackLang.HolProg 64 :=
.seq NamedBody611_25 NamedBody611_44

def NamedBody611_46 : StackLang.HolProg 64 :=
.seq NamedBody611_24 NamedBody611_45

def NamedBody611_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody611_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody611_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody611_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody611_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody611_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody611_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody611_54 : StackLang.HolProg 64 :=
.seq NamedBody611_52 NamedBody611_53

def NamedBody611_55 : StackLang.HolProg 64 :=
.seq NamedBody611_51 NamedBody611_54

def NamedBody611_56 : StackLang.HolProg 64 :=
.seq NamedBody611_50 NamedBody611_55

def NamedBody611_57 : StackLang.HolProg 64 :=
.seq NamedBody611_49 NamedBody611_56

def NamedBody611_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody611_59 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody611_60 : StackLang.HolProg 64 :=
.seq NamedBody611_58 NamedBody611_59

def NamedBody611_61 : StackLang.HolProg 64 :=
.call (some (NamedBody611_57, 1, 611, 2)) (Sum.inl 194) (some (NamedBody611_60, 611, 3))

def NamedBody611_62 : StackLang.HolProg 64 :=
.seq NamedBody611_48 NamedBody611_61

def NamedBody611_63 : StackLang.HolProg 64 :=
.seq NamedBody611_47 NamedBody611_62

def NamedBody611_64 : StackLang.HolProg 64 :=
.seq NamedBody611_46 NamedBody611_63

def NamedBody611_65 : StackLang.HolProg 64 :=
.seq NamedBody611_17 NamedBody611_64

def NamedBody611_66 : StackLang.HolProg 64 :=
.seq NamedBody611_14 NamedBody611_65

def NamedBody611_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody611_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody611_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 176#64))

def NamedBody611_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody611_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 272#64))

def NamedBody611_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody611_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody611_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2349#64)

def NamedBody611_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody611_76 : StackLang.HolProg 64 :=
.seq NamedBody611_74 NamedBody611_75

def NamedBody611_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody611_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody611_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody611_80 : StackLang.HolProg 64 :=
.seq NamedBody611_78 NamedBody611_79

def NamedBody611_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody611_82 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody611_80 NamedBody611_81

def NamedBody611_83 : StackLang.HolProg 64 :=
.seq NamedBody611_77 NamedBody611_82

def NamedBody611_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody611_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody611_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 611 5

def NamedBody611_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody611_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody611_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody611_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody611_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody611_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody611_93 : StackLang.HolProg 64 :=
.seq NamedBody611_91 NamedBody611_92

def NamedBody611_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody611_95 : StackLang.HolProg 64 :=
.seq NamedBody611_93 NamedBody611_94

def NamedBody611_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody611_97 : StackLang.HolProg 64 :=
.seq NamedBody611_95 NamedBody611_96

def NamedBody611_98 : StackLang.HolProg 64 :=
.seq NamedBody611_90 NamedBody611_97

def NamedBody611_99 : StackLang.HolProg 64 :=
.seq NamedBody611_89 NamedBody611_98

def NamedBody611_100 : StackLang.HolProg 64 :=
.seq NamedBody611_88 NamedBody611_99

def NamedBody611_101 : StackLang.HolProg 64 :=
.seq NamedBody611_87 NamedBody611_100

def NamedBody611_102 : StackLang.HolProg 64 :=
.seq NamedBody611_86 NamedBody611_101

def NamedBody611_103 : StackLang.HolProg 64 :=
.seq NamedBody611_85 NamedBody611_102

def NamedBody611_104 : StackLang.HolProg 64 :=
.seq NamedBody611_84 NamedBody611_103

def NamedBody611_105 : StackLang.HolProg 64 :=
.seq NamedBody611_83 NamedBody611_104

def NamedBody611_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody611_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody611_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody611_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody611_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody611_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody611_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody611_113 : StackLang.HolProg 64 :=
.seq NamedBody611_111 NamedBody611_112

def NamedBody611_114 : StackLang.HolProg 64 :=
.seq NamedBody611_110 NamedBody611_113

def NamedBody611_115 : StackLang.HolProg 64 :=
.seq NamedBody611_109 NamedBody611_114

def NamedBody611_116 : StackLang.HolProg 64 :=
.seq NamedBody611_108 NamedBody611_115

def NamedBody611_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody611_118 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody611_119 : StackLang.HolProg 64 :=
.seq NamedBody611_117 NamedBody611_118

def NamedBody611_120 : StackLang.HolProg 64 :=
.call (some (NamedBody611_116, 1, 611, 4)) (Sum.inl 194) (some (NamedBody611_119, 611, 5))

def NamedBody611_121 : StackLang.HolProg 64 :=
.seq NamedBody611_107 NamedBody611_120

def NamedBody611_122 : StackLang.HolProg 64 :=
.seq NamedBody611_106 NamedBody611_121

def NamedBody611_123 : StackLang.HolProg 64 :=
.seq NamedBody611_105 NamedBody611_122

def NamedBody611_124 : StackLang.HolProg 64 :=
.seq NamedBody611_76 NamedBody611_123

def NamedBody611_125 : StackLang.HolProg 64 :=
.seq NamedBody611_73 NamedBody611_124

def NamedBody611_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody611_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody611_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody611_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody611_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody611_131 : StackLang.HolProg 64 :=
.seq NamedBody611_129 NamedBody611_130

def NamedBody611_132 : StackLang.HolProg 64 :=
.seq NamedBody611_128 NamedBody611_131

def NamedBody611_133 : StackLang.HolProg 64 :=
.seq NamedBody611_127 NamedBody611_132

def NamedBody611_134 : StackLang.HolProg 64 :=
.seq NamedBody611_126 NamedBody611_133

def NamedBody611_135 : StackLang.HolProg 64 :=
.seq NamedBody611_125 NamedBody611_134

def NamedBody611_136 : StackLang.HolProg 64 :=
.seq NamedBody611_72 NamedBody611_135

def NamedBody611_137 : StackLang.HolProg 64 :=
.seq NamedBody611_71 NamedBody611_136

def NamedBody611_138 : StackLang.HolProg 64 :=
.seq NamedBody611_70 NamedBody611_137

def NamedBody611_139 : StackLang.HolProg 64 :=
.seq NamedBody611_69 NamedBody611_138

def NamedBody611_140 : StackLang.HolProg 64 :=
.seq NamedBody611_68 NamedBody611_139

def NamedBody611_141 : StackLang.HolProg 64 :=
.seq NamedBody611_67 NamedBody611_140

def NamedBody611_142 : StackLang.HolProg 64 :=
.seq NamedBody611_66 NamedBody611_141

def NamedBody611_143 : StackLang.HolProg 64 :=
.seq NamedBody611_13 NamedBody611_142

def NamedBody611_144 : StackLang.HolProg 64 :=
.seq NamedBody611_10 NamedBody611_143

def NamedBody611_145 : StackLang.HolProg 64 :=
.seq NamedBody611_9 NamedBody611_144

def NamedBody611_146 : StackLang.HolProg 64 :=
.seq NamedBody611_8 NamedBody611_145

def NamedBody611_147 : StackLang.HolProg 64 :=
.seq NamedBody611_7 NamedBody611_146

def NamedBody611_148 : StackLang.HolProg 64 :=
.seq NamedBody611_6 NamedBody611_147

def Named611 : Nat × StackLang.HolProg 64 := (611, NamedBody611_148)
theorem Named611_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed611 = Named611 := by
  kernel_rfl
#print axioms Named611_eq
end InitECandidate.Proofs.BackendStages
