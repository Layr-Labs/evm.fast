import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed118
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody118_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody118_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody118_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def NamedBody118_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody118_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 6 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def NamedBody118_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def NamedBody118_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody118_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 10 7 6 1))

def NamedBody118_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody118_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def NamedBody118_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody118_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 6 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def NamedBody118_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody118_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 11 7 6 1))

def NamedBody118_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody118_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def NamedBody118_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody118_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 6 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def NamedBody118_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody118_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 12 7 6 1))

def NamedBody118_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody118_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def NamedBody118_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody118_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 6 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def NamedBody118_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody118_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 13 7 6 1))

def NamedBody118_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody118_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def NamedBody118_28 : StackLang.HolProg 64 :=
.seq NamedBody118_26 NamedBody118_27

def NamedBody118_29 : StackLang.HolProg 64 :=
.seq NamedBody118_25 NamedBody118_28

def NamedBody118_30 : StackLang.HolProg 64 :=
.seq NamedBody118_24 NamedBody118_29

def NamedBody118_31 : StackLang.HolProg 64 :=
.seq NamedBody118_23 NamedBody118_30

def NamedBody118_32 : StackLang.HolProg 64 :=
.seq NamedBody118_22 NamedBody118_31

def NamedBody118_33 : StackLang.HolProg 64 :=
.seq NamedBody118_21 NamedBody118_32

def NamedBody118_34 : StackLang.HolProg 64 :=
.seq NamedBody118_20 NamedBody118_33

def NamedBody118_35 : StackLang.HolProg 64 :=
.seq NamedBody118_19 NamedBody118_34

def NamedBody118_36 : StackLang.HolProg 64 :=
.seq NamedBody118_18 NamedBody118_35

def NamedBody118_37 : StackLang.HolProg 64 :=
.seq NamedBody118_17 NamedBody118_36

def NamedBody118_38 : StackLang.HolProg 64 :=
.seq NamedBody118_16 NamedBody118_37

def NamedBody118_39 : StackLang.HolProg 64 :=
.seq NamedBody118_15 NamedBody118_38

def NamedBody118_40 : StackLang.HolProg 64 :=
.seq NamedBody118_14 NamedBody118_39

def NamedBody118_41 : StackLang.HolProg 64 :=
.seq NamedBody118_13 NamedBody118_40

def NamedBody118_42 : StackLang.HolProg 64 :=
.seq NamedBody118_12 NamedBody118_41

def NamedBody118_43 : StackLang.HolProg 64 :=
.seq NamedBody118_11 NamedBody118_42

def NamedBody118_44 : StackLang.HolProg 64 :=
.seq NamedBody118_10 NamedBody118_43

def NamedBody118_45 : StackLang.HolProg 64 :=
.seq NamedBody118_9 NamedBody118_44

def NamedBody118_46 : StackLang.HolProg 64 :=
.seq NamedBody118_8 NamedBody118_45

def NamedBody118_47 : StackLang.HolProg 64 :=
.seq NamedBody118_7 NamedBody118_46

def NamedBody118_48 : StackLang.HolProg 64 :=
.seq NamedBody118_6 NamedBody118_47

def NamedBody118_49 : StackLang.HolProg 64 :=
.seq NamedBody118_5 NamedBody118_48

def NamedBody118_50 : StackLang.HolProg 64 :=
.seq NamedBody118_4 NamedBody118_49

def NamedBody118_51 : StackLang.HolProg 64 :=
.seq NamedBody118_3 NamedBody118_50

def NamedBody118_52 : StackLang.HolProg 64 :=
.seq NamedBody118_2 NamedBody118_51

def NamedBody118_53 : StackLang.HolProg 64 :=
.seq NamedBody118_1 NamedBody118_52

def NamedBody118_54 : StackLang.HolProg 64 :=
.seq NamedBody118_0 NamedBody118_53

def Named118 : Nat × StackLang.HolProg 64 := (118, NamedBody118_54)
theorem Named118_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed118 = Named118 := by
  kernel_rfl
#print axioms Named118_eq
end InitECandidate.Proofs.BackendStages
