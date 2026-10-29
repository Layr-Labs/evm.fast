import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed341
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody341_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody341_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody341_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody341_3 : StackLang.HolProg 64 :=
.seq NamedBody341_1 NamedBody341_2

def NamedBody341_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody341_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody341_3 NamedBody341_4

def NamedBody341_6 : StackLang.HolProg 64 :=
.seq NamedBody341_0 NamedBody341_5

def NamedBody341_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody341_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def NamedBody341_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody341_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody341_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def NamedBody341_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody341_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 8#64))

def NamedBody341_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody341_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody341_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 975#64)

def NamedBody341_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody341_18 : StackLang.HolProg 64 :=
.seq NamedBody341_16 NamedBody341_17

def NamedBody341_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody341_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody341_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody341_22 : StackLang.HolProg 64 :=
.seq NamedBody341_20 NamedBody341_21

def NamedBody341_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody341_24 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody341_22 NamedBody341_23

def NamedBody341_25 : StackLang.HolProg 64 :=
.seq NamedBody341_19 NamedBody341_24

def NamedBody341_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody341_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody341_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 341 3

def NamedBody341_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody341_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody341_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody341_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody341_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody341_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody341_35 : StackLang.HolProg 64 :=
.seq NamedBody341_33 NamedBody341_34

def NamedBody341_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody341_37 : StackLang.HolProg 64 :=
.seq NamedBody341_35 NamedBody341_36

def NamedBody341_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody341_39 : StackLang.HolProg 64 :=
.seq NamedBody341_37 NamedBody341_38

def NamedBody341_40 : StackLang.HolProg 64 :=
.seq NamedBody341_32 NamedBody341_39

def NamedBody341_41 : StackLang.HolProg 64 :=
.seq NamedBody341_31 NamedBody341_40

def NamedBody341_42 : StackLang.HolProg 64 :=
.seq NamedBody341_30 NamedBody341_41

def NamedBody341_43 : StackLang.HolProg 64 :=
.seq NamedBody341_29 NamedBody341_42

def NamedBody341_44 : StackLang.HolProg 64 :=
.seq NamedBody341_28 NamedBody341_43

def NamedBody341_45 : StackLang.HolProg 64 :=
.seq NamedBody341_27 NamedBody341_44

def NamedBody341_46 : StackLang.HolProg 64 :=
.seq NamedBody341_26 NamedBody341_45

def NamedBody341_47 : StackLang.HolProg 64 :=
.seq NamedBody341_25 NamedBody341_46

def NamedBody341_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody341_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody341_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody341_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody341_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody341_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody341_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody341_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody341_56 : StackLang.HolProg 64 :=
.seq NamedBody341_54 NamedBody341_55

def NamedBody341_57 : StackLang.HolProg 64 :=
.seq NamedBody341_53 NamedBody341_56

def NamedBody341_58 : StackLang.HolProg 64 :=
.seq NamedBody341_52 NamedBody341_57

def NamedBody341_59 : StackLang.HolProg 64 :=
.seq NamedBody341_51 NamedBody341_58

def NamedBody341_60 : StackLang.HolProg 64 :=
.seq NamedBody341_50 NamedBody341_59

def NamedBody341_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody341_62 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody341_63 : StackLang.HolProg 64 :=
.seq NamedBody341_61 NamedBody341_62

def NamedBody341_64 : StackLang.HolProg 64 :=
.call (some (NamedBody341_60, 1, 341, 2)) (Sum.inl 161) (some (NamedBody341_63, 341, 3))

def NamedBody341_65 : StackLang.HolProg 64 :=
.seq NamedBody341_49 NamedBody341_64

def NamedBody341_66 : StackLang.HolProg 64 :=
.seq NamedBody341_48 NamedBody341_65

def NamedBody341_67 : StackLang.HolProg 64 :=
.seq NamedBody341_47 NamedBody341_66

def NamedBody341_68 : StackLang.HolProg 64 :=
.seq NamedBody341_18 NamedBody341_67

def NamedBody341_69 : StackLang.HolProg 64 :=
.seq NamedBody341_15 NamedBody341_68

def NamedBody341_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody341_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody341_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody341_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody341_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 18#64)

def NamedBody341_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody341_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody341_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 6#64)

def NamedBody341_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody341_79 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody341_80 : StackLang.HolProg 64 :=
.seq NamedBody341_78 NamedBody341_79

def NamedBody341_81 : StackLang.HolProg 64 :=
.seq NamedBody341_77 NamedBody341_80

def NamedBody341_82 : StackLang.HolProg 64 :=
.seq NamedBody341_76 NamedBody341_81

def NamedBody341_83 : StackLang.HolProg 64 :=
.seq NamedBody341_75 NamedBody341_82

def NamedBody341_84 : StackLang.HolProg 64 :=
.seq NamedBody341_74 NamedBody341_83

def NamedBody341_85 : StackLang.HolProg 64 :=
.seq NamedBody341_73 NamedBody341_84

def NamedBody341_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody341_87 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody341_85 NamedBody341_86

def NamedBody341_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody341_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody341_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody341_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody341_92 : StackLang.HolProg 64 :=
.seq NamedBody341_90 NamedBody341_91

def NamedBody341_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody341_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 13

def NamedBody341_95 : StackLang.HolProg 64 :=
.seq NamedBody341_93 NamedBody341_94

def NamedBody341_96 : StackLang.HolProg 64 :=
.seq NamedBody341_92 NamedBody341_95

def NamedBody341_97 : StackLang.HolProg 64 :=
.seq NamedBody341_89 NamedBody341_96

def NamedBody341_98 : StackLang.HolProg 64 :=
.seq NamedBody341_88 NamedBody341_97

def NamedBody341_99 : StackLang.HolProg 64 :=
.seq NamedBody341_87 NamedBody341_98

def NamedBody341_100 : StackLang.HolProg 64 :=
.seq NamedBody341_72 NamedBody341_99

def NamedBody341_101 : StackLang.HolProg 64 :=
.seq NamedBody341_71 NamedBody341_100

def NamedBody341_102 : StackLang.HolProg 64 :=
.seq NamedBody341_70 NamedBody341_101

def NamedBody341_103 : StackLang.HolProg 64 :=
.seq NamedBody341_69 NamedBody341_102

def NamedBody341_104 : StackLang.HolProg 64 :=
.seq NamedBody341_14 NamedBody341_103

def NamedBody341_105 : StackLang.HolProg 64 :=
.seq NamedBody341_13 NamedBody341_104

def NamedBody341_106 : StackLang.HolProg 64 :=
.seq NamedBody341_12 NamedBody341_105

def NamedBody341_107 : StackLang.HolProg 64 :=
.seq NamedBody341_11 NamedBody341_106

def NamedBody341_108 : StackLang.HolProg 64 :=
.seq NamedBody341_10 NamedBody341_107

def NamedBody341_109 : StackLang.HolProg 64 :=
.seq NamedBody341_9 NamedBody341_108

def NamedBody341_110 : StackLang.HolProg 64 :=
.seq NamedBody341_8 NamedBody341_109

def NamedBody341_111 : StackLang.HolProg 64 :=
.seq NamedBody341_7 NamedBody341_110

def NamedBody341_112 : StackLang.HolProg 64 :=
.seq NamedBody341_6 NamedBody341_111

def Named341 : Nat × StackLang.HolProg 64 := (341, NamedBody341_112)
theorem Named341_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed341 = Named341 := by
  kernel_rfl
#print axioms Named341_eq
end InitECandidate.Proofs.BackendStages
