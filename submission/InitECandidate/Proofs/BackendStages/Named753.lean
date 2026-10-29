import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed753
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody753_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody753_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody753_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody753_3 : StackLang.HolProg 64 :=
.seq NamedBody753_1 NamedBody753_2

def NamedBody753_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody753_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody753_3 NamedBody753_4

def NamedBody753_6 : StackLang.HolProg 64 :=
.seq NamedBody753_0 NamedBody753_5

def NamedBody753_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody753_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody753_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody753_10 : StackLang.HolProg 64 :=
.seq NamedBody753_8 NamedBody753_9

def NamedBody753_11 : StackLang.HolProg 64 :=
.seq NamedBody753_7 NamedBody753_10

def NamedBody753_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody753_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3340#64)

def NamedBody753_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody753_15 : StackLang.HolProg 64 :=
.seq NamedBody753_13 NamedBody753_14

def NamedBody753_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody753_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody753_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody753_19 : StackLang.HolProg 64 :=
.seq NamedBody753_17 NamedBody753_18

def NamedBody753_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody753_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody753_19 NamedBody753_20

def NamedBody753_22 : StackLang.HolProg 64 :=
.seq NamedBody753_16 NamedBody753_21

def NamedBody753_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody753_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody753_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 753 3

def NamedBody753_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody753_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody753_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody753_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody753_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody753_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody753_32 : StackLang.HolProg 64 :=
.seq NamedBody753_30 NamedBody753_31

def NamedBody753_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody753_34 : StackLang.HolProg 64 :=
.seq NamedBody753_32 NamedBody753_33

def NamedBody753_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody753_36 : StackLang.HolProg 64 :=
.seq NamedBody753_34 NamedBody753_35

def NamedBody753_37 : StackLang.HolProg 64 :=
.seq NamedBody753_29 NamedBody753_36

def NamedBody753_38 : StackLang.HolProg 64 :=
.seq NamedBody753_28 NamedBody753_37

def NamedBody753_39 : StackLang.HolProg 64 :=
.seq NamedBody753_27 NamedBody753_38

def NamedBody753_40 : StackLang.HolProg 64 :=
.seq NamedBody753_26 NamedBody753_39

def NamedBody753_41 : StackLang.HolProg 64 :=
.seq NamedBody753_25 NamedBody753_40

def NamedBody753_42 : StackLang.HolProg 64 :=
.seq NamedBody753_24 NamedBody753_41

def NamedBody753_43 : StackLang.HolProg 64 :=
.seq NamedBody753_23 NamedBody753_42

def NamedBody753_44 : StackLang.HolProg 64 :=
.seq NamedBody753_22 NamedBody753_43

def NamedBody753_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody753_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody753_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody753_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody753_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody753_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody753_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody753_52 : StackLang.HolProg 64 :=
.seq NamedBody753_50 NamedBody753_51

def NamedBody753_53 : StackLang.HolProg 64 :=
.seq NamedBody753_49 NamedBody753_52

def NamedBody753_54 : StackLang.HolProg 64 :=
.seq NamedBody753_48 NamedBody753_53

def NamedBody753_55 : StackLang.HolProg 64 :=
.seq NamedBody753_47 NamedBody753_54

def NamedBody753_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody753_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody753_58 : StackLang.HolProg 64 :=
.seq NamedBody753_56 NamedBody753_57

def NamedBody753_59 : StackLang.HolProg 64 :=
.call (some (NamedBody753_55, 1, 753, 2)) (Sum.inl 69) (some (NamedBody753_58, 753, 3))

def NamedBody753_60 : StackLang.HolProg 64 :=
.seq NamedBody753_46 NamedBody753_59

def NamedBody753_61 : StackLang.HolProg 64 :=
.seq NamedBody753_45 NamedBody753_60

def NamedBody753_62 : StackLang.HolProg 64 :=
.seq NamedBody753_44 NamedBody753_61

