import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed711
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody711_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody711_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody711_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody711_3 : StackLang.HolProg 64 :=
.seq NamedBody711_1 NamedBody711_2

def NamedBody711_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody711_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody711_3 NamedBody711_4

def NamedBody711_6 : StackLang.HolProg 64 :=
.seq NamedBody711_0 NamedBody711_5

def NamedBody711_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody711_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody711_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3154#64)

def NamedBody711_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody711_11 : StackLang.HolProg 64 :=
.seq NamedBody711_9 NamedBody711_10

def NamedBody711_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody711_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody711_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody711_15 : StackLang.HolProg 64 :=
.seq NamedBody711_13 NamedBody711_14

def NamedBody711_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody711_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody711_15 NamedBody711_16

def NamedBody711_18 : StackLang.HolProg 64 :=
.seq NamedBody711_12 NamedBody711_17

def NamedBody711_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody711_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody711_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 711 3

def NamedBody711_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody711_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody711_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody711_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody711_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody711_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody711_28 : StackLang.HolProg 64 :=
.seq NamedBody711_26 NamedBody711_27

def NamedBody711_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody711_30 : StackLang.HolProg 64 :=
.seq NamedBody711_28 NamedBody711_29

def NamedBody711_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody711_32 : StackLang.HolProg 64 :=
.seq NamedBody711_30 NamedBody711_31

def NamedBody711_33 : StackLang.HolProg 64 :=
.seq NamedBody711_25 NamedBody711_32

def NamedBody711_34 : StackLang.HolProg 64 :=
.seq NamedBody711_24 NamedBody711_33

def NamedBody711_35 : StackLang.HolProg 64 :=
.seq NamedBody711_23 NamedBody711_34

def NamedBody711_36 : StackLang.HolProg 64 :=
.seq NamedBody711_22 NamedBody711_35

def NamedBody711_37 : StackLang.HolProg 64 :=
.seq NamedBody711_21 NamedBody711_36

def NamedBody711_38 : StackLang.HolProg 64 :=
.seq NamedBody711_20 NamedBody711_37

def NamedBody711_39 : StackLang.HolProg 64 :=
.seq NamedBody711_19 NamedBody711_38

def NamedBody711_40 : StackLang.HolProg 64 :=
.seq NamedBody711_18 NamedBody711_39

def NamedBody711_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody711_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody711_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody711_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody711_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody711_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody711_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 30 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody711_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 14
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody711_49 : StackLang.HolProg 64 :=
.seq NamedBody711_47 NamedBody711_48

def NamedBody711_50 : StackLang.HolProg 64 :=
.seq NamedBody711_46 NamedBody711_49

def NamedBody711_51 : StackLang.HolProg 64 :=
.seq NamedBody711_45 NamedBody711_50

def NamedBody711_52 : StackLang.HolProg 64 :=
.seq NamedBody711_44 NamedBody711_51

def NamedBody711_53 : StackLang.HolProg 64 :=
.seq NamedBody711_43 NamedBody711_52

def NamedBody711_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 14
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody711_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody711_56 : StackLang.HolProg 64 :=
.seq NamedBody711_54 NamedBody711_55

def NamedBody711_57 : StackLang.HolProg 64 :=
.call (some (NamedBody711_53, 1, 711, 2)) (Sum.inl 709) (some (NamedBody711_56, 711, 3))

def NamedBody711_58 : StackLang.HolProg 64 :=
.seq NamedBody711_42 NamedBody711_57

def NamedBody711_59 : StackLang.HolProg 64 :=
.seq NamedBody711_41 NamedBody711_58

def NamedBody711_60 : StackLang.HolProg 64 :=
.seq NamedBody711_40 NamedBody711_59

def NamedBody711_61 : StackLang.HolProg 64 :=
.seq NamedBody711_11 NamedBody711_60

def NamedBody711_62 : StackLang.HolProg 64 :=
.seq NamedBody711_8 NamedBody711_61

def NamedBody711_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody711_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody711_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody711_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody711_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 30
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 30)))

def NamedBody711_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody711_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 14

def NamedBody711_70 : StackLang.HolProg 64 :=
.seq NamedBody711_68 NamedBody711_69

