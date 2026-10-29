import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed471
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody471_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody471_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody471_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody471_3 : StackLang.HolProg 64 :=
.seq NamedBody471_1 NamedBody471_2

def NamedBody471_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody471_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody471_3 NamedBody471_4

def NamedBody471_6 : StackLang.HolProg 64 :=
.seq NamedBody471_0 NamedBody471_5

def NamedBody471_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody471_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody471_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody471_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody471_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 18446744073709551360#64))

def NamedBody471_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 72#64))

def NamedBody471_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody471_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 64#64))

def NamedBody471_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody471_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody471_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody471_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 72#64)))

def NamedBody471_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody471_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 10 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody471_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody471_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 0#64))

def NamedBody471_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody471_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody471_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody471_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody471_27 : StackLang.HolProg 64 :=
.seq NamedBody471_25 NamedBody471_26

def NamedBody471_28 : StackLang.HolProg 64 :=
.seq NamedBody471_24 NamedBody471_27

def NamedBody471_29 : StackLang.HolProg 64 :=
.seq NamedBody471_23 NamedBody471_28

def NamedBody471_30 : StackLang.HolProg 64 :=
.seq NamedBody471_22 NamedBody471_29

def NamedBody471_31 : StackLang.HolProg 64 :=
.seq NamedBody471_21 NamedBody471_30

def NamedBody471_32 : StackLang.HolProg 64 :=
.seq NamedBody471_20 NamedBody471_31

def NamedBody471_33 : StackLang.HolProg 64 :=
.seq NamedBody471_19 NamedBody471_32

def NamedBody471_34 : StackLang.HolProg 64 :=
.seq NamedBody471_18 NamedBody471_33

def NamedBody471_35 : StackLang.HolProg 64 :=
.seq NamedBody471_17 NamedBody471_34

def NamedBody471_36 : StackLang.HolProg 64 :=
.seq NamedBody471_16 NamedBody471_35

def NamedBody471_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody471_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody471_39 : StackLang.HolProg 64 :=
.seq NamedBody471_37 NamedBody471_38

def NamedBody471_40 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 13 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody471_36 NamedBody471_39

def NamedBody471_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody471_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody471_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody471_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody471_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody471_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody471_47 : StackLang.HolProg 64 :=
.seq NamedBody471_45 NamedBody471_46

def NamedBody471_48 : StackLang.HolProg 64 :=
.seq NamedBody471_44 NamedBody471_47

def NamedBody471_49 : StackLang.HolProg 64 :=
.seq NamedBody471_43 NamedBody471_48

def NamedBody471_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody471_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1494#64)

def NamedBody471_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody471_53 : StackLang.HolProg 64 :=
.seq NamedBody471_51 NamedBody471_52

def NamedBody471_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody471_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody471_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody471_57 : StackLang.HolProg 64 :=
.seq NamedBody471_55 NamedBody471_56

def NamedBody471_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody471_59 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody471_57 NamedBody471_58

def NamedBody471_60 : StackLang.HolProg 64 :=
.seq NamedBody471_54 NamedBody471_59

def NamedBody471_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody471_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody471_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 471 3

def NamedBody471_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody471_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody471_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody471_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody471_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody471_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody471_70 : StackLang.HolProg 64 :=
.seq NamedBody471_68 NamedBody471_69

def NamedBody471_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody471_72 : StackLang.HolProg 64 :=
.seq NamedBody471_70 NamedBody471_71

def NamedBody471_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody471_74 : StackLang.HolProg 64 :=
.seq NamedBody471_72 NamedBody471_73

def NamedBody471_75 : StackLang.HolProg 64 :=
.seq NamedBody471_67 NamedBody471_74

def NamedBody471_76 : StackLang.HolProg 64 :=
.seq NamedBody471_66 NamedBody471_75

def NamedBody471_77 : StackLang.HolProg 64 :=
.seq NamedBody471_65 NamedBody471_76

def NamedBody471_78 : StackLang.HolProg 64 :=
.seq NamedBody471_64 NamedBody471_77

def NamedBody471_79 : StackLang.HolProg 64 :=
.seq NamedBody471_63 NamedBody471_78

def NamedBody471_80 : StackLang.HolProg 64 :=
.seq NamedBody471_62 NamedBody471_79

def NamedBody471_81 : StackLang.HolProg 64 :=
.seq NamedBody471_61 NamedBody471_80

def NamedBody471_82 : StackLang.HolProg 64 :=
.seq NamedBody471_60 NamedBody471_81

def NamedBody471_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody471_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody471_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody471_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody471_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody471_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody471_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody471_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody471_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody471_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody471_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody471_94 : StackLang.HolProg 64 :=
.seq NamedBody471_92 NamedBody471_93

