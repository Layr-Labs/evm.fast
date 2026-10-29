import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function609
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody609_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody609_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody609_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 2 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody609_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody609_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 2 2

def rawBody609_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 18446744073709551360#64))

def rawBody609_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def rawBody609_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody609_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 64#64))

def rawBody609_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody609_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 64#64))

def rawBody609_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody609_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody609_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def rawBody609_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody609_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 18446744073709551360#64))

def rawBody609_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 72#64)))

def rawBody609_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody609_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 72#64))

def rawBody609_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody609_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 72#64))

def rawBody609_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody609_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody609_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def rawBody609_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody609_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 18446744073709551360#64))

def rawBody609_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 184#64)))

def rawBody609_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody609_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 184#64))

def rawBody609_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody609_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 184#64))

def rawBody609_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody609_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody609_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def rawBody609_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody609_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody609_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody609_37 : StackLang.HolProg 64 :=
.seq rawBody609_35 rawBody609_36

def rawBody609_38 : StackLang.HolProg 64 :=
.seq rawBody609_34 rawBody609_37

def rawBody609_39 : StackLang.HolProg 64 :=
.seq rawBody609_33 rawBody609_38

def rawBody609_40 : StackLang.HolProg 64 :=
.seq rawBody609_32 rawBody609_39

def rawBody609_41 : StackLang.HolProg 64 :=
.seq rawBody609_31 rawBody609_40

def rawBody609_42 : StackLang.HolProg 64 :=
.seq rawBody609_30 rawBody609_41

def rawBody609_43 : StackLang.HolProg 64 :=
.seq rawBody609_29 rawBody609_42

def rawBody609_44 : StackLang.HolProg 64 :=
.seq rawBody609_28 rawBody609_43

def rawBody609_45 : StackLang.HolProg 64 :=
.seq rawBody609_27 rawBody609_44

def rawBody609_46 : StackLang.HolProg 64 :=
.seq rawBody609_26 rawBody609_45

def rawBody609_47 : StackLang.HolProg 64 :=
.seq rawBody609_25 rawBody609_46

def rawBody609_48 : StackLang.HolProg 64 :=
.seq rawBody609_24 rawBody609_47

def rawBody609_49 : StackLang.HolProg 64 :=
.seq rawBody609_23 rawBody609_48

def rawBody609_50 : StackLang.HolProg 64 :=
.seq rawBody609_22 rawBody609_49

def rawBody609_51 : StackLang.HolProg 64 :=
.seq rawBody609_21 rawBody609_50

def rawBody609_52 : StackLang.HolProg 64 :=
.seq rawBody609_20 rawBody609_51

def rawBody609_53 : StackLang.HolProg 64 :=
.seq rawBody609_19 rawBody609_52

def rawBody609_54 : StackLang.HolProg 64 :=
.seq rawBody609_18 rawBody609_53

def rawBody609_55 : StackLang.HolProg 64 :=
.seq rawBody609_17 rawBody609_54

def rawBody609_56 : StackLang.HolProg 64 :=
.seq rawBody609_16 rawBody609_55

def rawBody609_57 : StackLang.HolProg 64 :=
.seq rawBody609_15 rawBody609_56

def rawBody609_58 : StackLang.HolProg 64 :=
.seq rawBody609_14 rawBody609_57

def rawBody609_59 : StackLang.HolProg 64 :=
.seq rawBody609_13 rawBody609_58

def rawBody609_60 : StackLang.HolProg 64 :=
.seq rawBody609_12 rawBody609_59

def rawBody609_61 : StackLang.HolProg 64 :=
.seq rawBody609_11 rawBody609_60

def rawBody609_62 : StackLang.HolProg 64 :=
.seq rawBody609_10 rawBody609_61

def rawBody609_63 : StackLang.HolProg 64 :=
.seq rawBody609_9 rawBody609_62

def rawBody609_64 : StackLang.HolProg 64 :=
.seq rawBody609_8 rawBody609_63

def rawBody609_65 : StackLang.HolProg 64 :=
.seq rawBody609_7 rawBody609_64

def rawBody609_66 : StackLang.HolProg 64 :=
.seq rawBody609_6 rawBody609_65

def rawBody609_67 : StackLang.HolProg 64 :=
.seq rawBody609_5 rawBody609_66

def rawBody609_68 : StackLang.HolProg 64 :=
.seq rawBody609_4 rawBody609_67

def rawBody609_69 : StackLang.HolProg 64 :=
.seq rawBody609_3 rawBody609_68

def rawBody609_70 : StackLang.HolProg 64 :=
.seq rawBody609_2 rawBody609_69

def rawBody609_71 : StackLang.HolProg 64 :=
.seq rawBody609_1 rawBody609_70

def rawBody609_72 : StackLang.HolProg 64 :=
.seq rawBody609_0 rawBody609_71

def raw609 : StackLang.HolProg 64 := rawBody609_72
theorem raw609_eq : StackRawCall.compTop RawInfo.rawInfo (function609 (.list [])).1 = raw609 := by
  kernel_rfl
#print axioms raw609_eq
end InitECandidate.Proofs.BackendStages