def NamedBody753_63 : StackLang.HolProg 64 :=
.seq NamedBody753_15 NamedBody753_62

def NamedBody753_64 : StackLang.HolProg 64 :=
.seq NamedBody753_12 NamedBody753_63

def NamedBody753_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody753_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 96#64)

def NamedBody753_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody753_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody753_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3341#64)

def NamedBody753_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody753_71 : StackLang.HolProg 64 :=
.seq NamedBody753_69 NamedBody753_70

def NamedBody753_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody753_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody753_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody753_75 : StackLang.HolProg 64 :=
.seq NamedBody753_73 NamedBody753_74

def NamedBody753_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody753_77 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody753_75 NamedBody753_76

def NamedBody753_78 : StackLang.HolProg 64 :=
.seq NamedBody753_72 NamedBody753_77

def NamedBody753_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody753_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody753_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 753 5

def NamedBody753_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody753_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody753_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody753_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody753_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody753_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody753_88 : StackLang.HolProg 64 :=
.seq NamedBody753_86 NamedBody753_87

def NamedBody753_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody753_90 : StackLang.HolProg 64 :=
.seq NamedBody753_88 NamedBody753_89

def NamedBody753_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody753_92 : StackLang.HolProg 64 :=
.seq NamedBody753_90 NamedBody753_91

def NamedBody753_93 : StackLang.HolProg 64 :=
.seq NamedBody753_85 NamedBody753_92

def NamedBody753_94 : StackLang.HolProg 64 :=
.seq NamedBody753_84 NamedBody753_93

def NamedBody753_95 : StackLang.HolProg 64 :=
.seq NamedBody753_83 NamedBody753_94

def NamedBody753_96 : StackLang.HolProg 64 :=
.seq NamedBody753_82 NamedBody753_95

def NamedBody753_97 : StackLang.HolProg 64 :=
.seq NamedBody753_81 NamedBody753_96

def NamedBody753_98 : StackLang.HolProg 64 :=
.seq NamedBody753_80 NamedBody753_97

def NamedBody753_99 : StackLang.HolProg 64 :=
.seq NamedBody753_79 NamedBody753_98

def NamedBody753_100 : StackLang.HolProg 64 :=
.seq NamedBody753_78 NamedBody753_99

def NamedBody753_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody753_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody753_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody753_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody753_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody753_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody753_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody753_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody753_109 : StackLang.HolProg 64 :=
.seq NamedBody753_107 NamedBody753_108

def NamedBody753_110 : StackLang.HolProg 64 :=
.seq NamedBody753_106 NamedBody753_109

def NamedBody753_111 : StackLang.HolProg 64 :=
.seq NamedBody753_105 NamedBody753_110

def NamedBody753_112 : StackLang.HolProg 64 :=
.seq NamedBody753_104 NamedBody753_111

def NamedBody753_113 : StackLang.HolProg 64 :=
.seq NamedBody753_103 NamedBody753_112

def NamedBody753_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody753_115 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody753_116 : StackLang.HolProg 64 :=
.seq NamedBody753_114 NamedBody753_115

def NamedBody753_117 : StackLang.HolProg 64 :=
.call (some (NamedBody753_113, 1, 753, 4)) (Sum.inl 68) (some (NamedBody753_116, 753, 5))

def NamedBody753_118 : StackLang.HolProg 64 :=
.seq NamedBody753_102 NamedBody753_117

def NamedBody753_119 : StackLang.HolProg 64 :=
.seq NamedBody753_101 NamedBody753_118

def NamedBody753_120 : StackLang.HolProg 64 :=
.seq NamedBody753_100 NamedBody753_119

def NamedBody753_121 : StackLang.HolProg 64 :=
.seq NamedBody753_71 NamedBody753_120

def NamedBody753_122 : StackLang.HolProg 64 :=
.seq NamedBody753_68 NamedBody753_121

def NamedBody753_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody753_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody753_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def NamedBody753_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody753_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody753_128 : StackLang.HolProg 64 :=
.seq NamedBody753_126 NamedBody753_127

