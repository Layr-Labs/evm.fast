import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed86
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody86_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody86_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody86_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody86_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody86_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody86_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody86_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 12 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody86_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 0#64))

def NamedBody86_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody86_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def NamedBody86_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody86_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 12 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody86_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 0#64))

def NamedBody86_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody86_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody86_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody86_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody86_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 0#64))

def NamedBody86_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody86_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody86_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody86_21 : StackLang.HolProg 64 :=
.seq NamedBody86_19 NamedBody86_20

def NamedBody86_22 : StackLang.HolProg 64 :=
.seq NamedBody86_18 NamedBody86_21

def NamedBody86_23 : StackLang.HolProg 64 :=
.seq NamedBody86_17 NamedBody86_22

def NamedBody86_24 : StackLang.HolProg 64 :=
.seq NamedBody86_16 NamedBody86_23

def NamedBody86_25 : StackLang.HolProg 64 :=
.seq NamedBody86_15 NamedBody86_24

def NamedBody86_26 : StackLang.HolProg 64 :=
.seq NamedBody86_14 NamedBody86_25

def NamedBody86_27 : StackLang.HolProg 64 :=
.seq NamedBody86_13 NamedBody86_26

def NamedBody86_28 : StackLang.HolProg 64 :=
.seq NamedBody86_12 NamedBody86_27

def NamedBody86_29 : StackLang.HolProg 64 :=
.seq NamedBody86_11 NamedBody86_28

def NamedBody86_30 : StackLang.HolProg 64 :=
.seq NamedBody86_10 NamedBody86_29

def NamedBody86_31 : StackLang.HolProg 64 :=
.seq NamedBody86_9 NamedBody86_30

def NamedBody86_32 : StackLang.HolProg 64 :=
.seq NamedBody86_8 NamedBody86_31

def NamedBody86_33 : StackLang.HolProg 64 :=
.seq NamedBody86_7 NamedBody86_32

def NamedBody86_34 : StackLang.HolProg 64 :=
.seq NamedBody86_6 NamedBody86_33

def NamedBody86_35 : StackLang.HolProg 64 :=
.seq NamedBody86_5 NamedBody86_34

def NamedBody86_36 : StackLang.HolProg 64 :=
.seq NamedBody86_4 NamedBody86_35

def NamedBody86_37 : StackLang.HolProg 64 :=
.seq NamedBody86_3 NamedBody86_36

def NamedBody86_38 : StackLang.HolProg 64 :=
.seq NamedBody86_2 NamedBody86_37

def NamedBody86_39 : StackLang.HolProg 64 :=
.seq NamedBody86_1 NamedBody86_38

def NamedBody86_40 : StackLang.HolProg 64 :=
.seq NamedBody86_0 NamedBody86_39

def Named86 : Nat × StackLang.HolProg 64 := (86, NamedBody86_40)
theorem Named86_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed86 = Named86 := by
  kernel_rfl
#print axioms Named86_eq
end InitECandidate.Proofs.BackendStages
