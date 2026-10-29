import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc66
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody66_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody66_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody66_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody66_3 : StackLang.HolProg 64 :=
.seq RemovedBody66_1 RemovedBody66_2

def RemovedBody66_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody66_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody66_3 RemovedBody66_4

def RemovedBody66_6 : StackLang.HolProg 64 :=
.seq RemovedBody66_0 RemovedBody66_5

def RemovedBody66_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody66_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2688614433#64)

def RemovedBody66_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.shMemOp Flapjack.WordMemOp.store8 2
  (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64)

def RemovedBody66_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody66_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody66_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody66_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551608#64))

def RemovedBody66_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 2688614440#64)

def RemovedBody66_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.shMemOp Flapjack.WordMemOp.store 3
  (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64)

def RemovedBody66_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody66_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551600#64))

def RemovedBody66_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 2688614448#64)

def RemovedBody66_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.shMemOp Flapjack.WordMemOp.store 1
  (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64)

def RemovedBody66_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 26
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody66_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody66_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody66_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody66_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody66_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody66_26 : StackLang.HolProg 64 :=
.seq RemovedBody66_24 RemovedBody66_25

def RemovedBody66_27 : StackLang.HolProg 64 :=
.seq RemovedBody66_23 RemovedBody66_26

def RemovedBody66_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ffi (Flapjack.Basis.Pure.MlString.MlString.implode [116#8, 114#8, 97#8, 112#8])
  1 2 3 4 0

def RemovedBody66_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody66_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody66_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody66_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody66_33 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody66_34 : StackLang.HolProg 64 :=
.seq RemovedBody66_32 RemovedBody66_33

def RemovedBody66_35 : StackLang.HolProg 64 :=
.seq RemovedBody66_31 RemovedBody66_34

def RemovedBody66_36 : StackLang.HolProg 64 :=
.seq RemovedBody66_30 RemovedBody66_35

def RemovedBody66_37 : StackLang.HolProg 64 :=
.seq RemovedBody66_29 RemovedBody66_36

def RemovedBody66_38 : StackLang.HolProg 64 :=
.seq RemovedBody66_28 RemovedBody66_37

def RemovedBody66_39 : StackLang.HolProg 64 :=
.seq RemovedBody66_27 RemovedBody66_38

def RemovedBody66_40 : StackLang.HolProg 64 :=
.seq RemovedBody66_22 RemovedBody66_39

def RemovedBody66_41 : StackLang.HolProg 64 :=
.seq RemovedBody66_21 RemovedBody66_40

def RemovedBody66_42 : StackLang.HolProg 64 :=
.seq RemovedBody66_20 RemovedBody66_41

def RemovedBody66_43 : StackLang.HolProg 64 :=
.seq RemovedBody66_19 RemovedBody66_42

def RemovedBody66_44 : StackLang.HolProg 64 :=
.seq RemovedBody66_18 RemovedBody66_43

def RemovedBody66_45 : StackLang.HolProg 64 :=
.seq RemovedBody66_17 RemovedBody66_44

def RemovedBody66_46 : StackLang.HolProg 64 :=
.seq RemovedBody66_16 RemovedBody66_45

def RemovedBody66_47 : StackLang.HolProg 64 :=
.seq RemovedBody66_15 RemovedBody66_46

def RemovedBody66_48 : StackLang.HolProg 64 :=
.seq RemovedBody66_14 RemovedBody66_47

def RemovedBody66_49 : StackLang.HolProg 64 :=
.seq RemovedBody66_13 RemovedBody66_48

def RemovedBody66_50 : StackLang.HolProg 64 :=
.seq RemovedBody66_12 RemovedBody66_49

def RemovedBody66_51 : StackLang.HolProg 64 :=
.seq RemovedBody66_11 RemovedBody66_50

def RemovedBody66_52 : StackLang.HolProg 64 :=
.seq RemovedBody66_10 RemovedBody66_51

def RemovedBody66_53 : StackLang.HolProg 64 :=
.seq RemovedBody66_9 RemovedBody66_52

def RemovedBody66_54 : StackLang.HolProg 64 :=
.seq RemovedBody66_8 RemovedBody66_53

def RemovedBody66_55 : StackLang.HolProg 64 :=
.seq RemovedBody66_7 RemovedBody66_54

def RemovedBody66_56 : StackLang.HolProg 64 :=
.seq RemovedBody66_6 RemovedBody66_55

def Removed66 : Nat × StackLang.HolProg 64 := (66, RemovedBody66_56)
theorem Removed66_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc66 = Removed66 := by
  kernel_rfl
#print axioms Removed66_eq
end InitECandidate.Proofs.BackendStages