def NamedBody753_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody753_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3342#64)

def NamedBody753_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody753_132 : StackLang.HolProg 64 :=
.seq NamedBody753_130 NamedBody753_131

def NamedBody753_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody753_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody753_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody753_136 : StackLang.HolProg 64 :=
.seq NamedBody753_134 NamedBody753_135

def NamedBody753_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody753_138 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody753_136 NamedBody753_137

def NamedBody753_139 : StackLang.HolProg 64 :=
.seq NamedBody753_133 NamedBody753_138

def NamedBody753_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody753_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody753_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 753 7

def NamedBody753_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody753_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody753_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody753_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody753_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody753_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody753_149 : StackLang.HolProg 64 :=
.seq NamedBody753_147 NamedBody753_148

def NamedBody753_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody753_151 : StackLang.HolProg 64 :=
.seq NamedBody753_149 NamedBody753_150

def NamedBody753_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody753_153 : StackLang.HolProg 64 :=
.seq NamedBody753_151 NamedBody753_152

def NamedBody753_154 : StackLang.HolProg 64 :=
.seq NamedBody753_146 NamedBody753_153

def NamedBody753_155 : StackLang.HolProg 64 :=
.seq NamedBody753_145 NamedBody753_154

def NamedBody753_156 : StackLang.HolProg 64 :=
.seq NamedBody753_144 NamedBody753_155

def NamedBody753_157 : StackLang.HolProg 64 :=
.seq NamedBody753_143 NamedBody753_156

def NamedBody753_158 : StackLang.HolProg 64 :=
.seq NamedBody753_142 NamedBody753_157

def NamedBody753_159 : StackLang.HolProg 64 :=
.seq NamedBody753_141 NamedBody753_158

def NamedBody753_160 : StackLang.HolProg 64 :=
.seq NamedBody753_140 NamedBody753_159

def NamedBody753_161 : StackLang.HolProg 64 :=
.seq NamedBody753_139 NamedBody753_160

def NamedBody753_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody753_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody753_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody753_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody753_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody753_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody753_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody753_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody753_170 : StackLang.HolProg 64 :=
.seq NamedBody753_168 NamedBody753_169

def NamedBody753_171 : StackLang.HolProg 64 :=
.seq NamedBody753_167 NamedBody753_170

def NamedBody753_172 : StackLang.HolProg 64 :=
.seq NamedBody753_166 NamedBody753_171

def NamedBody753_173 : StackLang.HolProg 64 :=
.seq NamedBody753_165 NamedBody753_172

def NamedBody753_174 : StackLang.HolProg 64 :=
.seq NamedBody753_164 NamedBody753_173

def NamedBody753_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody753_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody753_177 : StackLang.HolProg 64 :=
.seq NamedBody753_175 NamedBody753_176

def NamedBody753_178 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody753_179 : StackLang.HolProg 64 :=
.seq NamedBody753_177 NamedBody753_178

def NamedBody753_180 : StackLang.HolProg 64 :=
.call (some (NamedBody753_174, 1, 753, 6)) (Sum.inl 741) (some (NamedBody753_179, 753, 7))

def NamedBody753_181 : StackLang.HolProg 64 :=
.seq NamedBody753_163 NamedBody753_180

def NamedBody753_182 : StackLang.HolProg 64 :=
.seq NamedBody753_162 NamedBody753_181

def NamedBody753_183 : StackLang.HolProg 64 :=
.seq NamedBody753_161 NamedBody753_182

def NamedBody753_184 : StackLang.HolProg 64 :=
.seq NamedBody753_132 NamedBody753_183

def NamedBody753_185 : StackLang.HolProg 64 :=
.seq NamedBody753_129 NamedBody753_184

def NamedBody753_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody753_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody753_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def NamedBody753_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody753_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def NamedBody753_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody753_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody753_193 : StackLang.HolProg 64 :=
.seq NamedBody753_191 NamedBody753_192

