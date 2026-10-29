import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed443
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody443_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def NamedBody443_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody443_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody443_3 : StackLang.HolProg 64 :=
.seq NamedBody443_1 NamedBody443_2

def NamedBody443_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody443_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody443_3 NamedBody443_4

def NamedBody443_6 : StackLang.HolProg 64 :=
.seq NamedBody443_0 NamedBody443_5

def NamedBody443_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody443_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody443_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody443_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody443_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody443_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody443_13 : StackLang.HolProg 64 :=
.seq NamedBody443_11 NamedBody443_12

def NamedBody443_14 : StackLang.HolProg 64 :=
.seq NamedBody443_10 NamedBody443_13

def NamedBody443_15 : StackLang.HolProg 64 :=
.seq NamedBody443_9 NamedBody443_14

def NamedBody443_16 : StackLang.HolProg 64 :=
.seq NamedBody443_8 NamedBody443_15

def NamedBody443_17 : StackLang.HolProg 64 :=
.seq NamedBody443_7 NamedBody443_16

def NamedBody443_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody443_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1339#64)

def NamedBody443_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody443_21 : StackLang.HolProg 64 :=
.seq NamedBody443_19 NamedBody443_20

def NamedBody443_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody443_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody443_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody443_25 : StackLang.HolProg 64 :=
.seq NamedBody443_23 NamedBody443_24

def NamedBody443_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody443_27 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody443_25 NamedBody443_26

def NamedBody443_28 : StackLang.HolProg 64 :=
.seq NamedBody443_22 NamedBody443_27

def NamedBody443_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody443_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody443_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 443 3

def NamedBody443_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody443_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody443_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody443_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody443_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody443_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody443_38 : StackLang.HolProg 64 :=
.seq NamedBody443_36 NamedBody443_37

def NamedBody443_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody443_40 : StackLang.HolProg 64 :=
.seq NamedBody443_38 NamedBody443_39

def NamedBody443_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody443_42 : StackLang.HolProg 64 :=
.seq NamedBody443_40 NamedBody443_41

def NamedBody443_43 : StackLang.HolProg 64 :=
.seq NamedBody443_35 NamedBody443_42

def NamedBody443_44 : StackLang.HolProg 64 :=
.seq NamedBody443_34 NamedBody443_43

def NamedBody443_45 : StackLang.HolProg 64 :=
.seq NamedBody443_33 NamedBody443_44

def NamedBody443_46 : StackLang.HolProg 64 :=
.seq NamedBody443_32 NamedBody443_45

def NamedBody443_47 : StackLang.HolProg 64 :=
.seq NamedBody443_31 NamedBody443_46

def NamedBody443_48 : StackLang.HolProg 64 :=
.seq NamedBody443_30 NamedBody443_47

def NamedBody443_49 : StackLang.HolProg 64 :=
.seq NamedBody443_29 NamedBody443_48

def NamedBody443_50 : StackLang.HolProg 64 :=
.seq NamedBody443_28 NamedBody443_49

def NamedBody443_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody443_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody443_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody443_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody443_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody443_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody443_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody443_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody443_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody443_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody443_61 : StackLang.HolProg 64 :=
.seq NamedBody443_59 NamedBody443_60

def NamedBody443_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody443_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody443_64 : StackLang.HolProg 64 :=
.seq NamedBody443_62 NamedBody443_63

def NamedBody443_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody443_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody443_67 : StackLang.HolProg 64 :=
.seq NamedBody443_65 NamedBody443_66

def NamedBody443_68 : StackLang.HolProg 64 :=
.seq NamedBody443_64 NamedBody443_67

def NamedBody443_69 : StackLang.HolProg 64 :=
.seq NamedBody443_61 NamedBody443_68

def NamedBody443_70 : StackLang.HolProg 64 :=
.seq NamedBody443_58 NamedBody443_69

def NamedBody443_71 : StackLang.HolProg 64 :=
.seq NamedBody443_57 NamedBody443_70

def NamedBody443_72 : StackLang.HolProg 64 :=
.seq NamedBody443_56 NamedBody443_71

def NamedBody443_73 : StackLang.HolProg 64 :=
.seq NamedBody443_55 NamedBody443_72

def NamedBody443_74 : StackLang.HolProg 64 :=
.seq NamedBody443_54 NamedBody443_73

def NamedBody443_75 : StackLang.HolProg 64 :=
.seq NamedBody443_53 NamedBody443_74

def NamedBody443_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody443_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody443_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody443_79 : StackLang.HolProg 64 :=
.seq NamedBody443_77 NamedBody443_78

def NamedBody443_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody443_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody443_82 : StackLang.HolProg 64 :=
.seq NamedBody443_80 NamedBody443_81

