import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed876
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody876_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody876_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody876_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody876_3 : StackLang.HolProg 64 :=
.seq NamedBody876_1 NamedBody876_2

def NamedBody876_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody876_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody876_3 NamedBody876_4

def NamedBody876_6 : StackLang.HolProg 64 :=
.seq NamedBody876_0 NamedBody876_5

def NamedBody876_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody876_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody876_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4602#64)

def NamedBody876_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody876_11 : StackLang.HolProg 64 :=
.seq NamedBody876_9 NamedBody876_10

def NamedBody876_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody876_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody876_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody876_15 : StackLang.HolProg 64 :=
.seq NamedBody876_13 NamedBody876_14

def NamedBody876_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody876_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody876_15 NamedBody876_16

def NamedBody876_18 : StackLang.HolProg 64 :=
.seq NamedBody876_12 NamedBody876_17

def NamedBody876_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody876_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody876_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 876 3

def NamedBody876_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody876_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody876_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody876_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody876_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody876_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody876_28 : StackLang.HolProg 64 :=
.seq NamedBody876_26 NamedBody876_27

def NamedBody876_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody876_30 : StackLang.HolProg 64 :=
.seq NamedBody876_28 NamedBody876_29

def NamedBody876_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody876_32 : StackLang.HolProg 64 :=
.seq NamedBody876_30 NamedBody876_31

def NamedBody876_33 : StackLang.HolProg 64 :=
.seq NamedBody876_25 NamedBody876_32

def NamedBody876_34 : StackLang.HolProg 64 :=
.seq NamedBody876_24 NamedBody876_33

def NamedBody876_35 : StackLang.HolProg 64 :=
.seq NamedBody876_23 NamedBody876_34

def NamedBody876_36 : StackLang.HolProg 64 :=
.seq NamedBody876_22 NamedBody876_35

def NamedBody876_37 : StackLang.HolProg 64 :=
.seq NamedBody876_21 NamedBody876_36

def NamedBody876_38 : StackLang.HolProg 64 :=
.seq NamedBody876_20 NamedBody876_37

def NamedBody876_39 : StackLang.HolProg 64 :=
.seq NamedBody876_19 NamedBody876_38

def NamedBody876_40 : StackLang.HolProg 64 :=
.seq NamedBody876_18 NamedBody876_39

def NamedBody876_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody876_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody876_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody876_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody876_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody876_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody876_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody876_48 : StackLang.HolProg 64 :=
.seq NamedBody876_46 NamedBody876_47

def NamedBody876_49 : StackLang.HolProg 64 :=
.seq NamedBody876_45 NamedBody876_48

def NamedBody876_50 : StackLang.HolProg 64 :=
.seq NamedBody876_44 NamedBody876_49

def NamedBody876_51 : StackLang.HolProg 64 :=
.seq NamedBody876_43 NamedBody876_50

def NamedBody876_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody876_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody876_54 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody876_55 : StackLang.HolProg 64 :=
.seq NamedBody876_53 NamedBody876_54

def NamedBody876_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody876_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody876_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody876_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2688614470#64)

def NamedBody876_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.shMemOp Flapjack.WordMemOp.store8 1
  (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64)

def NamedBody876_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 7#64)

def NamedBody876_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody876_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody876_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 9#64)

def NamedBody876_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody876_66 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody876_67 : StackLang.HolProg 64 :=
.seq NamedBody876_65 NamedBody876_66

def NamedBody876_68 : StackLang.HolProg 64 :=
.seq NamedBody876_64 NamedBody876_67

def NamedBody876_69 : StackLang.HolProg 64 :=
.seq NamedBody876_63 NamedBody876_68

def NamedBody876_70 : StackLang.HolProg 64 :=
.seq NamedBody876_62 NamedBody876_69

def NamedBody876_71 : StackLang.HolProg 64 :=
.seq NamedBody876_61 NamedBody876_70

def NamedBody876_72 : StackLang.HolProg 64 :=
.seq NamedBody876_60 NamedBody876_71

def NamedBody876_73 : StackLang.HolProg 64 :=
.seq NamedBody876_59 NamedBody876_72

def NamedBody876_74 : StackLang.HolProg 64 :=
.seq NamedBody876_58 NamedBody876_73

def NamedBody876_75 : StackLang.HolProg 64 :=
.seq NamedBody876_57 NamedBody876_74

def NamedBody876_76 : StackLang.HolProg 64 :=
.seq NamedBody876_56 NamedBody876_75

def NamedBody876_77 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64) NamedBody876_55 NamedBody876_76

def NamedBody876_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody876_79 : StackLang.HolProg 64 :=
.seq NamedBody876_77 NamedBody876_78

def NamedBody876_80 : StackLang.HolProg 64 :=
.seq NamedBody876_52 NamedBody876_79

def NamedBody876_81 : StackLang.HolProg 64 :=
.call (some (NamedBody876_51, 1, 876, 2)) (Sum.inl 875) (some (NamedBody876_80, 876, 3))

def NamedBody876_82 : StackLang.HolProg 64 :=
.seq NamedBody876_42 NamedBody876_81

def NamedBody876_83 : StackLang.HolProg 64 :=
.seq NamedBody876_41 NamedBody876_82

def NamedBody876_84 : StackLang.HolProg 64 :=
.seq NamedBody876_40 NamedBody876_83

def NamedBody876_85 : StackLang.HolProg 64 :=
.seq NamedBody876_11 NamedBody876_84

def NamedBody876_86 : StackLang.HolProg 64 :=
.seq NamedBody876_8 NamedBody876_85

def NamedBody876_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody876_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody876_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody876_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody876_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 11

def NamedBody876_92 : StackLang.HolProg 64 :=
.seq NamedBody876_90 NamedBody876_91

def NamedBody876_93 : StackLang.HolProg 64 :=
.seq NamedBody876_89 NamedBody876_92

def NamedBody876_94 : StackLang.HolProg 64 :=
.seq NamedBody876_88 NamedBody876_93

def NamedBody876_95 : StackLang.HolProg 64 :=
.seq NamedBody876_87 NamedBody876_94

def NamedBody876_96 : StackLang.HolProg 64 :=
.seq NamedBody876_86 NamedBody876_95

def NamedBody876_97 : StackLang.HolProg 64 :=
.seq NamedBody876_7 NamedBody876_96

def NamedBody876_98 : StackLang.HolProg 64 :=
.seq NamedBody876_6 NamedBody876_97

def Named876 : Nat × StackLang.HolProg 64 := (876, NamedBody876_98)
theorem Named876_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed876 = Named876 := by
  kernel_rfl
#print axioms Named876_eq
end InitECandidate.Proofs.BackendStages