def NamedBody753_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody753_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3343#64)

def NamedBody753_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody753_197 : StackLang.HolProg 64 :=
.seq NamedBody753_195 NamedBody753_196

def NamedBody753_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody753_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody753_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody753_201 : StackLang.HolProg 64 :=
.seq NamedBody753_199 NamedBody753_200

def NamedBody753_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody753_203 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody753_201 NamedBody753_202

def NamedBody753_204 : StackLang.HolProg 64 :=
.seq NamedBody753_198 NamedBody753_203

def NamedBody753_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody753_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody753_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 753 9

def NamedBody753_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody753_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody753_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody753_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody753_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody753_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody753_214 : StackLang.HolProg 64 :=
.seq NamedBody753_212 NamedBody753_213

def NamedBody753_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody753_216 : StackLang.HolProg 64 :=
.seq NamedBody753_214 NamedBody753_215

def NamedBody753_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody753_218 : StackLang.HolProg 64 :=
.seq NamedBody753_216 NamedBody753_217

def NamedBody753_219 : StackLang.HolProg 64 :=
.seq NamedBody753_211 NamedBody753_218

def NamedBody753_220 : StackLang.HolProg 64 :=
.seq NamedBody753_210 NamedBody753_219

def NamedBody753_221 : StackLang.HolProg 64 :=
.seq NamedBody753_209 NamedBody753_220

def NamedBody753_222 : StackLang.HolProg 64 :=
.seq NamedBody753_208 NamedBody753_221

def NamedBody753_223 : StackLang.HolProg 64 :=
.seq NamedBody753_207 NamedBody753_222

def NamedBody753_224 : StackLang.HolProg 64 :=
.seq NamedBody753_206 NamedBody753_223

def NamedBody753_225 : StackLang.HolProg 64 :=
.seq NamedBody753_205 NamedBody753_224

def NamedBody753_226 : StackLang.HolProg 64 :=
.seq NamedBody753_204 NamedBody753_225

def NamedBody753_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody753_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody753_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody753_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody753_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody753_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody753_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody753_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody753_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody753_236 : StackLang.HolProg 64 :=
.seq NamedBody753_234 NamedBody753_235

def NamedBody753_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody753_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody753_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody753_240 : StackLang.HolProg 64 :=
.seq NamedBody753_238 NamedBody753_239

def NamedBody753_241 : StackLang.HolProg 64 :=
.seq NamedBody753_237 NamedBody753_240

def NamedBody753_242 : StackLang.HolProg 64 :=
.seq NamedBody753_236 NamedBody753_241

def NamedBody753_243 : StackLang.HolProg 64 :=
.seq NamedBody753_233 NamedBody753_242

def NamedBody753_244 : StackLang.HolProg 64 :=
.seq NamedBody753_232 NamedBody753_243

def NamedBody753_245 : StackLang.HolProg 64 :=
.seq NamedBody753_231 NamedBody753_244

def NamedBody753_246 : StackLang.HolProg 64 :=
.seq NamedBody753_230 NamedBody753_245

def NamedBody753_247 : StackLang.HolProg 64 :=
.seq NamedBody753_229 NamedBody753_246

def NamedBody753_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody753_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody753_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody753_251 : StackLang.HolProg 64 :=
.seq NamedBody753_249 NamedBody753_250

def NamedBody753_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody753_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody753_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody753_255 : StackLang.HolProg 64 :=
.seq NamedBody753_253 NamedBody753_254

def NamedBody753_256 : StackLang.HolProg 64 :=
.seq NamedBody753_252 NamedBody753_255

def NamedBody753_257 : StackLang.HolProg 64 :=
.seq NamedBody753_251 NamedBody753_256

def NamedBody753_258 : StackLang.HolProg 64 :=
.seq NamedBody753_248 NamedBody753_257

def NamedBody753_259 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody753_260 : StackLang.HolProg 64 :=
.seq NamedBody753_258 NamedBody753_259

