import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function538
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody538_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody538_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody538_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 3 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody538_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody538_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 3 3

def rawBody538_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 18446744073709551360#64))

def rawBody538_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 16#64))

def rawBody538_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody538_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 8#64))

def rawBody538_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody538_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def rawBody538_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody538_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody538_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def rawBody538_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody538_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody538_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody538_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody538_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def rawBody538_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody538_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody538_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody538_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def rawBody538_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody538_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 8#64))

def rawBody538_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody538_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 16#64))

def rawBody538_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody538_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 24#64))

def rawBody538_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody538_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def rawBody538_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody538_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 8#64))

def rawBody538_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody538_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 16#64))

def rawBody538_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody538_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 24#64))

def rawBody538_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody538_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def rawBody538_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody538_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 8#64))

def rawBody538_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody538_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 16#64))

def rawBody538_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody538_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 24#64))

def rawBody538_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody538_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def rawBody538_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody538_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 8#64))

def rawBody538_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody538_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 16#64))

def rawBody538_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody538_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 24#64))

def rawBody538_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody538_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody538_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody538_56 : StackLang.HolProg 64 :=
.seq rawBody538_54 rawBody538_55

def rawBody538_57 : StackLang.HolProg 64 :=
.seq rawBody538_53 rawBody538_56

def rawBody538_58 : StackLang.HolProg 64 :=
.seq rawBody538_52 rawBody538_57

def rawBody538_59 : StackLang.HolProg 64 :=
.seq rawBody538_51 rawBody538_58

def rawBody538_60 : StackLang.HolProg 64 :=
.seq rawBody538_50 rawBody538_59

def rawBody538_61 : StackLang.HolProg 64 :=
.seq rawBody538_49 rawBody538_60

def rawBody538_62 : StackLang.HolProg 64 :=
.seq rawBody538_48 rawBody538_61

def rawBody538_63 : StackLang.HolProg 64 :=
.seq rawBody538_47 rawBody538_62

def rawBody538_64 : StackLang.HolProg 64 :=
.seq rawBody538_46 rawBody538_63

def rawBody538_65 : StackLang.HolProg 64 :=
.seq rawBody538_45 rawBody538_64

def rawBody538_66 : StackLang.HolProg 64 :=
.seq rawBody538_44 rawBody538_65

def rawBody538_67 : StackLang.HolProg 64 :=
.seq rawBody538_43 rawBody538_66

def rawBody538_68 : StackLang.HolProg 64 :=
.seq rawBody538_42 rawBody538_67

def rawBody538_69 : StackLang.HolProg 64 :=
.seq rawBody538_41 rawBody538_68

def rawBody538_70 : StackLang.HolProg 64 :=
.seq rawBody538_40 rawBody538_69

def rawBody538_71 : StackLang.HolProg 64 :=
.seq rawBody538_39 rawBody538_70

def rawBody538_72 : StackLang.HolProg 64 :=
.seq rawBody538_38 rawBody538_71

def rawBody538_73 : StackLang.HolProg 64 :=
.seq rawBody538_37 rawBody538_72

def rawBody538_74 : StackLang.HolProg 64 :=
.seq rawBody538_36 rawBody538_73

def rawBody538_75 : StackLang.HolProg 64 :=
.seq rawBody538_35 rawBody538_74

def rawBody538_76 : StackLang.HolProg 64 :=
.seq rawBody538_34 rawBody538_75

def rawBody538_77 : StackLang.HolProg 64 :=
.seq rawBody538_33 rawBody538_76

def rawBody538_78 : StackLang.HolProg 64 :=
.seq rawBody538_32 rawBody538_77

def rawBody538_79 : StackLang.HolProg 64 :=
.seq rawBody538_31 rawBody538_78

def rawBody538_80 : StackLang.HolProg 64 :=
.seq rawBody538_30 rawBody538_79

def rawBody538_81 : StackLang.HolProg 64 :=
.seq rawBody538_29 rawBody538_80

def rawBody538_82 : StackLang.HolProg 64 :=
.seq rawBody538_28 rawBody538_81

def rawBody538_83 : StackLang.HolProg 64 :=
.seq rawBody538_27 rawBody538_82

def rawBody538_84 : StackLang.HolProg 64 :=
.seq rawBody538_26 rawBody538_83

def rawBody538_85 : StackLang.HolProg 64 :=
.seq rawBody538_25 rawBody538_84

def rawBody538_86 : StackLang.HolProg 64 :=
.seq rawBody538_24 rawBody538_85

def rawBody538_87 : StackLang.HolProg 64 :=
.seq rawBody538_23 rawBody538_86

def rawBody538_88 : StackLang.HolProg 64 :=
.seq rawBody538_22 rawBody538_87

def rawBody538_89 : StackLang.HolProg 64 :=
.seq rawBody538_21 rawBody538_88

def rawBody538_90 : StackLang.HolProg 64 :=
.seq rawBody538_20 rawBody538_89

def rawBody538_91 : StackLang.HolProg 64 :=
.seq rawBody538_19 rawBody538_90

def rawBody538_92 : StackLang.HolProg 64 :=
.seq rawBody538_18 rawBody538_91

def rawBody538_93 : StackLang.HolProg 64 :=
.seq rawBody538_17 rawBody538_92

def rawBody538_94 : StackLang.HolProg 64 :=
.seq rawBody538_16 rawBody538_93

def rawBody538_95 : StackLang.HolProg 64 :=
.seq rawBody538_15 rawBody538_94

def rawBody538_96 : StackLang.HolProg 64 :=
.seq rawBody538_14 rawBody538_95

def rawBody538_97 : StackLang.HolProg 64 :=
.seq rawBody538_13 rawBody538_96

def rawBody538_98 : StackLang.HolProg 64 :=
.seq rawBody538_12 rawBody538_97

def rawBody538_99 : StackLang.HolProg 64 :=
.seq rawBody538_11 rawBody538_98

def rawBody538_100 : StackLang.HolProg 64 :=
.seq rawBody538_10 rawBody538_99

def rawBody538_101 : StackLang.HolProg 64 :=
.seq rawBody538_9 rawBody538_100

def rawBody538_102 : StackLang.HolProg 64 :=
.seq rawBody538_8 rawBody538_101

def rawBody538_103 : StackLang.HolProg 64 :=
.seq rawBody538_7 rawBody538_102

def rawBody538_104 : StackLang.HolProg 64 :=
.seq rawBody538_6 rawBody538_103

def rawBody538_105 : StackLang.HolProg 64 :=
.seq rawBody538_5 rawBody538_104

def rawBody538_106 : StackLang.HolProg 64 :=
.seq rawBody538_4 rawBody538_105

def rawBody538_107 : StackLang.HolProg 64 :=
.seq rawBody538_3 rawBody538_106

def rawBody538_108 : StackLang.HolProg 64 :=
.seq rawBody538_2 rawBody538_107

def rawBody538_109 : StackLang.HolProg 64 :=
.seq rawBody538_1 rawBody538_108

def rawBody538_110 : StackLang.HolProg 64 :=
.seq rawBody538_0 rawBody538_109

def raw538 : StackLang.HolProg 64 := rawBody538_110
theorem raw538_eq : StackRawCall.compTop RawInfo.rawInfo (function538 (.list [])).1 = raw538 := by
  kernel_rfl
#print axioms raw538_eq
end InitECandidate.Proofs.BackendStages
