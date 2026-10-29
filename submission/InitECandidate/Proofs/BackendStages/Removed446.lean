import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc446
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody446_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody446_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody446_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody446_3 : StackLang.HolProg 64 :=
.seq RemovedBody446_1 RemovedBody446_2

def RemovedBody446_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody446_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody446_3 RemovedBody446_4

def RemovedBody446_6 : StackLang.HolProg 64 :=
.seq RemovedBody446_0 RemovedBody446_5

def RemovedBody446_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody446_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody446_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1345#64)

def RemovedBody446_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody446_11 : StackLang.HolProg 64 :=
.seq RemovedBody446_9 RemovedBody446_10

def RemovedBody446_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody446_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody446_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody446_15 : StackLang.HolProg 64 :=
.seq RemovedBody446_13 RemovedBody446_14

def RemovedBody446_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody446_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody446_15 RemovedBody446_16

def RemovedBody446_18 : StackLang.HolProg 64 :=
.seq RemovedBody446_12 RemovedBody446_17

def RemovedBody446_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody446_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody446_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 446 3

def RemovedBody446_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody446_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody446_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody446_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody446_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody446_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody446_28 : StackLang.HolProg 64 :=
.seq RemovedBody446_26 RemovedBody446_27

def RemovedBody446_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody446_30 : StackLang.HolProg 64 :=
.seq RemovedBody446_28 RemovedBody446_29

def RemovedBody446_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody446_32 : StackLang.HolProg 64 :=
.seq RemovedBody446_30 RemovedBody446_31

def RemovedBody446_33 : StackLang.HolProg 64 :=
.seq RemovedBody446_25 RemovedBody446_32

def RemovedBody446_34 : StackLang.HolProg 64 :=
.seq RemovedBody446_24 RemovedBody446_33

def RemovedBody446_35 : StackLang.HolProg 64 :=
.seq RemovedBody446_23 RemovedBody446_34

def RemovedBody446_36 : StackLang.HolProg 64 :=
.seq RemovedBody446_22 RemovedBody446_35

def RemovedBody446_37 : StackLang.HolProg 64 :=
.seq RemovedBody446_21 RemovedBody446_36

def RemovedBody446_38 : StackLang.HolProg 64 :=
.seq RemovedBody446_20 RemovedBody446_37

def RemovedBody446_39 : StackLang.HolProg 64 :=
.seq RemovedBody446_19 RemovedBody446_38

def RemovedBody446_40 : StackLang.HolProg 64 :=
.seq RemovedBody446_18 RemovedBody446_39

def RemovedBody446_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody446_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody446_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody446_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody446_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody446_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody446_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody446_48 : StackLang.HolProg 64 :=
.seq RemovedBody446_46 RemovedBody446_47

def RemovedBody446_49 : StackLang.HolProg 64 :=
.seq RemovedBody446_45 RemovedBody446_48

def RemovedBody446_50 : StackLang.HolProg 64 :=
.seq RemovedBody446_44 RemovedBody446_49

def RemovedBody446_51 : StackLang.HolProg 64 :=
.seq RemovedBody446_43 RemovedBody446_50

def RemovedBody446_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody446_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody446_54 : StackLang.HolProg 64 :=
.seq RemovedBody446_52 RemovedBody446_53

def RemovedBody446_55 : StackLang.HolProg 64 :=
.call (some (RemovedBody446_51, 0, 446, 2)) (Sum.inl 439) (some (RemovedBody446_54, 446, 3))

def RemovedBody446_56 : StackLang.HolProg 64 :=
.seq RemovedBody446_42 RemovedBody446_55

def RemovedBody446_57 : StackLang.HolProg 64 :=
.seq RemovedBody446_41 RemovedBody446_56

def RemovedBody446_58 : StackLang.HolProg 64 :=
.seq RemovedBody446_40 RemovedBody446_57

def RemovedBody446_59 : StackLang.HolProg 64 :=
.seq RemovedBody446_11 RemovedBody446_58

def RemovedBody446_60 : StackLang.HolProg 64 :=
.seq RemovedBody446_8 RemovedBody446_59

def RemovedBody446_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody446_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody446_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody446_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody446_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody446_66 : StackLang.HolProg 64 :=
.seq RemovedBody446_64 RemovedBody446_65

def RemovedBody446_67 : StackLang.HolProg 64 :=
.seq RemovedBody446_63 RemovedBody446_66

def RemovedBody446_68 : StackLang.HolProg 64 :=
.seq RemovedBody446_62 RemovedBody446_67

def RemovedBody446_69 : StackLang.HolProg 64 :=
.seq RemovedBody446_61 RemovedBody446_68

def RemovedBody446_70 : StackLang.HolProg 64 :=
.seq RemovedBody446_60 RemovedBody446_69

def RemovedBody446_71 : StackLang.HolProg 64 :=
.seq RemovedBody446_7 RemovedBody446_70

def RemovedBody446_72 : StackLang.HolProg 64 :=
.seq RemovedBody446_6 RemovedBody446_71

def Removed446 : Nat × StackLang.HolProg 64 := (446, RemovedBody446_72)
theorem Removed446_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc446 = Removed446 := by
  kernel_rfl
#print axioms Removed446_eq
end InitECandidate.Proofs.BackendStages
