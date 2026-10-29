import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed548
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody548_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody548_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody548_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody548_3 : StackLang.HolProg 64 :=
.seq NamedBody548_1 NamedBody548_2

def NamedBody548_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody548_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody548_3 NamedBody548_4

def NamedBody548_6 : StackLang.HolProg 64 :=
.seq NamedBody548_0 NamedBody548_5

def NamedBody548_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody548_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody548_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1829#64)

def NamedBody548_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody548_11 : StackLang.HolProg 64 :=
.seq NamedBody548_9 NamedBody548_10

def NamedBody548_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody548_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody548_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody548_15 : StackLang.HolProg 64 :=
.seq NamedBody548_13 NamedBody548_14

def NamedBody548_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody548_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody548_15 NamedBody548_16

def NamedBody548_18 : StackLang.HolProg 64 :=
.seq NamedBody548_12 NamedBody548_17

def NamedBody548_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody548_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody548_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 548 3

def NamedBody548_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody548_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody548_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody548_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody548_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody548_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody548_28 : StackLang.HolProg 64 :=
.seq NamedBody548_26 NamedBody548_27

def NamedBody548_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody548_30 : StackLang.HolProg 64 :=
.seq NamedBody548_28 NamedBody548_29

def NamedBody548_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody548_32 : StackLang.HolProg 64 :=
.seq NamedBody548_30 NamedBody548_31

def NamedBody548_33 : StackLang.HolProg 64 :=
.seq NamedBody548_25 NamedBody548_32

def NamedBody548_34 : StackLang.HolProg 64 :=
.seq NamedBody548_24 NamedBody548_33

def NamedBody548_35 : StackLang.HolProg 64 :=
.seq NamedBody548_23 NamedBody548_34

def NamedBody548_36 : StackLang.HolProg 64 :=
.seq NamedBody548_22 NamedBody548_35

def NamedBody548_37 : StackLang.HolProg 64 :=
.seq NamedBody548_21 NamedBody548_36

def NamedBody548_38 : StackLang.HolProg 64 :=
.seq NamedBody548_20 NamedBody548_37

def NamedBody548_39 : StackLang.HolProg 64 :=
.seq NamedBody548_19 NamedBody548_38

def NamedBody548_40 : StackLang.HolProg 64 :=
.seq NamedBody548_18 NamedBody548_39

def NamedBody548_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody548_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody548_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody548_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody548_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody548_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody548_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody548_48 : StackLang.HolProg 64 :=
.seq NamedBody548_46 NamedBody548_47

def NamedBody548_49 : StackLang.HolProg 64 :=
.seq NamedBody548_45 NamedBody548_48

def NamedBody548_50 : StackLang.HolProg 64 :=
.seq NamedBody548_44 NamedBody548_49

def NamedBody548_51 : StackLang.HolProg 64 :=
.seq NamedBody548_43 NamedBody548_50

def NamedBody548_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody548_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody548_54 : StackLang.HolProg 64 :=
.seq NamedBody548_52 NamedBody548_53

def NamedBody548_55 : StackLang.HolProg 64 :=
.call (some (NamedBody548_51, 1, 548, 2)) (Sum.inl 392) (some (NamedBody548_54, 548, 3))

def NamedBody548_56 : StackLang.HolProg 64 :=
.seq NamedBody548_42 NamedBody548_55

def NamedBody548_57 : StackLang.HolProg 64 :=
.seq NamedBody548_41 NamedBody548_56

def NamedBody548_58 : StackLang.HolProg 64 :=
.seq NamedBody548_40 NamedBody548_57

def NamedBody548_59 : StackLang.HolProg 64 :=
.seq NamedBody548_11 NamedBody548_58

def NamedBody548_60 : StackLang.HolProg 64 :=
.seq NamedBody548_8 NamedBody548_59

def NamedBody548_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody548_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody548_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody548_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody548_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def NamedBody548_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 176#64))

def NamedBody548_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody548_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 1#64)

def NamedBody548_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody548_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody548_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1830#64)

def NamedBody548_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody548_73 : StackLang.HolProg 64 :=
.seq NamedBody548_71 NamedBody548_72

def NamedBody548_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody548_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody548_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody548_77 : StackLang.HolProg 64 :=
.seq NamedBody548_75 NamedBody548_76

def NamedBody548_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody548_79 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody548_77 NamedBody548_78

def NamedBody548_80 : StackLang.HolProg 64 :=
.seq NamedBody548_74 NamedBody548_79

def NamedBody548_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody548_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody548_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 548 5

def NamedBody548_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody548_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody548_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody548_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody548_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody548_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody548_90 : StackLang.HolProg 64 :=
.seq NamedBody548_88 NamedBody548_89

def NamedBody548_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody548_92 : StackLang.HolProg 64 :=
.seq NamedBody548_90 NamedBody548_91