def NamedBody711_71 : StackLang.HolProg 64 :=
.seq NamedBody711_67 NamedBody711_70

def NamedBody711_72 : StackLang.HolProg 64 :=
.seq NamedBody711_66 NamedBody711_71

def NamedBody711_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 29 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody711_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 28 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody711_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody711_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 30
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 30)))

def NamedBody711_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 27 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody711_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody711_79 : StackLang.HolProg 64 :=
.seq NamedBody711_77 NamedBody711_78

def NamedBody711_80 : StackLang.HolProg 64 :=
.seq NamedBody711_76 NamedBody711_79

def NamedBody711_81 : StackLang.HolProg 64 :=
.seq NamedBody711_75 NamedBody711_80

def NamedBody711_82 : StackLang.HolProg 64 :=
.seq NamedBody711_74 NamedBody711_81

def NamedBody711_83 : StackLang.HolProg 64 :=
.seq NamedBody711_73 NamedBody711_82

def NamedBody711_84 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 7 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody711_72 NamedBody711_83

def NamedBody711_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody711_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody711_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 29
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 29)))

def NamedBody711_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 28
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 28)))

def NamedBody711_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 27
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 27)))

def NamedBody711_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def NamedBody711_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def NamedBody711_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody711_93 : StackLang.HolProg 64 :=
.seq NamedBody711_91 NamedBody711_92

def NamedBody711_94 : StackLang.HolProg 64 :=
.seq NamedBody711_90 NamedBody711_93

def NamedBody711_95 : StackLang.HolProg 64 :=
.seq NamedBody711_89 NamedBody711_94

def NamedBody711_96 : StackLang.HolProg 64 :=
.seq NamedBody711_88 NamedBody711_95

def NamedBody711_97 : StackLang.HolProg 64 :=
.seq NamedBody711_87 NamedBody711_96

def NamedBody711_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 29 1873798617647539866#64)

def NamedBody711_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 28 5412103778470702295#64)

def NamedBody711_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 27 7239337960414712511#64)

def NamedBody711_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 7435674573564081700#64)

def NamedBody711_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 2210141511517208575#64)

def NamedBody711_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 13402431016077863595#64)

def NamedBody711_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 14
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody711_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody711_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3155#64)

def NamedBody711_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody711_108 : StackLang.HolProg 64 :=
.seq NamedBody711_106 NamedBody711_107

def NamedBody711_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody711_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody711_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody711_112 : StackLang.HolProg 64 :=
.seq NamedBody711_110 NamedBody711_111

def NamedBody711_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody711_114 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody711_112 NamedBody711_113

def NamedBody711_115 : StackLang.HolProg 64 :=
.seq NamedBody711_109 NamedBody711_114

def NamedBody711_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody711_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody711_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 711 5

def NamedBody711_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody711_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody711_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody711_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody711_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody711_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody711_125 : StackLang.HolProg 64 :=
.seq NamedBody711_123 NamedBody711_124

def NamedBody711_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody711_127 : StackLang.HolProg 64 :=
.seq NamedBody711_125 NamedBody711_126

def NamedBody711_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody711_129 : StackLang.HolProg 64 :=
.seq NamedBody711_127 NamedBody711_128

def NamedBody711_130 : StackLang.HolProg 64 :=
.seq NamedBody711_122 NamedBody711_129

def NamedBody711_131 : StackLang.HolProg 64 :=
.seq NamedBody711_121 NamedBody711_130

def NamedBody711_132 : StackLang.HolProg 64 :=
.seq NamedBody711_120 NamedBody711_131

def NamedBody711_133 : StackLang.HolProg 64 :=
.seq NamedBody711_119 NamedBody711_132

def NamedBody711_134 : StackLang.HolProg 64 :=
.seq NamedBody711_118 NamedBody711_133

def NamedBody711_135 : StackLang.HolProg 64 :=
.seq NamedBody711_117 NamedBody711_134

def NamedBody711_136 : StackLang.HolProg 64 :=
.seq NamedBody711_116 NamedBody711_135

def NamedBody711_137 : StackLang.HolProg 64 :=
.seq NamedBody711_115 NamedBody711_136

def NamedBody711_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody711_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody711_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody711_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody711_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody711_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody711_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody711_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody711_146 : StackLang.HolProg 64 :=
.seq NamedBody711_144 NamedBody711_145

