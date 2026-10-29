import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw126
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody126_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody126_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody126_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody126_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody126_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody126_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody126_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody126_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody126_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def AllocBody126_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def AllocBody126_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody126_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody126_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def AllocBody126_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def AllocBody126_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody126_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody126_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody126_17 : StackLang.HolProg 64 :=
.seq AllocBody126_15 AllocBody126_16

def AllocBody126_18 : StackLang.HolProg 64 :=
.seq AllocBody126_14 AllocBody126_17

def AllocBody126_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody126_20 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) AllocBody126_18 AllocBody126_19

def AllocBody126_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody126_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody126_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody126_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody126_25 : StackLang.HolProg 64 :=
.seq AllocBody126_23 AllocBody126_24

def AllocBody126_26 : StackLang.HolProg 64 :=
.seq AllocBody126_22 AllocBody126_25

def AllocBody126_27 : StackLang.HolProg 64 :=
.seq AllocBody126_21 AllocBody126_26

def AllocBody126_28 : StackLang.HolProg 64 :=
.seq AllocBody126_20 AllocBody126_27

def AllocBody126_29 : StackLang.HolProg 64 :=
.seq AllocBody126_13 AllocBody126_28

def AllocBody126_30 : StackLang.HolProg 64 :=
.seq AllocBody126_12 AllocBody126_29

def AllocBody126_31 : StackLang.HolProg 64 :=
.seq AllocBody126_11 AllocBody126_30

def AllocBody126_32 : StackLang.HolProg 64 :=
.seq AllocBody126_10 AllocBody126_31

def AllocBody126_33 : StackLang.HolProg 64 :=
.seq AllocBody126_9 AllocBody126_32

def AllocBody126_34 : StackLang.HolProg 64 :=
.seq AllocBody126_8 AllocBody126_33

def AllocBody126_35 : StackLang.HolProg 64 :=
.seq AllocBody126_7 AllocBody126_34

def AllocBody126_36 : StackLang.HolProg 64 :=
.seq AllocBody126_6 AllocBody126_35

def AllocBody126_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody126_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody126_39 : StackLang.HolProg 64 :=
.seq AllocBody126_37 AllocBody126_38

def AllocBody126_40 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody126_36 AllocBody126_39

def AllocBody126_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody126_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody126_43 : StackLang.HolProg 64 :=
.seq AllocBody126_41 AllocBody126_42

def AllocBody126_44 : StackLang.HolProg 64 :=
.seq AllocBody126_40 AllocBody126_43

def AllocBody126_45 : StackLang.HolProg 64 :=
.seq AllocBody126_5 AllocBody126_44

def AllocBody126_46 : StackLang.HolProg 64 :=
.seq AllocBody126_4 AllocBody126_45

def AllocBody126_47 : StackLang.HolProg 64 :=
.loop AllocBody126_46

def AllocBody126_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody126_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody126_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody126_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody126_52 : StackLang.HolProg 64 :=
.seq AllocBody126_50 AllocBody126_51

def AllocBody126_53 : StackLang.HolProg 64 :=
.seq AllocBody126_49 AllocBody126_52

def AllocBody126_54 : StackLang.HolProg 64 :=
.seq AllocBody126_48 AllocBody126_53

def AllocBody126_55 : StackLang.HolProg 64 :=
.seq AllocBody126_47 AllocBody126_54

def AllocBody126_56 : StackLang.HolProg 64 :=
.seq AllocBody126_3 AllocBody126_55

def AllocBody126_57 : StackLang.HolProg 64 :=
.seq AllocBody126_2 AllocBody126_56

def AllocBody126_58 : StackLang.HolProg 64 :=
.seq AllocBody126_1 AllocBody126_57

def AllocBody126_59 : StackLang.HolProg 64 :=
.seq AllocBody126_0 AllocBody126_58

def Alloc126 : Nat × StackLang.HolProg 64 := (126, AllocBody126_59)
theorem Alloc126_eq : StackAlloc.progComp (126, raw126) = Alloc126 := by
  kernel_rfl
#print axioms Alloc126_eq
end InitECandidate.Proofs.BackendStages
