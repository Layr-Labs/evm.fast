import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed729
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody729_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody729_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody729_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody729_3 : StackLang.HolProg 64 :=
.seq NamedBody729_1 NamedBody729_2

def NamedBody729_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody729_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody729_3 NamedBody729_4

def NamedBody729_6 : StackLang.HolProg 64 :=
.seq NamedBody729_0 NamedBody729_5

def NamedBody729_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody729_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 96#64)

def NamedBody729_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody729_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody729_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3261#64)

def NamedBody729_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody729_13 : StackLang.HolProg 64 :=
.seq NamedBody729_11 NamedBody729_12

def NamedBody729_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody729_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody729_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody729_17 : StackLang.HolProg 64 :=
.seq NamedBody729_15 NamedBody729_16

def NamedBody729_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody729_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody729_17 NamedBody729_18

def NamedBody729_20 : StackLang.HolProg 64 :=
.seq NamedBody729_14 NamedBody729_19

def NamedBody729_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody729_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody729_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 729 3

def NamedBody729_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody729_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody729_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody729_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody729_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody729_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody729_30 : StackLang.HolProg 64 :=
.seq NamedBody729_28 NamedBody729_29

def NamedBody729_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody729_32 : StackLang.HolProg 64 :=
.seq NamedBody729_30 NamedBody729_31

def NamedBody729_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody729_34 : StackLang.HolProg 64 :=
.seq NamedBody729_32 NamedBody729_33

def NamedBody729_35 : StackLang.HolProg 64 :=
.seq NamedBody729_27 NamedBody729_34

def NamedBody729_36 : StackLang.HolProg 64 :=
.seq NamedBody729_26 NamedBody729_35

def NamedBody729_37 : StackLang.HolProg 64 :=
.seq NamedBody729_25 NamedBody729_36

def NamedBody729_38 : StackLang.HolProg 64 :=
.seq NamedBody729_24 NamedBody729_37

def NamedBody729_39 : StackLang.HolProg 64 :=
.seq NamedBody729_23 NamedBody729_38

def NamedBody729_40 : StackLang.HolProg 64 :=
.seq NamedBody729_22 NamedBody729_39

def NamedBody729_41 : StackLang.HolProg 64 :=
.seq NamedBody729_21 NamedBody729_40

def NamedBody729_42 : StackLang.HolProg 64 :=
.seq NamedBody729_20 NamedBody729_41

def NamedBody729_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody729_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody729_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody729_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody729_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody729_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody729_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody729_50 : StackLang.HolProg 64 :=
.seq NamedBody729_48 NamedBody729_49

def NamedBody729_51 : StackLang.HolProg 64 :=
.seq NamedBody729_47 NamedBody729_50

def NamedBody729_52 : StackLang.HolProg 64 :=
.seq NamedBody729_46 NamedBody729_51

def NamedBody729_53 : StackLang.HolProg 64 :=
.seq NamedBody729_45 NamedBody729_52

def NamedBody729_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody729_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody729_56 : StackLang.HolProg 64 :=
.seq NamedBody729_54 NamedBody729_55

def NamedBody729_57 : StackLang.HolProg 64 :=
.call (some (NamedBody729_53, 1, 729, 2)) (Sum.inl 77) (some (NamedBody729_56, 729, 3))

def NamedBody729_58 : StackLang.HolProg 64 :=
.seq NamedBody729_44 NamedBody729_57

def NamedBody729_59 : StackLang.HolProg 64 :=
.seq NamedBody729_43 NamedBody729_58

def NamedBody729_60 : StackLang.HolProg 64 :=
.seq NamedBody729_42 NamedBody729_59

def NamedBody729_61 : StackLang.HolProg 64 :=
.seq NamedBody729_13 NamedBody729_60

def NamedBody729_62 : StackLang.HolProg 64 :=
.seq NamedBody729_10 NamedBody729_61

def NamedBody729_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody729_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody729_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody729_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody729_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody729_68 : StackLang.HolProg 64 :=
.seq NamedBody729_66 NamedBody729_67

def NamedBody729_69 : StackLang.HolProg 64 :=
.seq NamedBody729_65 NamedBody729_68

def NamedBody729_70 : StackLang.HolProg 64 :=
.seq NamedBody729_64 NamedBody729_69

def NamedBody729_71 : StackLang.HolProg 64 :=
.seq NamedBody729_63 NamedBody729_70

def NamedBody729_72 : StackLang.HolProg 64 :=
.seq NamedBody729_62 NamedBody729_71

def NamedBody729_73 : StackLang.HolProg 64 :=
.seq NamedBody729_9 NamedBody729_72

def NamedBody729_74 : StackLang.HolProg 64 :=
.seq NamedBody729_8 NamedBody729_73

def NamedBody729_75 : StackLang.HolProg 64 :=
.seq NamedBody729_7 NamedBody729_74

def NamedBody729_76 : StackLang.HolProg 64 :=
.seq NamedBody729_6 NamedBody729_75

def Named729 : Nat × StackLang.HolProg 64 := (729, NamedBody729_76)
theorem Named729_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed729 = Named729 := by
  kernel_rfl
#print axioms Named729_eq
end InitECandidate.Proofs.BackendStages