def NamedBody753_261 : StackLang.HolProg 64 :=
.call (some (NamedBody753_247, 1, 753, 8)) (Sum.inl 729) (some (NamedBody753_260, 753, 9))

def NamedBody753_262 : StackLang.HolProg 64 :=
.seq NamedBody753_228 NamedBody753_261

def NamedBody753_263 : StackLang.HolProg 64 :=
.seq NamedBody753_227 NamedBody753_262

def NamedBody753_264 : StackLang.HolProg 64 :=
.seq NamedBody753_226 NamedBody753_263

def NamedBody753_265 : StackLang.HolProg 64 :=
.seq NamedBody753_197 NamedBody753_264

def NamedBody753_266 : StackLang.HolProg 64 :=
.seq NamedBody753_194 NamedBody753_265

def NamedBody753_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody753_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody753_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def NamedBody753_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody753_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody753_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3344#64)

def NamedBody753_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody753_274 : StackLang.HolProg 64 :=
.seq NamedBody753_272 NamedBody753_273

def NamedBody753_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody753_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody753_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody753_278 : StackLang.HolProg 64 :=
.seq NamedBody753_276 NamedBody753_277

def NamedBody753_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody753_280 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody753_278 NamedBody753_279

def NamedBody753_281 : StackLang.HolProg 64 :=
.seq NamedBody753_275 NamedBody753_280

def NamedBody753_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody753_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody753_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 753 11

def NamedBody753_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody753_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody753_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody753_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody753_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody753_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody753_291 : StackLang.HolProg 64 :=
.seq NamedBody753_289 NamedBody753_290

def NamedBody753_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody753_293 : StackLang.HolProg 64 :=
.seq NamedBody753_291 NamedBody753_292

def NamedBody753_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody753_295 : StackLang.HolProg 64 :=
.seq NamedBody753_293 NamedBody753_294

def NamedBody753_296 : StackLang.HolProg 64 :=
.seq NamedBody753_288 NamedBody753_295

def NamedBody753_297 : StackLang.HolProg 64 :=
.seq NamedBody753_287 NamedBody753_296

def NamedBody753_298 : StackLang.HolProg 64 :=
.seq NamedBody753_286 NamedBody753_297

def NamedBody753_299 : StackLang.HolProg 64 :=
.seq NamedBody753_285 NamedBody753_298

def NamedBody753_300 : StackLang.HolProg 64 :=
.seq NamedBody753_284 NamedBody753_299

def NamedBody753_301 : StackLang.HolProg 64 :=
.seq NamedBody753_283 NamedBody753_300

def NamedBody753_302 : StackLang.HolProg 64 :=
.seq NamedBody753_282 NamedBody753_301

def NamedBody753_303 : StackLang.HolProg 64 :=
.seq NamedBody753_281 NamedBody753_302

def NamedBody753_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody753_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody753_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody753_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody753_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody753_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody753_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody753_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody753_312 : StackLang.HolProg 64 :=
.seq NamedBody753_310 NamedBody753_311

def NamedBody753_313 : StackLang.HolProg 64 :=
.seq NamedBody753_309 NamedBody753_312

def NamedBody753_314 : StackLang.HolProg 64 :=
.seq NamedBody753_308 NamedBody753_313

def NamedBody753_315 : StackLang.HolProg 64 :=
.seq NamedBody753_307 NamedBody753_314

def NamedBody753_316 : StackLang.HolProg 64 :=
.seq NamedBody753_306 NamedBody753_315

def NamedBody753_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody753_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody753_319 : StackLang.HolProg 64 :=
.seq NamedBody753_317 NamedBody753_318

def NamedBody753_320 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody753_321 : StackLang.HolProg 64 :=
.seq NamedBody753_319 NamedBody753_320

def NamedBody753_322 : StackLang.HolProg 64 :=
.call (some (NamedBody753_316, 1, 753, 10)) (Sum.inl 729) (some (NamedBody753_321, 753, 11))

