import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc434
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody434_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody434_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody434_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody434_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody434_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody434_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 18446744073709551440#64))

def RemovedBody434_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 56#64))

def RemovedBody434_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def RemovedBody434_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody434_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody434_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody434_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 1#64)

def RemovedBody434_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody434_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def RemovedBody434_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody434_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 18446744073709551440#64))

def RemovedBody434_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def RemovedBody434_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody434_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def RemovedBody434_19 : StackLang.HolProg 64 :=
.seq RemovedBody434_17 RemovedBody434_18

def RemovedBody434_20 : StackLang.HolProg 64 :=
.seq RemovedBody434_16 RemovedBody434_19

def RemovedBody434_21 : StackLang.HolProg 64 :=
.seq RemovedBody434_15 RemovedBody434_20

def RemovedBody434_22 : StackLang.HolProg 64 :=
.seq RemovedBody434_14 RemovedBody434_21

def RemovedBody434_23 : StackLang.HolProg 64 :=
.seq RemovedBody434_13 RemovedBody434_22

def RemovedBody434_24 : StackLang.HolProg 64 :=
.seq RemovedBody434_12 RemovedBody434_23

def RemovedBody434_25 : StackLang.HolProg 64 :=
.seq RemovedBody434_11 RemovedBody434_24

def RemovedBody434_26 : StackLang.HolProg 64 :=
.seq RemovedBody434_10 RemovedBody434_25

def RemovedBody434_27 : StackLang.HolProg 64 :=
.seq RemovedBody434_9 RemovedBody434_26

def RemovedBody434_28 : StackLang.HolProg 64 :=
.seq RemovedBody434_8 RemovedBody434_27

def RemovedBody434_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody434_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody434_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 64#64))

def RemovedBody434_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody434_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody434_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody434_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def RemovedBody434_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody434_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def RemovedBody434_38 : StackLang.HolProg 64 :=
.seq RemovedBody434_36 RemovedBody434_37

def RemovedBody434_39 : StackLang.HolProg 64 :=
.seq RemovedBody434_35 RemovedBody434_38

def RemovedBody434_40 : StackLang.HolProg 64 :=
.seq RemovedBody434_34 RemovedBody434_39

def RemovedBody434_41 : StackLang.HolProg 64 :=
.seq RemovedBody434_33 RemovedBody434_40

def RemovedBody434_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody434_43 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody434_41 RemovedBody434_42

def RemovedBody434_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody434_45 : StackLang.HolProg 64 :=
.seq RemovedBody434_43 RemovedBody434_44

def RemovedBody434_46 : StackLang.HolProg 64 :=
.seq RemovedBody434_32 RemovedBody434_45

def RemovedBody434_47 : StackLang.HolProg 64 :=
.seq RemovedBody434_31 RemovedBody434_46

def RemovedBody434_48 : StackLang.HolProg 64 :=
.seq RemovedBody434_30 RemovedBody434_47

def RemovedBody434_49 : StackLang.HolProg 64 :=
.seq RemovedBody434_29 RemovedBody434_48

def RemovedBody434_50 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) RemovedBody434_28 RemovedBody434_49

def RemovedBody434_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody434_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody434_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody434_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody434_55 : StackLang.HolProg 64 :=
.seq RemovedBody434_53 RemovedBody434_54

def RemovedBody434_56 : StackLang.HolProg 64 :=
.seq RemovedBody434_52 RemovedBody434_55

def RemovedBody434_57 : StackLang.HolProg 64 :=
.seq RemovedBody434_51 RemovedBody434_56

def RemovedBody434_58 : StackLang.HolProg 64 :=
.seq RemovedBody434_50 RemovedBody434_57

def RemovedBody434_59 : StackLang.HolProg 64 :=
.seq RemovedBody434_7 RemovedBody434_58

def RemovedBody434_60 : StackLang.HolProg 64 :=
.seq RemovedBody434_6 RemovedBody434_59

def RemovedBody434_61 : StackLang.HolProg 64 :=
.seq RemovedBody434_5 RemovedBody434_60

def RemovedBody434_62 : StackLang.HolProg 64 :=
.seq RemovedBody434_4 RemovedBody434_61

def RemovedBody434_63 : StackLang.HolProg 64 :=
.seq RemovedBody434_3 RemovedBody434_62

def RemovedBody434_64 : StackLang.HolProg 64 :=
.seq RemovedBody434_2 RemovedBody434_63

def RemovedBody434_65 : StackLang.HolProg 64 :=
.seq RemovedBody434_1 RemovedBody434_64

def RemovedBody434_66 : StackLang.HolProg 64 :=
.seq RemovedBody434_0 RemovedBody434_65

def Removed434 : Nat × StackLang.HolProg 64 := (434, RemovedBody434_66)
theorem Removed434_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc434 = Removed434 := by
  kernel_rfl
#print axioms Removed434_eq
end InitECandidate.Proofs.BackendStages
