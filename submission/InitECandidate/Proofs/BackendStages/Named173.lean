import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed173
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody173_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody173_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody173_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody173_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody173_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def NamedBody173_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody173_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody173_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody173_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def NamedBody173_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody173_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody173_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody173_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def NamedBody173_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody173_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody173_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody173_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def NamedBody173_17 : StackLang.HolProg 64 :=
.seq NamedBody173_15 NamedBody173_16

def NamedBody173_18 : StackLang.HolProg 64 :=
.seq NamedBody173_14 NamedBody173_17

def NamedBody173_19 : StackLang.HolProg 64 :=
.seq NamedBody173_13 NamedBody173_18

def NamedBody173_20 : StackLang.HolProg 64 :=
.seq NamedBody173_12 NamedBody173_19

def NamedBody173_21 : StackLang.HolProg 64 :=
.seq NamedBody173_11 NamedBody173_20

def NamedBody173_22 : StackLang.HolProg 64 :=
.seq NamedBody173_10 NamedBody173_21

def NamedBody173_23 : StackLang.HolProg 64 :=
.seq NamedBody173_9 NamedBody173_22

def NamedBody173_24 : StackLang.HolProg 64 :=
.seq NamedBody173_8 NamedBody173_23

def NamedBody173_25 : StackLang.HolProg 64 :=
.seq NamedBody173_7 NamedBody173_24

def NamedBody173_26 : StackLang.HolProg 64 :=
.seq NamedBody173_6 NamedBody173_25

def NamedBody173_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody173_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody173_29 : StackLang.HolProg 64 :=
.seq NamedBody173_27 NamedBody173_28

def NamedBody173_30 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13) NamedBody173_26 NamedBody173_29

def NamedBody173_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody173_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody173_33 : StackLang.HolProg 64 :=
.seq NamedBody173_31 NamedBody173_32

def NamedBody173_34 : StackLang.HolProg 64 :=
.seq NamedBody173_30 NamedBody173_33

def NamedBody173_35 : StackLang.HolProg 64 :=
.seq NamedBody173_5 NamedBody173_34

def NamedBody173_36 : StackLang.HolProg 64 :=
.seq NamedBody173_4 NamedBody173_35

def NamedBody173_37 : StackLang.HolProg 64 :=
.loop NamedBody173_36

def NamedBody173_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody173_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody173_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody173_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody173_42 : StackLang.HolProg 64 :=
.seq NamedBody173_40 NamedBody173_41

def NamedBody173_43 : StackLang.HolProg 64 :=
.seq NamedBody173_39 NamedBody173_42

def NamedBody173_44 : StackLang.HolProg 64 :=
.seq NamedBody173_38 NamedBody173_43

def NamedBody173_45 : StackLang.HolProg 64 :=
.seq NamedBody173_37 NamedBody173_44

def NamedBody173_46 : StackLang.HolProg 64 :=
.seq NamedBody173_3 NamedBody173_45

def NamedBody173_47 : StackLang.HolProg 64 :=
.seq NamedBody173_2 NamedBody173_46

def NamedBody173_48 : StackLang.HolProg 64 :=
.seq NamedBody173_1 NamedBody173_47

def NamedBody173_49 : StackLang.HolProg 64 :=
.seq NamedBody173_0 NamedBody173_48

def Named173 : Nat × StackLang.HolProg 64 := (173, NamedBody173_49)
theorem Named173_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed173 = Named173 := by
  kernel_rfl
#print axioms Named173_eq
end InitECandidate.Proofs.BackendStages
