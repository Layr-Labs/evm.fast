import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed495
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody495_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody495_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody495_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody495_3 : StackLang.HolProg 64 :=
.seq NamedBody495_1 NamedBody495_2

def NamedBody495_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody495_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody495_3 NamedBody495_4

def NamedBody495_6 : StackLang.HolProg 64 :=
.seq NamedBody495_0 NamedBody495_5

def NamedBody495_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody495_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody495_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1542#64)

def NamedBody495_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody495_11 : StackLang.HolProg 64 :=
.seq NamedBody495_9 NamedBody495_10

def NamedBody495_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody495_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody495_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody495_15 : StackLang.HolProg 64 :=
.seq NamedBody495_13 NamedBody495_14

def NamedBody495_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody495_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody495_15 NamedBody495_16

def NamedBody495_18 : StackLang.HolProg 64 :=
.seq NamedBody495_12 NamedBody495_17

def NamedBody495_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody495_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody495_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 495 3

def NamedBody495_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody495_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody495_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody495_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody495_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody495_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody495_28 : StackLang.HolProg 64 :=
.seq NamedBody495_26 NamedBody495_27

def NamedBody495_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody495_30 : StackLang.HolProg 64 :=
.seq NamedBody495_28 NamedBody495_29

def NamedBody495_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody495_32 : StackLang.HolProg 64 :=
.seq NamedBody495_30 NamedBody495_31

def NamedBody495_33 : StackLang.HolProg 64 :=
.seq NamedBody495_25 NamedBody495_32

def NamedBody495_34 : StackLang.HolProg 64 :=
.seq NamedBody495_24 NamedBody495_33

def NamedBody495_35 : StackLang.HolProg 64 :=
.seq NamedBody495_23 NamedBody495_34

def NamedBody495_36 : StackLang.HolProg 64 :=
.seq NamedBody495_22 NamedBody495_35

def NamedBody495_37 : StackLang.HolProg 64 :=
.seq NamedBody495_21 NamedBody495_36

def NamedBody495_38 : StackLang.HolProg 64 :=
.seq NamedBody495_20 NamedBody495_37

def NamedBody495_39 : StackLang.HolProg 64 :=
.seq NamedBody495_19 NamedBody495_38

def NamedBody495_40 : StackLang.HolProg 64 :=
.seq NamedBody495_18 NamedBody495_39

def NamedBody495_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody495_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody495_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody495_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody495_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody495_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody495_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody495_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody495_49 : StackLang.HolProg 64 :=
.seq NamedBody495_47 NamedBody495_48

def NamedBody495_50 : StackLang.HolProg 64 :=
.seq NamedBody495_46 NamedBody495_49

def NamedBody495_51 : StackLang.HolProg 64 :=
.seq NamedBody495_45 NamedBody495_50

def NamedBody495_52 : StackLang.HolProg 64 :=
.seq NamedBody495_44 NamedBody495_51

def NamedBody495_53 : StackLang.HolProg 64 :=
.seq NamedBody495_43 NamedBody495_52

def NamedBody495_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody495_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody495_56 : StackLang.HolProg 64 :=
.seq NamedBody495_54 NamedBody495_55

def NamedBody495_57 : StackLang.HolProg 64 :=
.call (some (NamedBody495_53, 1, 495, 2)) (Sum.inl 493) (some (NamedBody495_56, 495, 3))

def NamedBody495_58 : StackLang.HolProg 64 :=
.seq NamedBody495_42 NamedBody495_57

def NamedBody495_59 : StackLang.HolProg 64 :=
.seq NamedBody495_41 NamedBody495_58

def NamedBody495_60 : StackLang.HolProg 64 :=
.seq NamedBody495_40 NamedBody495_59

def NamedBody495_61 : StackLang.HolProg 64 :=
.seq NamedBody495_11 NamedBody495_60

def NamedBody495_62 : StackLang.HolProg 64 :=
.seq NamedBody495_8 NamedBody495_61

def NamedBody495_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody495_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody495_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody495_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody495_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 100#64)

def NamedBody495_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody495_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody495_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 11

def NamedBody495_71 : StackLang.HolProg 64 :=
.seq NamedBody495_69 NamedBody495_70

def NamedBody495_72 : StackLang.HolProg 64 :=
.seq NamedBody495_68 NamedBody495_71

def NamedBody495_73 : StackLang.HolProg 64 :=
.seq NamedBody495_67 NamedBody495_72

def NamedBody495_74 : StackLang.HolProg 64 :=
.seq NamedBody495_66 NamedBody495_73

def NamedBody495_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody495_76 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody495_74 NamedBody495_75

def NamedBody495_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody495_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody495_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 3000#64)

def NamedBody495_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody495_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody495_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 11

def NamedBody495_83 : StackLang.HolProg 64 :=
.seq NamedBody495_81 NamedBody495_82

def NamedBody495_84 : StackLang.HolProg 64 :=
.seq NamedBody495_80 NamedBody495_83

def NamedBody495_85 : StackLang.HolProg 64 :=
.seq NamedBody495_79 NamedBody495_84

def NamedBody495_86 : StackLang.HolProg 64 :=
.seq NamedBody495_78 NamedBody495_85

def NamedBody495_87 : StackLang.HolProg 64 :=
.seq NamedBody495_77 NamedBody495_86

def NamedBody495_88 : StackLang.HolProg 64 :=
.seq NamedBody495_76 NamedBody495_87

def NamedBody495_89 : StackLang.HolProg 64 :=
.seq NamedBody495_65 NamedBody495_88

def NamedBody495_90 : StackLang.HolProg 64 :=
.seq NamedBody495_64 NamedBody495_89

def NamedBody495_91 : StackLang.HolProg 64 :=
.seq NamedBody495_63 NamedBody495_90

def NamedBody495_92 : StackLang.HolProg 64 :=
.seq NamedBody495_62 NamedBody495_91

def NamedBody495_93 : StackLang.HolProg 64 :=
.seq NamedBody495_7 NamedBody495_92

def NamedBody495_94 : StackLang.HolProg 64 :=
.seq NamedBody495_6 NamedBody495_93

def Named495 : Nat × StackLang.HolProg 64 := (495, NamedBody495_94)
theorem Named495_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed495 = Named495 := by
  kernel_rfl
#print axioms Named495_eq
end InitECandidate.Proofs.BackendStages
