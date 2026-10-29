import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc820
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody820_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody820_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody820_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 128#64)

def RemovedBody820_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody820_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody820_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 524#64)

def RemovedBody820_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody820_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody820_8 : StackLang.HolProg 64 :=
.seq RemovedBody820_6 RemovedBody820_7

def RemovedBody820_9 : StackLang.HolProg 64 :=
.seq RemovedBody820_5 RemovedBody820_8

def RemovedBody820_10 : StackLang.HolProg 64 :=
.seq RemovedBody820_4 RemovedBody820_9

def RemovedBody820_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody820_12 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody820_10 RemovedBody820_11

def RemovedBody820_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody820_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody820_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody820_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 128#64)))

def RemovedBody820_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def RemovedBody820_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody820_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody820_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody820_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody820_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 18446744073709551216#64))

def RemovedBody820_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody820_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody820_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody820_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody820_27 : StackLang.HolProg 64 :=
.seq RemovedBody820_25 RemovedBody820_26

def RemovedBody820_28 : StackLang.HolProg 64 :=
.seq RemovedBody820_24 RemovedBody820_27

def RemovedBody820_29 : StackLang.HolProg 64 :=
.seq RemovedBody820_23 RemovedBody820_28

def RemovedBody820_30 : StackLang.HolProg 64 :=
.seq RemovedBody820_22 RemovedBody820_29

def RemovedBody820_31 : StackLang.HolProg 64 :=
.seq RemovedBody820_21 RemovedBody820_30

def RemovedBody820_32 : StackLang.HolProg 64 :=
.seq RemovedBody820_20 RemovedBody820_31

def RemovedBody820_33 : StackLang.HolProg 64 :=
.seq RemovedBody820_19 RemovedBody820_32

def RemovedBody820_34 : StackLang.HolProg 64 :=
.seq RemovedBody820_18 RemovedBody820_33

def RemovedBody820_35 : StackLang.HolProg 64 :=
.seq RemovedBody820_17 RemovedBody820_34

def RemovedBody820_36 : StackLang.HolProg 64 :=
.seq RemovedBody820_16 RemovedBody820_35

def RemovedBody820_37 : StackLang.HolProg 64 :=
.seq RemovedBody820_15 RemovedBody820_36

def RemovedBody820_38 : StackLang.HolProg 64 :=
.seq RemovedBody820_14 RemovedBody820_37

def RemovedBody820_39 : StackLang.HolProg 64 :=
.seq RemovedBody820_13 RemovedBody820_38

def RemovedBody820_40 : StackLang.HolProg 64 :=
.seq RemovedBody820_12 RemovedBody820_39

def RemovedBody820_41 : StackLang.HolProg 64 :=
.seq RemovedBody820_3 RemovedBody820_40

def RemovedBody820_42 : StackLang.HolProg 64 :=
.seq RemovedBody820_2 RemovedBody820_41

def RemovedBody820_43 : StackLang.HolProg 64 :=
.seq RemovedBody820_1 RemovedBody820_42

def RemovedBody820_44 : StackLang.HolProg 64 :=
.seq RemovedBody820_0 RemovedBody820_43

def Removed820 : Nat × StackLang.HolProg 64 := (820, RemovedBody820_44)
theorem Removed820_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc820 = Removed820 := by
  kernel_rfl
#print axioms Removed820_eq
end InitECandidate.Proofs.BackendStages
