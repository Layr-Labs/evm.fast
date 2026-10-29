import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed294
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody294_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody294_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody294_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody294_3 : StackLang.HolProg 64 :=
.seq NamedBody294_1 NamedBody294_2

def NamedBody294_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody294_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody294_3 NamedBody294_4

def NamedBody294_6 : StackLang.HolProg 64 :=
.seq NamedBody294_0 NamedBody294_5

def NamedBody294_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody294_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody294_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 800#64)

def NamedBody294_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody294_11 : StackLang.HolProg 64 :=
.seq NamedBody294_9 NamedBody294_10

def NamedBody294_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody294_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody294_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody294_15 : StackLang.HolProg 64 :=
.seq NamedBody294_13 NamedBody294_14

def NamedBody294_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody294_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody294_15 NamedBody294_16

def NamedBody294_18 : StackLang.HolProg 64 :=
.seq NamedBody294_12 NamedBody294_17

def NamedBody294_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody294_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody294_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 294 3

def NamedBody294_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody294_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody294_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody294_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody294_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody294_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody294_28 : StackLang.HolProg 64 :=
.seq NamedBody294_26 NamedBody294_27

def NamedBody294_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody294_30 : StackLang.HolProg 64 :=
.seq NamedBody294_28 NamedBody294_29

def NamedBody294_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody294_32 : StackLang.HolProg 64 :=
.seq NamedBody294_30 NamedBody294_31

def NamedBody294_33 : StackLang.HolProg 64 :=
.seq NamedBody294_25 NamedBody294_32

def NamedBody294_34 : StackLang.HolProg 64 :=
.seq NamedBody294_24 NamedBody294_33

def NamedBody294_35 : StackLang.HolProg 64 :=
.seq NamedBody294_23 NamedBody294_34

def NamedBody294_36 : StackLang.HolProg 64 :=
.seq NamedBody294_22 NamedBody294_35

def NamedBody294_37 : StackLang.HolProg 64 :=
.seq NamedBody294_21 NamedBody294_36

def NamedBody294_38 : StackLang.HolProg 64 :=
.seq NamedBody294_20 NamedBody294_37

def NamedBody294_39 : StackLang.HolProg 64 :=
.seq NamedBody294_19 NamedBody294_38

def NamedBody294_40 : StackLang.HolProg 64 :=
.seq NamedBody294_18 NamedBody294_39

def NamedBody294_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody294_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody294_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody294_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody294_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody294_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody294_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody294_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody294_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody294_50 : StackLang.HolProg 64 :=
.seq NamedBody294_48 NamedBody294_49

def NamedBody294_51 : StackLang.HolProg 64 :=
.seq NamedBody294_47 NamedBody294_50

def NamedBody294_52 : StackLang.HolProg 64 :=
.seq NamedBody294_46 NamedBody294_51

def NamedBody294_53 : StackLang.HolProg 64 :=
.seq NamedBody294_45 NamedBody294_52

def NamedBody294_54 : StackLang.HolProg 64 :=
.seq NamedBody294_44 NamedBody294_53

def NamedBody294_55 : StackLang.HolProg 64 :=
.seq NamedBody294_43 NamedBody294_54

def NamedBody294_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody294_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody294_58 : StackLang.HolProg 64 :=
.seq NamedBody294_56 NamedBody294_57

def NamedBody294_59 : StackLang.HolProg 64 :=
.call (some (NamedBody294_55, 1, 294, 2)) (Sum.inl 186) (some (NamedBody294_58, 294, 3))

def NamedBody294_60 : StackLang.HolProg 64 :=
.seq NamedBody294_42 NamedBody294_59

def NamedBody294_61 : StackLang.HolProg 64 :=
.seq NamedBody294_41 NamedBody294_60

def NamedBody294_62 : StackLang.HolProg 64 :=
.seq NamedBody294_40 NamedBody294_61

def NamedBody294_63 : StackLang.HolProg 64 :=
.seq NamedBody294_11 NamedBody294_62

def NamedBody294_64 : StackLang.HolProg 64 :=
.seq NamedBody294_8 NamedBody294_63

def NamedBody294_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody294_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody294_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody294_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody294_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody294_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody294_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody294_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody294_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody294_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 13

def NamedBody294_75 : StackLang.HolProg 64 :=
.seq NamedBody294_73 NamedBody294_74

def NamedBody294_76 : StackLang.HolProg 64 :=
.seq NamedBody294_72 NamedBody294_75

def NamedBody294_77 : StackLang.HolProg 64 :=
.seq NamedBody294_71 NamedBody294_76

def NamedBody294_78 : StackLang.HolProg 64 :=
.seq NamedBody294_70 NamedBody294_77

def NamedBody294_79 : StackLang.HolProg 64 :=
.seq NamedBody294_69 NamedBody294_78

def NamedBody294_80 : StackLang.HolProg 64 :=
.seq NamedBody294_68 NamedBody294_79

def NamedBody294_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody294_82 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody294_80 NamedBody294_81

def NamedBody294_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody294_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody294_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody294_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody294_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def NamedBody294_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody294_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def NamedBody294_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody294_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody294_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 13

def NamedBody294_93 : StackLang.HolProg 64 :=
.seq NamedBody294_91 NamedBody294_92

def NamedBody294_94 : StackLang.HolProg 64 :=
.seq NamedBody294_90 NamedBody294_93

def NamedBody294_95 : StackLang.HolProg 64 :=
.seq NamedBody294_89 NamedBody294_94

def NamedBody294_96 : StackLang.HolProg 64 :=
.seq NamedBody294_88 NamedBody294_95

def NamedBody294_97 : StackLang.HolProg 64 :=
.seq NamedBody294_87 NamedBody294_96

def NamedBody294_98 : StackLang.HolProg 64 :=
.seq NamedBody294_86 NamedBody294_97

def NamedBody294_99 : StackLang.HolProg 64 :=
.seq NamedBody294_85 NamedBody294_98

def NamedBody294_100 : StackLang.HolProg 64 :=
.seq NamedBody294_84 NamedBody294_99

def NamedBody294_101 : StackLang.HolProg 64 :=
.seq NamedBody294_83 NamedBody294_100

def NamedBody294_102 : StackLang.HolProg 64 :=
.seq NamedBody294_82 NamedBody294_101

def NamedBody294_103 : StackLang.HolProg 64 :=
.seq NamedBody294_67 NamedBody294_102

def NamedBody294_104 : StackLang.HolProg 64 :=
.seq NamedBody294_66 NamedBody294_103

def NamedBody294_105 : StackLang.HolProg 64 :=
.seq NamedBody294_65 NamedBody294_104

def NamedBody294_106 : StackLang.HolProg 64 :=
.seq NamedBody294_64 NamedBody294_105

def NamedBody294_107 : StackLang.HolProg 64 :=
.seq NamedBody294_7 NamedBody294_106

def NamedBody294_108 : StackLang.HolProg 64 :=
.seq NamedBody294_6 NamedBody294_107

def Named294 : Nat × StackLang.HolProg 64 := (294, NamedBody294_108)
theorem Named294_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed294 = Named294 := by
  kernel_rfl
#print axioms Named294_eq
end InitECandidate.Proofs.BackendStages
