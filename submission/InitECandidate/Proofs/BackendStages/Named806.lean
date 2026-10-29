import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed806
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody806_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody806_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody806_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody806_3 : StackLang.HolProg 64 :=
.seq NamedBody806_1 NamedBody806_2

def NamedBody806_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody806_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody806_3 NamedBody806_4

def NamedBody806_6 : StackLang.HolProg 64 :=
.seq NamedBody806_0 NamedBody806_5

def NamedBody806_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody806_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 0#64))

def NamedBody806_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody806_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 192#64)

def NamedBody806_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody806_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody806_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody806_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 47#64)

def NamedBody806_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody806_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody806_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody806_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody806_19 : StackLang.HolProg 64 :=
.seq NamedBody806_17 NamedBody806_18

def NamedBody806_20 : StackLang.HolProg 64 :=
.seq NamedBody806_16 NamedBody806_19

def NamedBody806_21 : StackLang.HolProg 64 :=
.seq NamedBody806_15 NamedBody806_20

def NamedBody806_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody806_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3950#64)

def NamedBody806_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody806_25 : StackLang.HolProg 64 :=
.seq NamedBody806_23 NamedBody806_24

def NamedBody806_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody806_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody806_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody806_29 : StackLang.HolProg 64 :=
.seq NamedBody806_27 NamedBody806_28

def NamedBody806_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody806_31 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody806_29 NamedBody806_30

def NamedBody806_32 : StackLang.HolProg 64 :=
.seq NamedBody806_26 NamedBody806_31

def NamedBody806_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody806_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody806_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 806 3

def NamedBody806_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody806_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody806_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody806_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody806_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody806_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody806_42 : StackLang.HolProg 64 :=
.seq NamedBody806_40 NamedBody806_41

def NamedBody806_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody806_44 : StackLang.HolProg 64 :=
.seq NamedBody806_42 NamedBody806_43

def NamedBody806_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody806_46 : StackLang.HolProg 64 :=
.seq NamedBody806_44 NamedBody806_45

def NamedBody806_47 : StackLang.HolProg 64 :=
.seq NamedBody806_39 NamedBody806_46

def NamedBody806_48 : StackLang.HolProg 64 :=
.seq NamedBody806_38 NamedBody806_47

def NamedBody806_49 : StackLang.HolProg 64 :=
.seq NamedBody806_37 NamedBody806_48

def NamedBody806_50 : StackLang.HolProg 64 :=
.seq NamedBody806_36 NamedBody806_49

def NamedBody806_51 : StackLang.HolProg 64 :=
.seq NamedBody806_35 NamedBody806_50

def NamedBody806_52 : StackLang.HolProg 64 :=
.seq NamedBody806_34 NamedBody806_51

def NamedBody806_53 : StackLang.HolProg 64 :=
.seq NamedBody806_33 NamedBody806_52

def NamedBody806_54 : StackLang.HolProg 64 :=
.seq NamedBody806_32 NamedBody806_53

def NamedBody806_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody806_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody806_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody806_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody806_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody806_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody806_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody806_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody806_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody806_64 : StackLang.HolProg 64 :=
.seq NamedBody806_62 NamedBody806_63

def NamedBody806_65 : StackLang.HolProg 64 :=
.seq NamedBody806_61 NamedBody806_64

def NamedBody806_66 : StackLang.HolProg 64 :=
.seq NamedBody806_60 NamedBody806_65

def NamedBody806_67 : StackLang.HolProg 64 :=
.seq NamedBody806_59 NamedBody806_66

def NamedBody806_68 : StackLang.HolProg 64 :=
.seq NamedBody806_58 NamedBody806_67

def NamedBody806_69 : StackLang.HolProg 64 :=
.seq NamedBody806_57 NamedBody806_68

def NamedBody806_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody806_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody806_72 : StackLang.HolProg 64 :=
.seq NamedBody806_70 NamedBody806_71

