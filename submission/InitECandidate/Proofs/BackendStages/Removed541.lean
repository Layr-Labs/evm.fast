import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc541
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody541_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody541_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody541_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 90#64)

def RemovedBody541_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody541_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1#64)

def RemovedBody541_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody541_6 : StackLang.HolProg 64 :=
.seq RemovedBody541_4 RemovedBody541_5

def RemovedBody541_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody541_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody541_9 : StackLang.HolProg 64 :=
.seq RemovedBody541_7 RemovedBody541_8

def RemovedBody541_10 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody541_6 RemovedBody541_9

def RemovedBody541_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody541_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody541_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 128#64)

def RemovedBody541_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1#64)

def RemovedBody541_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody541_16 : StackLang.HolProg 64 :=
.seq RemovedBody541_14 RemovedBody541_15

def RemovedBody541_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody541_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody541_19 : StackLang.HolProg 64 :=
.seq RemovedBody541_17 RemovedBody541_18

def RemovedBody541_20 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody541_16 RemovedBody541_19

def RemovedBody541_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody541_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody541_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody541_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody541_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody541_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody541_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 145#64)))

def RemovedBody541_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 255#64)))

def RemovedBody541_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody541_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody541_31 : StackLang.HolProg 64 :=
.seq RemovedBody541_29 RemovedBody541_30

def RemovedBody541_32 : StackLang.HolProg 64 :=
.seq RemovedBody541_28 RemovedBody541_31

def RemovedBody541_33 : StackLang.HolProg 64 :=
.seq RemovedBody541_27 RemovedBody541_32

def RemovedBody541_34 : StackLang.HolProg 64 :=
.seq RemovedBody541_26 RemovedBody541_33

def RemovedBody541_35 : StackLang.HolProg 64 :=
.seq RemovedBody541_25 RemovedBody541_34

def RemovedBody541_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody541_37 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody541_35 RemovedBody541_36

def RemovedBody541_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody541_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody541_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 10#64)

def RemovedBody541_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody541_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody541_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def RemovedBody541_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody541_45 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody541_46 : StackLang.HolProg 64 :=
.seq RemovedBody541_44 RemovedBody541_45

def RemovedBody541_47 : StackLang.HolProg 64 :=
.seq RemovedBody541_43 RemovedBody541_46

def RemovedBody541_48 : StackLang.HolProg 64 :=
.seq RemovedBody541_42 RemovedBody541_47

def RemovedBody541_49 : StackLang.HolProg 64 :=
.seq RemovedBody541_41 RemovedBody541_48

def RemovedBody541_50 : StackLang.HolProg 64 :=
.seq RemovedBody541_40 RemovedBody541_49

def RemovedBody541_51 : StackLang.HolProg 64 :=
.seq RemovedBody541_39 RemovedBody541_50

def RemovedBody541_52 : StackLang.HolProg 64 :=
.seq RemovedBody541_38 RemovedBody541_51

def RemovedBody541_53 : StackLang.HolProg 64 :=
.seq RemovedBody541_37 RemovedBody541_52

def RemovedBody541_54 : StackLang.HolProg 64 :=
.seq RemovedBody541_24 RemovedBody541_53

def RemovedBody541_55 : StackLang.HolProg 64 :=
.seq RemovedBody541_23 RemovedBody541_54

def RemovedBody541_56 : StackLang.HolProg 64 :=
.seq RemovedBody541_22 RemovedBody541_55

def RemovedBody541_57 : StackLang.HolProg 64 :=
.seq RemovedBody541_21 RemovedBody541_56

def RemovedBody541_58 : StackLang.HolProg 64 :=
.seq RemovedBody541_20 RemovedBody541_57

def RemovedBody541_59 : StackLang.HolProg 64 :=
.seq RemovedBody541_13 RemovedBody541_58

def RemovedBody541_60 : StackLang.HolProg 64 :=
.seq RemovedBody541_12 RemovedBody541_59

def RemovedBody541_61 : StackLang.HolProg 64 :=
.seq RemovedBody541_11 RemovedBody541_60

def RemovedBody541_62 : StackLang.HolProg 64 :=
.seq RemovedBody541_10 RemovedBody541_61

def RemovedBody541_63 : StackLang.HolProg 64 :=
.seq RemovedBody541_3 RemovedBody541_62

def RemovedBody541_64 : StackLang.HolProg 64 :=
.seq RemovedBody541_2 RemovedBody541_63

def RemovedBody541_65 : StackLang.HolProg 64 :=
.seq RemovedBody541_1 RemovedBody541_64

def RemovedBody541_66 : StackLang.HolProg 64 :=
.seq RemovedBody541_0 RemovedBody541_65

def Removed541 : Nat × StackLang.HolProg 64 := (541, RemovedBody541_66)
theorem Removed541_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc541 = Removed541 := by
  kernel_rfl
#print axioms Removed541_eq
end InitECandidate.Proofs.BackendStages
