import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc67
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody67_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody67_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody67_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody67_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody67_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody67_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551608#64)))

def RemovedBody67_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 26
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody67_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody67_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def RemovedBody67_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody67_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551592#64)))

def RemovedBody67_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 2965299200#64)

def RemovedBody67_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody67_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def RemovedBody67_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody67_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551584#64)))

def RemovedBody67_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 2952790016#64)

def RemovedBody67_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody67_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody67_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody67_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody67_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody67_22 : StackLang.HolProg 64 :=
.seq RemovedBody67_20 RemovedBody67_21

def RemovedBody67_23 : StackLang.HolProg 64 :=
.seq RemovedBody67_19 RemovedBody67_22

def RemovedBody67_24 : StackLang.HolProg 64 :=
.seq RemovedBody67_18 RemovedBody67_23

def RemovedBody67_25 : StackLang.HolProg 64 :=
.seq RemovedBody67_17 RemovedBody67_24

def RemovedBody67_26 : StackLang.HolProg 64 :=
.seq RemovedBody67_16 RemovedBody67_25

def RemovedBody67_27 : StackLang.HolProg 64 :=
.seq RemovedBody67_15 RemovedBody67_26

def RemovedBody67_28 : StackLang.HolProg 64 :=
.seq RemovedBody67_14 RemovedBody67_27

def RemovedBody67_29 : StackLang.HolProg 64 :=
.seq RemovedBody67_13 RemovedBody67_28

def RemovedBody67_30 : StackLang.HolProg 64 :=
.seq RemovedBody67_12 RemovedBody67_29

def RemovedBody67_31 : StackLang.HolProg 64 :=
.seq RemovedBody67_11 RemovedBody67_30

def RemovedBody67_32 : StackLang.HolProg 64 :=
.seq RemovedBody67_10 RemovedBody67_31

def RemovedBody67_33 : StackLang.HolProg 64 :=
.seq RemovedBody67_9 RemovedBody67_32

def RemovedBody67_34 : StackLang.HolProg 64 :=
.seq RemovedBody67_8 RemovedBody67_33

def RemovedBody67_35 : StackLang.HolProg 64 :=
.seq RemovedBody67_7 RemovedBody67_34

def RemovedBody67_36 : StackLang.HolProg 64 :=
.seq RemovedBody67_6 RemovedBody67_35

def RemovedBody67_37 : StackLang.HolProg 64 :=
.seq RemovedBody67_5 RemovedBody67_36

def RemovedBody67_38 : StackLang.HolProg 64 :=
.seq RemovedBody67_4 RemovedBody67_37

def RemovedBody67_39 : StackLang.HolProg 64 :=
.seq RemovedBody67_3 RemovedBody67_38

def RemovedBody67_40 : StackLang.HolProg 64 :=
.seq RemovedBody67_2 RemovedBody67_39

def RemovedBody67_41 : StackLang.HolProg 64 :=
.seq RemovedBody67_1 RemovedBody67_40

def RemovedBody67_42 : StackLang.HolProg 64 :=
.seq RemovedBody67_0 RemovedBody67_41

def Removed67 : Nat × StackLang.HolProg 64 := (67, RemovedBody67_42)
theorem Removed67_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc67 = Removed67 := by
  kernel_rfl
#print axioms Removed67_eq
end InitECandidate.Proofs.BackendStages
