import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed409
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody409_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody409_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody409_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody409_3 : StackLang.HolProg 64 :=
.seq NamedBody409_1 NamedBody409_2

def NamedBody409_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody409_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody409_3 NamedBody409_4

def NamedBody409_6 : StackLang.HolProg 64 :=
.seq NamedBody409_0 NamedBody409_5

def NamedBody409_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody409_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody409_9 : StackLang.HolProg 64 :=
.seq NamedBody409_7 NamedBody409_8

def NamedBody409_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody409_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1219#64)

def NamedBody409_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody409_13 : StackLang.HolProg 64 :=
.seq NamedBody409_11 NamedBody409_12

def NamedBody409_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody409_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody409_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody409_17 : StackLang.HolProg 64 :=
.seq NamedBody409_15 NamedBody409_16

def NamedBody409_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody409_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody409_17 NamedBody409_18

def NamedBody409_20 : StackLang.HolProg 64 :=
.seq NamedBody409_14 NamedBody409_19

def NamedBody409_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody409_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody409_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 409 3

def NamedBody409_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody409_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody409_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody409_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody409_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody409_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody409_30 : StackLang.HolProg 64 :=
.seq NamedBody409_28 NamedBody409_29

def NamedBody409_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody409_32 : StackLang.HolProg 64 :=
.seq NamedBody409_30 NamedBody409_31

def NamedBody409_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody409_34 : StackLang.HolProg 64 :=
.seq NamedBody409_32 NamedBody409_33

def NamedBody409_35 : StackLang.HolProg 64 :=
.seq NamedBody409_27 NamedBody409_34

def NamedBody409_36 : StackLang.HolProg 64 :=
.seq NamedBody409_26 NamedBody409_35

def NamedBody409_37 : StackLang.HolProg 64 :=
.seq NamedBody409_25 NamedBody409_36

def NamedBody409_38 : StackLang.HolProg 64 :=
.seq NamedBody409_24 NamedBody409_37

def NamedBody409_39 : StackLang.HolProg 64 :=
.seq NamedBody409_23 NamedBody409_38

def NamedBody409_40 : StackLang.HolProg 64 :=
.seq NamedBody409_22 NamedBody409_39

def NamedBody409_41 : StackLang.HolProg 64 :=
.seq NamedBody409_21 NamedBody409_40

def NamedBody409_42 : StackLang.HolProg 64 :=
.seq NamedBody409_20 NamedBody409_41

def NamedBody409_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody409_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody409_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody409_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody409_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody409_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody409_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody409_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody409_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody409_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody409_53 : StackLang.HolProg 64 :=
.seq NamedBody409_51 NamedBody409_52

def NamedBody409_54 : StackLang.HolProg 64 :=
.seq NamedBody409_50 NamedBody409_53

def NamedBody409_55 : StackLang.HolProg 64 :=
.seq NamedBody409_49 NamedBody409_54

def NamedBody409_56 : StackLang.HolProg 64 :=
.seq NamedBody409_48 NamedBody409_55

def NamedBody409_57 : StackLang.HolProg 64 :=
.seq NamedBody409_47 NamedBody409_56

def NamedBody409_58 : StackLang.HolProg 64 :=
.seq NamedBody409_46 NamedBody409_57

def NamedBody409_59 : StackLang.HolProg 64 :=
.seq NamedBody409_45 NamedBody409_58

def NamedBody409_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody409_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody409_62 : StackLang.HolProg 64 :=
.seq NamedBody409_60 NamedBody409_61

def NamedBody409_63 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody409_64 : StackLang.HolProg 64 :=
.seq NamedBody409_62 NamedBody409_63

def NamedBody409_65 : StackLang.HolProg 64 :=
.call (some (NamedBody409_59, 1, 409, 2)) (Sum.inl 186) (some (NamedBody409_64, 409, 3))

def NamedBody409_66 : StackLang.HolProg 64 :=
.seq NamedBody409_44 NamedBody409_65

def NamedBody409_67 : StackLang.HolProg 64 :=
.seq NamedBody409_43 NamedBody409_66

def NamedBody409_68 : StackLang.HolProg 64 :=
.seq NamedBody409_42 NamedBody409_67

def NamedBody409_69 : StackLang.HolProg 64 :=
.seq NamedBody409_13 NamedBody409_68

def NamedBody409_70 : StackLang.HolProg 64 :=
.seq NamedBody409_10 NamedBody409_69

def NamedBody409_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody409_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody409_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody409_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody409_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody409_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody409_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody409_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody409_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def NamedBody409_80 : StackLang.HolProg 64 :=
.seq NamedBody409_78 NamedBody409_79

def NamedBody409_81 : StackLang.HolProg 64 :=
.seq NamedBody409_77 NamedBody409_80

def NamedBody409_82 : StackLang.HolProg 64 :=
.seq NamedBody409_76 NamedBody409_81

def NamedBody409_83 : StackLang.HolProg 64 :=
.seq NamedBody409_75 NamedBody409_82

def NamedBody409_84 : StackLang.HolProg 64 :=
.seq NamedBody409_74 NamedBody409_83

def NamedBody409_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody409_86 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody409_84 NamedBody409_85

def NamedBody409_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody409_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody409_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody409_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody409_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody409_92 : StackLang.HolProg 64 :=
.seq NamedBody409_90 NamedBody409_91

def NamedBody409_93 : StackLang.HolProg 64 :=
.seq NamedBody409_89 NamedBody409_92