def NamedBody711_147 : StackLang.HolProg 64 :=
.seq NamedBody711_143 NamedBody711_146

def NamedBody711_148 : StackLang.HolProg 64 :=
.seq NamedBody711_142 NamedBody711_147

def NamedBody711_149 : StackLang.HolProg 64 :=
.seq NamedBody711_141 NamedBody711_148

def NamedBody711_150 : StackLang.HolProg 64 :=
.seq NamedBody711_140 NamedBody711_149

def NamedBody711_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody711_152 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody711_153 : StackLang.HolProg 64 :=
.seq NamedBody711_151 NamedBody711_152

def NamedBody711_154 : StackLang.HolProg 64 :=
.call (some (NamedBody711_150, 1, 711, 4)) (Sum.inl 708) (some (NamedBody711_153, 711, 5))

def NamedBody711_155 : StackLang.HolProg 64 :=
.seq NamedBody711_139 NamedBody711_154

def NamedBody711_156 : StackLang.HolProg 64 :=
.seq NamedBody711_138 NamedBody711_155

def NamedBody711_157 : StackLang.HolProg 64 :=
.seq NamedBody711_137 NamedBody711_156

def NamedBody711_158 : StackLang.HolProg 64 :=
.seq NamedBody711_108 NamedBody711_157

def NamedBody711_159 : StackLang.HolProg 64 :=
.seq NamedBody711_105 NamedBody711_158

def NamedBody711_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody711_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def NamedBody711_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody711_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody711_164 : StackLang.HolProg 64 :=
.seq NamedBody711_162 NamedBody711_163

def NamedBody711_165 : StackLang.HolProg 64 :=
.seq NamedBody711_161 NamedBody711_164

def NamedBody711_166 : StackLang.HolProg 64 :=
.seq NamedBody711_160 NamedBody711_165

def NamedBody711_167 : StackLang.HolProg 64 :=
.seq NamedBody711_159 NamedBody711_166

def NamedBody711_168 : StackLang.HolProg 64 :=
.seq NamedBody711_104 NamedBody711_167

def NamedBody711_169 : StackLang.HolProg 64 :=
.seq NamedBody711_103 NamedBody711_168

def NamedBody711_170 : StackLang.HolProg 64 :=
.seq NamedBody711_102 NamedBody711_169

def NamedBody711_171 : StackLang.HolProg 64 :=
.seq NamedBody711_101 NamedBody711_170

def NamedBody711_172 : StackLang.HolProg 64 :=
.seq NamedBody711_100 NamedBody711_171

def NamedBody711_173 : StackLang.HolProg 64 :=
.seq NamedBody711_99 NamedBody711_172

def NamedBody711_174 : StackLang.HolProg 64 :=
.seq NamedBody711_98 NamedBody711_173

def NamedBody711_175 : StackLang.HolProg 64 :=
.seq NamedBody711_97 NamedBody711_174

def NamedBody711_176 : StackLang.HolProg 64 :=
.seq NamedBody711_86 NamedBody711_175

def NamedBody711_177 : StackLang.HolProg 64 :=
.seq NamedBody711_85 NamedBody711_176

def NamedBody711_178 : StackLang.HolProg 64 :=
.seq NamedBody711_84 NamedBody711_177

def NamedBody711_179 : StackLang.HolProg 64 :=
.seq NamedBody711_65 NamedBody711_178

def NamedBody711_180 : StackLang.HolProg 64 :=
.seq NamedBody711_64 NamedBody711_179

def NamedBody711_181 : StackLang.HolProg 64 :=
.seq NamedBody711_63 NamedBody711_180

def NamedBody711_182 : StackLang.HolProg 64 :=
.seq NamedBody711_62 NamedBody711_181

def NamedBody711_183 : StackLang.HolProg 64 :=
.seq NamedBody711_7 NamedBody711_182

def NamedBody711_184 : StackLang.HolProg 64 :=
.seq NamedBody711_6 NamedBody711_183

def Named711 : Nat × StackLang.HolProg 64 := (711, NamedBody711_184)
theorem Named711_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed711 = Named711 := by
  kernel_rfl
#print axioms Named711_eq
end InitECandidate.Proofs.BackendStages
