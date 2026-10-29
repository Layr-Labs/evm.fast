import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed768
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody768_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody768_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody768_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody768_3 : StackLang.HolProg 64 :=
.seq NamedBody768_1 NamedBody768_2

def NamedBody768_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody768_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody768_3 NamedBody768_4

def NamedBody768_6 : StackLang.HolProg 64 :=
.seq NamedBody768_0 NamedBody768_5

def NamedBody768_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody768_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 144#64)

def NamedBody768_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody768_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody768_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3454#64)

def NamedBody768_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody768_13 : StackLang.HolProg 64 :=
.seq NamedBody768_11 NamedBody768_12

def NamedBody768_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody768_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody768_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody768_17 : StackLang.HolProg 64 :=
.seq NamedBody768_15 NamedBody768_16

def NamedBody768_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody768_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody768_17 NamedBody768_18

def NamedBody768_20 : StackLang.HolProg 64 :=
.seq NamedBody768_14 NamedBody768_19

def NamedBody768_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody768_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody768_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 768 3

def NamedBody768_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody768_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody768_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody768_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody768_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody768_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody768_30 : StackLang.HolProg 64 :=
.seq NamedBody768_28 NamedBody768_29

def NamedBody768_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody768_32 : StackLang.HolProg 64 :=
.seq NamedBody768_30 NamedBody768_31

def NamedBody768_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody768_34 : StackLang.HolProg 64 :=
.seq NamedBody768_32 NamedBody768_33

def NamedBody768_35 : StackLang.HolProg 64 :=
.seq NamedBody768_27 NamedBody768_34

def NamedBody768_36 : StackLang.HolProg 64 :=
.seq NamedBody768_26 NamedBody768_35

def NamedBody768_37 : StackLang.HolProg 64 :=
.seq NamedBody768_25 NamedBody768_36

def NamedBody768_38 : StackLang.HolProg 64 :=
.seq NamedBody768_24 NamedBody768_37

def NamedBody768_39 : StackLang.HolProg 64 :=
.seq NamedBody768_23 NamedBody768_38

def NamedBody768_40 : StackLang.HolProg 64 :=
.seq NamedBody768_22 NamedBody768_39

def NamedBody768_41 : StackLang.HolProg 64 :=
.seq NamedBody768_21 NamedBody768_40

def NamedBody768_42 : StackLang.HolProg 64 :=
.seq NamedBody768_20 NamedBody768_41

def NamedBody768_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody768_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody768_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody768_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody768_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody768_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody768_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody768_50 : StackLang.HolProg 64 :=
.seq NamedBody768_48 NamedBody768_49

def NamedBody768_51 : StackLang.HolProg 64 :=
.seq NamedBody768_47 NamedBody768_50

def NamedBody768_52 : StackLang.HolProg 64 :=
.seq NamedBody768_46 NamedBody768_51

def NamedBody768_53 : StackLang.HolProg 64 :=
.seq NamedBody768_45 NamedBody768_52

def NamedBody768_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody768_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody768_56 : StackLang.HolProg 64 :=
.seq NamedBody768_54 NamedBody768_55

def NamedBody768_57 : StackLang.HolProg 64 :=
.call (some (NamedBody768_53, 1, 768, 2)) (Sum.inl 77) (some (NamedBody768_56, 768, 3))

def NamedBody768_58 : StackLang.HolProg 64 :=
.seq NamedBody768_44 NamedBody768_57

def NamedBody768_59 : StackLang.HolProg 64 :=
.seq NamedBody768_43 NamedBody768_58

def NamedBody768_60 : StackLang.HolProg 64 :=
.seq NamedBody768_42 NamedBody768_59

def NamedBody768_61 : StackLang.HolProg 64 :=
.seq NamedBody768_13 NamedBody768_60

def NamedBody768_62 : StackLang.HolProg 64 :=
.seq NamedBody768_10 NamedBody768_61

def NamedBody768_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody768_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody768_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody768_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody768_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody768_68 : StackLang.HolProg 64 :=
.seq NamedBody768_66 NamedBody768_67

def NamedBody768_69 : StackLang.HolProg 64 :=
.seq NamedBody768_65 NamedBody768_68

def NamedBody768_70 : StackLang.HolProg 64 :=
.seq NamedBody768_64 NamedBody768_69

def NamedBody768_71 : StackLang.HolProg 64 :=
.seq NamedBody768_63 NamedBody768_70

def NamedBody768_72 : StackLang.HolProg 64 :=
.seq NamedBody768_62 NamedBody768_71

def NamedBody768_73 : StackLang.HolProg 64 :=
.seq NamedBody768_9 NamedBody768_72

def NamedBody768_74 : StackLang.HolProg 64 :=
.seq NamedBody768_8 NamedBody768_73

def NamedBody768_75 : StackLang.HolProg 64 :=
.seq NamedBody768_7 NamedBody768_74

def NamedBody768_76 : StackLang.HolProg 64 :=
.seq NamedBody768_6 NamedBody768_75

def Named768 : Nat × StackLang.HolProg 64 := (768, NamedBody768_76)
theorem Named768_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed768 = Named768 := by
  kernel_rfl
#print axioms Named768_eq
end InitECandidate.Proofs.BackendStages