def NamedBody409_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody409_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1220#64)

def NamedBody409_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody409_97 : StackLang.HolProg 64 :=
.seq NamedBody409_95 NamedBody409_96

def NamedBody409_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody409_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody409_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody409_101 : StackLang.HolProg 64 :=
.seq NamedBody409_99 NamedBody409_100

def NamedBody409_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody409_103 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody409_101 NamedBody409_102

def NamedBody409_104 : StackLang.HolProg 64 :=
.seq NamedBody409_98 NamedBody409_103

def NamedBody409_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody409_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody409_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 409 5

def NamedBody409_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody409_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody409_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody409_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody409_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody409_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody409_114 : StackLang.HolProg 64 :=
.seq NamedBody409_112 NamedBody409_113

def NamedBody409_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody409_116 : StackLang.HolProg 64 :=
.seq NamedBody409_114 NamedBody409_115

def NamedBody409_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody409_118 : StackLang.HolProg 64 :=
.seq NamedBody409_116 NamedBody409_117

def NamedBody409_119 : StackLang.HolProg 64 :=
.seq NamedBody409_111 NamedBody409_118

def NamedBody409_120 : StackLang.HolProg 64 :=
.seq NamedBody409_110 NamedBody409_119

def NamedBody409_121 : StackLang.HolProg 64 :=
.seq NamedBody409_109 NamedBody409_120

def NamedBody409_122 : StackLang.HolProg 64 :=
.seq NamedBody409_108 NamedBody409_121

def NamedBody409_123 : StackLang.HolProg 64 :=
.seq NamedBody409_107 NamedBody409_122

def NamedBody409_124 : StackLang.HolProg 64 :=
.seq NamedBody409_106 NamedBody409_123

def NamedBody409_125 : StackLang.HolProg 64 :=
.seq NamedBody409_105 NamedBody409_124

def NamedBody409_126 : StackLang.HolProg 64 :=
.seq NamedBody409_104 NamedBody409_125

def NamedBody409_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody409_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody409_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody409_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody409_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody409_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody409_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody409_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody409_135 : StackLang.HolProg 64 :=
.seq NamedBody409_133 NamedBody409_134

def NamedBody409_136 : StackLang.HolProg 64 :=
.seq NamedBody409_132 NamedBody409_135

def NamedBody409_137 : StackLang.HolProg 64 :=
.seq NamedBody409_131 NamedBody409_136

def NamedBody409_138 : StackLang.HolProg 64 :=
.seq NamedBody409_130 NamedBody409_137

def NamedBody409_139 : StackLang.HolProg 64 :=
.seq NamedBody409_129 NamedBody409_138

def NamedBody409_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody409_141 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody409_142 : StackLang.HolProg 64 :=
.seq NamedBody409_140 NamedBody409_141

def NamedBody409_143 : StackLang.HolProg 64 :=
.call (some (NamedBody409_139, 1, 409, 4)) (Sum.inl 186) (some (NamedBody409_142, 409, 5))

def NamedBody409_144 : StackLang.HolProg 64 :=
.seq NamedBody409_128 NamedBody409_143

def NamedBody409_145 : StackLang.HolProg 64 :=
.seq NamedBody409_127 NamedBody409_144

def NamedBody409_146 : StackLang.HolProg 64 :=
.seq NamedBody409_126 NamedBody409_145

def NamedBody409_147 : StackLang.HolProg 64 :=
.seq NamedBody409_97 NamedBody409_146

def NamedBody409_148 : StackLang.HolProg 64 :=
.seq NamedBody409_94 NamedBody409_147

def NamedBody409_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody409_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody409_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody409_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody409_153 : StackLang.HolProg 64 :=
.seq NamedBody409_151 NamedBody409_152

def NamedBody409_154 : StackLang.HolProg 64 :=
.seq NamedBody409_150 NamedBody409_153

def NamedBody409_155 : StackLang.HolProg 64 :=
.seq NamedBody409_149 NamedBody409_154

def NamedBody409_156 : StackLang.HolProg 64 :=
.seq NamedBody409_148 NamedBody409_155

def NamedBody409_157 : StackLang.HolProg 64 :=
.seq NamedBody409_93 NamedBody409_156

def NamedBody409_158 : StackLang.HolProg 64 :=
.seq NamedBody409_88 NamedBody409_157

def NamedBody409_159 : StackLang.HolProg 64 :=
.seq NamedBody409_87 NamedBody409_158

def NamedBody409_160 : StackLang.HolProg 64 :=
.seq NamedBody409_86 NamedBody409_159

def NamedBody409_161 : StackLang.HolProg 64 :=
.seq NamedBody409_73 NamedBody409_160

def NamedBody409_162 : StackLang.HolProg 64 :=
.seq NamedBody409_72 NamedBody409_161

def NamedBody409_163 : StackLang.HolProg 64 :=
.seq NamedBody409_71 NamedBody409_162

def NamedBody409_164 : StackLang.HolProg 64 :=
.seq NamedBody409_70 NamedBody409_163

def NamedBody409_165 : StackLang.HolProg 64 :=
.seq NamedBody409_9 NamedBody409_164

def NamedBody409_166 : StackLang.HolProg 64 :=
.seq NamedBody409_6 NamedBody409_165

def Named409 : Nat × StackLang.HolProg 64 := (409, NamedBody409_166)
theorem Named409_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed409 = Named409 := by
  kernel_rfl
#print axioms Named409_eq
end InitECandidate.Proofs.BackendStages
