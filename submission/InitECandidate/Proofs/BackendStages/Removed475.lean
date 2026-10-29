import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc475
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody475_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody475_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody475_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody475_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody475_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody475_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 18446744073709551360#64))

def RemovedBody475_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 16#64))

def RemovedBody475_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody475_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody475_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody475_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody475_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody475_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody475_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def RemovedBody475_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody475_15 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody475_16 : StackLang.HolProg 64 :=
.seq RemovedBody475_14 RemovedBody475_15

def RemovedBody475_17 : StackLang.HolProg 64 :=
.seq RemovedBody475_13 RemovedBody475_16

def RemovedBody475_18 : StackLang.HolProg 64 :=
.seq RemovedBody475_12 RemovedBody475_17

def RemovedBody475_19 : StackLang.HolProg 64 :=
.seq RemovedBody475_11 RemovedBody475_18

def RemovedBody475_20 : StackLang.HolProg 64 :=
.seq RemovedBody475_10 RemovedBody475_19

def RemovedBody475_21 : StackLang.HolProg 64 :=
.seq RemovedBody475_9 RemovedBody475_20

def RemovedBody475_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody475_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody475_21 RemovedBody475_22

def RemovedBody475_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody475_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody475_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody475_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def RemovedBody475_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody475_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody475_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody475_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def RemovedBody475_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody475_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def RemovedBody475_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody475_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 18446744073709551360#64))

def RemovedBody475_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def RemovedBody475_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody475_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody475_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody475_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody475_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 8#64))

def RemovedBody475_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody475_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 16#64))

def RemovedBody475_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody475_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 24#64))

def RemovedBody475_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody475_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody475_48 : StackLang.HolProg 64 :=
.seq RemovedBody475_46 RemovedBody475_47

def RemovedBody475_49 : StackLang.HolProg 64 :=
.seq RemovedBody475_45 RemovedBody475_48

def RemovedBody475_50 : StackLang.HolProg 64 :=
.seq RemovedBody475_44 RemovedBody475_49

def RemovedBody475_51 : StackLang.HolProg 64 :=
.seq RemovedBody475_43 RemovedBody475_50

def RemovedBody475_52 : StackLang.HolProg 64 :=
.seq RemovedBody475_42 RemovedBody475_51

def RemovedBody475_53 : StackLang.HolProg 64 :=
.seq RemovedBody475_41 RemovedBody475_52

def RemovedBody475_54 : StackLang.HolProg 64 :=
.seq RemovedBody475_40 RemovedBody475_53

def RemovedBody475_55 : StackLang.HolProg 64 :=
.seq RemovedBody475_39 RemovedBody475_54

def RemovedBody475_56 : StackLang.HolProg 64 :=
.seq RemovedBody475_38 RemovedBody475_55

def RemovedBody475_57 : StackLang.HolProg 64 :=
.seq RemovedBody475_37 RemovedBody475_56

def RemovedBody475_58 : StackLang.HolProg 64 :=
.seq RemovedBody475_36 RemovedBody475_57

def RemovedBody475_59 : StackLang.HolProg 64 :=
.seq RemovedBody475_35 RemovedBody475_58

def RemovedBody475_60 : StackLang.HolProg 64 :=
.seq RemovedBody475_34 RemovedBody475_59

def RemovedBody475_61 : StackLang.HolProg 64 :=
.seq RemovedBody475_33 RemovedBody475_60

def RemovedBody475_62 : StackLang.HolProg 64 :=
.seq RemovedBody475_32 RemovedBody475_61

def RemovedBody475_63 : StackLang.HolProg 64 :=
.seq RemovedBody475_31 RemovedBody475_62

def RemovedBody475_64 : StackLang.HolProg 64 :=
.seq RemovedBody475_30 RemovedBody475_63

def RemovedBody475_65 : StackLang.HolProg 64 :=
.seq RemovedBody475_29 RemovedBody475_64

def RemovedBody475_66 : StackLang.HolProg 64 :=
.seq RemovedBody475_28 RemovedBody475_65

def RemovedBody475_67 : StackLang.HolProg 64 :=
.seq RemovedBody475_27 RemovedBody475_66

def RemovedBody475_68 : StackLang.HolProg 64 :=
.seq RemovedBody475_26 RemovedBody475_67

def RemovedBody475_69 : StackLang.HolProg 64 :=
.seq RemovedBody475_25 RemovedBody475_68

def RemovedBody475_70 : StackLang.HolProg 64 :=
.seq RemovedBody475_24 RemovedBody475_69

def RemovedBody475_71 : StackLang.HolProg 64 :=
.seq RemovedBody475_23 RemovedBody475_70

def RemovedBody475_72 : StackLang.HolProg 64 :=
.seq RemovedBody475_8 RemovedBody475_71

def RemovedBody475_73 : StackLang.HolProg 64 :=
.seq RemovedBody475_7 RemovedBody475_72

def RemovedBody475_74 : StackLang.HolProg 64 :=
.seq RemovedBody475_6 RemovedBody475_73

def RemovedBody475_75 : StackLang.HolProg 64 :=
.seq RemovedBody475_5 RemovedBody475_74

def RemovedBody475_76 : StackLang.HolProg 64 :=
.seq RemovedBody475_4 RemovedBody475_75

def RemovedBody475_77 : StackLang.HolProg 64 :=
.seq RemovedBody475_3 RemovedBody475_76

def RemovedBody475_78 : StackLang.HolProg 64 :=
.seq RemovedBody475_2 RemovedBody475_77

def RemovedBody475_79 : StackLang.HolProg 64 :=
.seq RemovedBody475_1 RemovedBody475_78

def RemovedBody475_80 : StackLang.HolProg 64 :=
.seq RemovedBody475_0 RemovedBody475_79

def Removed475 : Nat × StackLang.HolProg 64 := (475, RemovedBody475_80)
theorem Removed475_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc475 = Removed475 := by
  kernel_rfl
#print axioms Removed475_eq
end InitECandidate.Proofs.BackendStages
