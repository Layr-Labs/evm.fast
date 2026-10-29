import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed346
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody346_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody346_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody346_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody346_3 : StackLang.HolProg 64 :=
.seq NamedBody346_1 NamedBody346_2

def NamedBody346_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody346_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody346_3 NamedBody346_4

def NamedBody346_6 : StackLang.HolProg 64 :=
.seq NamedBody346_0 NamedBody346_5

def NamedBody346_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody346_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody346_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1026#64)

def NamedBody346_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody346_11 : StackLang.HolProg 64 :=
.seq NamedBody346_9 NamedBody346_10

def NamedBody346_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody346_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody346_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody346_15 : StackLang.HolProg 64 :=
.seq NamedBody346_13 NamedBody346_14

def NamedBody346_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody346_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody346_15 NamedBody346_16

def NamedBody346_18 : StackLang.HolProg 64 :=
.seq NamedBody346_12 NamedBody346_17

def NamedBody346_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody346_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody346_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 346 3

def NamedBody346_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody346_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody346_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody346_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody346_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody346_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody346_28 : StackLang.HolProg 64 :=
.seq NamedBody346_26 NamedBody346_27

def NamedBody346_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody346_30 : StackLang.HolProg 64 :=
.seq NamedBody346_28 NamedBody346_29

def NamedBody346_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody346_32 : StackLang.HolProg 64 :=
.seq NamedBody346_30 NamedBody346_31

def NamedBody346_33 : StackLang.HolProg 64 :=
.seq NamedBody346_25 NamedBody346_32

def NamedBody346_34 : StackLang.HolProg 64 :=
.seq NamedBody346_24 NamedBody346_33

def NamedBody346_35 : StackLang.HolProg 64 :=
.seq NamedBody346_23 NamedBody346_34

def NamedBody346_36 : StackLang.HolProg 64 :=
.seq NamedBody346_22 NamedBody346_35

def NamedBody346_37 : StackLang.HolProg 64 :=
.seq NamedBody346_21 NamedBody346_36

def NamedBody346_38 : StackLang.HolProg 64 :=
.seq NamedBody346_20 NamedBody346_37

def NamedBody346_39 : StackLang.HolProg 64 :=
.seq NamedBody346_19 NamedBody346_38

def NamedBody346_40 : StackLang.HolProg 64 :=
.seq NamedBody346_18 NamedBody346_39

def NamedBody346_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody346_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody346_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody346_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody346_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody346_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody346_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody346_48 : StackLang.HolProg 64 :=
.seq NamedBody346_46 NamedBody346_47

def NamedBody346_49 : StackLang.HolProg 64 :=
.seq NamedBody346_45 NamedBody346_48

def NamedBody346_50 : StackLang.HolProg 64 :=
.seq NamedBody346_44 NamedBody346_49

def NamedBody346_51 : StackLang.HolProg 64 :=
.seq NamedBody346_43 NamedBody346_50

def NamedBody346_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody346_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody346_54 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody346_55 : StackLang.HolProg 64 :=
.seq NamedBody346_53 NamedBody346_54

def NamedBody346_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody346_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody346_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody346_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 100#64)))

def NamedBody346_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody346_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody346_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 6#64)

def NamedBody346_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody346_64 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody346_65 : StackLang.HolProg 64 :=
.seq NamedBody346_63 NamedBody346_64

def NamedBody346_66 : StackLang.HolProg 64 :=
.seq NamedBody346_62 NamedBody346_65

def NamedBody346_67 : StackLang.HolProg 64 :=
.seq NamedBody346_61 NamedBody346_66

def NamedBody346_68 : StackLang.HolProg 64 :=
.seq NamedBody346_60 NamedBody346_67

def NamedBody346_69 : StackLang.HolProg 64 :=
.seq NamedBody346_59 NamedBody346_68

def NamedBody346_70 : StackLang.HolProg 64 :=
.seq NamedBody346_58 NamedBody346_69

def NamedBody346_71 : StackLang.HolProg 64 :=
.seq NamedBody346_57 NamedBody346_70

def NamedBody346_72 : StackLang.HolProg 64 :=
.seq NamedBody346_56 NamedBody346_71

def NamedBody346_73 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64) NamedBody346_55 NamedBody346_72

def NamedBody346_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody346_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody346_76 : StackLang.HolProg 64 :=
.seq NamedBody346_74 NamedBody346_75

def NamedBody346_77 : StackLang.HolProg 64 :=
.seq NamedBody346_73 NamedBody346_76

def NamedBody346_78 : StackLang.HolProg 64 :=
.seq NamedBody346_52 NamedBody346_77

def NamedBody346_79 : StackLang.HolProg 64 :=
.call (some (NamedBody346_51, 1, 346, 2)) (Sum.inl 345) (some (NamedBody346_78, 346, 3))

def NamedBody346_80 : StackLang.HolProg 64 :=
.seq NamedBody346_42 NamedBody346_79

def NamedBody346_81 : StackLang.HolProg 64 :=
.seq NamedBody346_41 NamedBody346_80

def NamedBody346_82 : StackLang.HolProg 64 :=
.seq NamedBody346_40 NamedBody346_81

def NamedBody346_83 : StackLang.HolProg 64 :=
.seq NamedBody346_11 NamedBody346_82

def NamedBody346_84 : StackLang.HolProg 64 :=
.seq NamedBody346_8 NamedBody346_83

def NamedBody346_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody346_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody346_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody346_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 11

def NamedBody346_89 : StackLang.HolProg 64 :=
.seq NamedBody346_87 NamedBody346_88

def NamedBody346_90 : StackLang.HolProg 64 :=
.seq NamedBody346_86 NamedBody346_89

def NamedBody346_91 : StackLang.HolProg 64 :=
.seq NamedBody346_85 NamedBody346_90

def NamedBody346_92 : StackLang.HolProg 64 :=
.seq NamedBody346_84 NamedBody346_91

def NamedBody346_93 : StackLang.HolProg 64 :=
.seq NamedBody346_7 NamedBody346_92

def NamedBody346_94 : StackLang.HolProg 64 :=
.seq NamedBody346_6 NamedBody346_93

def Named346 : Nat × StackLang.HolProg 64 := (346, NamedBody346_94)
theorem Named346_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed346 = Named346 := by
  kernel_rfl
#print axioms Named346_eq
end InitECandidate.Proofs.BackendStages