def NamedBody753_323 : StackLang.HolProg 64 :=
.seq NamedBody753_305 NamedBody753_322

def NamedBody753_324 : StackLang.HolProg 64 :=
.seq NamedBody753_304 NamedBody753_323

def NamedBody753_325 : StackLang.HolProg 64 :=
.seq NamedBody753_303 NamedBody753_324

def NamedBody753_326 : StackLang.HolProg 64 :=
.seq NamedBody753_274 NamedBody753_325

def NamedBody753_327 : StackLang.HolProg 64 :=
.seq NamedBody753_271 NamedBody753_326

def NamedBody753_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody753_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody753_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody753_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3345#64)

def NamedBody753_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody753_333 : StackLang.HolProg 64 :=
.seq NamedBody753_331 NamedBody753_332

def NamedBody753_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody753_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody753_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody753_337 : StackLang.HolProg 64 :=
.seq NamedBody753_335 NamedBody753_336

def NamedBody753_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody753_339 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody753_337 NamedBody753_338

def NamedBody753_340 : StackLang.HolProg 64 :=
.seq NamedBody753_334 NamedBody753_339

def NamedBody753_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody753_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody753_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 753 13

def NamedBody753_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody753_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody753_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody753_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody753_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody753_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody753_350 : StackLang.HolProg 64 :=
.seq NamedBody753_348 NamedBody753_349

def NamedBody753_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody753_352 : StackLang.HolProg 64 :=
.seq NamedBody753_350 NamedBody753_351

def NamedBody753_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody753_354 : StackLang.HolProg 64 :=
.seq NamedBody753_352 NamedBody753_353

def NamedBody753_355 : StackLang.HolProg 64 :=
.seq NamedBody753_347 NamedBody753_354

def NamedBody753_356 : StackLang.HolProg 64 :=
.seq NamedBody753_346 NamedBody753_355

def NamedBody753_357 : StackLang.HolProg 64 :=
.seq NamedBody753_345 NamedBody753_356

def NamedBody753_358 : StackLang.HolProg 64 :=
.seq NamedBody753_344 NamedBody753_357

def NamedBody753_359 : StackLang.HolProg 64 :=
.seq NamedBody753_343 NamedBody753_358

def NamedBody753_360 : StackLang.HolProg 64 :=
.seq NamedBody753_342 NamedBody753_359

def NamedBody753_361 : StackLang.HolProg 64 :=
.seq NamedBody753_341 NamedBody753_360

def NamedBody753_362 : StackLang.HolProg 64 :=
.seq NamedBody753_340 NamedBody753_361

def NamedBody753_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody753_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody753_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody753_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody753_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody753_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody753_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody753_370 : StackLang.HolProg 64 :=
.seq NamedBody753_368 NamedBody753_369

def NamedBody753_371 : StackLang.HolProg 64 :=
.seq NamedBody753_367 NamedBody753_370

def NamedBody753_372 : StackLang.HolProg 64 :=
.seq NamedBody753_366 NamedBody753_371

def NamedBody753_373 : StackLang.HolProg 64 :=
.seq NamedBody753_365 NamedBody753_372

def NamedBody753_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody753_375 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody753_376 : StackLang.HolProg 64 :=
.seq NamedBody753_374 NamedBody753_375

def NamedBody753_377 : StackLang.HolProg 64 :=
.call (some (NamedBody753_373, 1, 753, 12)) (Sum.inl 729) (some (NamedBody753_376, 753, 13))

def NamedBody753_378 : StackLang.HolProg 64 :=
.seq NamedBody753_364 NamedBody753_377

def NamedBody753_379 : StackLang.HolProg 64 :=
.seq NamedBody753_363 NamedBody753_378

def NamedBody753_380 : StackLang.HolProg 64 :=
.seq NamedBody753_362 NamedBody753_379

def NamedBody753_381 : StackLang.HolProg 64 :=
.seq NamedBody753_333 NamedBody753_380