def NamedBody471_95 : StackLang.HolProg 64 :=
.seq NamedBody471_91 NamedBody471_94

def NamedBody471_96 : StackLang.HolProg 64 :=
.seq NamedBody471_90 NamedBody471_95

def NamedBody471_97 : StackLang.HolProg 64 :=
.seq NamedBody471_89 NamedBody471_96

def NamedBody471_98 : StackLang.HolProg 64 :=
.seq NamedBody471_88 NamedBody471_97

def NamedBody471_99 : StackLang.HolProg 64 :=
.seq NamedBody471_87 NamedBody471_98

def NamedBody471_100 : StackLang.HolProg 64 :=
.seq NamedBody471_86 NamedBody471_99

def NamedBody471_101 : StackLang.HolProg 64 :=
.seq NamedBody471_85 NamedBody471_100

def NamedBody471_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody471_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody471_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody471_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody471_106 : StackLang.HolProg 64 :=
.seq NamedBody471_104 NamedBody471_105

def NamedBody471_107 : StackLang.HolProg 64 :=
.seq NamedBody471_103 NamedBody471_106

def NamedBody471_108 : StackLang.HolProg 64 :=
.seq NamedBody471_102 NamedBody471_107

def NamedBody471_109 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody471_110 : StackLang.HolProg 64 :=
.seq NamedBody471_108 NamedBody471_109

def NamedBody471_111 : StackLang.HolProg 64 :=
.call (some (NamedBody471_101, 1, 471, 2)) (Sum.inl 463) (some (NamedBody471_110, 471, 3))

def NamedBody471_112 : StackLang.HolProg 64 :=
.seq NamedBody471_84 NamedBody471_111

def NamedBody471_113 : StackLang.HolProg 64 :=
.seq NamedBody471_83 NamedBody471_112

def NamedBody471_114 : StackLang.HolProg 64 :=
.seq NamedBody471_82 NamedBody471_113

def NamedBody471_115 : StackLang.HolProg 64 :=
.seq NamedBody471_53 NamedBody471_114

def NamedBody471_116 : StackLang.HolProg 64 :=
.seq NamedBody471_50 NamedBody471_115

def NamedBody471_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody471_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody471_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody471_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody471_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody471_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody471_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody471_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody471_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551360#64))

def NamedBody471_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 72#64)))

def NamedBody471_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody471_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody471_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 0#64))

def NamedBody471_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody471_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551360#64))

def NamedBody471_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def NamedBody471_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody471_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody471_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody471_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 0#64))

def NamedBody471_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody471_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551360#64))

def NamedBody471_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def NamedBody471_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody471_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 192#64))

def NamedBody471_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody471_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody471_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody471_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody471_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody471_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody471_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def NamedBody471_149 : StackLang.HolProg 64 :=
.seq NamedBody471_147 NamedBody471_148

def NamedBody471_150 : StackLang.HolProg 64 :=
.seq NamedBody471_146 NamedBody471_149

def NamedBody471_151 : StackLang.HolProg 64 :=
.seq NamedBody471_145 NamedBody471_150

def NamedBody471_152 : StackLang.HolProg 64 :=
.seq NamedBody471_144 NamedBody471_151

def NamedBody471_153 : StackLang.HolProg 64 :=
.seq NamedBody471_143 NamedBody471_152

def NamedBody471_154 : StackLang.HolProg 64 :=
.seq NamedBody471_142 NamedBody471_153

def NamedBody471_155 : StackLang.HolProg 64 :=
.seq NamedBody471_141 NamedBody471_154

def NamedBody471_156 : StackLang.HolProg 64 :=
.seq NamedBody471_140 NamedBody471_155

def NamedBody471_157 : StackLang.HolProg 64 :=
.seq NamedBody471_139 NamedBody471_156

def NamedBody471_158 : StackLang.HolProg 64 :=
.seq NamedBody471_138 NamedBody471_157

def NamedBody471_159 : StackLang.HolProg 64 :=
.seq NamedBody471_137 NamedBody471_158

def NamedBody471_160 : StackLang.HolProg 64 :=
.seq NamedBody471_136 NamedBody471_159

def NamedBody471_161 : StackLang.HolProg 64 :=
.seq NamedBody471_135 NamedBody471_160

def NamedBody471_162 : StackLang.HolProg 64 :=
.seq NamedBody471_134 NamedBody471_161

def NamedBody471_163 : StackLang.HolProg 64 :=
.seq NamedBody471_133 NamedBody471_162

def NamedBody471_164 : StackLang.HolProg 64 :=
.seq NamedBody471_132 NamedBody471_163

def NamedBody471_165 : StackLang.HolProg 64 :=
.seq NamedBody471_131 NamedBody471_164