def NamedBody443_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody443_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody443_85 : StackLang.HolProg 64 :=
.seq NamedBody443_83 NamedBody443_84

def NamedBody443_86 : StackLang.HolProg 64 :=
.seq NamedBody443_82 NamedBody443_85

def NamedBody443_87 : StackLang.HolProg 64 :=
.seq NamedBody443_79 NamedBody443_86

def NamedBody443_88 : StackLang.HolProg 64 :=
.seq NamedBody443_76 NamedBody443_87

def NamedBody443_89 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody443_90 : StackLang.HolProg 64 :=
.seq NamedBody443_88 NamedBody443_89

def NamedBody443_91 : StackLang.HolProg 64 :=
.call (some (NamedBody443_75, 1, 443, 2)) (Sum.inl 439) (some (NamedBody443_90, 443, 3))

def NamedBody443_92 : StackLang.HolProg 64 :=
.seq NamedBody443_52 NamedBody443_91

def NamedBody443_93 : StackLang.HolProg 64 :=
.seq NamedBody443_51 NamedBody443_92

def NamedBody443_94 : StackLang.HolProg 64 :=
.seq NamedBody443_50 NamedBody443_93

def NamedBody443_95 : StackLang.HolProg 64 :=
.seq NamedBody443_21 NamedBody443_94

def NamedBody443_96 : StackLang.HolProg 64 :=
.seq NamedBody443_18 NamedBody443_95

def NamedBody443_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody443_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody443_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def NamedBody443_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody443_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 40#64)

def NamedBody443_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody443_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody443_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1340#64)

def NamedBody443_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody443_106 : StackLang.HolProg 64 :=
.seq NamedBody443_104 NamedBody443_105

def NamedBody443_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody443_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody443_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody443_110 : StackLang.HolProg 64 :=
.seq NamedBody443_108 NamedBody443_109

def NamedBody443_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody443_112 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody443_110 NamedBody443_111

def NamedBody443_113 : StackLang.HolProg 64 :=
.seq NamedBody443_107 NamedBody443_112

def NamedBody443_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody443_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody443_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 443 5

def NamedBody443_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody443_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody443_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody443_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody443_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody443_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody443_123 : StackLang.HolProg 64 :=
.seq NamedBody443_121 NamedBody443_122

def NamedBody443_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody443_125 : StackLang.HolProg 64 :=
.seq NamedBody443_123 NamedBody443_124

def NamedBody443_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody443_127 : StackLang.HolProg 64 :=
.seq NamedBody443_125 NamedBody443_126

def NamedBody443_128 : StackLang.HolProg 64 :=
.seq NamedBody443_120 NamedBody443_127

def NamedBody443_129 : StackLang.HolProg 64 :=
.seq NamedBody443_119 NamedBody443_128

def NamedBody443_130 : StackLang.HolProg 64 :=
.seq NamedBody443_118 NamedBody443_129

def NamedBody443_131 : StackLang.HolProg 64 :=
.seq NamedBody443_117 NamedBody443_130

def NamedBody443_132 : StackLang.HolProg 64 :=
.seq NamedBody443_116 NamedBody443_131

def NamedBody443_133 : StackLang.HolProg 64 :=
.seq NamedBody443_115 NamedBody443_132

def NamedBody443_134 : StackLang.HolProg 64 :=
.seq NamedBody443_114 NamedBody443_133

def NamedBody443_135 : StackLang.HolProg 64 :=
.seq NamedBody443_113 NamedBody443_134

def NamedBody443_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody443_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody443_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody443_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody443_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody443_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody443_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody443_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody443_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody443_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody443_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody443_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody443_148 : StackLang.HolProg 64 :=
.seq NamedBody443_146 NamedBody443_147

def NamedBody443_149 : StackLang.HolProg 64 :=
.seq NamedBody443_145 NamedBody443_148

def NamedBody443_150 : StackLang.HolProg 64 :=
.seq NamedBody443_144 NamedBody443_149

def NamedBody443_151 : StackLang.HolProg 64 :=
.seq NamedBody443_143 NamedBody443_150

def NamedBody443_152 : StackLang.HolProg 64 :=
.seq NamedBody443_142 NamedBody443_151

def NamedBody443_153 : StackLang.HolProg 64 :=
.seq NamedBody443_141 NamedBody443_152

def NamedBody443_154 : StackLang.HolProg 64 :=
.seq NamedBody443_140 NamedBody443_153

def NamedBody443_155 : StackLang.HolProg 64 :=
.seq NamedBody443_139 NamedBody443_154

def NamedBody443_156 : StackLang.HolProg 64 :=
.seq NamedBody443_138 NamedBody443_155

