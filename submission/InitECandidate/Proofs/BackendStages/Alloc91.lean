import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw91
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody91_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody91_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody91_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody91_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody91_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody91_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody91_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody91_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody91_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody91_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def AllocBody91_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody91_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 2688614400#64)

def AllocBody91_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody91_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.shMemOp Flapjack.WordMemOp.store8 4
  (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64)

def AllocBody91_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody91_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody91_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody91_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody91_18 : StackLang.HolProg 64 :=
.seq AllocBody91_16 AllocBody91_17

def AllocBody91_19 : StackLang.HolProg 64 :=
.seq AllocBody91_15 AllocBody91_18

def AllocBody91_20 : StackLang.HolProg 64 :=
.seq AllocBody91_14 AllocBody91_19

def AllocBody91_21 : StackLang.HolProg 64 :=
.seq AllocBody91_13 AllocBody91_20

def AllocBody91_22 : StackLang.HolProg 64 :=
.seq AllocBody91_12 AllocBody91_21

def AllocBody91_23 : StackLang.HolProg 64 :=
.seq AllocBody91_11 AllocBody91_22

def AllocBody91_24 : StackLang.HolProg 64 :=
.seq AllocBody91_10 AllocBody91_23

def AllocBody91_25 : StackLang.HolProg 64 :=
.seq AllocBody91_9 AllocBody91_24

def AllocBody91_26 : StackLang.HolProg 64 :=
.seq AllocBody91_8 AllocBody91_25

def AllocBody91_27 : StackLang.HolProg 64 :=
.seq AllocBody91_7 AllocBody91_26

def AllocBody91_28 : StackLang.HolProg 64 :=
.seq AllocBody91_6 AllocBody91_27

def AllocBody91_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody91_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody91_31 : StackLang.HolProg 64 :=
.seq AllocBody91_29 AllocBody91_30

def AllocBody91_32 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody91_28 AllocBody91_31

def AllocBody91_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody91_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody91_35 : StackLang.HolProg 64 :=
.seq AllocBody91_33 AllocBody91_34

def AllocBody91_36 : StackLang.HolProg 64 :=
.seq AllocBody91_32 AllocBody91_35

def AllocBody91_37 : StackLang.HolProg 64 :=
.seq AllocBody91_5 AllocBody91_36

def AllocBody91_38 : StackLang.HolProg 64 :=
.loop AllocBody91_37

def AllocBody91_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody91_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody91_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody91_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody91_43 : StackLang.HolProg 64 :=
.seq AllocBody91_41 AllocBody91_42

def AllocBody91_44 : StackLang.HolProg 64 :=
.seq AllocBody91_40 AllocBody91_43

def AllocBody91_45 : StackLang.HolProg 64 :=
.seq AllocBody91_39 AllocBody91_44

def AllocBody91_46 : StackLang.HolProg 64 :=
.seq AllocBody91_38 AllocBody91_45

def AllocBody91_47 : StackLang.HolProg 64 :=
.seq AllocBody91_4 AllocBody91_46

def AllocBody91_48 : StackLang.HolProg 64 :=
.seq AllocBody91_3 AllocBody91_47

def AllocBody91_49 : StackLang.HolProg 64 :=
.seq AllocBody91_2 AllocBody91_48

def AllocBody91_50 : StackLang.HolProg 64 :=
.seq AllocBody91_1 AllocBody91_49

def AllocBody91_51 : StackLang.HolProg 64 :=
.seq AllocBody91_0 AllocBody91_50

def Alloc91 : Nat × StackLang.HolProg 64 := (91, AllocBody91_51)
theorem Alloc91_eq : StackAlloc.progComp (91, raw91) = Alloc91 := by
  kernel_rfl
#print axioms Alloc91_eq
end InitECandidate.Proofs.BackendStages
