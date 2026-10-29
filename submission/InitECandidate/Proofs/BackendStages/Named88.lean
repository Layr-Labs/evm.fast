import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed88
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody88_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody88_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody88_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 12 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody88_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody88_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody88_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody88_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody88_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 12 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody88_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 0#64))

def NamedBody88_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody88_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def NamedBody88_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody88_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 12 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody88_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 0#64))

def NamedBody88_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody88_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody88_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody88_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody88_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody88_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody88_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody88_21 : StackLang.HolProg 64 :=
.seq NamedBody88_19 NamedBody88_20

def NamedBody88_22 : StackLang.HolProg 64 :=
.seq NamedBody88_18 NamedBody88_21

def NamedBody88_23 : StackLang.HolProg 64 :=
.seq NamedBody88_17 NamedBody88_22

def NamedBody88_24 : StackLang.HolProg 64 :=
.seq NamedBody88_16 NamedBody88_23

def NamedBody88_25 : StackLang.HolProg 64 :=
.seq NamedBody88_15 NamedBody88_24

def NamedBody88_26 : StackLang.HolProg 64 :=
.seq NamedBody88_14 NamedBody88_25

def NamedBody88_27 : StackLang.HolProg 64 :=
.seq NamedBody88_13 NamedBody88_26

def NamedBody88_28 : StackLang.HolProg 64 :=
.seq NamedBody88_12 NamedBody88_27

def NamedBody88_29 : StackLang.HolProg 64 :=
.seq NamedBody88_11 NamedBody88_28

def NamedBody88_30 : StackLang.HolProg 64 :=
.seq NamedBody88_10 NamedBody88_29

def NamedBody88_31 : StackLang.HolProg 64 :=
.seq NamedBody88_9 NamedBody88_30

def NamedBody88_32 : StackLang.HolProg 64 :=
.seq NamedBody88_8 NamedBody88_31

def NamedBody88_33 : StackLang.HolProg 64 :=
.seq NamedBody88_7 NamedBody88_32

def NamedBody88_34 : StackLang.HolProg 64 :=
.seq NamedBody88_6 NamedBody88_33

def NamedBody88_35 : StackLang.HolProg 64 :=
.seq NamedBody88_5 NamedBody88_34

def NamedBody88_36 : StackLang.HolProg 64 :=
.seq NamedBody88_4 NamedBody88_35

def NamedBody88_37 : StackLang.HolProg 64 :=
.seq NamedBody88_3 NamedBody88_36

def NamedBody88_38 : StackLang.HolProg 64 :=
.seq NamedBody88_2 NamedBody88_37

def NamedBody88_39 : StackLang.HolProg 64 :=
.seq NamedBody88_1 NamedBody88_38

def NamedBody88_40 : StackLang.HolProg 64 :=
.seq NamedBody88_0 NamedBody88_39

def Named88 : Nat × StackLang.HolProg 64 := (88, NamedBody88_40)
theorem Named88_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed88 = Named88 := by
  kernel_rfl
#print axioms Named88_eq
end InitECandidate.Proofs.BackendStages