def NamedBody753_382 : StackLang.HolProg 64 :=
.seq NamedBody753_330 NamedBody753_381

def NamedBody753_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody753_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody753_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody753_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3346#64)

def NamedBody753_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody753_388 : StackLang.HolProg 64 :=
.seq NamedBody753_386 NamedBody753_387

def NamedBody753_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody753_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody753_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody753_392 : StackLang.HolProg 64 :=
.seq NamedBody753_390 NamedBody753_391

def NamedBody753_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody753_394 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody753_392 NamedBody753_393

def NamedBody753_395 : StackLang.HolProg 64 :=
.seq NamedBody753_389 NamedBody753_394

def NamedBody753_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody753_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody753_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 753 15

def NamedBody753_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody753_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody753_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody753_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody753_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody753_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody753_405 : StackLang.HolProg 64 :=
.seq NamedBody753_403 NamedBody753_404

def NamedBody753_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody753_407 : StackLang.HolProg 64 :=
.seq NamedBody753_405 NamedBody753_406

def NamedBody753_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody753_409 : StackLang.HolProg 64 :=
.seq NamedBody753_407 NamedBody753_408

def NamedBody753_410 : StackLang.HolProg 64 :=
.seq NamedBody753_402 NamedBody753_409

def NamedBody753_411 : StackLang.HolProg 64 :=
.seq NamedBody753_401 NamedBody753_410

def NamedBody753_412 : StackLang.HolProg 64 :=
.seq NamedBody753_400 NamedBody753_411

def NamedBody753_413 : StackLang.HolProg 64 :=
.seq NamedBody753_399 NamedBody753_412

def NamedBody753_414 : StackLang.HolProg 64 :=
.seq NamedBody753_398 NamedBody753_413

def NamedBody753_415 : StackLang.HolProg 64 :=
.seq NamedBody753_397 NamedBody753_414

def NamedBody753_416 : StackLang.HolProg 64 :=
.seq NamedBody753_396 NamedBody753_415

def NamedBody753_417 : StackLang.HolProg 64 :=
.seq NamedBody753_395 NamedBody753_416

def NamedBody753_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody753_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody753_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody753_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody753_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody753_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody753_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody753_425 : StackLang.HolProg 64 :=
.seq NamedBody753_423 NamedBody753_424

def NamedBody753_426 : StackLang.HolProg 64 :=
.seq NamedBody753_422 NamedBody753_425

def NamedBody753_427 : StackLang.HolProg 64 :=
.seq NamedBody753_421 NamedBody753_426

def NamedBody753_428 : StackLang.HolProg 64 :=
.seq NamedBody753_420 NamedBody753_427

def NamedBody753_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody753_430 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody753_431 : StackLang.HolProg 64 :=
.seq NamedBody753_429 NamedBody753_430

def NamedBody753_432 : StackLang.HolProg 64 :=
.call (some (NamedBody753_428, 1, 753, 14)) (Sum.inl 70) (some (NamedBody753_431, 753, 15))

def NamedBody753_433 : StackLang.HolProg 64 :=
.seq NamedBody753_419 NamedBody753_432

def NamedBody753_434 : StackLang.HolProg 64 :=
.seq NamedBody753_418 NamedBody753_433

def NamedBody753_435 : StackLang.HolProg 64 :=
.seq NamedBody753_417 NamedBody753_434

def NamedBody753_436 : StackLang.HolProg 64 :=
.seq NamedBody753_388 NamedBody753_435

def NamedBody753_437 : StackLang.HolProg 64 :=
.seq NamedBody753_385 NamedBody753_436

def NamedBody753_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody753_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody753_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody753_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody753_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody753_443 : StackLang.HolProg 64 :=
.seq NamedBody753_441 NamedBody753_442

def NamedBody753_444 : StackLang.HolProg 64 :=
.seq NamedBody753_440 NamedBody753_443

