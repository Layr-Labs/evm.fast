import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed299
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody299_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody299_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody299_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody299_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody299_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody299_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def NamedBody299_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody299_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody299_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody299_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody299_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def NamedBody299_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody299_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody299_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody299_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody299_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody299_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody299_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody299_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody299_19 : StackLang.HolProg 64 :=
.seq NamedBody299_17 NamedBody299_18

def NamedBody299_20 : StackLang.HolProg 64 :=
.seq NamedBody299_16 NamedBody299_19

def NamedBody299_21 : StackLang.HolProg 64 :=
.seq NamedBody299_15 NamedBody299_20

def NamedBody299_22 : StackLang.HolProg 64 :=
.seq NamedBody299_14 NamedBody299_21

def NamedBody299_23 : StackLang.HolProg 64 :=
.seq NamedBody299_13 NamedBody299_22

def NamedBody299_24 : StackLang.HolProg 64 :=
.seq NamedBody299_12 NamedBody299_23

def NamedBody299_25 : StackLang.HolProg 64 :=
.seq NamedBody299_11 NamedBody299_24

def NamedBody299_26 : StackLang.HolProg 64 :=
.seq NamedBody299_10 NamedBody299_25

def NamedBody299_27 : StackLang.HolProg 64 :=
.seq NamedBody299_9 NamedBody299_26

def NamedBody299_28 : StackLang.HolProg 64 :=
.seq NamedBody299_8 NamedBody299_27

def NamedBody299_29 : StackLang.HolProg 64 :=
.seq NamedBody299_7 NamedBody299_28

def NamedBody299_30 : StackLang.HolProg 64 :=
.seq NamedBody299_6 NamedBody299_29

def NamedBody299_31 : StackLang.HolProg 64 :=
.seq NamedBody299_5 NamedBody299_30

def NamedBody299_32 : StackLang.HolProg 64 :=
.seq NamedBody299_4 NamedBody299_31

def NamedBody299_33 : StackLang.HolProg 64 :=
.seq NamedBody299_3 NamedBody299_32

def NamedBody299_34 : StackLang.HolProg 64 :=
.seq NamedBody299_2 NamedBody299_33

def NamedBody299_35 : StackLang.HolProg 64 :=
.seq NamedBody299_1 NamedBody299_34

def NamedBody299_36 : StackLang.HolProg 64 :=
.seq NamedBody299_0 NamedBody299_35

def Named299 : Nat × StackLang.HolProg 64 := (299, NamedBody299_36)
theorem Named299_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed299 = Named299 := by
  kernel_rfl
#print axioms Named299_eq
end InitECandidate.Proofs.BackendStages