def NamedBody471_166 : StackLang.HolProg 64 :=
.seq NamedBody471_130 NamedBody471_165

def NamedBody471_167 : StackLang.HolProg 64 :=
.seq NamedBody471_129 NamedBody471_166

def NamedBody471_168 : StackLang.HolProg 64 :=
.seq NamedBody471_128 NamedBody471_167

def NamedBody471_169 : StackLang.HolProg 64 :=
.seq NamedBody471_127 NamedBody471_168

def NamedBody471_170 : StackLang.HolProg 64 :=
.seq NamedBody471_126 NamedBody471_169

def NamedBody471_171 : StackLang.HolProg 64 :=
.seq NamedBody471_125 NamedBody471_170

def NamedBody471_172 : StackLang.HolProg 64 :=
.seq NamedBody471_124 NamedBody471_171

def NamedBody471_173 : StackLang.HolProg 64 :=
.seq NamedBody471_123 NamedBody471_172

def NamedBody471_174 : StackLang.HolProg 64 :=
.seq NamedBody471_122 NamedBody471_173

def NamedBody471_175 : StackLang.HolProg 64 :=
.seq NamedBody471_121 NamedBody471_174

def NamedBody471_176 : StackLang.HolProg 64 :=
.seq NamedBody471_120 NamedBody471_175

def NamedBody471_177 : StackLang.HolProg 64 :=
.seq NamedBody471_119 NamedBody471_176

def NamedBody471_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody471_179 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 13 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody471_177 NamedBody471_178

def NamedBody471_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody471_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody471_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 4#64)

def NamedBody471_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody471_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody471_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 8#64)

def NamedBody471_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody471_187 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody471_188 : StackLang.HolProg 64 :=
.seq NamedBody471_186 NamedBody471_187

def NamedBody471_189 : StackLang.HolProg 64 :=
.seq NamedBody471_185 NamedBody471_188

def NamedBody471_190 : StackLang.HolProg 64 :=
.seq NamedBody471_184 NamedBody471_189

def NamedBody471_191 : StackLang.HolProg 64 :=
.seq NamedBody471_183 NamedBody471_190

def NamedBody471_192 : StackLang.HolProg 64 :=
.seq NamedBody471_182 NamedBody471_191

def NamedBody471_193 : StackLang.HolProg 64 :=
.seq NamedBody471_181 NamedBody471_192

def NamedBody471_194 : StackLang.HolProg 64 :=
.seq NamedBody471_180 NamedBody471_193

def NamedBody471_195 : StackLang.HolProg 64 :=
.seq NamedBody471_179 NamedBody471_194

def NamedBody471_196 : StackLang.HolProg 64 :=
.seq NamedBody471_118 NamedBody471_195

def NamedBody471_197 : StackLang.HolProg 64 :=
.seq NamedBody471_117 NamedBody471_196

def NamedBody471_198 : StackLang.HolProg 64 :=
.seq NamedBody471_116 NamedBody471_197

def NamedBody471_199 : StackLang.HolProg 64 :=
.seq NamedBody471_49 NamedBody471_198

def NamedBody471_200 : StackLang.HolProg 64 :=
.seq NamedBody471_42 NamedBody471_199

def NamedBody471_201 : StackLang.HolProg 64 :=
.seq NamedBody471_41 NamedBody471_200

def NamedBody471_202 : StackLang.HolProg 64 :=
.seq NamedBody471_40 NamedBody471_201

def NamedBody471_203 : StackLang.HolProg 64 :=
.seq NamedBody471_15 NamedBody471_202

def NamedBody471_204 : StackLang.HolProg 64 :=
.seq NamedBody471_14 NamedBody471_203

def NamedBody471_205 : StackLang.HolProg 64 :=
.seq NamedBody471_13 NamedBody471_204

def NamedBody471_206 : StackLang.HolProg 64 :=
.seq NamedBody471_12 NamedBody471_205

def NamedBody471_207 : StackLang.HolProg 64 :=
.seq NamedBody471_11 NamedBody471_206

def NamedBody471_208 : StackLang.HolProg 64 :=
.seq NamedBody471_10 NamedBody471_207

def NamedBody471_209 : StackLang.HolProg 64 :=
.seq NamedBody471_9 NamedBody471_208

def NamedBody471_210 : StackLang.HolProg 64 :=
.seq NamedBody471_8 NamedBody471_209

def NamedBody471_211 : StackLang.HolProg 64 :=
.seq NamedBody471_7 NamedBody471_210

def NamedBody471_212 : StackLang.HolProg 64 :=
.seq NamedBody471_6 NamedBody471_211

def Named471 : Nat × StackLang.HolProg 64 := (471, NamedBody471_212)
theorem Named471_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed471 = Named471 := by
  kernel_rfl
#print axioms Named471_eq
end InitECandidate.Proofs.BackendStages
