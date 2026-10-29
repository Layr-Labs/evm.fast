import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed875
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody875_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody875_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody875_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody875_3 : StackLang.HolProg 64 :=
.seq NamedBody875_1 NamedBody875_2

def NamedBody875_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody875_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody875_3 NamedBody875_4

def NamedBody875_6 : StackLang.HolProg 64 :=
.seq NamedBody875_0 NamedBody875_5

def NamedBody875_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody875_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody875_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4601#64)

def NamedBody875_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody875_11 : StackLang.HolProg 64 :=
.seq NamedBody875_9 NamedBody875_10

def NamedBody875_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody875_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody875_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody875_15 : StackLang.HolProg 64 :=
.seq NamedBody875_13 NamedBody875_14

def NamedBody875_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody875_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody875_15 NamedBody875_16

def NamedBody875_18 : StackLang.HolProg 64 :=
.seq NamedBody875_12 NamedBody875_17

def NamedBody875_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody875_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody875_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 875 3

def NamedBody875_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody875_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody875_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody875_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody875_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody875_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody875_28 : StackLang.HolProg 64 :=
.seq NamedBody875_26 NamedBody875_27

def NamedBody875_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody875_30 : StackLang.HolProg 64 :=
.seq NamedBody875_28 NamedBody875_29

def NamedBody875_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody875_32 : StackLang.HolProg 64 :=
.seq NamedBody875_30 NamedBody875_31

def NamedBody875_33 : StackLang.HolProg 64 :=
.seq NamedBody875_25 NamedBody875_32

def NamedBody875_34 : StackLang.HolProg 64 :=
.seq NamedBody875_24 NamedBody875_33

def NamedBody875_35 : StackLang.HolProg 64 :=
.seq NamedBody875_23 NamedBody875_34

def NamedBody875_36 : StackLang.HolProg 64 :=
.seq NamedBody875_22 NamedBody875_35

def NamedBody875_37 : StackLang.HolProg 64 :=
.seq NamedBody875_21 NamedBody875_36

def NamedBody875_38 : StackLang.HolProg 64 :=
.seq NamedBody875_20 NamedBody875_37

def NamedBody875_39 : StackLang.HolProg 64 :=
.seq NamedBody875_19 NamedBody875_38

def NamedBody875_40 : StackLang.HolProg 64 :=
.seq NamedBody875_18 NamedBody875_39

def NamedBody875_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody875_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody875_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody875_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody875_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody875_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody875_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody875_48 : StackLang.HolProg 64 :=
.seq NamedBody875_46 NamedBody875_47

def NamedBody875_49 : StackLang.HolProg 64 :=
.seq NamedBody875_45 NamedBody875_48

def NamedBody875_50 : StackLang.HolProg 64 :=
.seq NamedBody875_44 NamedBody875_49

def NamedBody875_51 : StackLang.HolProg 64 :=
.seq NamedBody875_43 NamedBody875_50

def NamedBody875_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody875_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody875_54 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody875_55 : StackLang.HolProg 64 :=
.seq NamedBody875_53 NamedBody875_54

def NamedBody875_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody875_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody875_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody875_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2688614470#64)

def NamedBody875_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.shMemOp Flapjack.WordMemOp.store8 1
  (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64)

def NamedBody875_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def NamedBody875_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody875_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody875_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 9#64)

def NamedBody875_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody875_66 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody875_67 : StackLang.HolProg 64 :=
.seq NamedBody875_65 NamedBody875_66

def NamedBody875_68 : StackLang.HolProg 64 :=
.seq NamedBody875_64 NamedBody875_67

def NamedBody875_69 : StackLang.HolProg 64 :=
.seq NamedBody875_63 NamedBody875_68

def NamedBody875_70 : StackLang.HolProg 64 :=
.seq NamedBody875_62 NamedBody875_69

def NamedBody875_71 : StackLang.HolProg 64 :=
.seq NamedBody875_61 NamedBody875_70

def NamedBody875_72 : StackLang.HolProg 64 :=
.seq NamedBody875_60 NamedBody875_71

def NamedBody875_73 : StackLang.HolProg 64 :=
.seq NamedBody875_59 NamedBody875_72

def NamedBody875_74 : StackLang.HolProg 64 :=
.seq NamedBody875_58 NamedBody875_73

def NamedBody875_75 : StackLang.HolProg 64 :=
.seq NamedBody875_57 NamedBody875_74

def NamedBody875_76 : StackLang.HolProg 64 :=
.seq NamedBody875_56 NamedBody875_75

def NamedBody875_77 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64) NamedBody875_55 NamedBody875_76

def NamedBody875_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody875_79 : StackLang.HolProg 64 :=
.seq NamedBody875_77 NamedBody875_78

def NamedBody875_80 : StackLang.HolProg 64 :=
.seq NamedBody875_52 NamedBody875_79

def NamedBody875_81 : StackLang.HolProg 64 :=
.call (some (NamedBody875_51, 1, 875, 2)) (Sum.inl 874) (some (NamedBody875_80, 875, 3))

def NamedBody875_82 : StackLang.HolProg 64 :=
.seq NamedBody875_42 NamedBody875_81

def NamedBody875_83 : StackLang.HolProg 64 :=
.seq NamedBody875_41 NamedBody875_82

def NamedBody875_84 : StackLang.HolProg 64 :=
.seq NamedBody875_40 NamedBody875_83

def NamedBody875_85 : StackLang.HolProg 64 :=
.seq NamedBody875_11 NamedBody875_84

def NamedBody875_86 : StackLang.HolProg 64 :=
.seq NamedBody875_8 NamedBody875_85

def NamedBody875_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody875_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody875_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody875_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody875_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 11

def NamedBody875_92 : StackLang.HolProg 64 :=
.seq NamedBody875_90 NamedBody875_91

def NamedBody875_93 : StackLang.HolProg 64 :=
.seq NamedBody875_89 NamedBody875_92

def NamedBody875_94 : StackLang.HolProg 64 :=
.seq NamedBody875_88 NamedBody875_93

def NamedBody875_95 : StackLang.HolProg 64 :=
.seq NamedBody875_87 NamedBody875_94

def NamedBody875_96 : StackLang.HolProg 64 :=
.seq NamedBody875_86 NamedBody875_95

def NamedBody875_97 : StackLang.HolProg 64 :=
.seq NamedBody875_7 NamedBody875_96

def NamedBody875_98 : StackLang.HolProg 64 :=
.seq NamedBody875_6 NamedBody875_97

def Named875 : Nat × StackLang.HolProg 64 := (875, NamedBody875_98)
theorem Named875_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed875 = Named875 := by
  kernel_rfl
#print axioms Named875_eq
end InitECandidate.Proofs.BackendStages
