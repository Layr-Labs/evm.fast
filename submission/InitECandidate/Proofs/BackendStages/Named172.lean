import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed172
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody172_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody172_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody172_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody172_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody172_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody172_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody172_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody172_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody172_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody172_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody172_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody172_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody172_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody172_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def NamedBody172_14 : StackLang.HolProg 64 :=
.seq NamedBody172_12 NamedBody172_13

def NamedBody172_15 : StackLang.HolProg 64 :=
.seq NamedBody172_11 NamedBody172_14

def NamedBody172_16 : StackLang.HolProg 64 :=
.seq NamedBody172_10 NamedBody172_15

def NamedBody172_17 : StackLang.HolProg 64 :=
.seq NamedBody172_9 NamedBody172_16

def NamedBody172_18 : StackLang.HolProg 64 :=
.seq NamedBody172_8 NamedBody172_17

def NamedBody172_19 : StackLang.HolProg 64 :=
.seq NamedBody172_7 NamedBody172_18

def NamedBody172_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody172_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody172_22 : StackLang.HolProg 64 :=
.seq NamedBody172_20 NamedBody172_21

def NamedBody172_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12) NamedBody172_19 NamedBody172_22

def NamedBody172_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody172_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody172_26 : StackLang.HolProg 64 :=
.seq NamedBody172_24 NamedBody172_25

def NamedBody172_27 : StackLang.HolProg 64 :=
.seq NamedBody172_23 NamedBody172_26

def NamedBody172_28 : StackLang.HolProg 64 :=
.seq NamedBody172_6 NamedBody172_27

def NamedBody172_29 : StackLang.HolProg 64 :=
.seq NamedBody172_5 NamedBody172_28

def NamedBody172_30 : StackLang.HolProg 64 :=
.loop NamedBody172_29

def NamedBody172_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody172_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody172_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody172_34 : StackLang.HolProg 64 :=
.seq NamedBody172_32 NamedBody172_33

def NamedBody172_35 : StackLang.HolProg 64 :=
.seq NamedBody172_31 NamedBody172_34

def NamedBody172_36 : StackLang.HolProg 64 :=
.seq NamedBody172_30 NamedBody172_35

def NamedBody172_37 : StackLang.HolProg 64 :=
.seq NamedBody172_4 NamedBody172_36

def NamedBody172_38 : StackLang.HolProg 64 :=
.seq NamedBody172_3 NamedBody172_37

def NamedBody172_39 : StackLang.HolProg 64 :=
.seq NamedBody172_2 NamedBody172_38

def NamedBody172_40 : StackLang.HolProg 64 :=
.seq NamedBody172_1 NamedBody172_39

def NamedBody172_41 : StackLang.HolProg 64 :=
.seq NamedBody172_0 NamedBody172_40

def Named172 : Nat × StackLang.HolProg 64 := (172, NamedBody172_41)
theorem Named172_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed172 = Named172 := by
  kernel_rfl
#print axioms Named172_eq
end InitECandidate.Proofs.BackendStages
