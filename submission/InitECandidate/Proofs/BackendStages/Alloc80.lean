import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw80
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody80_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody80_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody80_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody80_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody80_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody80_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody80_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody80_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody80_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody80_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody80_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody80_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def AllocBody80_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody80_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody80_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody80_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody80_16 : StackLang.HolProg 64 :=
.seq AllocBody80_14 AllocBody80_15

def AllocBody80_17 : StackLang.HolProg 64 :=
.seq AllocBody80_13 AllocBody80_16

def AllocBody80_18 : StackLang.HolProg 64 :=
.seq AllocBody80_12 AllocBody80_17

def AllocBody80_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody80_20 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) AllocBody80_18 AllocBody80_19

def AllocBody80_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody80_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody80_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody80_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody80_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody80_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody80_27 : StackLang.HolProg 64 :=
.seq AllocBody80_25 AllocBody80_26

def AllocBody80_28 : StackLang.HolProg 64 :=
.seq AllocBody80_24 AllocBody80_27

def AllocBody80_29 : StackLang.HolProg 64 :=
.seq AllocBody80_23 AllocBody80_28

def AllocBody80_30 : StackLang.HolProg 64 :=
.seq AllocBody80_22 AllocBody80_29

def AllocBody80_31 : StackLang.HolProg 64 :=
.seq AllocBody80_21 AllocBody80_30

def AllocBody80_32 : StackLang.HolProg 64 :=
.seq AllocBody80_20 AllocBody80_31

def AllocBody80_33 : StackLang.HolProg 64 :=
.seq AllocBody80_11 AllocBody80_32

def AllocBody80_34 : StackLang.HolProg 64 :=
.seq AllocBody80_10 AllocBody80_33

def AllocBody80_35 : StackLang.HolProg 64 :=
.seq AllocBody80_9 AllocBody80_34

def AllocBody80_36 : StackLang.HolProg 64 :=
.seq AllocBody80_8 AllocBody80_35

def AllocBody80_37 : StackLang.HolProg 64 :=
.seq AllocBody80_7 AllocBody80_36

def AllocBody80_38 : StackLang.HolProg 64 :=
.seq AllocBody80_6 AllocBody80_37

def AllocBody80_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody80_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody80_41 : StackLang.HolProg 64 :=
.seq AllocBody80_39 AllocBody80_40

def AllocBody80_42 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody80_38 AllocBody80_41

def AllocBody80_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody80_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody80_45 : StackLang.HolProg 64 :=
.seq AllocBody80_43 AllocBody80_44

def AllocBody80_46 : StackLang.HolProg 64 :=
.seq AllocBody80_42 AllocBody80_45

def AllocBody80_47 : StackLang.HolProg 64 :=
.seq AllocBody80_5 AllocBody80_46

def AllocBody80_48 : StackLang.HolProg 64 :=
.loop AllocBody80_47

def AllocBody80_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody80_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody80_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody80_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody80_53 : StackLang.HolProg 64 :=
.seq AllocBody80_51 AllocBody80_52

def AllocBody80_54 : StackLang.HolProg 64 :=
.seq AllocBody80_50 AllocBody80_53

def AllocBody80_55 : StackLang.HolProg 64 :=
.seq AllocBody80_49 AllocBody80_54

def AllocBody80_56 : StackLang.HolProg 64 :=
.seq AllocBody80_48 AllocBody80_55

def AllocBody80_57 : StackLang.HolProg 64 :=
.seq AllocBody80_4 AllocBody80_56

def AllocBody80_58 : StackLang.HolProg 64 :=
.seq AllocBody80_3 AllocBody80_57

def AllocBody80_59 : StackLang.HolProg 64 :=
.seq AllocBody80_2 AllocBody80_58

def AllocBody80_60 : StackLang.HolProg 64 :=
.seq AllocBody80_1 AllocBody80_59

def AllocBody80_61 : StackLang.HolProg 64 :=
.seq AllocBody80_0 AllocBody80_60

def Alloc80 : Nat × StackLang.HolProg 64 := (80, AllocBody80_61)
theorem Alloc80_eq : StackAlloc.progComp (80, raw80) = Alloc80 := by
  kernel_rfl
#print axioms Alloc80_eq
end InitECandidate.Proofs.BackendStages