def NamedBody806_73 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody806_74 : StackLang.HolProg 64 :=
.seq NamedBody806_72 NamedBody806_73

def NamedBody806_75 : StackLang.HolProg 64 :=
.call (some (NamedBody806_69, 1, 806, 2)) (Sum.inl 80) (some (NamedBody806_74, 806, 3))

def NamedBody806_76 : StackLang.HolProg 64 :=
.seq NamedBody806_56 NamedBody806_75

def NamedBody806_77 : StackLang.HolProg 64 :=
.seq NamedBody806_55 NamedBody806_76

def NamedBody806_78 : StackLang.HolProg 64 :=
.seq NamedBody806_54 NamedBody806_77

def NamedBody806_79 : StackLang.HolProg 64 :=
.seq NamedBody806_25 NamedBody806_78

def NamedBody806_80 : StackLang.HolProg 64 :=
.seq NamedBody806_22 NamedBody806_79

def NamedBody806_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody806_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody806_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody806_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody806_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody806_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody806_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody806_88 : StackLang.HolProg 64 :=
.seq NamedBody806_86 NamedBody806_87

def NamedBody806_89 : StackLang.HolProg 64 :=
.seq NamedBody806_85 NamedBody806_88

def NamedBody806_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody806_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3951#64)

def NamedBody806_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody806_93 : StackLang.HolProg 64 :=
.seq NamedBody806_91 NamedBody806_92

def NamedBody806_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody806_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody806_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody806_97 : StackLang.HolProg 64 :=
.seq NamedBody806_95 NamedBody806_96

def NamedBody806_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody806_99 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody806_97 NamedBody806_98

def NamedBody806_100 : StackLang.HolProg 64 :=
.seq NamedBody806_94 NamedBody806_99

def NamedBody806_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody806_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody806_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 806 5

def NamedBody806_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody806_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody806_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody806_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody806_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody806_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody806_110 : StackLang.HolProg 64 :=
.seq NamedBody806_108 NamedBody806_109

def NamedBody806_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody806_112 : StackLang.HolProg 64 :=
.seq NamedBody806_110 NamedBody806_111

def NamedBody806_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody806_114 : StackLang.HolProg 64 :=
.seq NamedBody806_112 NamedBody806_113

def NamedBody806_115 : StackLang.HolProg 64 :=
.seq NamedBody806_107 NamedBody806_114

def NamedBody806_116 : StackLang.HolProg 64 :=
.seq NamedBody806_106 NamedBody806_115

def NamedBody806_117 : StackLang.HolProg 64 :=
.seq NamedBody806_105 NamedBody806_116

def NamedBody806_118 : StackLang.HolProg 64 :=
.seq NamedBody806_104 NamedBody806_117

def NamedBody806_119 : StackLang.HolProg 64 :=
.seq NamedBody806_103 NamedBody806_118

def NamedBody806_120 : StackLang.HolProg 64 :=
.seq NamedBody806_102 NamedBody806_119

def NamedBody806_121 : StackLang.HolProg 64 :=
.seq NamedBody806_101 NamedBody806_120

def NamedBody806_122 : StackLang.HolProg 64 :=
.seq NamedBody806_100 NamedBody806_121

def NamedBody806_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody806_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody806_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody806_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody806_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody806_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody806_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody806_130 : StackLang.HolProg 64 :=
.seq NamedBody806_128 NamedBody806_129

def NamedBody806_131 : StackLang.HolProg 64 :=
.seq NamedBody806_127 NamedBody806_130

def NamedBody806_132 : StackLang.HolProg 64 :=
.seq NamedBody806_126 NamedBody806_131

def NamedBody806_133 : StackLang.HolProg 64 :=
.seq NamedBody806_125 NamedBody806_132

def NamedBody806_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody806_135 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody806_136 : StackLang.HolProg 64 :=
.seq NamedBody806_134 NamedBody806_135

def NamedBody806_137 : StackLang.HolProg 64 :=
.call (some (NamedBody806_133, 1, 806, 4)) (Sum.inl 766) (some (NamedBody806_136, 806, 5))

