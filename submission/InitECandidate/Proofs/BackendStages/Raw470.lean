import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function470
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody470_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody470_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody470_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 2 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody470_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody470_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 2 2

def rawBody470_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 18446744073709551360#64))

def rawBody470_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 64#64))

def rawBody470_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody470_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody470_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 4#64)

def rawBody470_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody470_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 1

def rawBody470_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def rawBody470_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody470_14 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody470_15 : StackLang.HolProg 64 :=
.seq rawBody470_13 rawBody470_14

def rawBody470_16 : StackLang.HolProg 64 :=
.seq rawBody470_12 rawBody470_15

def rawBody470_17 : StackLang.HolProg 64 :=
.seq rawBody470_11 rawBody470_16

def rawBody470_18 : StackLang.HolProg 64 :=
.seq rawBody470_10 rawBody470_17

def rawBody470_19 : StackLang.HolProg 64 :=
.seq rawBody470_9 rawBody470_18

def rawBody470_20 : StackLang.HolProg 64 :=
.seq rawBody470_8 rawBody470_19

def rawBody470_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody470_22 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) rawBody470_20 rawBody470_21

def rawBody470_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody470_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody470_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody470_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def rawBody470_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody470_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody470_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody470_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def rawBody470_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody470_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 18446744073709551360#64))

def rawBody470_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 184#64)))

def rawBody470_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody470_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 184#64))

def rawBody470_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody470_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody470_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def rawBody470_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody470_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody470_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody470_42 : StackLang.HolProg 64 :=
.seq rawBody470_40 rawBody470_41

def rawBody470_43 : StackLang.HolProg 64 :=
.seq rawBody470_39 rawBody470_42

def rawBody470_44 : StackLang.HolProg 64 :=
.seq rawBody470_38 rawBody470_43

def rawBody470_45 : StackLang.HolProg 64 :=
.seq rawBody470_37 rawBody470_44

def rawBody470_46 : StackLang.HolProg 64 :=
.seq rawBody470_36 rawBody470_45

def rawBody470_47 : StackLang.HolProg 64 :=
.seq rawBody470_35 rawBody470_46

def rawBody470_48 : StackLang.HolProg 64 :=
.seq rawBody470_34 rawBody470_47

def rawBody470_49 : StackLang.HolProg 64 :=
.seq rawBody470_33 rawBody470_48

def rawBody470_50 : StackLang.HolProg 64 :=
.seq rawBody470_32 rawBody470_49

def rawBody470_51 : StackLang.HolProg 64 :=
.seq rawBody470_31 rawBody470_50

def rawBody470_52 : StackLang.HolProg 64 :=
.seq rawBody470_30 rawBody470_51

def rawBody470_53 : StackLang.HolProg 64 :=
.seq rawBody470_29 rawBody470_52

def rawBody470_54 : StackLang.HolProg 64 :=
.seq rawBody470_28 rawBody470_53

def rawBody470_55 : StackLang.HolProg 64 :=
.seq rawBody470_27 rawBody470_54

def rawBody470_56 : StackLang.HolProg 64 :=
.seq rawBody470_26 rawBody470_55

def rawBody470_57 : StackLang.HolProg 64 :=
.seq rawBody470_25 rawBody470_56

def rawBody470_58 : StackLang.HolProg 64 :=
.seq rawBody470_24 rawBody470_57

def rawBody470_59 : StackLang.HolProg 64 :=
.seq rawBody470_23 rawBody470_58

def rawBody470_60 : StackLang.HolProg 64 :=
.seq rawBody470_22 rawBody470_59

def rawBody470_61 : StackLang.HolProg 64 :=
.seq rawBody470_7 rawBody470_60

def rawBody470_62 : StackLang.HolProg 64 :=
.seq rawBody470_6 rawBody470_61

def rawBody470_63 : StackLang.HolProg 64 :=
.seq rawBody470_5 rawBody470_62

def rawBody470_64 : StackLang.HolProg 64 :=
.seq rawBody470_4 rawBody470_63

def rawBody470_65 : StackLang.HolProg 64 :=
.seq rawBody470_3 rawBody470_64

def rawBody470_66 : StackLang.HolProg 64 :=
.seq rawBody470_2 rawBody470_65

def rawBody470_67 : StackLang.HolProg 64 :=
.seq rawBody470_1 rawBody470_66

def rawBody470_68 : StackLang.HolProg 64 :=
.seq rawBody470_0 rawBody470_67

def raw470 : StackLang.HolProg 64 := rawBody470_68
theorem raw470_eq : StackRawCall.compTop RawInfo.rawInfo (function470 (.list [])).1 = raw470 := by
  kernel_rfl
#print axioms raw470_eq
end InitECandidate.Proofs.BackendStages