def NamedBody443_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody443_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody443_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody443_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody443_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody443_162 : StackLang.HolProg 64 :=
.seq NamedBody443_160 NamedBody443_161

def NamedBody443_163 : StackLang.HolProg 64 :=
.seq NamedBody443_159 NamedBody443_162

def NamedBody443_164 : StackLang.HolProg 64 :=
.seq NamedBody443_158 NamedBody443_163

def NamedBody443_165 : StackLang.HolProg 64 :=
.seq NamedBody443_157 NamedBody443_164

def NamedBody443_166 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody443_167 : StackLang.HolProg 64 :=
.seq NamedBody443_165 NamedBody443_166

def NamedBody443_168 : StackLang.HolProg 64 :=
.call (some (NamedBody443_156, 1, 443, 4)) (Sum.inl 440) (some (NamedBody443_167, 443, 5))

def NamedBody443_169 : StackLang.HolProg 64 :=
.seq NamedBody443_137 NamedBody443_168

def NamedBody443_170 : StackLang.HolProg 64 :=
.seq NamedBody443_136 NamedBody443_169

def NamedBody443_171 : StackLang.HolProg 64 :=
.seq NamedBody443_135 NamedBody443_170

def NamedBody443_172 : StackLang.HolProg 64 :=
.seq NamedBody443_106 NamedBody443_171

def NamedBody443_173 : StackLang.HolProg 64 :=
.seq NamedBody443_103 NamedBody443_172

def NamedBody443_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody443_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody443_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody443_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody443_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody443_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody443_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 8#64))

def NamedBody443_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody443_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 16#64))

def NamedBody443_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody443_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 24#64))

def NamedBody443_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody443_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody443_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def NamedBody443_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 6

def NamedBody443_189 : StackLang.HolProg 64 :=
.seq NamedBody443_187 NamedBody443_188

def NamedBody443_190 : StackLang.HolProg 64 :=
.seq NamedBody443_186 NamedBody443_189

def NamedBody443_191 : StackLang.HolProg 64 :=
.seq NamedBody443_185 NamedBody443_190

def NamedBody443_192 : StackLang.HolProg 64 :=
.seq NamedBody443_184 NamedBody443_191

def NamedBody443_193 : StackLang.HolProg 64 :=
.seq NamedBody443_183 NamedBody443_192

def NamedBody443_194 : StackLang.HolProg 64 :=
.seq NamedBody443_182 NamedBody443_193

def NamedBody443_195 : StackLang.HolProg 64 :=
.seq NamedBody443_181 NamedBody443_194

def NamedBody443_196 : StackLang.HolProg 64 :=
.seq NamedBody443_180 NamedBody443_195

def NamedBody443_197 : StackLang.HolProg 64 :=
.seq NamedBody443_179 NamedBody443_196

def NamedBody443_198 : StackLang.HolProg 64 :=
.seq NamedBody443_178 NamedBody443_197

def NamedBody443_199 : StackLang.HolProg 64 :=
.seq NamedBody443_177 NamedBody443_198

def NamedBody443_200 : StackLang.HolProg 64 :=
.seq NamedBody443_176 NamedBody443_199

def NamedBody443_201 : StackLang.HolProg 64 :=
.seq NamedBody443_175 NamedBody443_200

def NamedBody443_202 : StackLang.HolProg 64 :=
.seq NamedBody443_174 NamedBody443_201

def NamedBody443_203 : StackLang.HolProg 64 :=
.seq NamedBody443_173 NamedBody443_202

def NamedBody443_204 : StackLang.HolProg 64 :=
.seq NamedBody443_102 NamedBody443_203

def NamedBody443_205 : StackLang.HolProg 64 :=
.seq NamedBody443_101 NamedBody443_204

def NamedBody443_206 : StackLang.HolProg 64 :=
.seq NamedBody443_100 NamedBody443_205

def NamedBody443_207 : StackLang.HolProg 64 :=
.seq NamedBody443_99 NamedBody443_206

def NamedBody443_208 : StackLang.HolProg 64 :=
.seq NamedBody443_98 NamedBody443_207

def NamedBody443_209 : StackLang.HolProg 64 :=
.seq NamedBody443_97 NamedBody443_208

def NamedBody443_210 : StackLang.HolProg 64 :=
.seq NamedBody443_96 NamedBody443_209

def NamedBody443_211 : StackLang.HolProg 64 :=
.seq NamedBody443_17 NamedBody443_210

def NamedBody443_212 : StackLang.HolProg 64 :=
.seq NamedBody443_6 NamedBody443_211

def Named443 : Nat × StackLang.HolProg 64 := (443, NamedBody443_212)
theorem Named443_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed443 = Named443 := by
  kernel_rfl
#print axioms Named443_eq
end InitECandidate.Proofs.BackendStages