def NamedBody806_138 : StackLang.HolProg 64 :=
.seq NamedBody806_124 NamedBody806_137

def NamedBody806_139 : StackLang.HolProg 64 :=
.seq NamedBody806_123 NamedBody806_138

def NamedBody806_140 : StackLang.HolProg 64 :=
.seq NamedBody806_122 NamedBody806_139

def NamedBody806_141 : StackLang.HolProg 64 :=
.seq NamedBody806_93 NamedBody806_140

def NamedBody806_142 : StackLang.HolProg 64 :=
.seq NamedBody806_90 NamedBody806_141

def NamedBody806_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody806_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody806_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody806_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody806_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody806_148 : StackLang.HolProg 64 :=
.seq NamedBody806_146 NamedBody806_147

def NamedBody806_149 : StackLang.HolProg 64 :=
.seq NamedBody806_145 NamedBody806_148

def NamedBody806_150 : StackLang.HolProg 64 :=
.seq NamedBody806_144 NamedBody806_149

def NamedBody806_151 : StackLang.HolProg 64 :=
.seq NamedBody806_143 NamedBody806_150

def NamedBody806_152 : StackLang.HolProg 64 :=
.seq NamedBody806_142 NamedBody806_151

def NamedBody806_153 : StackLang.HolProg 64 :=
.seq NamedBody806_89 NamedBody806_152

def NamedBody806_154 : StackLang.HolProg 64 :=
.seq NamedBody806_84 NamedBody806_153

def NamedBody806_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody806_156 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody806_154 NamedBody806_155

def NamedBody806_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody806_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody806_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody806_160 : StackLang.HolProg 64 :=
.seq NamedBody806_158 NamedBody806_159

def NamedBody806_161 : StackLang.HolProg 64 :=
.seq NamedBody806_157 NamedBody806_160

def NamedBody806_162 : StackLang.HolProg 64 :=
.seq NamedBody806_156 NamedBody806_161

def NamedBody806_163 : StackLang.HolProg 64 :=
.seq NamedBody806_83 NamedBody806_162

def NamedBody806_164 : StackLang.HolProg 64 :=
.seq NamedBody806_82 NamedBody806_163

def NamedBody806_165 : StackLang.HolProg 64 :=
.seq NamedBody806_81 NamedBody806_164

def NamedBody806_166 : StackLang.HolProg 64 :=
.seq NamedBody806_80 NamedBody806_165

def NamedBody806_167 : StackLang.HolProg 64 :=
.seq NamedBody806_21 NamedBody806_166

def NamedBody806_168 : StackLang.HolProg 64 :=
.seq NamedBody806_14 NamedBody806_167

def NamedBody806_169 : StackLang.HolProg 64 :=
.seq NamedBody806_13 NamedBody806_168

def NamedBody806_170 : StackLang.HolProg 64 :=
.seq NamedBody806_12 NamedBody806_169

def NamedBody806_171 : StackLang.HolProg 64 :=
.seq NamedBody806_11 NamedBody806_170

def NamedBody806_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody806_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody806_174 : StackLang.HolProg 64 :=
.seq NamedBody806_172 NamedBody806_173

def NamedBody806_175 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13) NamedBody806_171 NamedBody806_174

def NamedBody806_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody806_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody806_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody806_179 : StackLang.HolProg 64 :=
.seq NamedBody806_177 NamedBody806_178

def NamedBody806_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody806_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3952#64)

def NamedBody806_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody806_183 : StackLang.HolProg 64 :=
.seq NamedBody806_181 NamedBody806_182

def NamedBody806_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody806_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody806_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody806_187 : StackLang.HolProg 64 :=
.seq NamedBody806_185 NamedBody806_186

def NamedBody806_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody806_189 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody806_187 NamedBody806_188

def NamedBody806_190 : StackLang.HolProg 64 :=
.seq NamedBody806_184 NamedBody806_189

