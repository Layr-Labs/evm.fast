import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed95
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody95_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody95_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody95_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody95_3 : StackLang.HolProg 64 :=
.seq NamedBody95_1 NamedBody95_2

def NamedBody95_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody95_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody95_3 NamedBody95_4

def NamedBody95_6 : StackLang.HolProg 64 :=
.seq NamedBody95_0 NamedBody95_5

def NamedBody95_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody95_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody95_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 41#64)

def NamedBody95_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody95_11 : StackLang.HolProg 64 :=
.seq NamedBody95_9 NamedBody95_10

def NamedBody95_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody95_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody95_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody95_15 : StackLang.HolProg 64 :=
.seq NamedBody95_13 NamedBody95_14

def NamedBody95_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody95_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody95_15 NamedBody95_16

def NamedBody95_18 : StackLang.HolProg 64 :=
.seq NamedBody95_12 NamedBody95_17

def NamedBody95_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody95_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody95_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 95 3

def NamedBody95_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody95_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody95_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody95_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody95_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody95_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody95_28 : StackLang.HolProg 64 :=
.seq NamedBody95_26 NamedBody95_27

def NamedBody95_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody95_30 : StackLang.HolProg 64 :=
.seq NamedBody95_28 NamedBody95_29

def NamedBody95_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody95_32 : StackLang.HolProg 64 :=
.seq NamedBody95_30 NamedBody95_31

def NamedBody95_33 : StackLang.HolProg 64 :=
.seq NamedBody95_25 NamedBody95_32

def NamedBody95_34 : StackLang.HolProg 64 :=
.seq NamedBody95_24 NamedBody95_33

def NamedBody95_35 : StackLang.HolProg 64 :=
.seq NamedBody95_23 NamedBody95_34

def NamedBody95_36 : StackLang.HolProg 64 :=
.seq NamedBody95_22 NamedBody95_35

def NamedBody95_37 : StackLang.HolProg 64 :=
.seq NamedBody95_21 NamedBody95_36

def NamedBody95_38 : StackLang.HolProg 64 :=
.seq NamedBody95_20 NamedBody95_37

def NamedBody95_39 : StackLang.HolProg 64 :=
.seq NamedBody95_19 NamedBody95_38

def NamedBody95_40 : StackLang.HolProg 64 :=
.seq NamedBody95_18 NamedBody95_39

def NamedBody95_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody95_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody95_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody95_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody95_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody95_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody95_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody95_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody95_49 : StackLang.HolProg 64 :=
.seq NamedBody95_47 NamedBody95_48

def NamedBody95_50 : StackLang.HolProg 64 :=
.seq NamedBody95_46 NamedBody95_49

def NamedBody95_51 : StackLang.HolProg 64 :=
.seq NamedBody95_45 NamedBody95_50

def NamedBody95_52 : StackLang.HolProg 64 :=
.seq NamedBody95_44 NamedBody95_51

def NamedBody95_53 : StackLang.HolProg 64 :=
.seq NamedBody95_43 NamedBody95_52

def NamedBody95_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody95_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody95_56 : StackLang.HolProg 64 :=
.seq NamedBody95_54 NamedBody95_55

def NamedBody95_57 : StackLang.HolProg 64 :=
.call (some (NamedBody95_53, 1, 95, 2)) (Sum.inl 94) (some (NamedBody95_56, 95, 3))

def NamedBody95_58 : StackLang.HolProg 64 :=
.seq NamedBody95_42 NamedBody95_57

def NamedBody95_59 : StackLang.HolProg 64 :=
.seq NamedBody95_41 NamedBody95_58

def NamedBody95_60 : StackLang.HolProg 64 :=
.seq NamedBody95_40 NamedBody95_59

def NamedBody95_61 : StackLang.HolProg 64 :=
.seq NamedBody95_11 NamedBody95_60

def NamedBody95_62 : StackLang.HolProg 64 :=
.seq NamedBody95_8 NamedBody95_61

def NamedBody95_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody95_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody95_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody95_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody95_67 : StackLang.HolProg 64 :=
.seq NamedBody95_65 NamedBody95_66

def NamedBody95_68 : StackLang.HolProg 64 :=
.seq NamedBody95_64 NamedBody95_67

def NamedBody95_69 : StackLang.HolProg 64 :=
.seq NamedBody95_63 NamedBody95_68

def NamedBody95_70 : StackLang.HolProg 64 :=
.seq NamedBody95_62 NamedBody95_69

def NamedBody95_71 : StackLang.HolProg 64 :=
.seq NamedBody95_7 NamedBody95_70

def NamedBody95_72 : StackLang.HolProg 64 :=
.seq NamedBody95_6 NamedBody95_71

def Named95 : Nat × StackLang.HolProg 64 := (95, NamedBody95_72)
theorem Named95_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed95 = Named95 := by
  kernel_rfl
#print axioms Named95_eq
end InitECandidate.Proofs.BackendStages
