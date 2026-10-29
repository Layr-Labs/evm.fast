import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed870
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody870_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody870_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody870_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody870_3 : StackLang.HolProg 64 :=
.seq NamedBody870_1 NamedBody870_2

def NamedBody870_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody870_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody870_3 NamedBody870_4

def NamedBody870_6 : StackLang.HolProg 64 :=
.seq NamedBody870_0 NamedBody870_5

def NamedBody870_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody870_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody870_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4596#64)

def NamedBody870_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody870_11 : StackLang.HolProg 64 :=
.seq NamedBody870_9 NamedBody870_10

def NamedBody870_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody870_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody870_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody870_15 : StackLang.HolProg 64 :=
.seq NamedBody870_13 NamedBody870_14

def NamedBody870_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody870_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody870_15 NamedBody870_16

def NamedBody870_18 : StackLang.HolProg 64 :=
.seq NamedBody870_12 NamedBody870_17

def NamedBody870_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody870_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody870_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 870 3

def NamedBody870_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody870_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody870_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody870_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody870_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody870_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody870_28 : StackLang.HolProg 64 :=
.seq NamedBody870_26 NamedBody870_27

def NamedBody870_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody870_30 : StackLang.HolProg 64 :=
.seq NamedBody870_28 NamedBody870_29

def NamedBody870_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody870_32 : StackLang.HolProg 64 :=
.seq NamedBody870_30 NamedBody870_31

def NamedBody870_33 : StackLang.HolProg 64 :=
.seq NamedBody870_25 NamedBody870_32

def NamedBody870_34 : StackLang.HolProg 64 :=
.seq NamedBody870_24 NamedBody870_33

def NamedBody870_35 : StackLang.HolProg 64 :=
.seq NamedBody870_23 NamedBody870_34

def NamedBody870_36 : StackLang.HolProg 64 :=
.seq NamedBody870_22 NamedBody870_35

def NamedBody870_37 : StackLang.HolProg 64 :=
.seq NamedBody870_21 NamedBody870_36

def NamedBody870_38 : StackLang.HolProg 64 :=
.seq NamedBody870_20 NamedBody870_37

def NamedBody870_39 : StackLang.HolProg 64 :=
.seq NamedBody870_19 NamedBody870_38

def NamedBody870_40 : StackLang.HolProg 64 :=
.seq NamedBody870_18 NamedBody870_39

def NamedBody870_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody870_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody870_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody870_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody870_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody870_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody870_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody870_48 : StackLang.HolProg 64 :=
.seq NamedBody870_46 NamedBody870_47

def NamedBody870_49 : StackLang.HolProg 64 :=
.seq NamedBody870_45 NamedBody870_48

def NamedBody870_50 : StackLang.HolProg 64 :=
.seq NamedBody870_44 NamedBody870_49

def NamedBody870_51 : StackLang.HolProg 64 :=
.seq NamedBody870_43 NamedBody870_50

def NamedBody870_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody870_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody870_54 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody870_55 : StackLang.HolProg 64 :=
.seq NamedBody870_53 NamedBody870_54

def NamedBody870_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody870_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody870_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody870_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2688614470#64)

def NamedBody870_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.shMemOp Flapjack.WordMemOp.store8 1
  (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64)

def NamedBody870_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def NamedBody870_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody870_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody870_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 9#64)

def NamedBody870_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody870_66 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody870_67 : StackLang.HolProg 64 :=
.seq NamedBody870_65 NamedBody870_66

def NamedBody870_68 : StackLang.HolProg 64 :=
.seq NamedBody870_64 NamedBody870_67

def NamedBody870_69 : StackLang.HolProg 64 :=
.seq NamedBody870_63 NamedBody870_68

def NamedBody870_70 : StackLang.HolProg 64 :=
.seq NamedBody870_62 NamedBody870_69

def NamedBody870_71 : StackLang.HolProg 64 :=
.seq NamedBody870_61 NamedBody870_70

def NamedBody870_72 : StackLang.HolProg 64 :=
.seq NamedBody870_60 NamedBody870_71

def NamedBody870_73 : StackLang.HolProg 64 :=
.seq NamedBody870_59 NamedBody870_72

def NamedBody870_74 : StackLang.HolProg 64 :=
.seq NamedBody870_58 NamedBody870_73

def NamedBody870_75 : StackLang.HolProg 64 :=
.seq NamedBody870_57 NamedBody870_74

def NamedBody870_76 : StackLang.HolProg 64 :=
.seq NamedBody870_56 NamedBody870_75

def NamedBody870_77 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64) NamedBody870_55 NamedBody870_76

def NamedBody870_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody870_79 : StackLang.HolProg 64 :=
.seq NamedBody870_77 NamedBody870_78

def NamedBody870_80 : StackLang.HolProg 64 :=
.seq NamedBody870_52 NamedBody870_79

def NamedBody870_81 : StackLang.HolProg 64 :=
.call (some (NamedBody870_51, 1, 870, 2)) (Sum.inl 869) (some (NamedBody870_80, 870, 3))

def NamedBody870_82 : StackLang.HolProg 64 :=
.seq NamedBody870_42 NamedBody870_81

def NamedBody870_83 : StackLang.HolProg 64 :=
.seq NamedBody870_41 NamedBody870_82

def NamedBody870_84 : StackLang.HolProg 64 :=
.seq NamedBody870_40 NamedBody870_83

def NamedBody870_85 : StackLang.HolProg 64 :=
.seq NamedBody870_11 NamedBody870_84

def NamedBody870_86 : StackLang.HolProg 64 :=
.seq NamedBody870_8 NamedBody870_85

def NamedBody870_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody870_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody870_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody870_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody870_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 11

def NamedBody870_92 : StackLang.HolProg 64 :=
.seq NamedBody870_90 NamedBody870_91

def NamedBody870_93 : StackLang.HolProg 64 :=
.seq NamedBody870_89 NamedBody870_92

def NamedBody870_94 : StackLang.HolProg 64 :=
.seq NamedBody870_88 NamedBody870_93

def NamedBody870_95 : StackLang.HolProg 64 :=
.seq NamedBody870_87 NamedBody870_94

def NamedBody870_96 : StackLang.HolProg 64 :=
.seq NamedBody870_86 NamedBody870_95

def NamedBody870_97 : StackLang.HolProg 64 :=
.seq NamedBody870_7 NamedBody870_96

def NamedBody870_98 : StackLang.HolProg 64 :=
.seq NamedBody870_6 NamedBody870_97

def Named870 : Nat × StackLang.HolProg 64 := (870, NamedBody870_98)
theorem Named870_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed870 = Named870 := by
  kernel_rfl
#print axioms Named870_eq
end InitECandidate.Proofs.BackendStages