def NamedBody753_445 : StackLang.HolProg 64 :=
.seq NamedBody753_439 NamedBody753_444

def NamedBody753_446 : StackLang.HolProg 64 :=
.seq NamedBody753_438 NamedBody753_445

def NamedBody753_447 : StackLang.HolProg 64 :=
.seq NamedBody753_437 NamedBody753_446

def NamedBody753_448 : StackLang.HolProg 64 :=
.seq NamedBody753_384 NamedBody753_447

def NamedBody753_449 : StackLang.HolProg 64 :=
.seq NamedBody753_383 NamedBody753_448

def NamedBody753_450 : StackLang.HolProg 64 :=
.seq NamedBody753_382 NamedBody753_449

def NamedBody753_451 : StackLang.HolProg 64 :=
.seq NamedBody753_329 NamedBody753_450

def NamedBody753_452 : StackLang.HolProg 64 :=
.seq NamedBody753_328 NamedBody753_451

def NamedBody753_453 : StackLang.HolProg 64 :=
.seq NamedBody753_327 NamedBody753_452

def NamedBody753_454 : StackLang.HolProg 64 :=
.seq NamedBody753_270 NamedBody753_453

def NamedBody753_455 : StackLang.HolProg 64 :=
.seq NamedBody753_269 NamedBody753_454

def NamedBody753_456 : StackLang.HolProg 64 :=
.seq NamedBody753_268 NamedBody753_455

def NamedBody753_457 : StackLang.HolProg 64 :=
.seq NamedBody753_267 NamedBody753_456

def NamedBody753_458 : StackLang.HolProg 64 :=
.seq NamedBody753_266 NamedBody753_457

def NamedBody753_459 : StackLang.HolProg 64 :=
.seq NamedBody753_193 NamedBody753_458

def NamedBody753_460 : StackLang.HolProg 64 :=
.seq NamedBody753_190 NamedBody753_459

def NamedBody753_461 : StackLang.HolProg 64 :=
.seq NamedBody753_189 NamedBody753_460

def NamedBody753_462 : StackLang.HolProg 64 :=
.seq NamedBody753_188 NamedBody753_461

def NamedBody753_463 : StackLang.HolProg 64 :=
.seq NamedBody753_187 NamedBody753_462

def NamedBody753_464 : StackLang.HolProg 64 :=
.seq NamedBody753_186 NamedBody753_463

def NamedBody753_465 : StackLang.HolProg 64 :=
.seq NamedBody753_185 NamedBody753_464

def NamedBody753_466 : StackLang.HolProg 64 :=
.seq NamedBody753_128 NamedBody753_465

def NamedBody753_467 : StackLang.HolProg 64 :=
.seq NamedBody753_125 NamedBody753_466

def NamedBody753_468 : StackLang.HolProg 64 :=
.seq NamedBody753_124 NamedBody753_467

def NamedBody753_469 : StackLang.HolProg 64 :=
.seq NamedBody753_123 NamedBody753_468

def NamedBody753_470 : StackLang.HolProg 64 :=
.seq NamedBody753_122 NamedBody753_469

def NamedBody753_471 : StackLang.HolProg 64 :=
.seq NamedBody753_67 NamedBody753_470

def NamedBody753_472 : StackLang.HolProg 64 :=
.seq NamedBody753_66 NamedBody753_471

def NamedBody753_473 : StackLang.HolProg 64 :=
.seq NamedBody753_65 NamedBody753_472

def NamedBody753_474 : StackLang.HolProg 64 :=
.seq NamedBody753_64 NamedBody753_473

def NamedBody753_475 : StackLang.HolProg 64 :=
.seq NamedBody753_11 NamedBody753_474

def NamedBody753_476 : StackLang.HolProg 64 :=
.seq NamedBody753_6 NamedBody753_475

def Named753 : Nat × StackLang.HolProg 64 := (753, NamedBody753_476)
theorem Named753_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed753 = Named753 := by
  kernel_rfl
#print axioms Named753_eq
end InitECandidate.Proofs.BackendStages
