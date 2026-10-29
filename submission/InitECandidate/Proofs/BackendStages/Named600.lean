import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed600
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody600_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody600_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody600_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody600_3 : StackLang.HolProg 64 :=
.seq NamedBody600_1 NamedBody600_2

def NamedBody600_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody600_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody600_3 NamedBody600_4

def NamedBody600_6 : StackLang.HolProg 64 :=
.seq NamedBody600_0 NamedBody600_5

def NamedBody600_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody600_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody600_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody600_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody600_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551360#64))

def NamedBody600_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 160#64))

def NamedBody600_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody600_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody600_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody600_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551328#64))

def NamedBody600_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 24#64))

def NamedBody600_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody600_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody600_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2275#64)

def NamedBody600_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody600_22 : StackLang.HolProg 64 :=
.seq NamedBody600_20 NamedBody600_21

def NamedBody600_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody600_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody600_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody600_26 : StackLang.HolProg 64 :=
.seq NamedBody600_24 NamedBody600_25

def NamedBody600_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody600_28 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody600_26 NamedBody600_27

def NamedBody600_29 : StackLang.HolProg 64 :=
.seq NamedBody600_23 NamedBody600_28

def NamedBody600_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody600_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody600_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 600 3

def NamedBody600_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody600_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody600_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody600_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody600_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody600_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody600_39 : StackLang.HolProg 64 :=
.seq NamedBody600_37 NamedBody600_38

def NamedBody600_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody600_41 : StackLang.HolProg 64 :=
.seq NamedBody600_39 NamedBody600_40

def NamedBody600_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody600_43 : StackLang.HolProg 64 :=
.seq NamedBody600_41 NamedBody600_42

def NamedBody600_44 : StackLang.HolProg 64 :=
.seq NamedBody600_36 NamedBody600_43

def NamedBody600_45 : StackLang.HolProg 64 :=
.seq NamedBody600_35 NamedBody600_44

def NamedBody600_46 : StackLang.HolProg 64 :=
.seq NamedBody600_34 NamedBody600_45

def NamedBody600_47 : StackLang.HolProg 64 :=
.seq NamedBody600_33 NamedBody600_46

def NamedBody600_48 : StackLang.HolProg 64 :=
.seq NamedBody600_32 NamedBody600_47

def NamedBody600_49 : StackLang.HolProg 64 :=
.seq NamedBody600_31 NamedBody600_48

def NamedBody600_50 : StackLang.HolProg 64 :=
.seq NamedBody600_30 NamedBody600_49

def NamedBody600_51 : StackLang.HolProg 64 :=
.seq NamedBody600_29 NamedBody600_50

def NamedBody600_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody600_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody600_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody600_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody600_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody600_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody600_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody600_59 : StackLang.HolProg 64 :=
.seq NamedBody600_57 NamedBody600_58

def NamedBody600_60 : StackLang.HolProg 64 :=
.seq NamedBody600_56 NamedBody600_59

def NamedBody600_61 : StackLang.HolProg 64 :=
.seq NamedBody600_55 NamedBody600_60

def NamedBody600_62 : StackLang.HolProg 64 :=
.seq NamedBody600_54 NamedBody600_61

def NamedBody600_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody600_64 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody600_65 : StackLang.HolProg 64 :=
.seq NamedBody600_63 NamedBody600_64

def NamedBody600_66 : StackLang.HolProg 64 :=
.call (some (NamedBody600_62, 1, 600, 2)) (Sum.inl 391) (some (NamedBody600_65, 600, 3))

def NamedBody600_67 : StackLang.HolProg 64 :=
.seq NamedBody600_53 NamedBody600_66

def NamedBody600_68 : StackLang.HolProg 64 :=
.seq NamedBody600_52 NamedBody600_67

def NamedBody600_69 : StackLang.HolProg 64 :=
.seq NamedBody600_51 NamedBody600_68

def NamedBody600_70 : StackLang.HolProg 64 :=
.seq NamedBody600_22 NamedBody600_69

def NamedBody600_71 : StackLang.HolProg 64 :=
.seq NamedBody600_19 NamedBody600_70

def NamedBody600_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody600_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody600_74 : StackLang.HolProg 64 :=
.seq NamedBody600_72 NamedBody600_73

def NamedBody600_75 : StackLang.HolProg 64 :=
.seq NamedBody600_71 NamedBody600_74

def NamedBody600_76 : StackLang.HolProg 64 :=
.seq NamedBody600_18 NamedBody600_75

def NamedBody600_77 : StackLang.HolProg 64 :=
.seq NamedBody600_17 NamedBody600_76

def NamedBody600_78 : StackLang.HolProg 64 :=
.seq NamedBody600_16 NamedBody600_77

def NamedBody600_79 : StackLang.HolProg 64 :=
.seq NamedBody600_15 NamedBody600_78

def NamedBody600_80 : StackLang.HolProg 64 :=
.seq NamedBody600_14 NamedBody600_79

def NamedBody600_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody600_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody600_83 : StackLang.HolProg 64 :=
.seq NamedBody600_81 NamedBody600_82

def NamedBody600_84 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12) NamedBody600_80 NamedBody600_83

def NamedBody600_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody600_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody600_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody600_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody600_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody600_90 : StackLang.HolProg 64 :=
.seq NamedBody600_88 NamedBody600_89

def NamedBody600_91 : StackLang.HolProg 64 :=
.seq NamedBody600_87 NamedBody600_90

def NamedBody600_92 : StackLang.HolProg 64 :=
.seq NamedBody600_86 NamedBody600_91

def NamedBody600_93 : StackLang.HolProg 64 :=
.seq NamedBody600_85 NamedBody600_92

def NamedBody600_94 : StackLang.HolProg 64 :=
.seq NamedBody600_84 NamedBody600_93

def NamedBody600_95 : StackLang.HolProg 64 :=
.seq NamedBody600_13 NamedBody600_94

def NamedBody600_96 : StackLang.HolProg 64 :=
.seq NamedBody600_12 NamedBody600_95

def NamedBody600_97 : StackLang.HolProg 64 :=
.seq NamedBody600_11 NamedBody600_96

def NamedBody600_98 : StackLang.HolProg 64 :=
.seq NamedBody600_10 NamedBody600_97

def NamedBody600_99 : StackLang.HolProg 64 :=
.seq NamedBody600_9 NamedBody600_98

def NamedBody600_100 : StackLang.HolProg 64 :=
.seq NamedBody600_8 NamedBody600_99

def NamedBody600_101 : StackLang.HolProg 64 :=
.seq NamedBody600_7 NamedBody600_100

def NamedBody600_102 : StackLang.HolProg 64 :=
.seq NamedBody600_6 NamedBody600_101

def Named600 : Nat × StackLang.HolProg 64 := (600, NamedBody600_102)
theorem Named600_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed600 = Named600 := by
  kernel_rfl
#print axioms Named600_eq
end InitECandidate.Proofs.BackendStages
