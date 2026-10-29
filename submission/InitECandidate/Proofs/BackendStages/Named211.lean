import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed211
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody211_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody211_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody211_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody211_3 : StackLang.HolProg 64 :=
.seq NamedBody211_1 NamedBody211_2

def NamedBody211_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody211_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody211_3 NamedBody211_4

def NamedBody211_6 : StackLang.HolProg 64 :=
.seq NamedBody211_0 NamedBody211_5

def NamedBody211_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody211_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 30 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody211_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 14 0#64)

def NamedBody211_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody211_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody211_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 30 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def NamedBody211_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody211_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody211_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 30
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody211_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody211_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 30 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def NamedBody211_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody211_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody211_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 30
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody211_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody211_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 30 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def NamedBody211_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody211_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 12 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody211_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 30
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody211_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody211_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 13 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody211_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody211_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody211_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody211_31 : StackLang.HolProg 64 :=
.seq NamedBody211_29 NamedBody211_30

def NamedBody211_32 : StackLang.HolProg 64 :=
.seq NamedBody211_28 NamedBody211_31

def NamedBody211_33 : StackLang.HolProg 64 :=
.seq NamedBody211_27 NamedBody211_32

def NamedBody211_34 : StackLang.HolProg 64 :=
.seq NamedBody211_26 NamedBody211_33

def NamedBody211_35 : StackLang.HolProg 64 :=
.seq NamedBody211_25 NamedBody211_34

def NamedBody211_36 : StackLang.HolProg 64 :=
.seq NamedBody211_24 NamedBody211_35

def NamedBody211_37 : StackLang.HolProg 64 :=
.seq NamedBody211_23 NamedBody211_36

def NamedBody211_38 : StackLang.HolProg 64 :=
.seq NamedBody211_22 NamedBody211_37

def NamedBody211_39 : StackLang.HolProg 64 :=
.seq NamedBody211_21 NamedBody211_38

def NamedBody211_40 : StackLang.HolProg 64 :=
.seq NamedBody211_20 NamedBody211_39

def NamedBody211_41 : StackLang.HolProg 64 :=
.seq NamedBody211_19 NamedBody211_40

def NamedBody211_42 : StackLang.HolProg 64 :=
.seq NamedBody211_18 NamedBody211_41

def NamedBody211_43 : StackLang.HolProg 64 :=
.seq NamedBody211_17 NamedBody211_42

def NamedBody211_44 : StackLang.HolProg 64 :=
.seq NamedBody211_16 NamedBody211_43

def NamedBody211_45 : StackLang.HolProg 64 :=
.seq NamedBody211_15 NamedBody211_44

def NamedBody211_46 : StackLang.HolProg 64 :=
.seq NamedBody211_14 NamedBody211_45

def NamedBody211_47 : StackLang.HolProg 64 :=
.seq NamedBody211_13 NamedBody211_46

def NamedBody211_48 : StackLang.HolProg 64 :=
.seq NamedBody211_12 NamedBody211_47

def NamedBody211_49 : StackLang.HolProg 64 :=
.seq NamedBody211_11 NamedBody211_48

def NamedBody211_50 : StackLang.HolProg 64 :=
.seq NamedBody211_10 NamedBody211_49

def NamedBody211_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody211_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 28 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody211_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 29 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody211_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 27 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody211_55 : StackLang.HolProg 64 :=
.seq NamedBody211_53 NamedBody211_54

def NamedBody211_56 : StackLang.HolProg 64 :=
.seq NamedBody211_52 NamedBody211_55

def NamedBody211_57 : StackLang.HolProg 64 :=
.seq NamedBody211_51 NamedBody211_56

def NamedBody211_58 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 30 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 14) NamedBody211_50 NamedBody211_57

def NamedBody211_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody211_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody211_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 29
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 29)))

def NamedBody211_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 28
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 28)))

def NamedBody211_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 27
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 27)))

def NamedBody211_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def NamedBody211_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody211_66 : StackLang.HolProg 64 :=
.seq NamedBody211_64 NamedBody211_65

