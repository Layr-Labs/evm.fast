import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source750
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles750
def optimizedBody750_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 0), (44, 4), (48, 2), (50, 6)]

def optimizedBody750_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 46), (4, 44), (44, 48), (48, 50)]

def optimizedBody750_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (4, 44), (44, 48), (48, 50)]

def optimizedBody750_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody750_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody750_2 optimizedBody750_3

def optimizedBody750_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody750_1, 750, 2)) (some 744) ([]) (some (2, optimizedBody750_4, 750, 3))

def optimizedBody750_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody750_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody750_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody750_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody750_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551056#64))

def optimizedBody750_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (46, 46), (44, 44), (48, 48)]

def optimizedBody750_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 46), (44, 44), (4, 48)]

def optimizedBody750_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (44, 44), (4, 48)]

def optimizedBody750_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody750_13 optimizedBody750_3

def optimizedBody750_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody750_12, 750, 4)) (some 739) ([2, 4]) (some (2, optimizedBody750_14, 750, 5))

def optimizedBody750_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551048#64))

def optimizedBody750_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (46, 46), (44, 44)]

def optimizedBody750_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 46), (44, 44)]

def optimizedBody750_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (44, 44)]

def optimizedBody750_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody750_19 optimizedBody750_3

def optimizedBody750_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody750_18, 750, 6)) (some 739) ([2, 4]) (some (2, optimizedBody750_20, 750, 7))

def optimizedBody750_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 18446744073709551040#64))

def optimizedBody750_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6)]

def optimizedBody750_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 192#64)

def optimizedBody750_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody750_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (4, 4), (6, 6), (8, 8), (46, 46), (44, 44)]

def optimizedBody750_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.ffi
  (Flapjack.Basis.Pure.MlString.MlString.implode
    [98#8, 108#8, 115#8, 95#8, 102#8, 112#8, 50#8, 95#8, 109#8, 117#8, 108#8])
  2 4 6 8
  (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      Flapjack.Spt.ln,
    Flapjack.Spt.ln)

def optimizedBody750_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 44), (44, 46)]

def optimizedBody750_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 18446744073709551056#64))

def optimizedBody750_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44)]

def optimizedBody750_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody750_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody750_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody750_32 optimizedBody750_3

def optimizedBody750_34 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody750_31, 750, 8)) (some 739) ([2, 4]) (some (2, optimizedBody750_33, 750, 9))

def optimizedBody750_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody750_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody750_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody750_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody750_36 optimizedBody750_37

def optimizedBody750_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody750_35 optimizedBody750_38

def optimizedBody750_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody750_6 optimizedBody750_39

def optimizedBody750_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody750_34 optimizedBody750_40

def optimizedBody750_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody750_30 optimizedBody750_41

def optimizedBody750_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody750_29 optimizedBody750_42

def optimizedBody750_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody750_9 optimizedBody750_43

def optimizedBody750_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody750_8 optimizedBody750_44

def optimizedBody750_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody750_7 optimizedBody750_45

def optimizedBody750_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody750_28 optimizedBody750_46

def optimizedBody750_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody750_27 optimizedBody750_47

def optimizedBody750_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody750_26 optimizedBody750_48

def optimizedBody750_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody750_25 optimizedBody750_49

def optimizedBody750_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody750_24 optimizedBody750_50

def optimizedBody750_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody750_23 optimizedBody750_51

def optimizedBody750_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody750_22 optimizedBody750_52

def optimizedBody750_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody750_9 optimizedBody750_53

def optimizedBody750_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody750_8 optimizedBody750_54

def optimizedBody750_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody750_7 optimizedBody750_55

def optimizedBody750_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody750_6 optimizedBody750_56

def optimizedBody750_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody750_21 optimizedBody750_57

def optimizedBody750_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody750_17 optimizedBody750_58

def optimizedBody750_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody750_16 optimizedBody750_59

def optimizedBody750_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody750_9 optimizedBody750_60

def optimizedBody750_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody750_8 optimizedBody750_61

def optimizedBody750_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody750_7 optimizedBody750_62

def optimizedBody750_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody750_6 optimizedBody750_63

def optimizedBody750_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody750_15 optimizedBody750_64

def optimizedBody750_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody750_11 optimizedBody750_65

def optimizedBody750_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody750_10 optimizedBody750_66

def optimizedBody750_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody750_9 optimizedBody750_67

def optimizedBody750_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody750_8 optimizedBody750_68

def optimizedBody750_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody750_7 optimizedBody750_69

def optimizedBody750_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody750_6 optimizedBody750_70

def optimizedBody750_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody750_5 optimizedBody750_71

def optimizedBody750_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody750_0 optimizedBody750_72

def oracle750 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 22
              (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 23)) 23
              (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0))))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 23 (Flapjack.Spt.ls 22)) 2
              (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)))
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 24 (Flapjack.Spt.ls 2))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 23)) 24 Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)
            (Flapjack.Spt.bs Flapjack.Spt.ln 23
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))) 22
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 22)) 25 Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))))))))
def optimized750 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(750, 4, optimizedBody750_73)
end InitECandidate.Proofs.SmallStages.Oracles750
