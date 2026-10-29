import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed871
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody871_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody871_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody871_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody871_3 : StackLang.HolProg 64 :=
.seq NamedBody871_1 NamedBody871_2

def NamedBody871_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody871_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody871_3 NamedBody871_4

def NamedBody871_6 : StackLang.HolProg 64 :=
.seq NamedBody871_0 NamedBody871_5

def NamedBody871_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody871_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody871_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4597#64)

def NamedBody871_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody871_11 : StackLang.HolProg 64 :=
.seq NamedBody871_9 NamedBody871_10

def NamedBody871_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody871_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody871_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody871_15 : StackLang.HolProg 64 :=
.seq NamedBody871_13 NamedBody871_14

def NamedBody871_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody871_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody871_15 NamedBody871_16

def NamedBody871_18 : StackLang.HolProg 64 :=
.seq NamedBody871_12 NamedBody871_17

def NamedBody871_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody871_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody871_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 871 3

def NamedBody871_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody871_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody871_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody871_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody871_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody871_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody871_28 : StackLang.HolProg 64 :=
.seq NamedBody871_26 NamedBody871_27

def NamedBody871_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody871_30 : StackLang.HolProg 64 :=
.seq NamedBody871_28 NamedBody871_29

def NamedBody871_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody871_32 : StackLang.HolProg 64 :=
.seq NamedBody871_30 NamedBody871_31

def NamedBody871_33 : StackLang.HolProg 64 :=
.seq NamedBody871_25 NamedBody871_32

def NamedBody871_34 : StackLang.HolProg 64 :=
.seq NamedBody871_24 NamedBody871_33

def NamedBody871_35 : StackLang.HolProg 64 :=
.seq NamedBody871_23 NamedBody871_34

def NamedBody871_36 : StackLang.HolProg 64 :=
.seq NamedBody871_22 NamedBody871_35

def NamedBody871_37 : StackLang.HolProg 64 :=
.seq NamedBody871_21 NamedBody871_36

def NamedBody871_38 : StackLang.HolProg 64 :=
.seq NamedBody871_20 NamedBody871_37

def NamedBody871_39 : StackLang.HolProg 64 :=
.seq NamedBody871_19 NamedBody871_38

def NamedBody871_40 : StackLang.HolProg 64 :=
.seq NamedBody871_18 NamedBody871_39

def NamedBody871_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody871_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody871_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody871_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody871_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody871_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody871_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody871_48 : StackLang.HolProg 64 :=
.seq NamedBody871_46 NamedBody871_47

def NamedBody871_49 : StackLang.HolProg 64 :=
.seq NamedBody871_45 NamedBody871_48

def NamedBody871_50 : StackLang.HolProg 64 :=
.seq NamedBody871_44 NamedBody871_49

def NamedBody871_51 : StackLang.HolProg 64 :=
.seq NamedBody871_43 NamedBody871_50

def NamedBody871_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody871_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody871_54 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody871_55 : StackLang.HolProg 64 :=
.seq NamedBody871_53 NamedBody871_54

def NamedBody871_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody871_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody871_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody871_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2688614470#64)

def NamedBody871_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.shMemOp Flapjack.WordMemOp.store8 1
  (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64)

def NamedBody871_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def NamedBody871_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody871_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody871_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 9#64)

def NamedBody871_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody871_66 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody871_67 : StackLang.HolProg 64 :=
.seq NamedBody871_65 NamedBody871_66

def NamedBody871_68 : StackLang.HolProg 64 :=
.seq NamedBody871_64 NamedBody871_67

def NamedBody871_69 : StackLang.HolProg 64 :=
.seq NamedBody871_63 NamedBody871_68

def NamedBody871_70 : StackLang.HolProg 64 :=
.seq NamedBody871_62 NamedBody871_69

def NamedBody871_71 : StackLang.HolProg 64 :=
.seq NamedBody871_61 NamedBody871_70

def NamedBody871_72 : StackLang.HolProg 64 :=
.seq NamedBody871_60 NamedBody871_71

def NamedBody871_73 : StackLang.HolProg 64 :=
.seq NamedBody871_59 NamedBody871_72

def NamedBody871_74 : StackLang.HolProg 64 :=
.seq NamedBody871_58 NamedBody871_73

def NamedBody871_75 : StackLang.HolProg 64 :=
.seq NamedBody871_57 NamedBody871_74

def NamedBody871_76 : StackLang.HolProg 64 :=
.seq NamedBody871_56 NamedBody871_75

def NamedBody871_77 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64) NamedBody871_55 NamedBody871_76

def NamedBody871_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody871_79 : StackLang.HolProg 64 :=
.seq NamedBody871_77 NamedBody871_78

def NamedBody871_80 : StackLang.HolProg 64 :=
.seq NamedBody871_52 NamedBody871_79

def NamedBody871_81 : StackLang.HolProg 64 :=
.call (some (NamedBody871_51, 1, 871, 2)) (Sum.inl 870) (some (NamedBody871_80, 871, 3))

def NamedBody871_82 : StackLang.HolProg 64 :=
.seq NamedBody871_42 NamedBody871_81

def NamedBody871_83 : StackLang.HolProg 64 :=
.seq NamedBody871_41 NamedBody871_82

def NamedBody871_84 : StackLang.HolProg 64 :=
.seq NamedBody871_40 NamedBody871_83

def NamedBody871_85 : StackLang.HolProg 64 :=
.seq NamedBody871_11 NamedBody871_84

def NamedBody871_86 : StackLang.HolProg 64 :=
.seq NamedBody871_8 NamedBody871_85

def NamedBody871_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody871_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody871_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody871_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody871_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 11

def NamedBody871_92 : StackLang.HolProg 64 :=
.seq NamedBody871_90 NamedBody871_91

def NamedBody871_93 : StackLang.HolProg 64 :=
.seq NamedBody871_89 NamedBody871_92

def NamedBody871_94 : StackLang.HolProg 64 :=
.seq NamedBody871_88 NamedBody871_93

def NamedBody871_95 : StackLang.HolProg 64 :=
.seq NamedBody871_87 NamedBody871_94

def NamedBody871_96 : StackLang.HolProg 64 :=
.seq NamedBody871_86 NamedBody871_95

def NamedBody871_97 : StackLang.HolProg 64 :=
.seq NamedBody871_7 NamedBody871_96

def NamedBody871_98 : StackLang.HolProg 64 :=
.seq NamedBody871_6 NamedBody871_97

def Named871 : Nat × StackLang.HolProg 64 := (871, NamedBody871_98)
theorem Named871_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed871 = Named871 := by
  kernel_rfl
#print axioms Named871_eq
end InitECandidate.Proofs.BackendStages
