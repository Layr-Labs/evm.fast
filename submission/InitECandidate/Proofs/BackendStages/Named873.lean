import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed873
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody873_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody873_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody873_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody873_3 : StackLang.HolProg 64 :=
.seq NamedBody873_1 NamedBody873_2

def NamedBody873_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody873_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody873_3 NamedBody873_4

def NamedBody873_6 : StackLang.HolProg 64 :=
.seq NamedBody873_0 NamedBody873_5

def NamedBody873_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody873_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody873_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4599#64)

def NamedBody873_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody873_11 : StackLang.HolProg 64 :=
.seq NamedBody873_9 NamedBody873_10

def NamedBody873_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody873_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody873_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody873_15 : StackLang.HolProg 64 :=
.seq NamedBody873_13 NamedBody873_14

def NamedBody873_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody873_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody873_15 NamedBody873_16

def NamedBody873_18 : StackLang.HolProg 64 :=
.seq NamedBody873_12 NamedBody873_17

def NamedBody873_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody873_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody873_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 873 3

def NamedBody873_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody873_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody873_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody873_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody873_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody873_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody873_28 : StackLang.HolProg 64 :=
.seq NamedBody873_26 NamedBody873_27

def NamedBody873_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody873_30 : StackLang.HolProg 64 :=
.seq NamedBody873_28 NamedBody873_29

def NamedBody873_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody873_32 : StackLang.HolProg 64 :=
.seq NamedBody873_30 NamedBody873_31

def NamedBody873_33 : StackLang.HolProg 64 :=
.seq NamedBody873_25 NamedBody873_32

def NamedBody873_34 : StackLang.HolProg 64 :=
.seq NamedBody873_24 NamedBody873_33

def NamedBody873_35 : StackLang.HolProg 64 :=
.seq NamedBody873_23 NamedBody873_34

def NamedBody873_36 : StackLang.HolProg 64 :=
.seq NamedBody873_22 NamedBody873_35

def NamedBody873_37 : StackLang.HolProg 64 :=
.seq NamedBody873_21 NamedBody873_36

def NamedBody873_38 : StackLang.HolProg 64 :=
.seq NamedBody873_20 NamedBody873_37

def NamedBody873_39 : StackLang.HolProg 64 :=
.seq NamedBody873_19 NamedBody873_38

def NamedBody873_40 : StackLang.HolProg 64 :=
.seq NamedBody873_18 NamedBody873_39

def NamedBody873_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody873_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody873_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody873_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody873_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody873_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody873_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody873_48 : StackLang.HolProg 64 :=
.seq NamedBody873_46 NamedBody873_47

def NamedBody873_49 : StackLang.HolProg 64 :=
.seq NamedBody873_45 NamedBody873_48

def NamedBody873_50 : StackLang.HolProg 64 :=
.seq NamedBody873_44 NamedBody873_49

def NamedBody873_51 : StackLang.HolProg 64 :=
.seq NamedBody873_43 NamedBody873_50

def NamedBody873_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody873_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody873_54 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody873_55 : StackLang.HolProg 64 :=
.seq NamedBody873_53 NamedBody873_54

def NamedBody873_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody873_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody873_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody873_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2688614470#64)

def NamedBody873_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.shMemOp Flapjack.WordMemOp.store8 1
  (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64)

def NamedBody873_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 4#64)

def NamedBody873_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody873_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody873_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 9#64)

def NamedBody873_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody873_66 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody873_67 : StackLang.HolProg 64 :=
.seq NamedBody873_65 NamedBody873_66

def NamedBody873_68 : StackLang.HolProg 64 :=
.seq NamedBody873_64 NamedBody873_67

def NamedBody873_69 : StackLang.HolProg 64 :=
.seq NamedBody873_63 NamedBody873_68

def NamedBody873_70 : StackLang.HolProg 64 :=
.seq NamedBody873_62 NamedBody873_69

def NamedBody873_71 : StackLang.HolProg 64 :=
.seq NamedBody873_61 NamedBody873_70

def NamedBody873_72 : StackLang.HolProg 64 :=
.seq NamedBody873_60 NamedBody873_71

def NamedBody873_73 : StackLang.HolProg 64 :=
.seq NamedBody873_59 NamedBody873_72

def NamedBody873_74 : StackLang.HolProg 64 :=
.seq NamedBody873_58 NamedBody873_73

def NamedBody873_75 : StackLang.HolProg 64 :=
.seq NamedBody873_57 NamedBody873_74

def NamedBody873_76 : StackLang.HolProg 64 :=
.seq NamedBody873_56 NamedBody873_75

def NamedBody873_77 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64) NamedBody873_55 NamedBody873_76

def NamedBody873_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody873_79 : StackLang.HolProg 64 :=
.seq NamedBody873_77 NamedBody873_78

def NamedBody873_80 : StackLang.HolProg 64 :=
.seq NamedBody873_52 NamedBody873_79

def NamedBody873_81 : StackLang.HolProg 64 :=
.call (some (NamedBody873_51, 1, 873, 2)) (Sum.inl 872) (some (NamedBody873_80, 873, 3))

def NamedBody873_82 : StackLang.HolProg 64 :=
.seq NamedBody873_42 NamedBody873_81

def NamedBody873_83 : StackLang.HolProg 64 :=
.seq NamedBody873_41 NamedBody873_82

def NamedBody873_84 : StackLang.HolProg 64 :=
.seq NamedBody873_40 NamedBody873_83

def NamedBody873_85 : StackLang.HolProg 64 :=
.seq NamedBody873_11 NamedBody873_84

def NamedBody873_86 : StackLang.HolProg 64 :=
.seq NamedBody873_8 NamedBody873_85

def NamedBody873_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody873_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody873_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody873_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody873_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 11

def NamedBody873_92 : StackLang.HolProg 64 :=
.seq NamedBody873_90 NamedBody873_91

def NamedBody873_93 : StackLang.HolProg 64 :=
.seq NamedBody873_89 NamedBody873_92

def NamedBody873_94 : StackLang.HolProg 64 :=
.seq NamedBody873_88 NamedBody873_93

def NamedBody873_95 : StackLang.HolProg 64 :=
.seq NamedBody873_87 NamedBody873_94

def NamedBody873_96 : StackLang.HolProg 64 :=
.seq NamedBody873_86 NamedBody873_95

def NamedBody873_97 : StackLang.HolProg 64 :=
.seq NamedBody873_7 NamedBody873_96

def NamedBody873_98 : StackLang.HolProg 64 :=
.seq NamedBody873_6 NamedBody873_97

def Named873 : Nat × StackLang.HolProg 64 := (873, NamedBody873_98)
theorem Named873_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed873 = Named873 := by
  kernel_rfl
#print axioms Named873_eq
end InitECandidate.Proofs.BackendStages