def NamedBody548_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody548_94 : StackLang.HolProg 64 :=
.seq NamedBody548_92 NamedBody548_93

def NamedBody548_95 : StackLang.HolProg 64 :=
.seq NamedBody548_87 NamedBody548_94

def NamedBody548_96 : StackLang.HolProg 64 :=
.seq NamedBody548_86 NamedBody548_95

def NamedBody548_97 : StackLang.HolProg 64 :=
.seq NamedBody548_85 NamedBody548_96

def NamedBody548_98 : StackLang.HolProg 64 :=
.seq NamedBody548_84 NamedBody548_97

def NamedBody548_99 : StackLang.HolProg 64 :=
.seq NamedBody548_83 NamedBody548_98

def NamedBody548_100 : StackLang.HolProg 64 :=
.seq NamedBody548_82 NamedBody548_99

def NamedBody548_101 : StackLang.HolProg 64 :=
.seq NamedBody548_81 NamedBody548_100

def NamedBody548_102 : StackLang.HolProg 64 :=
.seq NamedBody548_80 NamedBody548_101

def NamedBody548_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody548_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody548_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody548_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody548_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody548_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody548_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody548_110 : StackLang.HolProg 64 :=
.seq NamedBody548_108 NamedBody548_109

def NamedBody548_111 : StackLang.HolProg 64 :=
.seq NamedBody548_107 NamedBody548_110

def NamedBody548_112 : StackLang.HolProg 64 :=
.seq NamedBody548_106 NamedBody548_111

def NamedBody548_113 : StackLang.HolProg 64 :=
.seq NamedBody548_105 NamedBody548_112

def NamedBody548_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody548_115 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody548_116 : StackLang.HolProg 64 :=
.seq NamedBody548_114 NamedBody548_115

def NamedBody548_117 : StackLang.HolProg 64 :=
.call (some (NamedBody548_113, 1, 548, 4)) (Sum.inl 192) (some (NamedBody548_116, 548, 5))

def NamedBody548_118 : StackLang.HolProg 64 :=
.seq NamedBody548_104 NamedBody548_117

def NamedBody548_119 : StackLang.HolProg 64 :=
.seq NamedBody548_103 NamedBody548_118

def NamedBody548_120 : StackLang.HolProg 64 :=
.seq NamedBody548_102 NamedBody548_119

def NamedBody548_121 : StackLang.HolProg 64 :=
.seq NamedBody548_73 NamedBody548_120

def NamedBody548_122 : StackLang.HolProg 64 :=
.seq NamedBody548_70 NamedBody548_121

def NamedBody548_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody548_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody548_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody548_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody548_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody548_128 : StackLang.HolProg 64 :=
.seq NamedBody548_126 NamedBody548_127

def NamedBody548_129 : StackLang.HolProg 64 :=
.seq NamedBody548_125 NamedBody548_128

def NamedBody548_130 : StackLang.HolProg 64 :=
.seq NamedBody548_124 NamedBody548_129

def NamedBody548_131 : StackLang.HolProg 64 :=
.seq NamedBody548_123 NamedBody548_130

def NamedBody548_132 : StackLang.HolProg 64 :=
.seq NamedBody548_122 NamedBody548_131

def NamedBody548_133 : StackLang.HolProg 64 :=
.seq NamedBody548_69 NamedBody548_132

def NamedBody548_134 : StackLang.HolProg 64 :=
.seq NamedBody548_68 NamedBody548_133

def NamedBody548_135 : StackLang.HolProg 64 :=
.seq NamedBody548_67 NamedBody548_134

def NamedBody548_136 : StackLang.HolProg 64 :=
.seq NamedBody548_66 NamedBody548_135

def NamedBody548_137 : StackLang.HolProg 64 :=
.seq NamedBody548_65 NamedBody548_136

def NamedBody548_138 : StackLang.HolProg 64 :=
.seq NamedBody548_64 NamedBody548_137

def NamedBody548_139 : StackLang.HolProg 64 :=
.seq NamedBody548_63 NamedBody548_138

def NamedBody548_140 : StackLang.HolProg 64 :=
.seq NamedBody548_62 NamedBody548_139

def NamedBody548_141 : StackLang.HolProg 64 :=
.seq NamedBody548_61 NamedBody548_140

def NamedBody548_142 : StackLang.HolProg 64 :=
.seq NamedBody548_60 NamedBody548_141

def NamedBody548_143 : StackLang.HolProg 64 :=
.seq NamedBody548_7 NamedBody548_142

def NamedBody548_144 : StackLang.HolProg 64 :=
.seq NamedBody548_6 NamedBody548_143

def Named548 : Nat × StackLang.HolProg 64 := (548, NamedBody548_144)
theorem Named548_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed548 = Named548 := by
  kernel_rfl
#print axioms Named548_eq
end InitECandidate.Proofs.BackendStages
