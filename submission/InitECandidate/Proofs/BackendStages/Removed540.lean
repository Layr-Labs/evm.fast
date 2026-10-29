import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc540
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody540_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody540_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody540_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody540_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody540_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody540_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def RemovedBody540_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def RemovedBody540_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody540_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody540_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody540_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 56#64))

def RemovedBody540_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody540_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody540_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 48#64))

def RemovedBody540_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody540_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody540_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody540_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody540_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody540_19 : StackLang.HolProg 64 :=
.seq RemovedBody540_17 RemovedBody540_18

def RemovedBody540_20 : StackLang.HolProg 64 :=
.seq RemovedBody540_16 RemovedBody540_19

def RemovedBody540_21 : StackLang.HolProg 64 :=
.seq RemovedBody540_15 RemovedBody540_20

def RemovedBody540_22 : StackLang.HolProg 64 :=
.seq RemovedBody540_14 RemovedBody540_21

def RemovedBody540_23 : StackLang.HolProg 64 :=
.seq RemovedBody540_13 RemovedBody540_22

def RemovedBody540_24 : StackLang.HolProg 64 :=
.seq RemovedBody540_12 RemovedBody540_23

def RemovedBody540_25 : StackLang.HolProg 64 :=
.seq RemovedBody540_11 RemovedBody540_24

def RemovedBody540_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody540_27 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) RemovedBody540_25 RemovedBody540_26

def RemovedBody540_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody540_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody540_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody540_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody540_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody540_33 : StackLang.HolProg 64 :=
.seq RemovedBody540_31 RemovedBody540_32

def RemovedBody540_34 : StackLang.HolProg 64 :=
.seq RemovedBody540_30 RemovedBody540_33

def RemovedBody540_35 : StackLang.HolProg 64 :=
.seq RemovedBody540_29 RemovedBody540_34

def RemovedBody540_36 : StackLang.HolProg 64 :=
.seq RemovedBody540_28 RemovedBody540_35

def RemovedBody540_37 : StackLang.HolProg 64 :=
.seq RemovedBody540_27 RemovedBody540_36

def RemovedBody540_38 : StackLang.HolProg 64 :=
.seq RemovedBody540_10 RemovedBody540_37

def RemovedBody540_39 : StackLang.HolProg 64 :=
.seq RemovedBody540_9 RemovedBody540_38

def RemovedBody540_40 : StackLang.HolProg 64 :=
.seq RemovedBody540_8 RemovedBody540_39

def RemovedBody540_41 : StackLang.HolProg 64 :=
.seq RemovedBody540_7 RemovedBody540_40

def RemovedBody540_42 : StackLang.HolProg 64 :=
.seq RemovedBody540_6 RemovedBody540_41

def RemovedBody540_43 : StackLang.HolProg 64 :=
.seq RemovedBody540_5 RemovedBody540_42

def RemovedBody540_44 : StackLang.HolProg 64 :=
.seq RemovedBody540_4 RemovedBody540_43

def RemovedBody540_45 : StackLang.HolProg 64 :=
.seq RemovedBody540_3 RemovedBody540_44

def RemovedBody540_46 : StackLang.HolProg 64 :=
.seq RemovedBody540_2 RemovedBody540_45

def RemovedBody540_47 : StackLang.HolProg 64 :=
.seq RemovedBody540_1 RemovedBody540_46

def RemovedBody540_48 : StackLang.HolProg 64 :=
.seq RemovedBody540_0 RemovedBody540_47

def Removed540 : Nat × StackLang.HolProg 64 := (540, RemovedBody540_48)
theorem Removed540_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc540 = Removed540 := by
  kernel_rfl
#print axioms Removed540_eq
end InitECandidate.Proofs.BackendStages
