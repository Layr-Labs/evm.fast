import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc819
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody819_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody819_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody819_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 128#64)

def RemovedBody819_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody819_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody819_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 519#64)

def RemovedBody819_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody819_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody819_8 : StackLang.HolProg 64 :=
.seq RemovedBody819_6 RemovedBody819_7

def RemovedBody819_9 : StackLang.HolProg 64 :=
.seq RemovedBody819_5 RemovedBody819_8

def RemovedBody819_10 : StackLang.HolProg 64 :=
.seq RemovedBody819_4 RemovedBody819_9

def RemovedBody819_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody819_12 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody819_10 RemovedBody819_11

def RemovedBody819_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody819_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody819_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody819_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def RemovedBody819_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody819_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody819_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody819_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody819_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 18446744073709551216#64))

def RemovedBody819_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody819_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody819_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody819_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody819_26 : StackLang.HolProg 64 :=
.seq RemovedBody819_24 RemovedBody819_25

def RemovedBody819_27 : StackLang.HolProg 64 :=
.seq RemovedBody819_23 RemovedBody819_26

def RemovedBody819_28 : StackLang.HolProg 64 :=
.seq RemovedBody819_22 RemovedBody819_27

def RemovedBody819_29 : StackLang.HolProg 64 :=
.seq RemovedBody819_21 RemovedBody819_28

def RemovedBody819_30 : StackLang.HolProg 64 :=
.seq RemovedBody819_20 RemovedBody819_29

def RemovedBody819_31 : StackLang.HolProg 64 :=
.seq RemovedBody819_19 RemovedBody819_30

def RemovedBody819_32 : StackLang.HolProg 64 :=
.seq RemovedBody819_18 RemovedBody819_31

def RemovedBody819_33 : StackLang.HolProg 64 :=
.seq RemovedBody819_17 RemovedBody819_32

def RemovedBody819_34 : StackLang.HolProg 64 :=
.seq RemovedBody819_16 RemovedBody819_33

def RemovedBody819_35 : StackLang.HolProg 64 :=
.seq RemovedBody819_15 RemovedBody819_34

def RemovedBody819_36 : StackLang.HolProg 64 :=
.seq RemovedBody819_14 RemovedBody819_35

def RemovedBody819_37 : StackLang.HolProg 64 :=
.seq RemovedBody819_13 RemovedBody819_36

def RemovedBody819_38 : StackLang.HolProg 64 :=
.seq RemovedBody819_12 RemovedBody819_37

def RemovedBody819_39 : StackLang.HolProg 64 :=
.seq RemovedBody819_3 RemovedBody819_38

def RemovedBody819_40 : StackLang.HolProg 64 :=
.seq RemovedBody819_2 RemovedBody819_39

def RemovedBody819_41 : StackLang.HolProg 64 :=
.seq RemovedBody819_1 RemovedBody819_40

def RemovedBody819_42 : StackLang.HolProg 64 :=
.seq RemovedBody819_0 RemovedBody819_41

def Removed819 : Nat × StackLang.HolProg 64 := (819, RemovedBody819_42)
theorem Removed819_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc819 = Removed819 := by
  kernel_rfl
#print axioms Removed819_eq
end InitECandidate.Proofs.BackendStages
