import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc609
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody609_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody609_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody609_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody609_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody609_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody609_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 18446744073709551360#64))

def RemovedBody609_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def RemovedBody609_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody609_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 64#64))

def RemovedBody609_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody609_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 64#64))

def RemovedBody609_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody609_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody609_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def RemovedBody609_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody609_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 18446744073709551360#64))

def RemovedBody609_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 72#64)))

def RemovedBody609_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody609_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 72#64))

def RemovedBody609_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody609_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 72#64))

def RemovedBody609_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody609_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody609_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def RemovedBody609_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody609_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 18446744073709551360#64))

def RemovedBody609_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 184#64)))

def RemovedBody609_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody609_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 184#64))

def RemovedBody609_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody609_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 184#64))

def RemovedBody609_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody609_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody609_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def RemovedBody609_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody609_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody609_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody609_37 : StackLang.HolProg 64 :=
.seq RemovedBody609_35 RemovedBody609_36

def RemovedBody609_38 : StackLang.HolProg 64 :=
.seq RemovedBody609_34 RemovedBody609_37

def RemovedBody609_39 : StackLang.HolProg 64 :=
.seq RemovedBody609_33 RemovedBody609_38

def RemovedBody609_40 : StackLang.HolProg 64 :=
.seq RemovedBody609_32 RemovedBody609_39

def RemovedBody609_41 : StackLang.HolProg 64 :=
.seq RemovedBody609_31 RemovedBody609_40

def RemovedBody609_42 : StackLang.HolProg 64 :=
.seq RemovedBody609_30 RemovedBody609_41

def RemovedBody609_43 : StackLang.HolProg 64 :=
.seq RemovedBody609_29 RemovedBody609_42

def RemovedBody609_44 : StackLang.HolProg 64 :=
.seq RemovedBody609_28 RemovedBody609_43

def RemovedBody609_45 : StackLang.HolProg 64 :=
.seq RemovedBody609_27 RemovedBody609_44

def RemovedBody609_46 : StackLang.HolProg 64 :=
.seq RemovedBody609_26 RemovedBody609_45

def RemovedBody609_47 : StackLang.HolProg 64 :=
.seq RemovedBody609_25 RemovedBody609_46

def RemovedBody609_48 : StackLang.HolProg 64 :=
.seq RemovedBody609_24 RemovedBody609_47

def RemovedBody609_49 : StackLang.HolProg 64 :=
.seq RemovedBody609_23 RemovedBody609_48

def RemovedBody609_50 : StackLang.HolProg 64 :=
.seq RemovedBody609_22 RemovedBody609_49

def RemovedBody609_51 : StackLang.HolProg 64 :=
.seq RemovedBody609_21 RemovedBody609_50

def RemovedBody609_52 : StackLang.HolProg 64 :=
.seq RemovedBody609_20 RemovedBody609_51

def RemovedBody609_53 : StackLang.HolProg 64 :=
.seq RemovedBody609_19 RemovedBody609_52

def RemovedBody609_54 : StackLang.HolProg 64 :=
.seq RemovedBody609_18 RemovedBody609_53

def RemovedBody609_55 : StackLang.HolProg 64 :=
.seq RemovedBody609_17 RemovedBody609_54

def RemovedBody609_56 : StackLang.HolProg 64 :=
.seq RemovedBody609_16 RemovedBody609_55

def RemovedBody609_57 : StackLang.HolProg 64 :=
.seq RemovedBody609_15 RemovedBody609_56

def RemovedBody609_58 : StackLang.HolProg 64 :=
.seq RemovedBody609_14 RemovedBody609_57

def RemovedBody609_59 : StackLang.HolProg 64 :=
.seq RemovedBody609_13 RemovedBody609_58

def RemovedBody609_60 : StackLang.HolProg 64 :=
.seq RemovedBody609_12 RemovedBody609_59

def RemovedBody609_61 : StackLang.HolProg 64 :=
.seq RemovedBody609_11 RemovedBody609_60

def RemovedBody609_62 : StackLang.HolProg 64 :=
.seq RemovedBody609_10 RemovedBody609_61

def RemovedBody609_63 : StackLang.HolProg 64 :=
.seq RemovedBody609_9 RemovedBody609_62

def RemovedBody609_64 : StackLang.HolProg 64 :=
.seq RemovedBody609_8 RemovedBody609_63

def RemovedBody609_65 : StackLang.HolProg 64 :=
.seq RemovedBody609_7 RemovedBody609_64

def RemovedBody609_66 : StackLang.HolProg 64 :=
.seq RemovedBody609_6 RemovedBody609_65

def RemovedBody609_67 : StackLang.HolProg 64 :=
.seq RemovedBody609_5 RemovedBody609_66

def RemovedBody609_68 : StackLang.HolProg 64 :=
.seq RemovedBody609_4 RemovedBody609_67

def RemovedBody609_69 : StackLang.HolProg 64 :=
.seq RemovedBody609_3 RemovedBody609_68

def RemovedBody609_70 : StackLang.HolProg 64 :=
.seq RemovedBody609_2 RemovedBody609_69

def RemovedBody609_71 : StackLang.HolProg 64 :=
.seq RemovedBody609_1 RemovedBody609_70

def RemovedBody609_72 : StackLang.HolProg 64 :=
.seq RemovedBody609_0 RemovedBody609_71

def Removed609 : Nat × StackLang.HolProg 64 := (609, RemovedBody609_72)
theorem Removed609_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc609 = Removed609 := by
  kernel_rfl
#print axioms Removed609_eq
end InitECandidate.Proofs.BackendStages