def NamedBody806_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody806_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody806_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 806 7

def NamedBody806_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody806_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody806_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody806_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody806_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody806_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody806_200 : StackLang.HolProg 64 :=
.seq NamedBody806_198 NamedBody806_199

def NamedBody806_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody806_202 : StackLang.HolProg 64 :=
.seq NamedBody806_200 NamedBody806_201

def NamedBody806_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody806_204 : StackLang.HolProg 64 :=
.seq NamedBody806_202 NamedBody806_203

def NamedBody806_205 : StackLang.HolProg 64 :=
.seq NamedBody806_197 NamedBody806_204

def NamedBody806_206 : StackLang.HolProg 64 :=
.seq NamedBody806_196 NamedBody806_205

def NamedBody806_207 : StackLang.HolProg 64 :=
.seq NamedBody806_195 NamedBody806_206

def NamedBody806_208 : StackLang.HolProg 64 :=
.seq NamedBody806_194 NamedBody806_207

def NamedBody806_209 : StackLang.HolProg 64 :=
.seq NamedBody806_193 NamedBody806_208

def NamedBody806_210 : StackLang.HolProg 64 :=
.seq NamedBody806_192 NamedBody806_209

def NamedBody806_211 : StackLang.HolProg 64 :=
.seq NamedBody806_191 NamedBody806_210

def NamedBody806_212 : StackLang.HolProg 64 :=
.seq NamedBody806_190 NamedBody806_211

def NamedBody806_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody806_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody806_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody806_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody806_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody806_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody806_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody806_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody806_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody806_222 : StackLang.HolProg 64 :=
.seq NamedBody806_220 NamedBody806_221

def NamedBody806_223 : StackLang.HolProg 64 :=
.seq NamedBody806_219 NamedBody806_222

def NamedBody806_224 : StackLang.HolProg 64 :=
.seq NamedBody806_218 NamedBody806_223

def NamedBody806_225 : StackLang.HolProg 64 :=
.seq NamedBody806_217 NamedBody806_224

def NamedBody806_226 : StackLang.HolProg 64 :=
.seq NamedBody806_216 NamedBody806_225

def NamedBody806_227 : StackLang.HolProg 64 :=
.seq NamedBody806_215 NamedBody806_226

def NamedBody806_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody806_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody806_230 : StackLang.HolProg 64 :=
.seq NamedBody806_228 NamedBody806_229

def NamedBody806_231 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody806_232 : StackLang.HolProg 64 :=
.seq NamedBody806_230 NamedBody806_231

def NamedBody806_233 : StackLang.HolProg 64 :=
.call (some (NamedBody806_227, 1, 806, 6)) (Sum.inl 805) (some (NamedBody806_232, 806, 7))

def NamedBody806_234 : StackLang.HolProg 64 :=
.seq NamedBody806_214 NamedBody806_233

def NamedBody806_235 : StackLang.HolProg 64 :=
.seq NamedBody806_213 NamedBody806_234

def NamedBody806_236 : StackLang.HolProg 64 :=
.seq NamedBody806_212 NamedBody806_235

def NamedBody806_237 : StackLang.HolProg 64 :=
.seq NamedBody806_183 NamedBody806_236

def NamedBody806_238 : StackLang.HolProg 64 :=
.seq NamedBody806_180 NamedBody806_237

def NamedBody806_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody806_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody806_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody806_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody806_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody806_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody806_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody806_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 12

def NamedBody806_247 : StackLang.HolProg 64 :=
.seq NamedBody806_245 NamedBody806_246

def NamedBody806_248 : StackLang.HolProg 64 :=
.seq NamedBody806_244 NamedBody806_247

def NamedBody806_249 : StackLang.HolProg 64 :=
.seq NamedBody806_243 NamedBody806_248

def NamedBody806_250 : StackLang.HolProg 64 :=
.seq NamedBody806_242 NamedBody806_249

def NamedBody806_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody806_252 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody806_250 NamedBody806_251

