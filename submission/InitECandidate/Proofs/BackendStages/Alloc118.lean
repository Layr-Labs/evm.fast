import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw118
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody118_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody118_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody118_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def AllocBody118_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody118_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def AllocBody118_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 1#64)

def AllocBody118_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody118_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 1 7 6 0))

def AllocBody118_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody118_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def AllocBody118_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody118_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 6 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def AllocBody118_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody118_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 2 7 6 0))

def AllocBody118_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody118_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def AllocBody118_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody118_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 6 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def AllocBody118_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody118_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 3 7 6 0))

def AllocBody118_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody118_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def AllocBody118_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody118_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 6 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def AllocBody118_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody118_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 4 7 6 0))

def AllocBody118_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody118_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def AllocBody118_28 : StackLang.HolProg 64 :=
.seq AllocBody118_26 AllocBody118_27

def AllocBody118_29 : StackLang.HolProg 64 :=
.seq AllocBody118_25 AllocBody118_28

def AllocBody118_30 : StackLang.HolProg 64 :=
.seq AllocBody118_24 AllocBody118_29

def AllocBody118_31 : StackLang.HolProg 64 :=
.seq AllocBody118_23 AllocBody118_30

def AllocBody118_32 : StackLang.HolProg 64 :=
.seq AllocBody118_22 AllocBody118_31

def AllocBody118_33 : StackLang.HolProg 64 :=
.seq AllocBody118_21 AllocBody118_32

def AllocBody118_34 : StackLang.HolProg 64 :=
.seq AllocBody118_20 AllocBody118_33

def AllocBody118_35 : StackLang.HolProg 64 :=
.seq AllocBody118_19 AllocBody118_34

def AllocBody118_36 : StackLang.HolProg 64 :=
.seq AllocBody118_18 AllocBody118_35

def AllocBody118_37 : StackLang.HolProg 64 :=
.seq AllocBody118_17 AllocBody118_36

def AllocBody118_38 : StackLang.HolProg 64 :=
.seq AllocBody118_16 AllocBody118_37

def AllocBody118_39 : StackLang.HolProg 64 :=
.seq AllocBody118_15 AllocBody118_38

def AllocBody118_40 : StackLang.HolProg 64 :=
.seq AllocBody118_14 AllocBody118_39

def AllocBody118_41 : StackLang.HolProg 64 :=
.seq AllocBody118_13 AllocBody118_40

def AllocBody118_42 : StackLang.HolProg 64 :=
.seq AllocBody118_12 AllocBody118_41

def AllocBody118_43 : StackLang.HolProg 64 :=
.seq AllocBody118_11 AllocBody118_42

def AllocBody118_44 : StackLang.HolProg 64 :=
.seq AllocBody118_10 AllocBody118_43

def AllocBody118_45 : StackLang.HolProg 64 :=
.seq AllocBody118_9 AllocBody118_44

def AllocBody118_46 : StackLang.HolProg 64 :=
.seq AllocBody118_8 AllocBody118_45

def AllocBody118_47 : StackLang.HolProg 64 :=
.seq AllocBody118_7 AllocBody118_46

def AllocBody118_48 : StackLang.HolProg 64 :=
.seq AllocBody118_6 AllocBody118_47

def AllocBody118_49 : StackLang.HolProg 64 :=
.seq AllocBody118_5 AllocBody118_48

def AllocBody118_50 : StackLang.HolProg 64 :=
.seq AllocBody118_4 AllocBody118_49

def AllocBody118_51 : StackLang.HolProg 64 :=
.seq AllocBody118_3 AllocBody118_50

def AllocBody118_52 : StackLang.HolProg 64 :=
.seq AllocBody118_2 AllocBody118_51

def AllocBody118_53 : StackLang.HolProg 64 :=
.seq AllocBody118_1 AllocBody118_52

def AllocBody118_54 : StackLang.HolProg 64 :=
.seq AllocBody118_0 AllocBody118_53

def Alloc118 : Nat × StackLang.HolProg 64 := (118, AllocBody118_54)
theorem Alloc118_eq : StackAlloc.progComp (118, raw118) = Alloc118 := by
  kernel_rfl
#print axioms Alloc118_eq
end InitECandidate.Proofs.BackendStages
