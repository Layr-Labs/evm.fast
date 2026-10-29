import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc492
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody492_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody492_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody492_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody492_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody492_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody492_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def RemovedBody492_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 112#64))

def RemovedBody492_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 144#64))

def RemovedBody492_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody492_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody492_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def RemovedBody492_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody492_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody492_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def RemovedBody492_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody492_15 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody492_16 : StackLang.HolProg 64 :=
.seq RemovedBody492_14 RemovedBody492_15

def RemovedBody492_17 : StackLang.HolProg 64 :=
.seq RemovedBody492_13 RemovedBody492_16

def RemovedBody492_18 : StackLang.HolProg 64 :=
.seq RemovedBody492_12 RemovedBody492_17

def RemovedBody492_19 : StackLang.HolProg 64 :=
.seq RemovedBody492_11 RemovedBody492_18

def RemovedBody492_20 : StackLang.HolProg 64 :=
.seq RemovedBody492_10 RemovedBody492_19

def RemovedBody492_21 : StackLang.HolProg 64 :=
.seq RemovedBody492_9 RemovedBody492_20

def RemovedBody492_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody492_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody492_21 RemovedBody492_22

def RemovedBody492_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody492_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody492_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody492_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody492_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody492_29 : StackLang.HolProg 64 :=
.seq RemovedBody492_27 RemovedBody492_28

def RemovedBody492_30 : StackLang.HolProg 64 :=
.seq RemovedBody492_26 RemovedBody492_29

def RemovedBody492_31 : StackLang.HolProg 64 :=
.seq RemovedBody492_25 RemovedBody492_30

def RemovedBody492_32 : StackLang.HolProg 64 :=
.seq RemovedBody492_24 RemovedBody492_31

def RemovedBody492_33 : StackLang.HolProg 64 :=
.seq RemovedBody492_23 RemovedBody492_32

def RemovedBody492_34 : StackLang.HolProg 64 :=
.seq RemovedBody492_8 RemovedBody492_33

def RemovedBody492_35 : StackLang.HolProg 64 :=
.seq RemovedBody492_7 RemovedBody492_34

def RemovedBody492_36 : StackLang.HolProg 64 :=
.seq RemovedBody492_6 RemovedBody492_35

def RemovedBody492_37 : StackLang.HolProg 64 :=
.seq RemovedBody492_5 RemovedBody492_36

def RemovedBody492_38 : StackLang.HolProg 64 :=
.seq RemovedBody492_4 RemovedBody492_37

def RemovedBody492_39 : StackLang.HolProg 64 :=
.seq RemovedBody492_3 RemovedBody492_38

def RemovedBody492_40 : StackLang.HolProg 64 :=
.seq RemovedBody492_2 RemovedBody492_39

def RemovedBody492_41 : StackLang.HolProg 64 :=
.seq RemovedBody492_1 RemovedBody492_40

def RemovedBody492_42 : StackLang.HolProg 64 :=
.seq RemovedBody492_0 RemovedBody492_41

def Removed492 : Nat × StackLang.HolProg 64 := (492, RemovedBody492_42)
theorem Removed492_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc492 = Removed492 := by
  kernel_rfl
#print axioms Removed492_eq
end InitECandidate.Proofs.BackendStages