def NamedBody806_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody806_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody806_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody806_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody806_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody806_258 : StackLang.HolProg 64 :=
.seq NamedBody806_256 NamedBody806_257

def NamedBody806_259 : StackLang.HolProg 64 :=
.seq NamedBody806_255 NamedBody806_258

def NamedBody806_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody806_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3953#64)

def NamedBody806_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody806_263 : StackLang.HolProg 64 :=
.seq NamedBody806_261 NamedBody806_262

def NamedBody806_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody806_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody806_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody806_267 : StackLang.HolProg 64 :=
.seq NamedBody806_265 NamedBody806_266

def NamedBody806_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody806_269 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody806_267 NamedBody806_268

def NamedBody806_270 : StackLang.HolProg 64 :=
.seq NamedBody806_264 NamedBody806_269

def NamedBody806_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody806_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody806_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 806 9

def NamedBody806_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody806_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody806_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody806_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody806_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody806_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody806_280 : StackLang.HolProg 64 :=
.seq NamedBody806_278 NamedBody806_279

def NamedBody806_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody806_282 : StackLang.HolProg 64 :=
.seq NamedBody806_280 NamedBody806_281

def NamedBody806_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody806_284 : StackLang.HolProg 64 :=
.seq NamedBody806_282 NamedBody806_283

def NamedBody806_285 : StackLang.HolProg 64 :=
.seq NamedBody806_277 NamedBody806_284

def NamedBody806_286 : StackLang.HolProg 64 :=
.seq NamedBody806_276 NamedBody806_285

def NamedBody806_287 : StackLang.HolProg 64 :=
.seq NamedBody806_275 NamedBody806_286

def NamedBody806_288 : StackLang.HolProg 64 :=
.seq NamedBody806_274 NamedBody806_287

def NamedBody806_289 : StackLang.HolProg 64 :=
.seq NamedBody806_273 NamedBody806_288

def NamedBody806_290 : StackLang.HolProg 64 :=
.seq NamedBody806_272 NamedBody806_289

def NamedBody806_291 : StackLang.HolProg 64 :=
.seq NamedBody806_271 NamedBody806_290

def NamedBody806_292 : StackLang.HolProg 64 :=
.seq NamedBody806_270 NamedBody806_291

def NamedBody806_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody806_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody806_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody806_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody806_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody806_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody806_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody806_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody806_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody806_302 : StackLang.HolProg 64 :=
.seq NamedBody806_300 NamedBody806_301

def NamedBody806_303 : StackLang.HolProg 64 :=
.seq NamedBody806_299 NamedBody806_302

def NamedBody806_304 : StackLang.HolProg 64 :=
.seq NamedBody806_298 NamedBody806_303

def NamedBody806_305 : StackLang.HolProg 64 :=
.seq NamedBody806_297 NamedBody806_304

def NamedBody806_306 : StackLang.HolProg 64 :=
.seq NamedBody806_296 NamedBody806_305

def NamedBody806_307 : StackLang.HolProg 64 :=
.seq NamedBody806_295 NamedBody806_306

def NamedBody806_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody806_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody806_310 : StackLang.HolProg 64 :=
.seq NamedBody806_308 NamedBody806_309

def NamedBody806_311 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody806_312 : StackLang.HolProg 64 :=
.seq NamedBody806_310 NamedBody806_311

def NamedBody806_313 : StackLang.HolProg 64 :=
.call (some (NamedBody806_307, 1, 806, 8)) (Sum.inl 767) (some (NamedBody806_312, 806, 9))

def NamedBody806_314 : StackLang.HolProg 64 :=
.seq NamedBody806_294 NamedBody806_313

def NamedBody806_315 : StackLang.HolProg 64 :=
.seq NamedBody806_293 NamedBody806_314

def NamedBody806_316 : StackLang.HolProg 64 :=
.seq NamedBody806_292 NamedBody806_315

def NamedBody806_317 : StackLang.HolProg 64 :=
.seq NamedBody806_263 NamedBody806_316