def NamedBody211_67 : StackLang.HolProg 64 :=
.seq NamedBody211_63 NamedBody211_66

def NamedBody211_68 : StackLang.HolProg 64 :=
.seq NamedBody211_62 NamedBody211_67

def NamedBody211_69 : StackLang.HolProg 64 :=
.seq NamedBody211_61 NamedBody211_68

def NamedBody211_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody211_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 270#64)

def NamedBody211_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody211_73 : StackLang.HolProg 64 :=
.seq NamedBody211_71 NamedBody211_72

def NamedBody211_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody211_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody211_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody211_77 : StackLang.HolProg 64 :=
.seq NamedBody211_75 NamedBody211_76

def NamedBody211_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody211_79 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody211_77 NamedBody211_78

def NamedBody211_80 : StackLang.HolProg 64 :=
.seq NamedBody211_74 NamedBody211_79

def NamedBody211_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody211_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody211_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 211 3

def NamedBody211_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody211_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody211_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody211_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody211_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody211_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody211_90 : StackLang.HolProg 64 :=
.seq NamedBody211_88 NamedBody211_89

def NamedBody211_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody211_92 : StackLang.HolProg 64 :=
.seq NamedBody211_90 NamedBody211_91

def NamedBody211_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody211_94 : StackLang.HolProg 64 :=
.seq NamedBody211_92 NamedBody211_93

def NamedBody211_95 : StackLang.HolProg 64 :=
.seq NamedBody211_87 NamedBody211_94

def NamedBody211_96 : StackLang.HolProg 64 :=
.seq NamedBody211_86 NamedBody211_95

def NamedBody211_97 : StackLang.HolProg 64 :=
.seq NamedBody211_85 NamedBody211_96

def NamedBody211_98 : StackLang.HolProg 64 :=
.seq NamedBody211_84 NamedBody211_97

def NamedBody211_99 : StackLang.HolProg 64 :=
.seq NamedBody211_83 NamedBody211_98

def NamedBody211_100 : StackLang.HolProg 64 :=
.seq NamedBody211_82 NamedBody211_99

def NamedBody211_101 : StackLang.HolProg 64 :=
.seq NamedBody211_81 NamedBody211_100

def NamedBody211_102 : StackLang.HolProg 64 :=
.seq NamedBody211_80 NamedBody211_101

def NamedBody211_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody211_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody211_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody211_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody211_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody211_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody211_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody211_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody211_111 : StackLang.HolProg 64 :=
.seq NamedBody211_109 NamedBody211_110

def NamedBody211_112 : StackLang.HolProg 64 :=
.seq NamedBody211_108 NamedBody211_111

def NamedBody211_113 : StackLang.HolProg 64 :=
.seq NamedBody211_107 NamedBody211_112

def NamedBody211_114 : StackLang.HolProg 64 :=
.seq NamedBody211_106 NamedBody211_113

def NamedBody211_115 : StackLang.HolProg 64 :=
.seq NamedBody211_105 NamedBody211_114

def NamedBody211_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody211_117 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody211_118 : StackLang.HolProg 64 :=
.seq NamedBody211_116 NamedBody211_117

def NamedBody211_119 : StackLang.HolProg 64 :=
.call (some (NamedBody211_115, 1, 211, 2)) (Sum.inl 115) (some (NamedBody211_118, 211, 3))

def NamedBody211_120 : StackLang.HolProg 64 :=
.seq NamedBody211_104 NamedBody211_119

def NamedBody211_121 : StackLang.HolProg 64 :=
.seq NamedBody211_103 NamedBody211_120

def NamedBody211_122 : StackLang.HolProg 64 :=
.seq NamedBody211_102 NamedBody211_121

def NamedBody211_123 : StackLang.HolProg 64 :=
.seq NamedBody211_73 NamedBody211_122

def NamedBody211_124 : StackLang.HolProg 64 :=
.seq NamedBody211_70 NamedBody211_123

def NamedBody211_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody211_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody211_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def NamedBody211_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody211_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody211_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody211_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody211_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def NamedBody211_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody211_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody211_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody211_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody211_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def NamedBody211_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody211_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 12 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody211_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody211_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody211_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def NamedBody211_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody211_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 13 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody211_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody211_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody211_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody211_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 6

