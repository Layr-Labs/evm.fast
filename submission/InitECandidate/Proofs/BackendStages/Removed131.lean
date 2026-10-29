import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc131
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody131_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody131_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody131_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody131_3 : StackLang.HolProg 64 :=
.seq RemovedBody131_1 RemovedBody131_2

def RemovedBody131_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody131_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody131_3 RemovedBody131_4

def RemovedBody131_6 : StackLang.HolProg 64 :=
.seq RemovedBody131_0 RemovedBody131_5

def RemovedBody131_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody131_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody131_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 83#64)

def RemovedBody131_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody131_11 : StackLang.HolProg 64 :=
.seq RemovedBody131_9 RemovedBody131_10

def RemovedBody131_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody131_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody131_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody131_15 : StackLang.HolProg 64 :=
.seq RemovedBody131_13 RemovedBody131_14

def RemovedBody131_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody131_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody131_15 RemovedBody131_16

def RemovedBody131_18 : StackLang.HolProg 64 :=
.seq RemovedBody131_12 RemovedBody131_17

def RemovedBody131_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody131_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody131_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 131 3

def RemovedBody131_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody131_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody131_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody131_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody131_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody131_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody131_28 : StackLang.HolProg 64 :=
.seq RemovedBody131_26 RemovedBody131_27

def RemovedBody131_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody131_30 : StackLang.HolProg 64 :=
.seq RemovedBody131_28 RemovedBody131_29

def RemovedBody131_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody131_32 : StackLang.HolProg 64 :=
.seq RemovedBody131_30 RemovedBody131_31

def RemovedBody131_33 : StackLang.HolProg 64 :=
.seq RemovedBody131_25 RemovedBody131_32

def RemovedBody131_34 : StackLang.HolProg 64 :=
.seq RemovedBody131_24 RemovedBody131_33

def RemovedBody131_35 : StackLang.HolProg 64 :=
.seq RemovedBody131_23 RemovedBody131_34

def RemovedBody131_36 : StackLang.HolProg 64 :=
.seq RemovedBody131_22 RemovedBody131_35

def RemovedBody131_37 : StackLang.HolProg 64 :=
.seq RemovedBody131_21 RemovedBody131_36

def RemovedBody131_38 : StackLang.HolProg 64 :=
.seq RemovedBody131_20 RemovedBody131_37

def RemovedBody131_39 : StackLang.HolProg 64 :=
.seq RemovedBody131_19 RemovedBody131_38

def RemovedBody131_40 : StackLang.HolProg 64 :=
.seq RemovedBody131_18 RemovedBody131_39

def RemovedBody131_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody131_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody131_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody131_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody131_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody131_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody131_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody131_48 : StackLang.HolProg 64 :=
.seq RemovedBody131_46 RemovedBody131_47

def RemovedBody131_49 : StackLang.HolProg 64 :=
.seq RemovedBody131_45 RemovedBody131_48

def RemovedBody131_50 : StackLang.HolProg 64 :=
.seq RemovedBody131_44 RemovedBody131_49

def RemovedBody131_51 : StackLang.HolProg 64 :=
.seq RemovedBody131_43 RemovedBody131_50

def RemovedBody131_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody131_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody131_54 : StackLang.HolProg 64 :=
.seq RemovedBody131_52 RemovedBody131_53

def RemovedBody131_55 : StackLang.HolProg 64 :=
.call (some (RemovedBody131_51, 0, 131, 2)) (Sum.inl 129) (some (RemovedBody131_54, 131, 3))

def RemovedBody131_56 : StackLang.HolProg 64 :=
.seq RemovedBody131_42 RemovedBody131_55

def RemovedBody131_57 : StackLang.HolProg 64 :=
.seq RemovedBody131_41 RemovedBody131_56

def RemovedBody131_58 : StackLang.HolProg 64 :=
.seq RemovedBody131_40 RemovedBody131_57

def RemovedBody131_59 : StackLang.HolProg 64 :=
.seq RemovedBody131_11 RemovedBody131_58

def RemovedBody131_60 : StackLang.HolProg 64 :=
.seq RemovedBody131_8 RemovedBody131_59

def RemovedBody131_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody131_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody131_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody131_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def RemovedBody131_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def RemovedBody131_66 : StackLang.HolProg 64 :=
.seq RemovedBody131_64 RemovedBody131_65

def RemovedBody131_67 : StackLang.HolProg 64 :=
.seq RemovedBody131_63 RemovedBody131_66

def RemovedBody131_68 : StackLang.HolProg 64 :=
.seq RemovedBody131_62 RemovedBody131_67

def RemovedBody131_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody131_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody131_71 : StackLang.HolProg 64 :=
.seq RemovedBody131_69 RemovedBody131_70

def RemovedBody131_72 : StackLang.HolProg 64 :=
.seq RemovedBody131_68 RemovedBody131_71

def RemovedBody131_73 : StackLang.HolProg 64 :=
.seq RemovedBody131_61 RemovedBody131_72

def RemovedBody131_74 : StackLang.HolProg 64 :=
.seq RemovedBody131_60 RemovedBody131_73

def RemovedBody131_75 : StackLang.HolProg 64 :=
.seq RemovedBody131_7 RemovedBody131_74

def RemovedBody131_76 : StackLang.HolProg 64 :=
.seq RemovedBody131_6 RemovedBody131_75

def Removed131 : Nat × StackLang.HolProg 64 := (131, RemovedBody131_76)
theorem Removed131_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc131 = Removed131 := by
  kernel_rfl
#print axioms Removed131_eq
end InitECandidate.Proofs.BackendStages
