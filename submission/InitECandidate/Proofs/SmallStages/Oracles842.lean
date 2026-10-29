import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source842
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles842
def optimizedBody842_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody842_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody842_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody842_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody842_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody842_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 112#64))

def optimizedBody842_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody842_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 96#64))

def optimizedBody842_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 4), (48, 2)]

def optimizedBody842_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (48, 48)]

def optimizedBody842_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48)]

def optimizedBody842_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody842_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_10 optimizedBody842_11

def optimizedBody842_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody842_9, 842, 2)) (some 467) ([2]) (some (2, optimizedBody842_12, 842, 3))

def optimizedBody842_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody842_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody842_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 3#64)

def optimizedBody842_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4)]

def optimizedBody842_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody842_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 15#64)))

def optimizedBody842_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 44), (4, 46), (0, 48)]

def optimizedBody842_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44), (4, 46), (0, 48)]

def optimizedBody842_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_21 optimizedBody842_11

def optimizedBody842_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody842_20, 842, 4)) (some 472) ([2]) (some (2, optimizedBody842_22, 842, 5))

def optimizedBody842_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody842_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 6 (Flapjack.WordRegImm.imm 120#64)))

def optimizedBody842_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 88#64))

def optimizedBody842_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody842_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody842_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody842_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 128#64)))

def optimizedBody842_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody842_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody842_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody842_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody842_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 8 [2]

def optimizedBody842_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_34 optimizedBody842_35

def optimizedBody842_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_33 optimizedBody842_36

def optimizedBody842_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_32 optimizedBody842_37

def optimizedBody842_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_31 optimizedBody842_38

def optimizedBody842_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_30 optimizedBody842_39

def optimizedBody842_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_4 optimizedBody842_40

def optimizedBody842_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_29 optimizedBody842_41

def optimizedBody842_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_28 optimizedBody842_42

def optimizedBody842_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_27 optimizedBody842_43

def optimizedBody842_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_26 optimizedBody842_44

def optimizedBody842_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_6 optimizedBody842_45

def optimizedBody842_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_25 optimizedBody842_46

def optimizedBody842_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_24 optimizedBody842_47

def optimizedBody842_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_3 optimizedBody842_48

def optimizedBody842_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_2 optimizedBody842_49

def optimizedBody842_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_1 optimizedBody842_50

def optimizedBody842_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_14 optimizedBody842_51

def optimizedBody842_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_23 optimizedBody842_52

def optimizedBody842_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_10 optimizedBody842_53

def optimizedBody842_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_19 optimizedBody842_54

def optimizedBody842_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_0 optimizedBody842_55

def optimizedBody842_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_18 optimizedBody842_56

def optimizedBody842_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_17 optimizedBody842_57

def optimizedBody842_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_16 optimizedBody842_58

def optimizedBody842_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_15 optimizedBody842_59

def optimizedBody842_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_14 optimizedBody842_60

def optimizedBody842_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_13 optimizedBody842_61

def optimizedBody842_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_8 optimizedBody842_62

def optimizedBody842_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_7 optimizedBody842_63

def optimizedBody842_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_6 optimizedBody842_64

def optimizedBody842_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_5 optimizedBody842_65

def optimizedBody842_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_4 optimizedBody842_66

def optimizedBody842_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_3 optimizedBody842_67

def optimizedBody842_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_2 optimizedBody842_68

def optimizedBody842_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_1 optimizedBody842_69

def optimizedBody842_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody842_0 optimizedBody842_70

def oracle842 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))
            1
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 1)) 2
              (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 4))))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 0)))
            0
            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 Flapjack.Spt.ln) 1
              (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))
            1
            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 (Flapjack.Spt.ls 1)) 2
              (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 22 Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 1
              (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 2)))
            (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 23)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 22))))))))
def optimized842 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(842, 1, optimizedBody842_71)
end InitECandidate.Proofs.SmallStages.Oracles842
