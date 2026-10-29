import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source777
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles777
def optimizedBody777_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody777_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody777_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody777_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody777_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551016#64))

def optimizedBody777_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody777_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody777_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody777_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody777_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody777_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody777_8 optimizedBody777_9

def optimizedBody777_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody777_7 optimizedBody777_10

def optimizedBody777_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody777_6 optimizedBody777_11

def optimizedBody777_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody777_14 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.reg 4) optimizedBody777_12 optimizedBody777_13

def optimizedBody777_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 0)]

def optimizedBody777_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody777_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody777_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody777_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody777_17 optimizedBody777_18

def optimizedBody777_20 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody777_16, 777, 2)) (some 713) ([]) (some (2, optimizedBody777_19, 777, 3))

def optimizedBody777_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 192#64)

def optimizedBody777_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (6, 44)]

def optimizedBody777_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44)]

def optimizedBody777_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody777_23 optimizedBody777_18

def optimizedBody777_25 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody777_22, 777, 4)) (some 68) ([2]) (some (2, optimizedBody777_24, 777, 5))

def optimizedBody777_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody777_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody777_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody777_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 18446744073709551016#64)))

def optimizedBody777_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody777_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody777_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 18446744073709551032#64)))

def optimizedBody777_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551016#64))

def optimizedBody777_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 2)]

def optimizedBody777_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody777_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 18446744073709551024#64)))

def optimizedBody777_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551016#64))

def optimizedBody777_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody777_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody777_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody777_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody777_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody777_8 optimizedBody777_41

def optimizedBody777_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody777_7 optimizedBody777_42

def optimizedBody777_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody777_40 optimizedBody777_43

def optimizedBody777_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody777_39 optimizedBody777_44

def optimizedBody777_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody777_38 optimizedBody777_45

def optimizedBody777_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody777_37 optimizedBody777_46

def optimizedBody777_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody777_0 optimizedBody777_47

def optimizedBody777_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody777_36 optimizedBody777_48

def optimizedBody777_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody777_0 optimizedBody777_49

def optimizedBody777_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody777_35 optimizedBody777_50

def optimizedBody777_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody777_34 optimizedBody777_51

def optimizedBody777_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody777_33 optimizedBody777_52

def optimizedBody777_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody777_0 optimizedBody777_53

def optimizedBody777_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody777_32 optimizedBody777_54

def optimizedBody777_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody777_0 optimizedBody777_55

def optimizedBody777_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody777_31 optimizedBody777_56

def optimizedBody777_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody777_30 optimizedBody777_57

def optimizedBody777_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody777_29 optimizedBody777_58

def optimizedBody777_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody777_28 optimizedBody777_59

def optimizedBody777_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody777_27 optimizedBody777_60

def optimizedBody777_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody777_26 optimizedBody777_61

def optimizedBody777_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody777_6 optimizedBody777_62

def optimizedBody777_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody777_25 optimizedBody777_63

def optimizedBody777_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody777_17 optimizedBody777_64

def optimizedBody777_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody777_21 optimizedBody777_65

def optimizedBody777_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody777_6 optimizedBody777_66

def optimizedBody777_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody777_20 optimizedBody777_67

def optimizedBody777_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody777_15 optimizedBody777_68

def optimizedBody777_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody777_6 optimizedBody777_69

def optimizedBody777_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody777_6 optimizedBody777_70

def optimizedBody777_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody777_14 optimizedBody777_71

def optimizedBody777_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody777_5 optimizedBody777_72

def optimizedBody777_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody777_4 optimizedBody777_73

def optimizedBody777_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody777_3 optimizedBody777_74

def optimizedBody777_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody777_2 optimizedBody777_75

def optimizedBody777_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody777_1 optimizedBody777_76

def optimizedBody777_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody777_0 optimizedBody777_77

def oracle777 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
            1
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 2)) 1
              (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 0))))
          0
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))
            1
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 0)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
            1
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 0))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 1)))
            1
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 2
              (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
          Flapjack.Spt.ln))))
def optimized777 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(777, 1, optimizedBody777_78)
end InitECandidate.Proofs.SmallStages.Oracles777