def NamedBody211_149 : StackLang.HolProg 64 :=
.seq NamedBody211_147 NamedBody211_148

def NamedBody211_150 : StackLang.HolProg 64 :=
.seq NamedBody211_146 NamedBody211_149

def NamedBody211_151 : StackLang.HolProg 64 :=
.seq NamedBody211_145 NamedBody211_150

def NamedBody211_152 : StackLang.HolProg 64 :=
.seq NamedBody211_144 NamedBody211_151

def NamedBody211_153 : StackLang.HolProg 64 :=
.seq NamedBody211_143 NamedBody211_152

def NamedBody211_154 : StackLang.HolProg 64 :=
.seq NamedBody211_142 NamedBody211_153

def NamedBody211_155 : StackLang.HolProg 64 :=
.seq NamedBody211_141 NamedBody211_154

def NamedBody211_156 : StackLang.HolProg 64 :=
.seq NamedBody211_140 NamedBody211_155

def NamedBody211_157 : StackLang.HolProg 64 :=
.seq NamedBody211_139 NamedBody211_156

def NamedBody211_158 : StackLang.HolProg 64 :=
.seq NamedBody211_138 NamedBody211_157

def NamedBody211_159 : StackLang.HolProg 64 :=
.seq NamedBody211_137 NamedBody211_158

def NamedBody211_160 : StackLang.HolProg 64 :=
.seq NamedBody211_136 NamedBody211_159

def NamedBody211_161 : StackLang.HolProg 64 :=
.seq NamedBody211_135 NamedBody211_160

def NamedBody211_162 : StackLang.HolProg 64 :=
.seq NamedBody211_134 NamedBody211_161

def NamedBody211_163 : StackLang.HolProg 64 :=
.seq NamedBody211_133 NamedBody211_162

def NamedBody211_164 : StackLang.HolProg 64 :=
.seq NamedBody211_132 NamedBody211_163

def NamedBody211_165 : StackLang.HolProg 64 :=
.seq NamedBody211_131 NamedBody211_164

def NamedBody211_166 : StackLang.HolProg 64 :=
.seq NamedBody211_130 NamedBody211_165

def NamedBody211_167 : StackLang.HolProg 64 :=
.seq NamedBody211_129 NamedBody211_166

def NamedBody211_168 : StackLang.HolProg 64 :=
.seq NamedBody211_128 NamedBody211_167

def NamedBody211_169 : StackLang.HolProg 64 :=
.seq NamedBody211_127 NamedBody211_168

def NamedBody211_170 : StackLang.HolProg 64 :=
.seq NamedBody211_126 NamedBody211_169

def NamedBody211_171 : StackLang.HolProg 64 :=
.seq NamedBody211_125 NamedBody211_170

def NamedBody211_172 : StackLang.HolProg 64 :=
.seq NamedBody211_124 NamedBody211_171

def NamedBody211_173 : StackLang.HolProg 64 :=
.seq NamedBody211_69 NamedBody211_172

def NamedBody211_174 : StackLang.HolProg 64 :=
.seq NamedBody211_60 NamedBody211_173

def NamedBody211_175 : StackLang.HolProg 64 :=
.seq NamedBody211_59 NamedBody211_174

def NamedBody211_176 : StackLang.HolProg 64 :=
.seq NamedBody211_58 NamedBody211_175

def NamedBody211_177 : StackLang.HolProg 64 :=
.seq NamedBody211_9 NamedBody211_176

def NamedBody211_178 : StackLang.HolProg 64 :=
.seq NamedBody211_8 NamedBody211_177

def NamedBody211_179 : StackLang.HolProg 64 :=
.seq NamedBody211_7 NamedBody211_178

def NamedBody211_180 : StackLang.HolProg 64 :=
.seq NamedBody211_6 NamedBody211_179

def Named211 : Nat × StackLang.HolProg 64 := (211, NamedBody211_180)
theorem Named211_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed211 = Named211 := by
  kernel_rfl
#print axioms Named211_eq
end InitECandidate.Proofs.BackendStages
