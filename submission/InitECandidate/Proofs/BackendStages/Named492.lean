import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed492
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody492_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody492_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody492_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody492_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody492_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody492_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551360#64))

def NamedBody492_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 112#64))

def NamedBody492_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 144#64))

def NamedBody492_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody492_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody492_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 8#64)

def NamedBody492_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody492_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody492_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 8#64)

def NamedBody492_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody492_15 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody492_16 : StackLang.HolProg 64 :=
.seq NamedBody492_14 NamedBody492_15

def NamedBody492_17 : StackLang.HolProg 64 :=
.seq NamedBody492_13 NamedBody492_16

def NamedBody492_18 : StackLang.HolProg 64 :=
.seq NamedBody492_12 NamedBody492_17

def NamedBody492_19 : StackLang.HolProg 64 :=
.seq NamedBody492_11 NamedBody492_18

def NamedBody492_20 : StackLang.HolProg 64 :=
.seq NamedBody492_10 NamedBody492_19

def NamedBody492_21 : StackLang.HolProg 64 :=
.seq NamedBody492_9 NamedBody492_20

def NamedBody492_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody492_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedBody492_21 NamedBody492_22

def NamedBody492_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody492_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody492_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody492_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody492_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody492_29 : StackLang.HolProg 64 :=
.seq NamedBody492_27 NamedBody492_28

def NamedBody492_30 : StackLang.HolProg 64 :=
.seq NamedBody492_26 NamedBody492_29

def NamedBody492_31 : StackLang.HolProg 64 :=
.seq NamedBody492_25 NamedBody492_30

def NamedBody492_32 : StackLang.HolProg 64 :=
.seq NamedBody492_24 NamedBody492_31

def NamedBody492_33 : StackLang.HolProg 64 :=
.seq NamedBody492_23 NamedBody492_32

def NamedBody492_34 : StackLang.HolProg 64 :=
.seq NamedBody492_8 NamedBody492_33

def NamedBody492_35 : StackLang.HolProg 64 :=
.seq NamedBody492_7 NamedBody492_34

def NamedBody492_36 : StackLang.HolProg 64 :=
.seq NamedBody492_6 NamedBody492_35

def NamedBody492_37 : StackLang.HolProg 64 :=
.seq NamedBody492_5 NamedBody492_36

def NamedBody492_38 : StackLang.HolProg 64 :=
.seq NamedBody492_4 NamedBody492_37

def NamedBody492_39 : StackLang.HolProg 64 :=
.seq NamedBody492_3 NamedBody492_38

def NamedBody492_40 : StackLang.HolProg 64 :=
.seq NamedBody492_2 NamedBody492_39

def NamedBody492_41 : StackLang.HolProg 64 :=
.seq NamedBody492_1 NamedBody492_40

def NamedBody492_42 : StackLang.HolProg 64 :=
.seq NamedBody492_0 NamedBody492_41

def Named492 : Nat × StackLang.HolProg 64 := (492, NamedBody492_42)
theorem Named492_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed492 = Named492 := by
  kernel_rfl
#print axioms Named492_eq
end InitECandidate.Proofs.BackendStages