def NamedBody806_318 : StackLang.HolProg 64 :=
.seq NamedBody806_260 NamedBody806_317

def NamedBody806_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody806_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody806_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody806_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody806_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody806_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody806_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody806_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody806_327 : StackLang.HolProg 64 :=
.seq NamedBody806_325 NamedBody806_326

def NamedBody806_328 : StackLang.HolProg 64 :=
.seq NamedBody806_324 NamedBody806_327

def NamedBody806_329 : StackLang.HolProg 64 :=
.seq NamedBody806_323 NamedBody806_328

def NamedBody806_330 : StackLang.HolProg 64 :=
.seq NamedBody806_322 NamedBody806_329

def NamedBody806_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody806_332 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody806_330 NamedBody806_331

def NamedBody806_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody806_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody806_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody806_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody806_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 777

def NamedBody806_338 : StackLang.HolProg 64 :=
.seq NamedBody806_336 NamedBody806_337

def NamedBody806_339 : StackLang.HolProg 64 :=
.seq NamedBody806_335 NamedBody806_338

def NamedBody806_340 : StackLang.HolProg 64 :=
.seq NamedBody806_334 NamedBody806_339

def NamedBody806_341 : StackLang.HolProg 64 :=
.seq NamedBody806_333 NamedBody806_340

def NamedBody806_342 : StackLang.HolProg 64 :=
.seq NamedBody806_332 NamedBody806_341

def NamedBody806_343 : StackLang.HolProg 64 :=
.seq NamedBody806_321 NamedBody806_342

def NamedBody806_344 : StackLang.HolProg 64 :=
.seq NamedBody806_320 NamedBody806_343

def NamedBody806_345 : StackLang.HolProg 64 :=
.seq NamedBody806_319 NamedBody806_344

def NamedBody806_346 : StackLang.HolProg 64 :=
.seq NamedBody806_318 NamedBody806_345

def NamedBody806_347 : StackLang.HolProg 64 :=
.seq NamedBody806_259 NamedBody806_346

def NamedBody806_348 : StackLang.HolProg 64 :=
.seq NamedBody806_254 NamedBody806_347

def NamedBody806_349 : StackLang.HolProg 64 :=
.seq NamedBody806_253 NamedBody806_348

def NamedBody806_350 : StackLang.HolProg 64 :=
.seq NamedBody806_252 NamedBody806_349

def NamedBody806_351 : StackLang.HolProg 64 :=
.seq NamedBody806_241 NamedBody806_350

def NamedBody806_352 : StackLang.HolProg 64 :=
.seq NamedBody806_240 NamedBody806_351

def NamedBody806_353 : StackLang.HolProg 64 :=
.seq NamedBody806_239 NamedBody806_352

def NamedBody806_354 : StackLang.HolProg 64 :=
.seq NamedBody806_238 NamedBody806_353

def NamedBody806_355 : StackLang.HolProg 64 :=
.seq NamedBody806_179 NamedBody806_354

def NamedBody806_356 : StackLang.HolProg 64 :=
.seq NamedBody806_176 NamedBody806_355

def NamedBody806_357 : StackLang.HolProg 64 :=
.seq NamedBody806_175 NamedBody806_356

def NamedBody806_358 : StackLang.HolProg 64 :=
.seq NamedBody806_10 NamedBody806_357

def NamedBody806_359 : StackLang.HolProg 64 :=
.seq NamedBody806_9 NamedBody806_358

def NamedBody806_360 : StackLang.HolProg 64 :=
.seq NamedBody806_8 NamedBody806_359

def NamedBody806_361 : StackLang.HolProg 64 :=
.seq NamedBody806_7 NamedBody806_360

def NamedBody806_362 : StackLang.HolProg 64 :=
.seq NamedBody806_6 NamedBody806_361

def Named806 : Nat × StackLang.HolProg 64 := (806, NamedBody806_362)
theorem Named806_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed806 = Named806 := by
  kernel_rfl
#print axioms Named806_eq
end InitECandidate.Proofs.BackendStages
