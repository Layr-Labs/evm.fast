import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw323
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody323_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody323_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody323_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody323_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody323_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody323_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody323_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody323_7 : StackLang.HolProg 64 :=
.seq AllocBody323_5 AllocBody323_6

def AllocBody323_8 : StackLang.HolProg 64 :=
.seq AllocBody323_4 AllocBody323_7

def AllocBody323_9 : StackLang.HolProg 64 :=
.seq AllocBody323_3 AllocBody323_8

def AllocBody323_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody323_11 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody323_9 AllocBody323_10

def AllocBody323_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody323_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody323_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody323_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody323_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody323_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody323_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody323_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody323_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody323_21 : StackLang.HolProg 64 :=
.seq AllocBody323_19 AllocBody323_20

def AllocBody323_22 : StackLang.HolProg 64 :=
.seq AllocBody323_18 AllocBody323_21

def AllocBody323_23 : StackLang.HolProg 64 :=
.seq AllocBody323_17 AllocBody323_22

def AllocBody323_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody323_25 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) AllocBody323_23 AllocBody323_24

def AllocBody323_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody323_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody323_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody323_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 8#64))

def AllocBody323_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody323_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody323_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody323_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody323_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody323_35 : StackLang.HolProg 64 :=
.seq AllocBody323_33 AllocBody323_34

def AllocBody323_36 : StackLang.HolProg 64 :=
.seq AllocBody323_32 AllocBody323_35

def AllocBody323_37 : StackLang.HolProg 64 :=
.seq AllocBody323_31 AllocBody323_36

def AllocBody323_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody323_39 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody323_37 AllocBody323_38

def AllocBody323_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody323_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody323_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody323_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody323_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody323_45 : StackLang.HolProg 64 :=
.seq AllocBody323_43 AllocBody323_44

def AllocBody323_46 : StackLang.HolProg 64 :=
.seq AllocBody323_42 AllocBody323_45

def AllocBody323_47 : StackLang.HolProg 64 :=
.seq AllocBody323_41 AllocBody323_46

def AllocBody323_48 : StackLang.HolProg 64 :=
.seq AllocBody323_40 AllocBody323_47

def AllocBody323_49 : StackLang.HolProg 64 :=
.seq AllocBody323_39 AllocBody323_48

def AllocBody323_50 : StackLang.HolProg 64 :=
.seq AllocBody323_30 AllocBody323_49

def AllocBody323_51 : StackLang.HolProg 64 :=
.seq AllocBody323_29 AllocBody323_50

def AllocBody323_52 : StackLang.HolProg 64 :=
.seq AllocBody323_28 AllocBody323_51

def AllocBody323_53 : StackLang.HolProg 64 :=
.seq AllocBody323_27 AllocBody323_52

def AllocBody323_54 : StackLang.HolProg 64 :=
.seq AllocBody323_26 AllocBody323_53

def AllocBody323_55 : StackLang.HolProg 64 :=
.seq AllocBody323_25 AllocBody323_54

def AllocBody323_56 : StackLang.HolProg 64 :=
.seq AllocBody323_16 AllocBody323_55

def AllocBody323_57 : StackLang.HolProg 64 :=
.seq AllocBody323_15 AllocBody323_56

def AllocBody323_58 : StackLang.HolProg 64 :=
.seq AllocBody323_14 AllocBody323_57

def AllocBody323_59 : StackLang.HolProg 64 :=
.seq AllocBody323_13 AllocBody323_58

def AllocBody323_60 : StackLang.HolProg 64 :=
.seq AllocBody323_12 AllocBody323_59

def AllocBody323_61 : StackLang.HolProg 64 :=
.seq AllocBody323_11 AllocBody323_60

def AllocBody323_62 : StackLang.HolProg 64 :=
.seq AllocBody323_2 AllocBody323_61

def AllocBody323_63 : StackLang.HolProg 64 :=
.seq AllocBody323_1 AllocBody323_62

def AllocBody323_64 : StackLang.HolProg 64 :=
.seq AllocBody323_0 AllocBody323_63

def Alloc323 : Nat × StackLang.HolProg 64 := (323, AllocBody323_64)
theorem Alloc323_eq : StackAlloc.progComp (323, raw323) = Alloc323 := by
  kernel_rfl
#print axioms Alloc323_eq
end InitECandidate.Proofs.BackendStages
